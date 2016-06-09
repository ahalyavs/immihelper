class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
       :recoverable, :rememberable, :trackable, :validatable

  devise :timeoutable, :timeout_in => 20.minutes

  validates :first_name, :presence => true
  validates :last_name, :presence => true
  validates :dob, :presence => true
  validates :email, :presence => true
  validates :nationality, :presence => true

  has_many :stays

end
