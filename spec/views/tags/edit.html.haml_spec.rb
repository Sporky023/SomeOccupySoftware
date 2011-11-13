require 'spec_helper'

describe "tags/edit.html.haml" do
  before(:each) do
    @tag = assign(:tag, stub_model(Tag))
  end

  it "renders the edit tag form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tags_path(@tag), :method => "post" do
    end
  end
end
