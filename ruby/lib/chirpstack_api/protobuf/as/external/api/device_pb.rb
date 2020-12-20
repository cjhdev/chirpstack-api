# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: as/external/api/device.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/protobuf/timestamp_pb'
require 'google/protobuf/empty_pb'
require 'common/common_pb'
require 'as/external/api/frameLog_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("as/external/api/device.proto", :syntax => :proto3) do
    add_message "api.Device" do
      optional :dev_eui, :string, 1
      optional :name, :string, 2
      optional :application_id, :int64, 3
      optional :description, :string, 4
      optional :device_profile_id, :string, 5
      optional :skip_f_cnt_check, :bool, 6
      optional :reference_altitude, :double, 7
      map :variables, :string, :string, 8
      map :tags, :string, :string, 9
      optional :is_disabled, :bool, 10
    end
    add_message "api.DeviceListItem" do
      optional :dev_eui, :string, 1
      optional :name, :string, 2
      optional :application_id, :int64, 3
      optional :description, :string, 4
      optional :device_profile_id, :string, 5
      optional :device_profile_name, :string, 6
      optional :device_status_battery, :uint32, 7
      optional :device_status_margin, :int32, 8
      optional :device_status_external_power_source, :bool, 10
      optional :device_status_battery_level_unavailable, :bool, 11
      optional :device_status_battery_level, :float, 12
      optional :last_seen_at, :message, 9, "google.protobuf.Timestamp"
    end
    add_message "api.DeviceKeys" do
      optional :dev_eui, :string, 1
      optional :nwk_key, :string, 2
      optional :app_key, :string, 3
      optional :gen_app_key, :string, 4
    end
    add_message "api.CreateDeviceRequest" do
      optional :device, :message, 1, "api.Device"
    end
    add_message "api.GetDeviceRequest" do
      optional :dev_eui, :string, 1
    end
    add_message "api.GetDeviceResponse" do
      optional :device, :message, 1, "api.Device"
      optional :last_seen_at, :message, 5, "google.protobuf.Timestamp"
      optional :device_status_battery, :uint32, 6
      optional :device_status_margin, :int32, 20
      optional :location, :message, 21, "common.Location"
    end
    add_message "api.ListDeviceRequest" do
      optional :limit, :int64, 1
      optional :offset, :int64, 2
      optional :application_id, :int64, 3
      optional :search, :string, 4
      optional :multicast_group_id, :string, 5
      optional :service_profile_id, :string, 6
      map :tags, :string, :string, 7
    end
    add_message "api.ListDeviceResponse" do
      optional :total_count, :int64, 1
      repeated :result, :message, 2, "api.DeviceListItem"
    end
    add_message "api.DeleteDeviceRequest" do
      optional :dev_eui, :string, 1
    end
    add_message "api.UpdateDeviceRequest" do
      optional :device, :message, 1, "api.Device"
    end
    add_message "api.CreateDeviceKeysRequest" do
      optional :device_keys, :message, 1, "api.DeviceKeys"
    end
    add_message "api.GetDeviceKeysRequest" do
      optional :dev_eui, :string, 1
    end
    add_message "api.GetDeviceKeysResponse" do
      optional :device_keys, :message, 1, "api.DeviceKeys"
    end
    add_message "api.UpdateDeviceKeysRequest" do
      optional :device_keys, :message, 1, "api.DeviceKeys"
    end
    add_message "api.DeleteDeviceKeysRequest" do
      optional :dev_eui, :string, 1
    end
    add_message "api.DeviceActivation" do
      optional :dev_eui, :string, 1
      optional :dev_addr, :string, 2
      optional :app_s_key, :string, 3
      optional :nwk_s_enc_key, :string, 4
      optional :s_nwk_s_int_key, :string, 8
      optional :f_nwk_s_int_key, :string, 9
      optional :f_cnt_up, :uint32, 5
      optional :n_f_cnt_down, :uint32, 6
      optional :a_f_cnt_down, :uint32, 10
    end
    add_message "api.ActivateDeviceRequest" do
      optional :device_activation, :message, 1, "api.DeviceActivation"
    end
    add_message "api.DeactivateDeviceRequest" do
      optional :dev_eui, :string, 1
    end
    add_message "api.GetDeviceActivationRequest" do
      optional :dev_eui, :string, 1
    end
    add_message "api.GetDeviceActivationResponse" do
      optional :device_activation, :message, 1, "api.DeviceActivation"
    end
    add_message "api.GetRandomDevAddrRequest" do
      optional :dev_eui, :string, 1
    end
    add_message "api.GetRandomDevAddrResponse" do
      optional :dev_addr, :string, 1
    end
    add_message "api.StreamDeviceFrameLogsRequest" do
      optional :dev_eui, :string, 1
    end
    add_message "api.StreamDeviceFrameLogsResponse" do
      oneof :frame do
        optional :uplink_frame, :message, 1, "api.UplinkFrameLog"
        optional :downlink_frame, :message, 2, "api.DownlinkFrameLog"
      end
    end
    add_message "api.StreamDeviceEventLogsRequest" do
      optional :dev_eui, :string, 1
    end
    add_message "api.StreamDeviceEventLogsResponse" do
      optional :type, :string, 1
      optional :payload_json, :string, 2
    end
  end
end

module ChirpStackAPI
  module AS
    module External
      module API
        Device = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("api.Device").msgclass
        DeviceListItem = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("api.DeviceListItem").msgclass
        DeviceKeys = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("api.DeviceKeys").msgclass
        CreateDeviceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("api.CreateDeviceRequest").msgclass
        GetDeviceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("api.GetDeviceRequest").msgclass
        GetDeviceResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("api.GetDeviceResponse").msgclass
        ListDeviceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("api.ListDeviceRequest").msgclass
        ListDeviceResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("api.ListDeviceResponse").msgclass
        DeleteDeviceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("api.DeleteDeviceRequest").msgclass
        UpdateDeviceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("api.UpdateDeviceRequest").msgclass
        CreateDeviceKeysRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("api.CreateDeviceKeysRequest").msgclass
        GetDeviceKeysRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("api.GetDeviceKeysRequest").msgclass
        GetDeviceKeysResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("api.GetDeviceKeysResponse").msgclass
        UpdateDeviceKeysRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("api.UpdateDeviceKeysRequest").msgclass
        DeleteDeviceKeysRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("api.DeleteDeviceKeysRequest").msgclass
        DeviceActivation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("api.DeviceActivation").msgclass
        ActivateDeviceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("api.ActivateDeviceRequest").msgclass
        DeactivateDeviceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("api.DeactivateDeviceRequest").msgclass
        GetDeviceActivationRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("api.GetDeviceActivationRequest").msgclass
        GetDeviceActivationResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("api.GetDeviceActivationResponse").msgclass
        GetRandomDevAddrRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("api.GetRandomDevAddrRequest").msgclass
        GetRandomDevAddrResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("api.GetRandomDevAddrResponse").msgclass
        StreamDeviceFrameLogsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("api.StreamDeviceFrameLogsRequest").msgclass
        StreamDeviceFrameLogsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("api.StreamDeviceFrameLogsResponse").msgclass
        StreamDeviceEventLogsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("api.StreamDeviceEventLogsRequest").msgclass
        StreamDeviceEventLogsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("api.StreamDeviceEventLogsResponse").msgclass
      end
    end
  end
end