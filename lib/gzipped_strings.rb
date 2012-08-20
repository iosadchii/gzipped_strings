require "gzipped_strings/version"

module GzippedStrings
  module InstanceMethods
    def gz_compress
      StringIO.open do |io|
        Zlib::GzipWriter.wrap(io) { |gz| gz.write(self) }
        io.string
      end
    end

    def gz_decompress
      Zlib::GzipReader.new(StringIO.new(self)).read
    end
  end
  
  def self.included(receiver)
    receiver.send :include, InstanceMethods
  end
end

class String
  include GzippedStrings
end
