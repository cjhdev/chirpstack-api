# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: as/external/api/gatewayProfile.proto for package 'ChirpStackAPI.AS.External.API'

require 'grpc'
require 'as/external/api/gatewayProfile_pb'

module ChirpStackAPI
  module AS
    module External
      module API
        module GatewayProfileService
          # GatewayProfileService is the service managing the gateway-profiles.
          class Service

            include GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'api.GatewayProfileService'

            # Create creates the given gateway-profile.
            rpc :Create, ::ChirpStackAPI::AS::External::API::CreateGatewayProfileRequest, ::ChirpStackAPI::AS::External::API::CreateGatewayProfileResponse
            # Get returns the gateway-profile matching the given id.
            rpc :Get, ::ChirpStackAPI::AS::External::API::GetGatewayProfileRequest, ::ChirpStackAPI::AS::External::API::GetGatewayProfileResponse
            # Update updates the given gateway-profile.
            rpc :Update, ::ChirpStackAPI::AS::External::API::UpdateGatewayProfileRequest, ::Google::Protobuf::Empty
            # Delete deletes the gateway-profile matching the given id.
            rpc :Delete, ::ChirpStackAPI::AS::External::API::DeleteGatewayProfileRequest, ::Google::Protobuf::Empty
            # List returns the existing gateway-profiles.
            rpc :List, ::ChirpStackAPI::AS::External::API::ListGatewayProfilesRequest, ::ChirpStackAPI::AS::External::API::ListGatewayProfilesResponse
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end