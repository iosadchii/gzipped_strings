# GzippedStrings

Monkey patches String class to enable Gzip
compression/decompression. Adds String#gz_compress and
String#gz_decompress

Zlib doesn't provide methods such methods for a reason: ungzipping
files in memory may be considered an antipattern. But if your files
are really small and you understand the dangers then why not get some
convenience with this gem?

## Installation

Add this line to your application's Gemfile:

    gem 'gzipped_strings', :git => "git://github.com/iosadchii/gzipped_strings.git"

And then execute:

    $ bundle

## Usage

    # compress a string
    gzipped_string = "hello".gz_compress

    # decompress it
    gzipped_string.gz_decompress

## Outside of rails

    # Gemfile
    gem 'gzipped_strings', :git => "git://github.com/iosadchii/gzipped_strings.git"

    # gzipped_strings_test.rb
    require 'bundler/setup'
    require 'gzipped_strings'

    puts "test string".gz_compress.gz_decompress
