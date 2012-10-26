require 'bundler'
require 'rack/sendfile'
require 'rack/cache'

require File.join(File.expand_path(File.dirname(__FILE__)), "lib", "imageproxy")

use Rack::Cache,
  :verbose => true,
  :metastore => 'file:/tmp/rack/meta',
  :entitystore => 'file:/tmp/rack/body'

run Rack::Sendfile.new(Imageproxy::Server.new)