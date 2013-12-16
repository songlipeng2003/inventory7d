require 'spec_helper'

describe "warehouses/new" do
  before(:each) do
    assign(:warehouse, build(:warehouse))
  end

  it "renders new warehouse form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", warehouses_path, "post" do
      assert_select "input#warehouse_name[name=?]", "warehouse[name]"
      assert_select "input#warehouse_description[name=?]", "warehouse[description]"
    end
  end
end
