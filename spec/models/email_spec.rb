require 'spec_helper'

describe Email do
  describe "Name" do
  	before(:each) do
	    @user = Email.new
  	end

  	it "should be valid" do
    	@user.name.should be_valid
  	end
  end
end
