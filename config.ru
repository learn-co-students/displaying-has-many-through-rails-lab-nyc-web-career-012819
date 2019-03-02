# This file is used by Rack-based servers to start the application.
require 'awesome_print'
require ::File.expand_path('../config/environment', __FILE__)
run Rails.application
