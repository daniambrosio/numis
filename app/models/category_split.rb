class CategorySplit < Category
include Mongoid::Document

  def type_description
    "Dividida"
  end

end
