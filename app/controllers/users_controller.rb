class UsersController < ApplicationController
  def show
  	@user = User.find(params[:id])
  	#@pins = Pin.where(:user_id => @user.id)
  	@pins = @user.pins
  end
end
