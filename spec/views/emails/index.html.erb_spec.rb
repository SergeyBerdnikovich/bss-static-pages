require 'spec_helper'

describe "emails/index" do
  before(:each) do
    assign(:emails, [
      stub_model(Email,
        :name => "Name",
        :surname => "Surname",
        :email => "Email"
      ),
      stub_model(Email,
        :name => "Name",
        :surname => "Surname",
        :email => "Email"
      )
    ])
  end

  it "renders a list of emails" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Surname".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
