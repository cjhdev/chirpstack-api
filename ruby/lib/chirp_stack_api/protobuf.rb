module ChirpStackAPI

  $LOAD_PATH.unshift File.expand_path("#{__FILE__}/protobuf")

  Dir["protobuf/**/*_pb.rb"].each do |f|
    require f
  end

  $LOAD_PATH.shift

end
