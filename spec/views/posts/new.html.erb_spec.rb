require 'spec_helper'

describe "posts/new" do
  before(:each) do
    assign(:post, stub_model(Post,
      :creator => "",
      :title => "MyString",
      :description => "MyString",
      :content => "MyText",
      :cover => "MyString",
      :category => ""
    ).as_new_record)
  end

  it "renders new post form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", posts_path, "post" do
      assert_select "input#post_creator[name=?]", "post[creator]"
      assert_select "input#post_title[name=?]", "post[title]"
      assert_select "input#post_description[name=?]", "post[description]"
      assert_select "textarea#post_content[name=?]", "post[content]"
      assert_select "input#post_cover[name=?]", "post[cover]"
      assert_select "input#post_category[name=?]", "post[category]"
    end
  end
end
