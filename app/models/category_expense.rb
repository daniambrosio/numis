class CategoryExpense < Category
include Mongoid::Document

  def type_description
    "Despesa"
  end

end
