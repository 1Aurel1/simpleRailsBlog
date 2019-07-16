class More < ActiveRecord::Base
	has_attached_file :more_image,
 		:storage => :dropbox,
	    :dropbox_credentials => Rails.root.join("config/dropbox.yml"),
	    :dropbox_options => {:path => proc {|style| "more_images/#{id}/#{image.original_filename}" }}
  validates_attachment_content_type :more_image, content_type: /\Aimage\/.*\Z/
  belongs_to :post

end
