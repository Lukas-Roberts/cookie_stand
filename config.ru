require_relative './config/env'



use Rack::MethodOverride
use CookiesController
use SessionsController
run ApplicationController