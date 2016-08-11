class SessionsController < ApplicationController
	def new
		@user = User.new
	end
	def create
		input_email = params[:user][:email]
		if User.exists?(email: input_email)
			@user = User.find_by(email: input_email)
			puts "User found!"
			if @user.password == params[:user][:password]
				session[:user_id] = @user.id
				redirect_to user_path(@user.id), notice: "User successfully signed in."
			else
				puts "Incorrect password"
				redirect_to new_session_path, notice: "Wrong password, please try again"
			end
		else
			puts "User does not exist"
			redirect_to new_session_path, notice: "User does not exist"
		end
	end
	def destroy
		reset_session
		redirect_to :root, notice: "User successfully signed out."
	end
end
