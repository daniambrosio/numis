require 'rails_helper'

RSpec.describe "banks/index", type: :view do
  before(:each) do
    assign(:banks, [
      Bank.create!(
        :name => "Name",
        :parsers => ""
      ),
      Bank.create!(
        :name => "Name",
        :parsers => ""
      )
    ])
  end

  it "renders a list of banks" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
