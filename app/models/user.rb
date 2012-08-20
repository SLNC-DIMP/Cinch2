class User < ActiveRecord::Base
  has_many :uploads, :dependent => :destroy
  has_many :crawls
  has_many :csv_meta_paths
  has_many :file_infos
  has_many :files_for_downloads
  has_many :zip_gz_downloads
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  # :rememberable,:registerable May need to add these back in.
  # See http://stackoverflow.com/questions/6734323/how-do-i-remove-the-devise-route-to-sign-up
  devise :database_authenticatable, :rememberable,:registerable,
         :recoverable,  :trackable, :validatable

  ROLES = %w[admin authenticated]
  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation
  # attr_accessible :title, :body
end
