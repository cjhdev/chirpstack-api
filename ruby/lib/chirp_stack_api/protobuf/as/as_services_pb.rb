# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: as/as.proto for package 'ChirpStackAPI.AS'

require 'grpc'
require 'as/as_pb'

module ChirpStackAPI
  module AS
    module ApplicationServerService
      # ApplicationServerService is the service providing the application-server interface.
      class Service

        include GRPC::GenericService

        self.marshal_class_method = :encode
        self.unmarshal_class_method = :decode
        self.service_name = 'as.ApplicationServerService'

        # HandleUplinkData handles uplink data received from an end-device.
        rpc :HandleUplinkData, ::ChirpStackAPI::AS::HandleUplinkDataRequest, ::Google::Protobuf::Empty
        # HandleProprietaryUplink handles proprietary uplink payloads.
        rpc :HandleProprietaryUplink, ::ChirpStackAPI::AS::HandleProprietaryUplinkRequest, ::Google::Protobuf::Empty
        # HandleError handles an error message.
        rpc :HandleError, ::ChirpStackAPI::AS::HandleErrorRequest, ::Google::Protobuf::Empty
        # HandleDownlinkACK handles a downlink ACK or nACK response.
        rpc :HandleDownlinkACK, ::ChirpStackAPI::AS::HandleDownlinkACKRequest, ::Google::Protobuf::Empty
        # HandleGatewayStats handles the given gateway stats.
        rpc :HandleGatewayStats, ::ChirpStackAPI::AS::HandleGatewayStatsRequest, ::Google::Protobuf::Empty
        # HandleTXACK handles the TX acknowledgement.
        rpc :HandleTxAck, ::ChirpStackAPI::AS::HandleTxAckRequest, ::Google::Protobuf::Empty
        # SetDeviceStatus updates the device-status for a device.
        rpc :SetDeviceStatus, ::ChirpStackAPI::AS::SetDeviceStatusRequest, ::Google::Protobuf::Empty
        # SetDeviceLocation updates the device-location for a device.
        rpc :SetDeviceLocation, ::ChirpStackAPI::AS::SetDeviceLocationRequest, ::Google::Protobuf::Empty
      end

      Stub = Service.rpc_stub_class
    end
  end
end
