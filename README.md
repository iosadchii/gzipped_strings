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

    gem 'gzipped_strings'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install gzipped_strings

## Usage

    # compress a string
    gzipped_string = "hello".gz_compress

    # decompress it
    gzipped_string.gz_decompress

