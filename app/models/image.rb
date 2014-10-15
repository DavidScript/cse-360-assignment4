class Image < ActiveRecord::Base
	belongs_to :user

	has_attached_file :data, :styles => { :thumb => "100x100#", :medium => "300x300#" }
	validates_attachment_content_type :data, :content_type => /\Aimage/
end
