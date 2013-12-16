require 'spec_helper'

describe "products/show" do
  before(:each) do
    @product = assign(:product, build_stubbed(:product))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    expect(rendered).to match(/622342323\d+/)
    expect(rendered).to match(/product name \d+/)
    expect(rendered).to match(/\d+/)
    expect(rendered).to match(/Description/)
  end
end
