# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: gw/gw.proto

require 'google/protobuf'

require 'common/common_pb'
require 'google/protobuf/timestamp_pb'
require 'google/protobuf/duration_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("gw/gw.proto", :syntax => :proto3) do
    add_message "gw.UplinkTXInfo" do
      optional :frequency, :uint32, 1
      optional :modulation, :enum, 2, "common.Modulation"
      oneof :modulation_info do
        optional :lora_modulation_info, :message, 3, "gw.LoRaModulationInfo"
        optional :fsk_modulation_info, :message, 4, "gw.FSKModulationInfo"
      end
    end
    add_message "gw.LoRaModulationInfo" do
      optional :bandwidth, :uint32, 1
      optional :spreading_factor, :uint32, 2
      optional :code_rate, :string, 3
      optional :polarization_inversion, :bool, 4
    end
    add_message "gw.FSKModulationInfo" do
      optional :frequency_deviation, :uint32, 1
      optional :datarate, :uint32, 2
    end
    add_message "gw.EncryptedFineTimestamp" do
      optional :aes_key_index, :uint32, 1
      optional :encrypted_ns, :bytes, 2
      optional :fpga_id, :bytes, 3
    end
    add_message "gw.PlainFineTimestamp" do
      optional :time, :message, 1, "google.protobuf.Timestamp"
    end
    add_message "gw.GatewayStats" do
      optional :gateway_id, :bytes, 1
      optional :ip, :string, 9
      optional :time, :message, 2, "google.protobuf.Timestamp"
      optional :location, :message, 3, "common.Location"
      optional :config_version, :string, 4
      optional :rx_packets_received, :uint32, 5
      optional :rx_packets_received_ok, :uint32, 6
      optional :tx_packets_received, :uint32, 7
      optional :tx_packets_emitted, :uint32, 8
      map :meta_data, :string, :string, 10
      optional :stats_id, :bytes, 11
    end
    add_message "gw.UplinkRXInfo" do
      optional :gateway_id, :bytes, 1
      optional :time, :message, 2, "google.protobuf.Timestamp"
      optional :time_since_gps_epoch, :message, 3, "google.protobuf.Duration"
      optional :rssi, :int32, 5
      optional :lora_snr, :double, 6
      optional :channel, :uint32, 7
      optional :rf_chain, :uint32, 8
      optional :board, :uint32, 9
      optional :antenna, :uint32, 10
      optional :location, :message, 11, "common.Location"
      optional :fine_timestamp_type, :enum, 12, "gw.FineTimestampType"
      optional :context, :bytes, 15
      optional :uplink_id, :bytes, 16
      optional :crc_status, :enum, 17, "gw.CRCStatus"
      oneof :fine_timestamp do
        optional :encrypted_fine_timestamp, :message, 13, "gw.EncryptedFineTimestamp"
        optional :plain_fine_timestamp, :message, 14, "gw.PlainFineTimestamp"
      end
    end
    add_message "gw.DownlinkTXInfo" do
      optional :gateway_id, :bytes, 1
      optional :frequency, :uint32, 5
      optional :power, :int32, 6
      optional :modulation, :enum, 7, "common.Modulation"
      optional :board, :uint32, 10
      optional :antenna, :uint32, 11
      optional :timing, :enum, 12, "gw.DownlinkTiming"
      optional :context, :bytes, 16
      oneof :modulation_info do
        optional :lora_modulation_info, :message, 8, "gw.LoRaModulationInfo"
        optional :fsk_modulation_info, :message, 9, "gw.FSKModulationInfo"
      end
      oneof :timing_info do
        optional :immediately_timing_info, :message, 13, "gw.ImmediatelyTimingInfo"
        optional :delay_timing_info, :message, 14, "gw.DelayTimingInfo"
        optional :gps_epoch_timing_info, :message, 15, "gw.GPSEpochTimingInfo"
      end
    end
    add_message "gw.ImmediatelyTimingInfo" do
    end
    add_message "gw.DelayTimingInfo" do
      optional :delay, :message, 1, "google.protobuf.Duration"
    end
    add_message "gw.GPSEpochTimingInfo" do
      optional :time_since_gps_epoch, :message, 1, "google.protobuf.Duration"
    end
    add_message "gw.UplinkFrame" do
      optional :phy_payload, :bytes, 1
      optional :tx_info, :message, 2, "gw.UplinkTXInfo"
      optional :rx_info, :message, 3, "gw.UplinkRXInfo"
    end
    add_message "gw.UplinkFrameSet" do
      optional :phy_payload, :bytes, 1
      optional :tx_info, :message, 2, "gw.UplinkTXInfo"
      repeated :rx_info, :message, 3, "gw.UplinkRXInfo"
    end
    add_message "gw.DownlinkFrame" do
      optional :phy_payload, :bytes, 1
      optional :tx_info, :message, 2, "gw.DownlinkTXInfo"
      optional :token, :uint32, 3
      optional :downlink_id, :bytes, 4
      repeated :items, :message, 5, "gw.DownlinkFrameItem"
      optional :gateway_id, :bytes, 6
    end
    add_message "gw.DownlinkFrameItem" do
      optional :phy_payload, :bytes, 1
      optional :tx_info, :message, 2, "gw.DownlinkTXInfo"
    end
    add_message "gw.DownlinkTXAck" do
      optional :gateway_id, :bytes, 1
      optional :token, :uint32, 2
      optional :error, :string, 3
      optional :downlink_id, :bytes, 4
      repeated :items, :message, 5, "gw.DownlinkTXAckItem"
    end
    add_message "gw.DownlinkTXAckItem" do
      optional :status, :enum, 1, "gw.TxAckStatus"
    end
    add_message "gw.GatewayConfiguration" do
      optional :gateway_id, :bytes, 1
      optional :version, :string, 2
      repeated :channels, :message, 3, "gw.ChannelConfiguration"
      optional :stats_interval, :message, 4, "google.protobuf.Duration"
    end
    add_message "gw.ChannelConfiguration" do
      optional :frequency, :uint32, 1
      optional :modulation, :enum, 2, "common.Modulation"
      optional :board, :uint32, 5
      optional :demodulator, :uint32, 6
      oneof :modulation_config do
        optional :lora_modulation_config, :message, 3, "gw.LoRaModulationConfig"
        optional :fsk_modulation_config, :message, 4, "gw.FSKModulationConfig"
      end
    end
    add_message "gw.LoRaModulationConfig" do
      optional :bandwidth, :uint32, 1
      repeated :spreading_factors, :uint32, 2
    end
    add_message "gw.FSKModulationConfig" do
      optional :bandwidth, :uint32, 1
      optional :bitrate, :uint32, 2
    end
    add_message "gw.GatewayCommandExecRequest" do
      optional :gateway_id, :bytes, 1
      optional :command, :string, 2
      optional :ExecId, :bytes, 3
      optional :stdin, :bytes, 4
      map :environment, :string, :string, 5
    end
    add_message "gw.GatewayCommandExecResponse" do
      optional :gateway_id, :bytes, 1
      optional :exec_id, :bytes, 2
      optional :stdout, :bytes, 3
      optional :stderr, :bytes, 4
      optional :error, :string, 5
    end
    add_message "gw.RawPacketForwarderEvent" do
      optional :gateway_id, :bytes, 1
      optional :raw_id, :bytes, 2
      optional :payload, :bytes, 3
    end
    add_message "gw.RawPacketForwarderCommand" do
      optional :gateway_id, :bytes, 1
      optional :raw_id, :bytes, 2
      optional :payload, :bytes, 3
    end
    add_enum "gw.DownlinkTiming" do
      value :IMMEDIATELY, 0
      value :DELAY, 1
      value :GPS_EPOCH, 2
    end
    add_enum "gw.FineTimestampType" do
      value :NONE, 0
      value :ENCRYPTED, 1
      value :PLAIN, 2
    end
    add_enum "gw.CRCStatus" do
      value :NO_CRC, 0
      value :BAD_CRC, 1
      value :CRC_OK, 2
    end
    add_enum "gw.TxAckStatus" do
      value :IGNORED, 0
      value :OK, 1
      value :TOO_LATE, 2
      value :TOO_EARLY, 3
      value :COLLISION_PACKET, 4
      value :COLLISION_BEACON, 5
      value :TX_FREQ, 6
      value :TX_POWER, 7
      value :GPS_UNLOCKED, 8
      value :QUEUE_FULL, 9
      value :INTERNAL_ERROR, 10
    end
  end
end

module ChirpStackAPI
  module GW
    UplinkTXInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("gw.UplinkTXInfo").msgclass
    LoRaModulationInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("gw.LoRaModulationInfo").msgclass
    FSKModulationInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("gw.FSKModulationInfo").msgclass
    EncryptedFineTimestamp = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("gw.EncryptedFineTimestamp").msgclass
    PlainFineTimestamp = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("gw.PlainFineTimestamp").msgclass
    GatewayStats = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("gw.GatewayStats").msgclass
    UplinkRXInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("gw.UplinkRXInfo").msgclass
    DownlinkTXInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("gw.DownlinkTXInfo").msgclass
    ImmediatelyTimingInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("gw.ImmediatelyTimingInfo").msgclass
    DelayTimingInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("gw.DelayTimingInfo").msgclass
    GPSEpochTimingInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("gw.GPSEpochTimingInfo").msgclass
    UplinkFrame = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("gw.UplinkFrame").msgclass
    UplinkFrameSet = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("gw.UplinkFrameSet").msgclass
    DownlinkFrame = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("gw.DownlinkFrame").msgclass
    DownlinkFrameItem = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("gw.DownlinkFrameItem").msgclass
    DownlinkTXAck = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("gw.DownlinkTXAck").msgclass
    DownlinkTXAckItem = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("gw.DownlinkTXAckItem").msgclass
    GatewayConfiguration = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("gw.GatewayConfiguration").msgclass
    ChannelConfiguration = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("gw.ChannelConfiguration").msgclass
    LoRaModulationConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("gw.LoRaModulationConfig").msgclass
    FSKModulationConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("gw.FSKModulationConfig").msgclass
    GatewayCommandExecRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("gw.GatewayCommandExecRequest").msgclass
    GatewayCommandExecResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("gw.GatewayCommandExecResponse").msgclass
    RawPacketForwarderEvent = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("gw.RawPacketForwarderEvent").msgclass
    RawPacketForwarderCommand = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("gw.RawPacketForwarderCommand").msgclass
    DownlinkTiming = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("gw.DownlinkTiming").enummodule
    FineTimestampType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("gw.FineTimestampType").enummodule
    CRCStatus = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("gw.CRCStatus").enummodule
    TxAckStatus = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("gw.TxAckStatus").enummodule
  end
end
