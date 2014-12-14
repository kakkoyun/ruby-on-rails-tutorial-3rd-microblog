class User < ActiveRecord::Base
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  has_many :microposts

  before_save { self.email = email.downcase }
  # before_save { email.downcase! }

  validates :name,  presence: true, length: { maximum: 50 }
  validates :email, presence: true,
    length: { maximum: 255 },
    format: { with: VALID_EMAIL_REGEX },
    uniqueness: { case_sensitive: false }

  has_secure_password
  validates :password, length: { minimum: 6 }

  def to_s
    name
  end

  # attr_accessor :name, :email

  # def initialize(attributes = {})
  #   @name  = attributes[:name]
  #   @email = attributes[:email]
  # end

  # def formatted_email
  #   "#{@name} <#{@email}>"
  # end
end
