class User < ApplicationRecord
	has_many :bonds
	has_many :pokemons, through: :bonds
end
