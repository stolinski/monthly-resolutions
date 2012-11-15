require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    it "should have the content 'Monthly Resolutions'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      # visit root_path
      # page.should have_content('Monthly Resolutions')
    end
  end

  describe 'Help page' do
  	it "should have the content 'Help'" do
  		visit help_path
  		page.should have_content('Help')
  	end
  end

  describe 'About Page' do
  	it "should have the content 'About Us'" do
  		visit about_path
  		page.should have_content('About Us')
  	end
  end

  describe "Contact page" do

    it "should have the h1 'Contact'" do
      visit contact_path
      page.should have_selector('h1', :text => 'Contact')
    end

    it "should have the title 'Contact'" do
      visit contact_path
      page.should have_selector('title', :text => "Monthly Resolutions | Contact")
    end
  end

end
