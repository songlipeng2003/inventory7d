require 'spec_helper'

describe "records/edit" do
  before(:each) do
    @record = assign(:record, stub_model(Record,
      :warehouse => nil,
      :product => nil,
      :ios_type => 1,
      :number => 1,
      :act_type => 1,
      :note => "MyString"
    ))
  end

  it "renders the edit record form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", record_path(@record), "post" do
      assert_select "select#record_warehouse_id[name=?]", "record[warehouse_id]"
      assert_select "select#record_product_id[name=?]", "record[product_id]"
      assert_select "input#record_ios_type[name=?]", "record[ios_type]"
      assert_select "input#record_number[name=?]", "record[number]"
      assert_select "input#record_act_type[name=?]", "record[act_type]"
      assert_select "input#record_note[name=?]", "record[note]"
    end
  end
end
