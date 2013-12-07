require 'spec_helper'

describe "products/edit" do
  before(:each) do
    @product = assign(:product, stub_model(Product,
      :sn => "MyString",
      :name => "MyString",
      :description => "MyString"
    ))
  end

  it "renders the edit product form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", product_path(@product), "post" do
      assert_select "input#product_sn[name=?]", "product[sn]"
      assert_select "input#product_name[name=?]", "product[name]"
      assert_select "input#product_description[name=?]", "product[description]"
    end
  end
end
