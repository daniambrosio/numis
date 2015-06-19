class SubCategory
  include Mongoid::Document
  include Mongoid::Timestamps

  embedded_in :category

  field :name, type: String

  validates_presence_of :name

end
