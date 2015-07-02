require 'rails_helper'

RSpec.describe "banks/edit", type: :view do
  before(:each) do
    @bank = assign(:bank, Bank.create!(
      :name => "MyString",
      :parsers => ""
    ))
  end

  it "renders the edit bank form" do
    render

    assert_select "form[action=?][method=?]", bank_path(@bank), "post" do

      assert_select "input#bank_name[name=?]", "bank[name]"

      assert_select "input#bank_parsers[name=?]", "bank[parsers]"
    end
  end
end
