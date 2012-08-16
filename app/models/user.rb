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
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body
end
