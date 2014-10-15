class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	
	has_attached_file :profile_picture, styles: { tiny: "35x35#", small: "100x100#", medium: "300x300#" }
	validates_attachment_content_type :profile_picture, :content_type => /\Aimage/
end
