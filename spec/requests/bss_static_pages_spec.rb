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
  end

  describe "About page" do
  	before(:each) {visit '/static_pages/about'}
    it "should have correct title" do
      page.should have_selector('title', text: 'Ruby Gardens :: About Page')
    end
 
    it "should have welcome content" do
      page.should have_content('Welcome to Ruby Gardens About')
    end
  end

  describe "Who we are page" do
  	before(:each) {visit '/static_pages/who_we_are'}
    it "should have correct title" do
      page.should have_selector('title', text: 'Ruby Gardens :: Who we are Page')
    end
 
    it "should have welcome content" do
      page.should have_content('Welcome to Ruby Gardens Who we are')
    end

 
  end
end
