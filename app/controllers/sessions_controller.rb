class SessionsController < ApplicationController
	def new
		@user = User.new
	end
	def create
		input_username = params[:user][:username]
		if User.exists?(username: input_username)
			@user = User.find_by(username: input_username)
			puts "Got username"
			if @user.password == params[:user][:password]
				session[:user_id] = @user.id
				puts "Login Success"
				redirect_to user_path(@user.id)
			else
				puts "Incorrect Password"
				redirect_to new_session_path
			end
		else
			puts "User does not exist"
			redirect_to new_session_path
		end
	end
	def destroy
		reset_session
		redirect_to :root
	end
end
