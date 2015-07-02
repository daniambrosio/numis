require 'rails_helper'

RSpec.describe "sub_categories/show", type: :view do
  before(:each) do
    category = FactoryGirl.build(:category1)
    @category = assign(:category, category)
    @sub_category = assign(:sub_category, category.sub_categories[0])
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    # expect(rendered).to match(/false/)
  end
end
