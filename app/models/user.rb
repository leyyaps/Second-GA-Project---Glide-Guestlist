class User < ApplicationRecord
  has_many :events
  has_many :groups
 
  mount_uploader :profile_pic, ProfilePicUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
        :rememberable, :trackable, :validatable

  def full_name
    "#{self.first_name} #{self.last_name}"
  end
end
