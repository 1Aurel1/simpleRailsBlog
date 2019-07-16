class Post < ActiveRecord::Base
	has_attached_file :image,
 		:storage => :dropbox,
	    :dropbox_credentials => Rails.root.join("config/dropbox.yml"),
	    :dropbox_options => {:path => proc {|style| "files/#{id}/#{image.original_filename}" }}
	    validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
	
	has_many :comments
	belongs_to :user
	has_many :mores
	accepts_nested_attributes_for :mores, reject_if: :all_blank, allow_destroy: true
end
