require "application_responder"

class ApplicationController < ActionController::Base
  self.responder = ApplicationResponder
  respond_to :html

  protect_from_forgery
  require 'themoviedb'

  before_filter :set_config
  Tmdb::Api.key("8a221fc31fcdf12a8af827465574ffc9")

  def set_config
  	@configuration = Tmdb::Configuration.new
  end
  
end
