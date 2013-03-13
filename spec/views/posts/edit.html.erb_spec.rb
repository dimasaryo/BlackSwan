require 'spec_helper'

describe "posts/edit" do
  before(:each) do
    @post = assign(:post, stub_model(Post,
      :creator => "",
      :title => "MyString",
      :description => "MyString",
      :content => "MyText",
      :cover => "MyString",
      :category => ""
    ))
  end

  it "renders the edit post form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", post_path(@post), "post" do
      assert_select "input#post_creator[name=?]", "post[creator]"
      assert_select "input#post_title[name=?]", "post[title]"
      assert_select "input#post_description[name=?]", "post[description]"
      assert_select "textarea#post_content[name=?]", "post[content]"
      assert_select "input#post_cover[name=?]", "post[cover]"
      assert_select "input#post_category[name=?]", "post[category]"
    end
  end
end
