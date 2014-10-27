class User < ActiveRecord::Base
  has_many :thoughts
  validates :username, presence: true
  validates :password, presence: true, confirmation: true
end
