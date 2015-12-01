require 'rails_helper'

RSpec.describe "members/edit", type: :view do
  before(:each) do
    @member = assign(:member, Member.create!(
      :username => "MyString",
      :password => "MyString",
      :first_name => "MyString",
      :last_name => "MyString",
      :email => "MyString",
      :course => "MyString",
      :role => 1,
      :github => "MyString"
    ))
  end

  it "renders the edit member form" do
    render

    assert_select "form[action=?][method=?]", member_path(@member), "post" do

      assert_select "input#member_username[name=?]", "member[username]"

      assert_select "input#member_password[name=?]", "member[password]"

      assert_select "input#member_first_name[name=?]", "member[first_name]"

      assert_select "input#member_last_name[name=?]", "member[last_name]"

      assert_select "input#member_email[name=?]", "member[email]"

      assert_select "input#member_course[name=?]", "member[course]"

      assert_select "input#member_role[name=?]", "member[role]"

      assert_select "input#member_github[name=?]", "member[github]"
    end
  end
end
