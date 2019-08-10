class Company < ApplicationRecord
  has_many :prices
  has_many :ledgers
  has_many :users, through: :ledgers
end
