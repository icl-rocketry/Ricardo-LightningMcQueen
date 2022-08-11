#include "commandHandler.h"

#include <vector>
#include <functional>
#include <memory>


#include "stateMachine.h"
#include "commands.h"
#include "flags.h"


#include "Storage/logController.h"
#include "Storage/systemstatus.h"
#include "States/bricked.h"
#include "States/live.h"
#include "rnp_packet.h"
#include "rnp_interface.h"
#include "Network/interfaces/radio.h"
#include "commandpacket.h"
#include "Battery/battery.h"
#include "3V3 Regulators/reg3v3.h"

#include "PDUPacket.h"


CommandHandler::CommandHandler(stateMachine* sm):
_sm(sm)
{};

void CommandHandler::handleCommand(std::unique_ptr<RnpPacketSerialized> packetptr) {


	switch (static_cast<COMMANDS>(CommandPacket::getCommand(*packetptr))) {
		case COMMANDS::Free_Ram:
		{
			FreeRamCommand(*packetptr);
			break;
		}
		default:
			//invalid command issued DELETE IT 
			break;
			
	};
	
}

std::function<void(std::unique_ptr<RnpPacketSerialized>)> CommandHandler::getCallback() 
{
	return std::bind(&CommandHandler::handleCommand, this, std::placeholders::_1);
};



void CommandHandler::FreeRamCommand(const RnpPacketSerialized& packet)
{	
	//avliable in all states
	//returning as simple string packet for ease
	//currently only returning free ram
	MessagePacket_Base<0,static_cast<uint8_t>(CommandPacket::TYPES::MESSAGE_RESPONSE)> message("FreeRam: " + std::to_string(esp_get_free_heap_size()));
	message.header.source_service = serviceID;
	message.header.destination_service = packet.header.source_service;
	message.header.source = packet.header.destination;
	message.header.destination = packet.header.source;
	message.header.uid = packet.header.uid;
	_sm->networkmanager.sendPacket(message);
	
}

void CommandHandler::ArmCommand(const RnpPacketSerialized& packet)
{
	if(_sm->systemstatus.flag_triggered(SYSTEM_FLAG::STATE_TIMEOUT)){
		// go to bricked
		State* _bricked_ptr = new Bricked(_sm);
    	_sm->changeState(_bricked_ptr);
	}
	if (_sm->systemstatus.flag_triggered(SYSTEM_FLAG::STATE_READY))
{
	//go to live state
		State* _live_ptr = new Live(_sm);
    	_sm->changeState(_live_ptr);
}
}

void CommandHandler::Reboot(const RnpPacketSerialized& packet)
{
	ESP.restart();
}

void CommandHandler::PDUPacketCommand(const RnpPacketSerialized& packet)
{

	PDUPacket PDU_status;

	PDU_status.header.type = static_cast<uint8_t>(CommandPacket::TYPES::PDU_STATUS_RESPONSE);
	PDU_status.header.source = _sm->networkmanager.getAddress();
	PDU_status.header.source_service = serviceID;
	PDU_status.header.destination = packet.header.source;
	PDU_status.header.destination_service = packet.header.source_service;
	PDU_status.header.uid = packet.header.uid; 

	PDU_status.ChargingStat = static_cast<uint8_t>(_sm->battery.getChargingStat());
	PDU_status.BatV = _sm->battery.getBatV();
	PDU_status.powergood = _sm->battery.PowerGood();
	PDU_status.RegStat = static_cast<uint8_t>(_sm->reg3V3.get3V3Stat());
	PDU_status.Current_state = _sm->systemstatus.getStatus();

	_sm->networkmanager.sendPacket(PDU_status);	
}

