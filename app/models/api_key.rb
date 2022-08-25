class ApiKey < ApplicationRecord
  belongs_to :user
  validates :access_token, presence: true, uniqueness: true
end
