require 'spec_helper'

# Specs in this file have access to a helper object that includes
# the StaticPagesHelper. For example:
#
# describe StaticPagesHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       helper.concat_strings("this","that").should == "this that"
#     end
#   end
# end

describe "StaticPagesHelper" do
  describe "gravatar_links" do
    it "has correct return value" do
      helper.gravatar(["sergey.berdnikovich@altoros.com"]).each do |elem|
      	expect(elem).to match /http:\/\/www.gravatar.com\/avatar\/[a-z0-9]+\?d=monsterid/
      end
    end
  end

  describe "menu_links" do
    it "has correct return value" do
    	helper.get_link_for_pages.each do |el| 
    		expect(el).to match /<a href=\"\/(static_pages|emails).+<\/a>/
    	end
    end
  end
end

