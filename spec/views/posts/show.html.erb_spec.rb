require 'spec_helper'

describe "posts/show" do
  before(:each) do
    @post = assign(:post, stub_model(Post,
      :creator => "",
      :title => "Title",
      :description => "Description",
      :content => "MyText",
      :cover => "Cover",
      :category => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(/Title/)
    rendered.should match(/Description/)
    rendered.should match(/MyText/)
    rendered.should match(/Cover/)
    rendered.should match(//)
  end
end
