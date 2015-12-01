require 'rails_helper'

RSpec.describe "projects/edit", type: :view do
  before(:each) do
    @project = assign(:project, Project.create!(
      :title => "MyString",
      :body => "MyText",
      :member => nil,
      :image => "MyString",
      :github => "MyString"
    ))
  end

  it "renders the edit project form" do
    render

    assert_select "form[action=?][method=?]", project_path(@project), "post" do

      assert_select "input#project_title[name=?]", "project[title]"

      assert_select "textarea#project_body[name=?]", "project[body]"

      assert_select "input#project_member_id[name=?]", "project[member_id]"

      assert_select "input#project_image[name=?]", "project[image]"

      assert_select "input#project_github[name=?]", "project[github]"
    end
  end
end
