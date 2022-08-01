#include "PDUPacket.h"

#include "rnp_networkmanager.h"
#include "rnp_packet.h"

#include <vector>



PDUPacket::~PDUPacket()
{};

PDUPacket::PDUPacket():
RnpPacket(0,
          102,
          size())
{};

PDUPacket::PDUPacket(const RnpPacketSerialized& packet):
RnpPacket(packet,size())
{
    getSerializer().deserialize(*this,packet.getBody());
};

void PDUPacket::serialize(std::vector<uint8_t>& buf){
    RnpPacket::serialize(buf);
	size_t bufsize = buf.size();
	buf.resize(bufsize + size());
	std::memcpy(buf.data() + bufsize,getSerializer().serialize(*this).data(),size());
};