require 'bundler'
Bundler.setup

require 'rack/sendfile'
require 'rack/cache'

require File.join(File.expand_path(File.dirname(__FILE__)), "lib", "imageproxy")

#use Rack::Cache,
#  :verbose => true,
#  :metastore => 'file:/tmp/rack/meta',
#  :entitystore => 'file:/tmp/rack/body'
  
use Rack::Static, :urls => ['/mu-d02a8f85-c845ca37-b84f1be7-bc5f88f5'], :root => 'public'

run Rack::Sendfile.new(Imageproxy::Server.new)
