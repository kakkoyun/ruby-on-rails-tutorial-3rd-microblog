class User < ActiveRecord::Base
  has_many :microposts

  validates :content, presence: true
  validates :user, presence: true

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
