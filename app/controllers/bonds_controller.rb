class BondsController < ApplicationController
	def destroy
		@user = @current_user
		@pokemon = Pokemon.find(params[:id])
		@user.bonds.find_by(pokemon_id: @pokemon).destroy
		redirect_to @user, alert: "Pokemon was released into the wild"
	end
end
