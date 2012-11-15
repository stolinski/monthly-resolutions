require 'spec_helper'

describe "StaticPages" do
  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_selector( 'title', :text => full_title('')) }
  end

  describe 'Help page' do
    before { visit help_path }

  	it { should have_content('Help') }
  end

  describe 'About Page' do
    before { visit about_path }
  	it { should have_content('About Us') }
  end

  describe "Contact page" do
    before { visit contact_path }
    it { should have_selector('h1', :text => 'Contact') }
    it { should have_selector('title', :text => full_title('Contact')) }
  end

end
