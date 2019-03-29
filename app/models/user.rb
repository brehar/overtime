class User < ActiveRecord::Base
  has_many :posts

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_presence_of :first_name, :last_name

  def full_name
    "#{last_name}, #{first_name}"
  end
end
