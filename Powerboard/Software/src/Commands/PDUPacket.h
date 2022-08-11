#pragma once

#include "rnp_packet.h"
#include "rnp_serializer.h"
#include "Battery/battery.h"
#include "3V3 Regulators/reg3v3.h"


#include <vector>

class PDUPacket : public RnpPacket{
    private:
    //serializer framework
        static constexpr auto getSerializer()
        {
            auto ret = RnpSerializer(
                &PDUPacket::ChargingStat,
                &PDUPacket::BatV,             
                &PDUPacket::powergood,
                &PDUPacket::RegStat             
             
       
            );
            return ret;
        }
        
    public:
        ~PDUPacket();

        PDUPacket();
        /**
         * @brief Deserialize Telemetry Packet
         * 
         * @param data 
         */
        PDUPacket(const RnpPacketSerialized& packet);

        /**
         * @brief Serialize Telemetry Packet
         * 
         * @param buf 
         */
        void serialize(std::vector<uint8_t>& buf) override;


        
        uint8_t ChargingStat;        
        float BatV;
        bool powergood;
        uint8_t RegStat;
        uint32_t Current_state;


        static constexpr size_t size(){
            return getSerializer().member_size();
        }

};


