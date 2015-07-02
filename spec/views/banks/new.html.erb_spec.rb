require 'rails_helper'

RSpec.describe "banks/new", type: :view do
  before(:each) do
    assign(:bank, Bank.new(
      :name => "MyString",
      :parsers => ""
    ))
  end

  it "renders new bank form" do
    render

    assert_select "form[action=?][method=?]", banks_path, "post" do

      assert_select "input#bank_name[name=?]", "bank[name]"

      assert_select "input#bank_parsers[name=?]", "bank[parsers]"
    end
  end
end
