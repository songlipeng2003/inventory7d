require 'spec_helper'

describe "warehouses/edit" do
  before(:each) do
    @warehouse = assign(:warehouse, stub_model(Warehouse,
      :name => "MyString",
      :description => "MyString"
    ))
  end

  it "renders the edit warehouse form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", warehouse_path(@warehouse), "post" do
      assert_select "input#warehouse_name[name=?]", "warehouse[name]"
      assert_select "input#warehouse_description[name=?]", "warehouse[description]"
    end
  end
end
