require 'spec_helper'

describe "records/new" do
  before(:each) do
    assign(:record, stub_model(Record,
      :warehouse => nil,
      :product => nil,
      :io_type => 1,
      :number => 1,
      :act_type => 1,
      :note => "MyString"
    ).as_new_record)
  end

  it "renders new record form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", records_path, "post" do
      assert_select "select#record_warehouse_id[name=?]", "record[warehouse_id]"
      assert_select "select#record_product_id[name=?]", "record[product_id]"
      assert_select "input#record_io_type[name=?]", "record[io_type]"
      assert_select "input#record_number[name=?]", "record[number]"
      assert_select "input#record_act_type[name=?]", "record[act_type]"
      assert_select "input#record_note[name=?]", "record[note]"
    end
  end
end
