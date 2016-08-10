class UsersController < ApplicationController
	def index
		@users = User.all
	end
	def new
		@user = User.new
	end
	def create
		@user = User.create(create_user)
		session[:user_id] = @user.id
		redirect_to user_path(@user)
	end
	def edit
		
	end
	def update
		
	end
	def destroy
		
	end
	def show
		@user = User.find(params[:id])
	end

	private

	def create_user
		params.require(:user).permit(:email, :password, :first_name, :last_name)
	end
end
