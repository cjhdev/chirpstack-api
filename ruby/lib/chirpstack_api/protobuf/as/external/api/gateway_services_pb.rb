# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: as/external/api/gateway.proto for package 'ChirpStackAPI.AS.External.API'

require 'grpc'
require 'as/external/api/gateway_pb'

module ChirpStackAPI
  module AS
    module External
      module API
        module GatewayService
          # GatewayService is the service managing the gateways.
          class Service

            include GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'api.GatewayService'

            # Create creates the given gateway.
            rpc :Create, ::ChirpStackAPI::AS::External::API::CreateGatewayRequest, ::Google::Protobuf::Empty
            # Get returns the gateway for the requested mac address.
            rpc :Get, ::ChirpStackAPI::AS::External::API::GetGatewayRequest, ::ChirpStackAPI::AS::External::API::GetGatewayResponse
            # Update updates the gateway matching the given mac address.
            rpc :Update, ::ChirpStackAPI::AS::External::API::UpdateGatewayRequest, ::Google::Protobuf::Empty
            # Delete deletes the gateway matching the given mac address.
            rpc :Delete, ::ChirpStackAPI::AS::External::API::DeleteGatewayRequest, ::Google::Protobuf::Empty
            # List lists the gateways.
            rpc :List, ::ChirpStackAPI::AS::External::API::ListGatewayRequest, ::ChirpStackAPI::AS::External::API::ListGatewayResponse
            # GetStats lists the gateway stats given the query parameters.
            rpc :GetStats, ::ChirpStackAPI::AS::External::API::GetGatewayStatsRequest, ::ChirpStackAPI::AS::External::API::GetGatewayStatsResponse
            # GetLastPing returns the last emitted ping and gateways receiving this ping.
            rpc :GetLastPing, ::ChirpStackAPI::AS::External::API::GetLastPingRequest, ::ChirpStackAPI::AS::External::API::GetLastPingResponse
            # GenerateGatewayClientCertificate returns TLS certificate gateway authentication / authorization.
            # This endpoint can ony be used when ChirpStack Network Server is configured with a gateway
            # CA certificate and key, which is used for signing the TLS certificate. The returned TLS
            # certificate will have the Gateway ID as Common Name.
            rpc :GenerateGatewayClientCertificate, ::ChirpStackAPI::AS::External::API::GenerateGatewayClientCertificateRequest, ::ChirpStackAPI::AS::External::API::GenerateGatewayClientCertificateResponse
            # StreamFrameLogs streams the uplink and downlink frame-logs for the given gateway ID.
            # Notes:
            #   * These are the raw LoRaWAN frames and this endpoint is intended for debugging only.
            #   * This endpoint does not work from a web-browser.
            rpc :StreamFrameLogs, ::ChirpStackAPI::AS::External::API::StreamGatewayFrameLogsRequest, stream(::ChirpStackAPI::AS::External::API::StreamGatewayFrameLogsResponse)
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end