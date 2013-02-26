require 'spec_helper'
require 'requests_helper'

describe "User pages" do
  
  subject { page }

  describe "home" do

    #let(:user) { FactoryGirl.create(:user) }

    before(:each) do
      # visit new_user_session_path
      # fill_in "Login", with: user.username
      # fill_in "Password", with: user.password
      # click_button "Sign in"
      sign_in_as_a_valid_user
      visit root_path
    end

    it { should have_selector('title', content: @user.username) }
    it { should have_selector('h1', content: @user.username) }
  end
end
