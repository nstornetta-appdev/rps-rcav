class ApplicationController < ActionController::Base
  def index 
    render("/index.html")
  end
  
  skip_before_action :verify_authenticity_token, raise: false
end
