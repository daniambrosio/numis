class CategoryTransfer < Category
include Mongoid::Document

  def type_description
    "Lançamento Entre Contas"
  end

end
