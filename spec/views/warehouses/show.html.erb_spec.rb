require 'spec_helper'

describe "warehouses/show" do
  before(:each) do
    @warehouse = assign(:warehouse, stub_model(Warehouse,
      :name => "Name",
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Description/)
  end
end
