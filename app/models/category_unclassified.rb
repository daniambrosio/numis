class CategoryUnclassified < Category
include Mongoid::Document

  def type_description
    "Não Classificado"
  end

end
