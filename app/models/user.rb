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
# == Schema Information
#
# Table name: users
#
#  id                     :integer(4)      not null, primary key
#  email                  :string(255)     default(""), not null
#  encrypted_password     :string(255)     default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer(4)      default(0)
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  created_at             :datetime        not null
#  updated_at             :datetime        not null
#  username               :string(255)
#  role                   :string(255)
#

