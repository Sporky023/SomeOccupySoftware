require 'spec_helper'

describe "documents/edit.html.haml" do
  before(:each) do
    @document = assign(:document, stub_model(Document,
      :title => "MyString",
      :body => "MyText"
    ))
  end

  it "renders the edit document form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => documents_path(@document), :method => "post" do
      assert_select "input#document_title", :name => "document[title]"
      assert_select "textarea#document_body", :name => "document[body]"
    end
  end
end
