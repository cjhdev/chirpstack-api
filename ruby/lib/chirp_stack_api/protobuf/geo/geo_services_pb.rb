# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: geo/geo.proto for package 'ChirpStackAPI.Geo'

require 'grpc'
require 'geo/geo_pb'

module ChirpStackAPI
  module Geo
    module GeolocationServerService
      # GeolocationServerService implements a geolocation-server service.
      class Service

        include GRPC::GenericService

        self.marshal_class_method = :encode
        self.unmarshal_class_method = :decode
        self.service_name = 'geo.GeolocationServerService'

        # ResolveTDOA resolves the location based on TDOA.
        rpc :ResolveTDOA, ::ChirpStackAPI::Geo::ResolveTDOARequest, ::ChirpStackAPI::Geo::ResolveTDOAResponse
        # ResolveMultiFrameTDOA resolves the location using TDOA, based on
        # multiple frames.
        rpc :ResolveMultiFrameTDOA, ::ChirpStackAPI::Geo::ResolveMultiFrameTDOARequest, ::ChirpStackAPI::Geo::ResolveMultiFrameTDOAResponse
      end

      Stub = Service.rpc_stub_class
    end
  end
end
