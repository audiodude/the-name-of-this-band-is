# This file is used by Rack-based servers to start the application.

use Rack::Rewrite do
  rewrite %r{^(?!.*(api|\.)).*$}, '/'
end

require_relative 'config/environment'

run Rails.application
