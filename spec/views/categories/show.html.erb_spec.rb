require 'rails_helper'

RSpec.describe "categories/show", type: :view do
  before(:each) do
    category = FactoryGirl.create(:category1)
    @category = assign(:category, category)
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/Tipo/)
    expect(rendered).to match(/Sub Categorias/)
  end
end
