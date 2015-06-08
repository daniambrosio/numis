class CategoryIncome < Category
include Mongoid::Document

  def type_description
    "Entrada"
  end

end
