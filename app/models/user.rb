class User < ApplicationRecord
  authenticates_with_sorcery!
  validates :name, presence: true
  validates :email, presence: true
end
