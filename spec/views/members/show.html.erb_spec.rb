require 'rails_helper'

RSpec.describe "members/show", type: :view do
  before(:each) do
    @member = assign(:member, Member.create!(
      :username => "Username",
      :password => "Password",
      :first_name => "First Name",
      :last_name => "Last Name",
      :email => "Email",
      :course => "Course",
      :role => 1,
      :github => "Github"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Username/)
    expect(rendered).to match(/Password/)
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Course/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Github/)
  end
end
