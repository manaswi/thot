require 'spec_helper'
require 'requests_helper'

describe "Authentication" do
  subject {page}

  describe "signin page" do
    before {visit new_user_session_path}

    it {should have_selector('title', text: 'Sign in')}
    it {should have_selector('h1', text: 'Sign in')}
  end

  describe "signin" do
    before { visit new_user_session_path }

    describe "with invalid information" do
      before { click_button "Sign in" }

      it { should have_selector('title', text: 'Sign in') }
      it { should have_selector('div.alert.error-alert', text: 'Invalid') }
    end
    
    describe "after visiting another page" do
        before { click_link "Home" }
        it { should_not have_selector('div.alert.error-alert') }
    end

    
    describe "with valid information" do
      before { sign_in_as_a_valid_user }

      it { should have_selector('h3', text: @user.username) }

      #it { should have_link('Users',    href: users_path) }
      it { should have_link('Edit profile', href: edit_user_registration_path) }
      #it { should have_link('Settings', href: edit_user_registration_path(user)) }
      it { should have_link('Sign out', href: destroy_user_session_path) }
      it { should_not have_link('Sign in', href: new_user_session_path) }
        
      it "should have a current_user" do
        # note the fact that I removed the "validate_session" parameter if this was a scaffold-generated controller
        current_user.should_not be_nil
      end


      describe "followed by signout" do
        before { click_link "Sign out" }
        it { should have_link('Sign in') }
      end
    end
  end
end