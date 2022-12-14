//process commands stored in command buffer and execute

#pragma once



#include <vector>
#include <memory>
#include <functional>

#include "commands.h"
#include <rnp_packet.h>
#include <rnp_networkmanager.h>
#include <default_packets/simplecommandpacket.h>


class stateMachine;//forward declaration 


class CommandHandler {
    public:

        CommandHandler(stateMachine* sm);
        
        std::function<void(std::unique_ptr<RnpPacketSerialized>)> getCallback();

        static constexpr uint8_t serviceID = static_cast<uint8_t>(DEFAULT_SERVICES::COMMAND); // serivce ID for network manager

        enum class PACKET_TYPES:uint8_t{
            SIMPLE = 0,
            MAGCAL = 10,
            MESSAGE_RESPONSE = 100,
            TELEMETRY_RESPONSE = 101,
            PDU_STATUS_RESPONSE = 102
        };

    private:
        stateMachine* _sm; //pointer to state machine

        void handleCommand(std::unique_ptr<RnpPacketSerialized> packetptr);
        
        void FreeRamCommand(const RnpPacketSerialized& packet);

        void goLiveCommand(const RnpPacketSerialized& packet);

        void returnToReadyCommand(const RnpPacketSerialized& packet);

        void Reboot(const RnpPacketSerialized& packet);

        void PDUPacketCommand(const RnpPacketSerialized& packet);

        void LowPowerCutoffCommand(const RnpPacketSerialized& packet);

};	
