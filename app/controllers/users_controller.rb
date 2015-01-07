class UsersController < ApplicationController

def show
	@user = User.find(params[:id])

	respond_to do |format|
	  format.html # show.html.erb
	  format.xml  { render :xml => @user }
	end
 end

def index
    @user = User.all.order("updated_at DESC")
  	end
end

def user_params
  params.require(:user).permit(:image)
end


	

