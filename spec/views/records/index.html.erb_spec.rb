require 'spec_helper'

describe "records/index" do
  before(:each) do
    assign(:records, [
      stub_model(Record,
        :warehouse => nil,
        :product => nil,
        :ios_type => 1,
        :number => 2,
        :act_type => 3,
        :note => "Note"
      ),
      stub_model(Record,
        :warehouse => nil,
        :product => nil,
        :ios_type => 1,
        :number => 2,
        :act_type => 3,
        :note => "Note"
      )
    ])
  end

  it "renders a list of records" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    # assert_select "tr>td", :text => nil.to_s, :count => 2
    # assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Note".to_s, :count => 2
  end
end
