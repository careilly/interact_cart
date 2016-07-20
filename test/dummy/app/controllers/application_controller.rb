class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper InteractCart::CartHelper

  
end
