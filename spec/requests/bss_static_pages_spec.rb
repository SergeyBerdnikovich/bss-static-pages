require 'spec_helper'

describe "BssStaticPages" do
  describe "Home page" do
  	before(:each) {visit '/static_pages/home'}
    it "should have correct title" do
      page.should have_selector('title', text: 'Ruby Gardens :: Home Page')
    end
 
    it "should have welcome content" do
      page.should have_content('Welcome to Ruby Gardens Home')
    end

    it "should have link to about page" do
      visit '/static_pages/home'
      click_link 'About'
      current_path.should == '/static_pages/about'
    end
  end

  describe "About page" do
  	before(:each) {visit '/static_pages/about'}
    it "should have correct title" do
      page.should have_selector('title', text: 'Ruby Gardens :: About Page')
    end
 
    it "should have welcome content" do
      page.should have_content('Welcome to Ruby Gardens About')
    end

    it "should have link to home page" do
      visit '/static_pages/about'
      click_link 'Home'
      current_path.should == '/static_pages/home'
    end
  end
end
