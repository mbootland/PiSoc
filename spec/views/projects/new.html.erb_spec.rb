require 'rails_helper'

RSpec.describe "projects/new", type: :view do
  before(:each) do
    assign(:project, Project.new(
      :title => "MyString",
      :body => "MyText",
      :member => nil,
      :image => "MyString",
      :github => "MyString"
    ))
  end

  it "renders new project form" do
    render

    assert_select "form[action=?][method=?]", projects_path, "post" do

      assert_select "input#project_title[name=?]", "project[title]"

      assert_select "textarea#project_body[name=?]", "project[body]"

      assert_select "input#project_member_id[name=?]", "project[member_id]"

      assert_select "input#project_image[name=?]", "project[image]"

      assert_select "input#project_github[name=?]", "project[github]"
    end
  end
end
