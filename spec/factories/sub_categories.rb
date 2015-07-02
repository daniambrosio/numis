FactoryGirl.define do

  factory :category1, :class => :category_expense do
    name "My Category 1"
    group "expense"
    sub_categories    { [FactoryGirl.build(:sub_category1), FactoryGirl.build(:sub_category2)] }
  end

  factory :sub_category1, :class => :sub_category do
    name "My Sub Category 1"
  end

  factory :sub_category2, :class => :sub_category do
    name "My Sub Category 2"
  end

end
