require 'rails_helper'

RSpec.describe "members/new", type: :view do
  before(:each) do
    assign(:member, Member.new(
      :username => "MyString",
      :password_digest => "MyString",
      :first_name => "MyString",
      :last_name => "MyString",
      :email => "MyString",
      :course => "MyString",
      :role => 1,
      :github => "MyString"
    ))
  end

  it "renders new member form" do
    render

    assert_select "form[action=?][method=?]", members_path, "post" do

      assert_select "input#member_username[name=?]", "member[username]"

      assert_select "input#member_password_digest[name=?]", "member[password_digest]"

      assert_select "input#member_first_name[name=?]", "member[first_name]"

      assert_select "input#member_last_name[name=?]", "member[last_name]"

      assert_select "input#member_email[name=?]", "member[email]"

      assert_select "input#member_course[name=?]", "member[course]"

      assert_select "input#member_role[name=?]", "member[role]"

      assert_select "input#member_github[name=?]", "member[github]"
    end
  end
end
