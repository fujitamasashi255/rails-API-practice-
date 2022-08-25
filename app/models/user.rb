class User < ApplicationRecord
  API_KEY_VALID_DURATION = 1.week

  authenticates_with_sorcery!
  validates :name, presence: true
  validates :email, presence: true

  has_many :api_keys, dependent: :destroy

  def valid_api_key
    alive_api_key || api_keys.create(expires_at: expires_at)
  end

  private

  def alive_api_key
    api_keys.find(&:alive?)
  end

  def expires_at
    Time.current + API_KEY_VALID_DURATION
  end
end
