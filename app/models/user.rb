class User < ApplicationRecord
  has_secure_password
  validates :first_name, presence: true
  validates :last_name, presence: true

  validates :email, presence: true, uniqueness: true,
           format:  /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i


  before_create :generate_api_key
  before_validation :downcase_email
def full_name
  "#{first_name} #{last_name}"
end


private
  def generate_api_key
    loop do
      self.api_key = SecureRandom.hex(32)
      break unless User.exists?(api_key: api_key)
    end
  end

  def downcase_email
    self.email&.downcase!
  end

end
