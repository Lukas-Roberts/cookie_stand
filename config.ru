require_relative './config/env'

# DESTROY YOUR CODE

use Rack::MethodOverride
use CookiesController
use SessionsController
run ApplicationController