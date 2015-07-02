require 'rails_helper'

RSpec.describe "categories/index", type: :view do

  before(:each) do
    category = FactoryGirl.build(:category1)
    @categories = assign(:categories, [category])
  end

  it "renders a list of categories" do
    render
    assert_select "tr>td", :text => "My Category 1".to_s, :count => 1
    # assert_select "tr>td", :text => false.to_s, :count => 2
  end
end


# require 'rails_helper'

# RSpec.describe "categories/index", type: :view do
#   before(:each) do
#     assign(:categories, [
#       Category.create!(
#         :name => "Name",
#         :type => "Type"
#       ),
#       Category.create!(
#         :name => "Name",
#         :type => "Type"
#       )
#     ])
#   end

#   it "renders a list of categories" do
#     render
#     assert_select "tr>td", :text => "Name".to_s, :count => 2
#     assert_select "tr>td", :text => "Type".to_s, :count => 2
#   end
# end
