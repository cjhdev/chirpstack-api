ChirpStack GRPC Interfaces for Ruby
===================================

GRPC code generated from [chirpstack-api](https://github.com/brocaar/chirpstack-api)
protobuf definitions.

## Installation

Install directly from the chirpstack-api repository using Bundle.

Add the following to your Gemfile:

~~~ ruby
gem "chirp_stack_api", git: "https://github.com/brocaar/chirpstack-api", glob: 'ruby/*.gemspec'
~~~

Then `bundle install`.

## Usage

Require as per usual:

~~~ ruby
require 'chirp_stack_api'
~~~

All the generated classes and modules are namespaced within `ChirpStackAPI`.
The nested module names lineup with the protobuf definitions.

Refer to GRPC documentation on how to make use of the interfaces.

## License

As per ChirpStack project.
