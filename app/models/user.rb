class User < ActiveRecord::Base
  has_many :microposts

  validates :content, presence: true
  validates :user, presence: true

  def to_s
    name
  end
end
