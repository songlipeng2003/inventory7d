require 'spec_helper'

describe "home/index.html.erb" do
    it "display home page" do
        render
        expect(rendered).to include("Home")
    end
end
