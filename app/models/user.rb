class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

validates :first_name, presence: true

validates :last_name, presence: true 

validates :profile_name, presence: true,
                         uniqueness: true,
                         format: {
                         	with: /^[a-zA-Z-0-9_-]+$/,
                            multiline: true,
                         	message: 'Must be formatted correctly.'
                         }

has_many :statuses

def full_name
	first_name + " " + last_name
  end
end