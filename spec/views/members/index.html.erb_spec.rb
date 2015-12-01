require 'rails_helper'

RSpec.describe "members/index", type: :view do
  before(:each) do
    assign(:members, [
      Member.create!(
        :username => "Username",
        :password_digest => "Password Digest",
        :first_name => "First Name",
        :last_name => "Last Name",
        :email => "Email",
        :course => "Course",
        :role => 1,
        :github => "Github"
      ),
      Member.create!(
        :username => "Username",
        :password_digest => "Password Digest",
        :first_name => "First Name",
        :last_name => "Last Name",
        :email => "Email",
        :course => "Course",
        :role => 1,
        :github => "Github"
      )
    ])
  end

  it "renders a list of members" do
    render
    assert_select "tr>td", :text => "Username".to_s, :count => 2
    assert_select "tr>td", :text => "Password Digest".to_s, :count => 2
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Course".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Github".to_s, :count => 2
  end
end
