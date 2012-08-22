require 'spec_helper'
require 'cancan/matchers'

describe User do
  before do
    @user = FactoryGirl.create(:user)
  end

  subject { @user }

  describe "abilities" do
    subject { ability }
    let(:ability){ Ability.new(user) }

    context "when is user is authenticated" do
    #  let(:user) {Factory(:authenticated)}
      it{ should be_able_to(:create, Uploads.new) }
    end
  end
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

