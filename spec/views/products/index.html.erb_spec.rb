require 'spec_helper'

describe "products/index" do
  before(:each) do

    30.times { create(:product) }

    assign(:products, Product.paginate(:page => params[:page], :per_page => 20))
  end

  it "renders a list of products" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td:nth-child(1)", :text => /622342323\d+/, :count => 20
    assert_select "tr>td", :text => /product name \d+/, :count => 20
    assert_select "tr>td:nth-child(3)", :text => /\d+/, :count => 20
  end
end
