require 'spec_helper'

describe "chunks/show.html.haml" do
  before(:each) do
    @chunk = assign(:chunk, stub_model(Chunk,
      :document => nil,
      :first_char_at => 1,
      :last_char_at => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
