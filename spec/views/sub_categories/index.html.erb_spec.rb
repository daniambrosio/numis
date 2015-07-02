require 'rails_helper'

RSpec.describe "sub_categories/index", type: :view do

  before(:each) do
    @category = FactoryGirl.build(:category1)
    @sub_categories = @category.sub_categories
  end

  it "renders a list of sub_categories" do
    render
    assert_select "tr>td", :text => "My Sub Category 1".to_s, :count => 1
    # assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
