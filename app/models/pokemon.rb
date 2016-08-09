class Pokemon < ApplicationRecord
	has_and_belongs_to_many :moves
	has_many :bonds
	has_many :users, through: :bonds
end
