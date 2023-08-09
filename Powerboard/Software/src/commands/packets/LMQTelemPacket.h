#pragma once

#include <librnp/rnp_packet.h>
#include <librnp/rnp_serializer.h>

#include <vector>

//shamelessly copied from pickle rick's telemetry packet

class LMQTelemPacket : public RnpPacket{
    private:
    //serializer framework
        static constexpr auto getSerializer()
        {
            auto ret = RnpSerializer(
                &LMQTelemPacket::logicVoltage,
                &LMQTelemPacket::depVoltage,
                &LMQTelemPacket::system_status
            );

            return ret;
        }
        
    public:
        ~LMQTelemPacket();

        LMQTelemPacket();
        /**
         * @brief Deserialize Telemetry Packet
         * 
         * @param data 
         */
        LMQTelemPacket(const RnpPacketSerialized& packet);

        /**
         * @brief Serialize Telemetry Packet
         * 
         * @param buf 
         */
        void serialize(std::vector<uint8_t>& buf) override;

        float logicVoltage;
        float depVoltage;
        uint32_t system_status;

        static constexpr size_t size(){
            return getSerializer().member_size();
        }

};