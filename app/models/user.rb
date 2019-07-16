class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :posts
  has_many :comments
   has_attached_file :avatar,
 		:storage => :dropbox,
	    :dropbox_credentials => Rails.root.join("config/dropbox.yml"),
	    :dropbox_options => {:path => proc {|style| "avatar/#{id}/#{avatar.original_filename}" }}
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
   has_attached_file :backgroud_image,
 		:storage => :dropbox,
	    :dropbox_credentials => Rails.root.join("config/dropbox.yml"),
	    :dropbox_options => {:path => proc {|style| "back/#{id}/#{backgroud_image.original_filename}" }}
  validates_attachment_content_type :backgroud_image, content_type: /\Aimage\/.*\Z/
end
