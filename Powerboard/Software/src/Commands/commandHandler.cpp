#include "commandHandler.h"

#include <vector>
#include <functional>
#include <memory>


#include "stateMachine.h"
#include "commands.h"
#include "flags.h"


#include "Storage/logController.h"
#include "States/bricked.h"
#include "States/live.h"
#include "rnp_packet.h"
#include "rnp_interface.h"
#include "Network/interfaces/radio.h"
#include "commandpacket.h"




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
	if (_sm->systemstatus.flag_triggered(SYSTEM_FLAG::STATE_ARMED))
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