class Pokemon < ApplicationRecord
	has_and_belongs_to_many :moves
	has_many :bonds, dependent: :destroy
	has_many :users, through: :bonds
end
