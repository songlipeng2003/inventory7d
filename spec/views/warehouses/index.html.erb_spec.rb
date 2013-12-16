require 'spec_helper'

describe "warehouses/index" do
  before(:each) do
    assign(:warehouses, [
      build_stubbed(:warehouse),
      build_stubbed(:warehouse)
    ])
  end

  it "renders a list of warehouses" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => /warehouse name \d+/, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
