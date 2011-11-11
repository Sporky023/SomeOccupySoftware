require 'spec_helper'

describe "chunks/index.html.haml" do
  before(:each) do
    assign(:chunks, [
      stub_model(Chunk,
        :document => nil,
        :first_char_at => 1,
        :last_char_at => 1
      ),
      stub_model(Chunk,
        :document => nil,
        :first_char_at => 1,
        :last_char_at => 1
      )
    ])
  end

  it "renders a list of chunks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
