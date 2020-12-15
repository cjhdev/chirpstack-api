# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: as/external/api/profiles.proto

require 'google/protobuf'

require 'google/protobuf/duration_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("as/external/api/profiles.proto", :syntax => :proto3) do
    add_message "api.ServiceProfile" do
      optional :id, :string, 1
      optional :name, :string, 21
      optional :organization_id, :int64, 22
      optional :network_server_id, :int64, 23
      optional :ul_rate, :uint32, 2
      optional :ul_bucket_size, :uint32, 3
      optional :ul_rate_policy, :enum, 4, "api.RatePolicy"
      optional :dl_rate, :uint32, 5
      optional :dl_bucket_size, :uint32, 6
      optional :dl_rate_policy, :enum, 7, "api.RatePolicy"
      optional :add_gw_metadata, :bool, 8
      optional :dev_status_req_freq, :uint32, 9
      optional :report_dev_status_battery, :bool, 10
      optional :report_dev_status_margin, :bool, 11
      optional :dr_min, :uint32, 12
      optional :dr_max, :uint32, 13
      optional :channel_mask, :bytes, 14
      optional :pr_allowed, :bool, 15
      optional :hr_allowed, :bool, 16
      optional :ra_allowed, :bool, 17
      optional :nwk_geo_loc, :bool, 18
      optional :target_per, :uint32, 19
      optional :min_gw_diversity, :uint32, 20
    end
    add_message "api.DeviceProfile" do
      optional :id, :string, 1
      optional :name, :string, 21
      optional :organization_id, :int64, 22
      optional :network_server_id, :int64, 23
      optional :supports_class_b, :bool, 2
      optional :class_b_timeout, :uint32, 3
      optional :ping_slot_period, :uint32, 4
      optional :ping_slot_dr, :uint32, 5
      optional :ping_slot_freq, :uint32, 6
      optional :supports_class_c, :bool, 7
      optional :class_c_timeout, :uint32, 8
      optional :mac_version, :string, 9
      optional :reg_params_revision, :string, 10
      optional :rx_delay_1, :uint32, 11
      optional :rx_dr_offset_1, :uint32, 12
      optional :rx_datarate_2, :uint32, 13
      optional :rx_freq_2, :uint32, 14
      repeated :factory_preset_freqs, :uint32, 15
      optional :max_eirp, :uint32, 16
      optional :max_duty_cycle, :uint32, 17
      optional :supports_join, :bool, 18
      optional :rf_region, :string, 19
      optional :supports_32bit_f_cnt, :bool, 20
      optional :payload_codec, :string, 24
      optional :payload_encoder_script, :string, 25
      optional :payload_decoder_script, :string, 26
      optional :geoloc_buffer_ttl, :uint32, 27
      optional :geoloc_min_buffer_size, :uint32, 28
      map :tags, :string, :string, 29
      optional :uplink_interval, :message, 30, "google.protobuf.Duration"
    end
    add_enum "api.RatePolicy" do
      value :DROP, 0
      value :MARK, 1
    end
  end
end

module ChirpStackAPI
  module AS
    module External
      module API
        ServiceProfile = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("api.ServiceProfile").msgclass
        DeviceProfile = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("api.DeviceProfile").msgclass
        RatePolicy = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("api.RatePolicy").enummodule
      end
    end
  end
end