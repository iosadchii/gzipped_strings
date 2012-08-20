require "spec_helper"
require "gzipped_strings"

describe "String with GzippedStrings included" do  

  it "should compress and decompress" do
    "I'm a string".gz_compress.gz_decompress.should eql "I'm a string"
  end
  
end
