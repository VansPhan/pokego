class User < ApplicationRecord
	has_many :bonds, dependent: :destroy
	has_many :pokemons, through: :bonds
end
