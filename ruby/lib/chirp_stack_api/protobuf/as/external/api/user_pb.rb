# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: as/external/api/user.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/protobuf/timestamp_pb'
require 'google/protobuf/empty_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("as/external/api/user.proto", :syntax => :proto3) do
    add_message "api.User" do
      optional :id, :int64, 1
      optional :session_ttl, :int32, 3
      optional :is_admin, :bool, 4
      optional :is_active, :bool, 5
      optional :email, :string, 6
      optional :note, :string, 7
    end
    add_message "api.UserListItem" do
      optional :id, :int64, 1
      optional :email, :string, 2
      optional :session_ttl, :int32, 3
      optional :is_admin, :bool, 4
      optional :is_active, :bool, 5
      optional :created_at, :message, 8, "google.protobuf.Timestamp"
      optional :updated_at, :message, 9, "google.protobuf.Timestamp"
    end
    add_message "api.UserOrganization" do
      optional :organization_id, :int64, 1
      optional :is_admin, :bool, 2
      optional :is_device_admin, :bool, 3
      optional :is_gateway_admin, :bool, 4
    end
    add_message "api.CreateUserRequest" do
      optional :user, :message, 1, "api.User"
      optional :password, :string, 2
      repeated :organizations, :message, 3, "api.UserOrganization"
    end
    add_message "api.CreateUserResponse" do
      optional :id, :int64, 1
    end
    add_message "api.GetUserRequest" do
      optional :id, :int64, 1
    end
    add_message "api.GetUserResponse" do
      optional :user, :message, 1, "api.User"
      optional :created_at, :message, 2, "google.protobuf.Timestamp"
      optional :updated_at, :message, 3, "google.protobuf.Timestamp"
    end
    add_message "api.UpdateUserRequest" do
      optional :user, :message, 1, "api.User"
    end
    add_message "api.DeleteUserRequest" do
      optional :id, :int64, 1
    end
    add_message "api.ListUserRequest" do
      optional :limit, :int64, 1
      optional :offset, :int64, 2
    end
    add_message "api.ListUserResponse" do
      optional :total_count, :int64, 1
      repeated :result, :message, 2, "api.UserListItem"
    end
    add_message "api.UpdateUserPasswordRequest" do
      optional :user_id, :int64, 1
      optional :password, :string, 2
    end
  end
end

module ChirpStackAPI
  module AS
    module External
      module API
        User = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("api.User").msgclass
        UserListItem = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("api.UserListItem").msgclass
        UserOrganization = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("api.UserOrganization").msgclass
        CreateUserRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("api.CreateUserRequest").msgclass
        CreateUserResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("api.CreateUserResponse").msgclass
        GetUserRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("api.GetUserRequest").msgclass
        GetUserResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("api.GetUserResponse").msgclass
        UpdateUserRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("api.UpdateUserRequest").msgclass
        DeleteUserRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("api.DeleteUserRequest").msgclass
        ListUserRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("api.ListUserRequest").msgclass
        ListUserResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("api.ListUserResponse").msgclass
        UpdateUserPasswordRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("api.UpdateUserPasswordRequest").msgclass
      end
    end
  end
end
