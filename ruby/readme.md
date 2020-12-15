ChirpStack gRPC Interface for Ruby
==================================

gRPC code generated from [chirpstack-api](https://github.com/brocaar/chirpstack-api)
protobuf definitions.

## Installation

Add the following to your Gemfile:

```ruby
gem "chirp_stack_api", git: "https://github.com/brocaar/chirpstack-api", glob: 'ruby/*.gemspec'
```

Then `bundle install`.

## Usage

```ruby
require 'chirp_stack_api'
```

All the generated classes and modules are namespaced within `ChirpStackAPI`.
The nested module names line up with the protobuf definitions.

Refer to gRPC documentation on how to make use of the interfaces.

## License

As per ChirpStack project.
