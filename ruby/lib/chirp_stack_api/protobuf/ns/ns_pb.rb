# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: ns/ns.proto

require 'google/protobuf'

require 'google/protobuf/timestamp_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/empty_pb'
require 'common/common_pb'
require 'gw/gw_pb'
require 'ns/profiles_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("ns/ns.proto", :syntax => :proto3) do
    add_message "ns.CreateServiceProfileRequest" do
      optional :service_profile, :message, 1, "ns.ServiceProfile"
    end
    add_message "ns.CreateServiceProfileResponse" do
      optional :id, :bytes, 1
    end
    add_message "ns.GetServiceProfileRequest" do
      optional :id, :bytes, 1
    end
    add_message "ns.GetServiceProfileResponse" do
      optional :service_profile, :message, 1, "ns.ServiceProfile"
      optional :created_at, :message, 2, "google.protobuf.Timestamp"
      optional :updated_at, :message, 3, "google.protobuf.Timestamp"
    end
    add_message "ns.UpdateServiceProfileRequest" do
      optional :service_profile, :message, 1, "ns.ServiceProfile"
    end
    add_message "ns.DeleteServiceProfileRequest" do
      optional :id, :bytes, 1
    end
    add_message "ns.CreateRoutingProfileRequest" do
      optional :routing_profile, :message, 1, "ns.RoutingProfile"
    end
    add_message "ns.CreateRoutingProfileResponse" do
      optional :id, :bytes, 1
    end
    add_message "ns.GetRoutingProfileRequest" do
      optional :id, :bytes, 1
    end
    add_message "ns.GetRoutingProfileResponse" do
      optional :routing_profile, :message, 1, "ns.RoutingProfile"
      optional :created_at, :message, 2, "google.protobuf.Timestamp"
      optional :updated_at, :message, 3, "google.protobuf.Timestamp"
    end
    add_message "ns.UpdateRoutingProfileRequest" do
      optional :routing_profile, :message, 1, "ns.RoutingProfile"
    end
    add_message "ns.DeleteRoutingProfileRequest" do
      optional :id, :bytes, 1
    end
    add_message "ns.CreateDeviceProfileRequest" do
      optional :device_profile, :message, 1, "ns.DeviceProfile"
    end
    add_message "ns.CreateDeviceProfileResponse" do
      optional :id, :bytes, 1
    end
    add_message "ns.GetDeviceProfileRequest" do
      optional :id, :bytes, 1
    end
    add_message "ns.GetDeviceProfileResponse" do
      optional :device_profile, :message, 1, "ns.DeviceProfile"
      optional :created_at, :message, 2, "google.protobuf.Timestamp"
      optional :updated_at, :message, 3, "google.protobuf.Timestamp"
    end
    add_message "ns.UpdateDeviceProfileRequest" do
      optional :device_profile, :message, 1, "ns.DeviceProfile"
    end
    add_message "ns.DeleteDeviceProfileRequest" do
      optional :id, :bytes, 1
    end
    add_message "ns.Device" do
      optional :dev_eui, :bytes, 1
      optional :device_profile_id, :bytes, 2
      optional :service_profile_id, :bytes, 3
      optional :routing_profile_id, :bytes, 4
      optional :skip_f_cnt_check, :bool, 5
      optional :reference_altitude, :double, 6
      optional :is_disabled, :bool, 7
    end
    add_message "ns.CreateDeviceRequest" do
      optional :device, :message, 1, "ns.Device"
    end
    add_message "ns.GetDeviceRequest" do
      optional :dev_eui, :bytes, 1
    end
    add_message "ns.GetDeviceResponse" do
      optional :device, :message, 1, "ns.Device"
      optional :created_at, :message, 2, "google.protobuf.Timestamp"
      optional :updated_at, :message, 3, "google.protobuf.Timestamp"
    end
    add_message "ns.UpdateDeviceRequest" do
      optional :device, :message, 1, "ns.Device"
    end
    add_message "ns.DeleteDeviceRequest" do
      optional :dev_eui, :bytes, 1
    end
    add_message "ns.DeviceActivation" do
      optional :dev_eui, :bytes, 1
      optional :dev_addr, :bytes, 2
      optional :s_nwk_s_int_key, :bytes, 3
      optional :f_nwk_s_int_key, :bytes, 4
      optional :nwk_s_enc_key, :bytes, 5
      optional :f_cnt_up, :uint32, 6
      optional :n_f_cnt_down, :uint32, 7
      optional :a_f_cnt_down, :uint32, 8
      optional :skip_f_cnt_check, :bool, 9
    end
    add_message "ns.ActivateDeviceRequest" do
      optional :device_activation, :message, 1, "ns.DeviceActivation"
    end
    add_message "ns.DeactivateDeviceRequest" do
      optional :dev_eui, :bytes, 1
    end
    add_message "ns.GetDeviceActivationRequest" do
      optional :dev_eui, :bytes, 1
    end
    add_message "ns.GetDeviceActivationResponse" do
      optional :device_activation, :message, 1, "ns.DeviceActivation"
    end
    add_message "ns.GetRandomDevAddrResponse" do
      optional :dev_addr, :bytes, 1
    end
    add_message "ns.CreateMACCommandQueueItemRequest" do
      optional :dev_eui, :bytes, 1
      optional :cid, :uint32, 4
      repeated :commands, :bytes, 5
    end
    add_message "ns.SendProprietaryPayloadRequest" do
      optional :mac_payload, :bytes, 1
      optional :mic, :bytes, 2
      repeated :gateway_macs, :bytes, 3
      optional :polarization_inversion, :bool, 4
      optional :frequency, :uint32, 5
      optional :dr, :uint32, 6
    end
    add_message "ns.Gateway" do
      optional :id, :bytes, 1
      optional :location, :message, 2, "common.Location"
      optional :gateway_profile_id, :bytes, 3
      repeated :boards, :message, 4, "ns.GatewayBoard"
      optional :routing_profile_id, :bytes, 5
    end
    add_message "ns.GatewayBoard" do
      optional :fpga_id, :bytes, 1
      optional :fine_timestamp_key, :bytes, 2
    end
    add_message "ns.CreateGatewayRequest" do
      optional :gateway, :message, 1, "ns.Gateway"
    end
    add_message "ns.GetGatewayRequest" do
      optional :id, :bytes, 1
    end
    add_message "ns.GetGatewayResponse" do
      optional :gateway, :message, 1, "ns.Gateway"
      optional :created_at, :message, 2, "google.protobuf.Timestamp"
      optional :updated_at, :message, 3, "google.protobuf.Timestamp"
      optional :first_seen_at, :message, 4, "google.protobuf.Timestamp"
      optional :last_seen_at, :message, 5, "google.protobuf.Timestamp"
    end
    add_message "ns.UpdateGatewayRequest" do
      optional :gateway, :message, 1, "ns.Gateway"
    end
    add_message "ns.DeleteGatewayRequest" do
      optional :id, :bytes, 1
    end
    add_message "ns.GenerateGatewayClientCertificateRequest" do
      optional :id, :bytes, 1
    end
    add_message "ns.GenerateGatewayClientCertificateResponse" do
      optional :tls_cert, :bytes, 1
      optional :tls_key, :bytes, 2
      optional :ca_cert, :bytes, 3
      optional :expires_at, :message, 4, "google.protobuf.Timestamp"
    end
    add_message "ns.GatewayStats" do
      optional :timestamp, :message, 1, "google.protobuf.Timestamp"
      optional :rx_packets_received, :int32, 2
      optional :rx_packets_received_ok, :int32, 3
      optional :tx_packets_received, :int32, 4
      optional :tx_packets_emitted, :int32, 5
    end
    add_message "ns.GetGatewayStatsRequest" do
      optional :gateway_id, :bytes, 1
      optional :interval, :enum, 2, "ns.AggregationInterval"
      optional :start_timestamp, :message, 3, "google.protobuf.Timestamp"
      optional :end_timestamp, :message, 4, "google.protobuf.Timestamp"
    end
    add_message "ns.GetGatewayStatsResponse" do
      repeated :result, :message, 1, "ns.GatewayStats"
    end
    add_message "ns.DeviceQueueItem" do
      optional :dev_eui, :bytes, 1
      optional :frm_payload, :bytes, 2
      optional :f_cnt, :uint32, 3
      optional :f_port, :uint32, 4
      optional :confirmed, :bool, 5
      optional :dev_addr, :bytes, 6
    end
    add_message "ns.CreateDeviceQueueItemRequest" do
      optional :item, :message, 1, "ns.DeviceQueueItem"
    end
    add_message "ns.FlushDeviceQueueForDevEUIRequest" do
      optional :dev_eui, :bytes, 1
    end
    add_message "ns.GetDeviceQueueItemsForDevEUIRequest" do
      optional :dev_eui, :bytes, 1
      optional :count_only, :bool, 2
    end
    add_message "ns.GetDeviceQueueItemsForDevEUIResponse" do
      repeated :items, :message, 1, "ns.DeviceQueueItem"
      optional :total_count, :uint32, 2
    end
    add_message "ns.GetNextDownlinkFCntForDevEUIRequest" do
      optional :dev_eui, :bytes, 1
    end
    add_message "ns.GetNextDownlinkFCntForDevEUIResponse" do
      optional :f_cnt, :uint32, 1
    end
    add_message "ns.UplinkFrameLog" do
      optional :phy_payload, :bytes, 1
      optional :tx_info, :message, 2, "gw.UplinkTXInfo"
      repeated :rx_info, :message, 3, "gw.UplinkRXInfo"
    end
    add_message "ns.DownlinkFrameLog" do
      optional :phy_payload, :bytes, 1
      optional :tx_info, :message, 2, "gw.DownlinkTXInfo"
      optional :token, :uint32, 3
      optional :downlink_id, :bytes, 4
      optional :gateway_id, :bytes, 5
    end
    add_message "ns.StreamFrameLogsForGatewayRequest" do
      optional :gateway_id, :bytes, 1
    end
    add_message "ns.StreamFrameLogsForGatewayResponse" do
      oneof :frame do
        optional :uplink_frame_set, :message, 1, "ns.UplinkFrameLog"
        optional :downlink_frame, :message, 2, "ns.DownlinkFrameLog"
      end
    end
    add_message "ns.StreamFrameLogsForDeviceRequest" do
      optional :dev_eui, :bytes, 1
    end
    add_message "ns.StreamFrameLogsForDeviceResponse" do
      oneof :frame do
        optional :uplink_frame_set, :message, 1, "ns.UplinkFrameLog"
        optional :downlink_frame, :message, 2, "ns.DownlinkFrameLog"
      end
    end
    add_message "ns.GetVersionResponse" do
      optional :version, :string, 1
      optional :region, :enum, 2, "common.Region"
    end
    add_message "ns.GatewayProfile" do
      optional :id, :bytes, 1
      repeated :channels, :uint32, 2
      repeated :extra_channels, :message, 3, "ns.GatewayProfileExtraChannel"
      optional :stats_interval, :message, 4, "google.protobuf.Duration"
    end
    add_message "ns.GatewayProfileExtraChannel" do
      optional :modulation, :enum, 1, "common.Modulation"
      optional :frequency, :uint32, 2
      optional :bandwidth, :uint32, 3
      optional :bitrate, :uint32, 4
      repeated :spreading_factors, :uint32, 5
    end
    add_message "ns.CreateGatewayProfileRequest" do
      optional :gateway_profile, :message, 1, "ns.GatewayProfile"
    end
    add_message "ns.CreateGatewayProfileResponse" do
      optional :id, :bytes, 1
    end
    add_message "ns.GetGatewayProfileRequest" do
      optional :id, :bytes, 1
    end
    add_message "ns.GetGatewayProfileResponse" do
      optional :gateway_profile, :message, 1, "ns.GatewayProfile"
      optional :created_at, :message, 2, "google.protobuf.Timestamp"
      optional :updated_at, :message, 3, "google.protobuf.Timestamp"
    end
    add_message "ns.UpdateGatewayProfileRequest" do
      optional :gateway_profile, :message, 1, "ns.GatewayProfile"
    end
    add_message "ns.DeleteGatewayProfileRequest" do
      optional :id, :bytes, 1
    end
    add_message "ns.MulticastGroup" do
      optional :id, :bytes, 1
      optional :mc_addr, :bytes, 2
      optional :mc_nwk_s_key, :bytes, 3
      optional :f_cnt, :uint32, 4
      optional :group_type, :enum, 5, "ns.MulticastGroupType"
      optional :dr, :uint32, 6
      optional :frequency, :uint32, 7
      optional :ping_slot_period, :uint32, 8
      optional :service_profile_id, :bytes, 9
      optional :routing_profile_id, :bytes, 10
    end
    add_message "ns.CreateMulticastGroupRequest" do
      optional :multicast_group, :message, 1, "ns.MulticastGroup"
    end
    add_message "ns.CreateMulticastGroupResponse" do
      optional :id, :bytes, 1
    end
    add_message "ns.GetMulticastGroupRequest" do
      optional :id, :bytes, 1
    end
    add_message "ns.GetMulticastGroupResponse" do
      optional :multicast_group, :message, 1, "ns.MulticastGroup"
      optional :created_at, :message, 2, "google.protobuf.Timestamp"
      optional :updated_at, :message, 3, "google.protobuf.Timestamp"
    end
    add_message "ns.UpdateMulticastGroupRequest" do
      optional :multicast_group, :message, 1, "ns.MulticastGroup"
    end
    add_message "ns.DeleteMulticastGroupRequest" do
      optional :id, :bytes, 1
    end
    add_message "ns.AddDeviceToMulticastGroupRequest" do
      optional :dev_eui, :bytes, 1
      optional :multicast_group_id, :bytes, 2
    end
    add_message "ns.RemoveDeviceFromMulticastGroupRequest" do
      optional :dev_eui, :bytes, 1
      optional :multicast_group_id, :bytes, 2
    end
    add_message "ns.MulticastQueueItem" do
      optional :multicast_group_id, :bytes, 1
      optional :f_cnt, :uint32, 2
      optional :f_port, :uint32, 3
      optional :frm_payload, :bytes, 4
    end
    add_message "ns.EnqueueMulticastQueueItemRequest" do
      optional :multicast_queue_item, :message, 1, "ns.MulticastQueueItem"
    end
    add_message "ns.FlushMulticastQueueForMulticastGroupRequest" do
      optional :multicast_group_id, :bytes, 1
    end
    add_message "ns.GetMulticastQueueItemsForMulticastGroupRequest" do
      optional :multicast_group_id, :bytes, 1
    end
    add_message "ns.GetMulticastQueueItemsForMulticastGroupResponse" do
      repeated :multicast_queue_items, :message, 1, "ns.MulticastQueueItem"
    end
    add_enum "ns.RXWindow" do
      value :RX1, 0
      value :RX2, 1
    end
    add_enum "ns.AggregationInterval" do
      value :SECOND, 0
      value :MINUTE, 1
      value :HOUR, 2
      value :DAY, 3
      value :WEEK, 4
      value :MONTH, 5
      value :QUARTER, 6
      value :YEAR, 7
    end
    add_enum "ns.MulticastGroupType" do
      value :CLASS_C, 0
      value :CLASS_B, 1
    end
  end
end

module ChirpStackAPI
  module NS
    CreateServiceProfileRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ns.CreateServiceProfileRequest").msgclass
    CreateServiceProfileResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ns.CreateServiceProfileResponse").msgclass
    GetServiceProfileRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ns.GetServiceProfileRequest").msgclass
    GetServiceProfileResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ns.GetServiceProfileResponse").msgclass
    UpdateServiceProfileRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ns.UpdateServiceProfileRequest").msgclass
    DeleteServiceProfileRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ns.DeleteServiceProfileRequest").msgclass
    CreateRoutingProfileRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ns.CreateRoutingProfileRequest").msgclass
    CreateRoutingProfileResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ns.CreateRoutingProfileResponse").msgclass
    GetRoutingProfileRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ns.GetRoutingProfileRequest").msgclass
    GetRoutingProfileResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ns.GetRoutingProfileResponse").msgclass
    UpdateRoutingProfileRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ns.UpdateRoutingProfileRequest").msgclass
    DeleteRoutingProfileRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ns.DeleteRoutingProfileRequest").msgclass
    CreateDeviceProfileRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ns.CreateDeviceProfileRequest").msgclass
    CreateDeviceProfileResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ns.CreateDeviceProfileResponse").msgclass
    GetDeviceProfileRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ns.GetDeviceProfileRequest").msgclass
    GetDeviceProfileResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ns.GetDeviceProfileResponse").msgclass
    UpdateDeviceProfileRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ns.UpdateDeviceProfileRequest").msgclass
    DeleteDeviceProfileRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ns.DeleteDeviceProfileRequest").msgclass
    Device = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ns.Device").msgclass
    CreateDeviceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ns.CreateDeviceRequest").msgclass
    GetDeviceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ns.GetDeviceRequest").msgclass
    GetDeviceResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ns.GetDeviceResponse").msgclass
    UpdateDeviceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ns.UpdateDeviceRequest").msgclass
    DeleteDeviceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ns.DeleteDeviceRequest").msgclass
    DeviceActivation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ns.DeviceActivation").msgclass
    ActivateDeviceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ns.ActivateDeviceRequest").msgclass
    DeactivateDeviceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ns.DeactivateDeviceRequest").msgclass
    GetDeviceActivationRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ns.GetDeviceActivationRequest").msgclass
    GetDeviceActivationResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ns.GetDeviceActivationResponse").msgclass
    GetRandomDevAddrResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ns.GetRandomDevAddrResponse").msgclass
    CreateMACCommandQueueItemRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ns.CreateMACCommandQueueItemRequest").msgclass
    SendProprietaryPayloadRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ns.SendProprietaryPayloadRequest").msgclass
    Gateway = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ns.Gateway").msgclass
    GatewayBoard = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ns.GatewayBoard").msgclass
    CreateGatewayRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ns.CreateGatewayRequest").msgclass
    GetGatewayRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ns.GetGatewayRequest").msgclass
    GetGatewayResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ns.GetGatewayResponse").msgclass
    UpdateGatewayRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ns.UpdateGatewayRequest").msgclass
    DeleteGatewayRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ns.DeleteGatewayRequest").msgclass
    GenerateGatewayClientCertificateRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ns.GenerateGatewayClientCertificateRequest").msgclass
    GenerateGatewayClientCertificateResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ns.GenerateGatewayClientCertificateResponse").msgclass
    GatewayStats = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ns.GatewayStats").msgclass
    GetGatewayStatsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ns.GetGatewayStatsRequest").msgclass
    GetGatewayStatsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ns.GetGatewayStatsResponse").msgclass
    DeviceQueueItem = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ns.DeviceQueueItem").msgclass
    CreateDeviceQueueItemRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ns.CreateDeviceQueueItemRequest").msgclass
    FlushDeviceQueueForDevEUIRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ns.FlushDeviceQueueForDevEUIRequest").msgclass
    GetDeviceQueueItemsForDevEUIRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ns.GetDeviceQueueItemsForDevEUIRequest").msgclass
    GetDeviceQueueItemsForDevEUIResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ns.GetDeviceQueueItemsForDevEUIResponse").msgclass
    GetNextDownlinkFCntForDevEUIRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ns.GetNextDownlinkFCntForDevEUIRequest").msgclass
    GetNextDownlinkFCntForDevEUIResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ns.GetNextDownlinkFCntForDevEUIResponse").msgclass
    UplinkFrameLog = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ns.UplinkFrameLog").msgclass
    DownlinkFrameLog = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ns.DownlinkFrameLog").msgclass
    StreamFrameLogsForGatewayRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ns.StreamFrameLogsForGatewayRequest").msgclass
    StreamFrameLogsForGatewayResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ns.StreamFrameLogsForGatewayResponse").msgclass
    StreamFrameLogsForDeviceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ns.StreamFrameLogsForDeviceRequest").msgclass
    StreamFrameLogsForDeviceResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ns.StreamFrameLogsForDeviceResponse").msgclass
    GetVersionResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ns.GetVersionResponse").msgclass
    GatewayProfile = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ns.GatewayProfile").msgclass
    GatewayProfileExtraChannel = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ns.GatewayProfileExtraChannel").msgclass
    CreateGatewayProfileRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ns.CreateGatewayProfileRequest").msgclass
    CreateGatewayProfileResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ns.CreateGatewayProfileResponse").msgclass
    GetGatewayProfileRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ns.GetGatewayProfileRequest").msgclass
    GetGatewayProfileResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ns.GetGatewayProfileResponse").msgclass
    UpdateGatewayProfileRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ns.UpdateGatewayProfileRequest").msgclass
    DeleteGatewayProfileRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ns.DeleteGatewayProfileRequest").msgclass
    MulticastGroup = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ns.MulticastGroup").msgclass
    CreateMulticastGroupRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ns.CreateMulticastGroupRequest").msgclass
    CreateMulticastGroupResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ns.CreateMulticastGroupResponse").msgclass
    GetMulticastGroupRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ns.GetMulticastGroupRequest").msgclass
    GetMulticastGroupResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ns.GetMulticastGroupResponse").msgclass
    UpdateMulticastGroupRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ns.UpdateMulticastGroupRequest").msgclass
    DeleteMulticastGroupRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ns.DeleteMulticastGroupRequest").msgclass
    AddDeviceToMulticastGroupRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ns.AddDeviceToMulticastGroupRequest").msgclass
    RemoveDeviceFromMulticastGroupRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ns.RemoveDeviceFromMulticastGroupRequest").msgclass
    MulticastQueueItem = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ns.MulticastQueueItem").msgclass
    EnqueueMulticastQueueItemRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ns.EnqueueMulticastQueueItemRequest").msgclass
    FlushMulticastQueueForMulticastGroupRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ns.FlushMulticastQueueForMulticastGroupRequest").msgclass
    GetMulticastQueueItemsForMulticastGroupRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ns.GetMulticastQueueItemsForMulticastGroupRequest").msgclass
    GetMulticastQueueItemsForMulticastGroupResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ns.GetMulticastQueueItemsForMulticastGroupResponse").msgclass
    RXWindow = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ns.RXWindow").enummodule
    AggregationInterval = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ns.AggregationInterval").enummodule
    MulticastGroupType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("ns.MulticastGroupType").enummodule
  end
end
