require 'spec_helper'

describe "posts/index" do
  before(:each) do
    assign(:posts, [
      stub_model(Post,
        :creator => "",
        :title => "Title",
        :description => "Description",
        :content => "MyText",
        :cover => "Cover",
        :category => ""
      ),
      stub_model(Post,
        :creator => "",
        :title => "Title",
        :description => "Description",
        :content => "MyText",
        :cover => "Cover",
        :category => ""
      )
    ])
  end

  it "renders a list of posts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Cover".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
