class UsersController < ApplicationController
	before_action :set_user, only: [:show, :destroy, :update, :edit]
	def index
		@users = User.all
	end
	def new
		@user = User.new
	end
	def create
		@user = User.create(user_params)
		session[:user_id] = @user.id
		error "create"
	end
	def edit
	end
	def update
		@user.update(user_params)
		error "update"
	end
	def destroy
		@user.destroy
		redirect_to "/users", alert: "User was successfully deleted."
	end
	def show

	end

	private

	def set_user
		@user = User.find(params[:id])
	end

	def user_params
		params.require(:user).permit(:email, :password, :first_name, :last_name)
	end

	def error action
		if @user.save
			redirect_to @user, notice: "User was successfully #{action}d."
		else
			message = "| "
			@user.errors.full_messages.each do |error|
				message << "#{error} | "
			end
			if action == "create"
				redirect_to new_user_path, alert: "#{ message }"
			elsif action == "update"
				redirect_to edit_user_path, alert: "#{ message } | Nothing has been changed"
			else
				redirect_to @user, alert: "#{ message }"
			end
		end
	end
end
