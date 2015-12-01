require 'rails_helper'

RSpec.describe "projects/index", type: :view do
  before(:each) do
    assign(:projects, [
      Project.create!(
        :title => "Title",
        :body => "MyText",
        :member => nil,
        :image => "Image",
        :github => "Github"
      ),
      Project.create!(
        :title => "Title",
        :body => "MyText",
        :member => nil,
        :image => "Image",
        :github => "Github"
      )
    ])
  end

  it "renders a list of projects" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
    assert_select "tr>td", :text => "Github".to_s, :count => 2
  end
end
