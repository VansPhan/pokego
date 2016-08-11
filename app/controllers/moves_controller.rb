class MovesController < ApplicationController
	before_action :set_move, only: [:show, :destroy, :update, :edit]
	def index
		@moves = Move.all
	end
	def new
		@move = Move.new
		@types = ["Normal", "Fire", "Water", "Electric", "Grass", "Ice", "Fighting", "Poison", "Ground", "Flying", "Psychic", "Bug", "Rock", "Ghost", "Dragon", "Dark", "Steel", "Fairy"]
	end
	def create
		@move = Move.create(move_params)
		error "create"
	end
	def edit
		@types = ["Normal", "Fire", "Water", "Electric", "Grass", "Ice", "Fighting", "Poison", "Ground", "Flying", "Psychic", "Bug", "Rock", "Ghost", "Dragon", "Dark", "Steel", "Fairy"]
	end
	def update
		@move.update(move_params)
		error "update"
	end
	def destroy
		@move.destroy
		redirect_to "/moves", alert: "Move was successfully deleted."
	end
	def show

	end

	private

	def set_move
		@move = Move.find(params[:id])
	end
	
	def move_params
		params.require(:move).permit(:name, :damage, :dps, :poke_type, :quick_move)
	end

	def error action
		if @move.save
			redirect_to @move, notice: "Move was successfully #{action}d."
		else
			message = "| "
			@move.errors.full_messages.each do |error|
				message << "#{error} | "
			end
			if action == "create"
				redirect_to new_move_path, alert: "#{ message }"
			elsif action == "update"
				redirect_to edit_move_path, alert: "#{ message } | Nothing has been changed"
			else
				redirect_to @move, alert: "#{ message }"
			end
		end
	end
end
