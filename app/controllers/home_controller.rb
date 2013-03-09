class HomeController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @uploads = current_user.uploads
  end
  
    
end

