class UploadsController < ApplicationController
  before_filter :authenticate_user!

  def create
    @upload = Upload.new(params[:upload])
    @upload.user_id = current_user.id
    if @upload.save
      flash[:notice] = "Upload completed"
      redirect_to home_index_path
    else
      flash[:notice] = "uploading fail"  
      render home_index_path 
    end  
  end
end
