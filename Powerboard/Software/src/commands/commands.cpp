/**
 * @file commands.cpp
 * @author Kiran de Silva (kd619@ic.ac.uk)
 * @brief Implementation of commands for system
 * @version 0.1
 * @date 2023-06-17
 * 
 * @copyright Copyright (c) 2023
 * 
 */

#include "commands.h"

#include <librnp/rnp_packet.h>
#include <libriccore/commands/commandhandler.h>

#include "packets/LMQTelemPacket.h"

#include "system.h"

#include "states/live.h"
#include "states/ready.h"
#include "latchbitmonitor/latchbitmonitor.h"


void Commands::FreeRamCommand(System& sm, const RnpPacketSerialized& packet)
{	
	//avliable in all states
	//returning as simple string packet for ease
	//currently only returning free ram
	MessagePacket_Base<0,static_cast<uint8_t>(decltype(System::commandhandler)::PACKET_TYPES::MESSAGE_RESPONSE)> message("FreeRam: " + std::to_string(esp_get_free_heap_size()));
	// this is not great as it assumes a single command handler with the same service ID
	// would be better if we could pass some context through the function paramters so it has an idea who has called it
	// or make it much clearer that only a single command handler should exist in the system
	message.header.source_service = sm.commandhandler.getServiceID(); 
	
	
	message.header.destination_service = packet.header.source_service;
	message.header.source = packet.header.destination;
	message.header.destination = packet.header.source;
	message.header.uid = packet.header.uid;
	sm.networkmanager.sendPacket(message);
	
}

void Commands::GoLiveCommand(System& system, const RnpPacketSerialized& packet) 
{
	system.statemachine.changeState(std::make_unique<Live>(system));
}

void Commands::GoReadyCommand(System& system, const RnpPacketSerialized& packet)
{
	system.latchbitmonitor.updateLatchBit(0);	//reset latch bit to 0
	system.statemachine.changeState(std::make_unique<Ready>(system));
}

void Commands::RestartLogicCommand(System& system, const RnpPacketSerialized& packet)
{
	SimpleCommandPacket commandpacket(packet);
		system.logicpower.RailRestart(commandpacket.arg);
}

void Commands::LMQTelemCommand(System& sm, const RnpPacketSerialized& packet)
{	
	SimpleCommandPacket commandpacket(packet);

	LMQTelemPacket lmqtelem;

	lmqtelem.header.type = static_cast<uint8_t>(decltype(System::commandhandler)::PACKET_TYPES::LMQTELEMETRY_RESPONSE);
	lmqtelem.header.source = sm.networkmanager.getAddress();
	lmqtelem.header.source_service = sm.commandhandler.getServiceID();
	lmqtelem.header.destination = commandpacket.header.source;
	lmqtelem.header.destination_service = commandpacket.header.source_service;
	lmqtelem.header.uid = commandpacket.header.uid; 
	//lmqtelem.logicVoltage = system.voltagelogging.getOutputV();
	//lmqtelem.depVoltage = system.voltagelogging.getOutputV();
	lmqtelem.system_status = sm.systemstatus.getStatus();
	
	sm.networkmanager.sendPacket(lmqtelem);
	
}