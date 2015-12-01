require 'rails_helper'

RSpec.describe "projects/show", type: :view do
  before(:each) do
    @project = assign(:project, Project.create!(
      :title => "Title",
      :body => "MyText",
      :member => nil,
      :image => "Image",
      :github => "Github"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Image/)
    expect(rendered).to match(/Github/)
  end
end
