class ApiKey < ApplicationRecord
  before_validation :set_access_token

  belongs_to :user
  validates :access_token, presence: true, uniqueness: true

  def alive?
    expires_at > Time.current
  end

  private

  def set_access_token
    self.access_token = SecureRandom.hex(64)
  end
end
