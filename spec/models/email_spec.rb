require 'spec_helper'

describe Email do
  describe "Name" do
  	before(:each) do
	    @user = Email.create(:name=> 'aaa', :surname=> 'bbbasdas', :email=> 'asdasd@dsd.dd')
  	end

  	it "user should be valid" do
    	@user.should be_valid
    end
  end
end
