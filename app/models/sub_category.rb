class SubCategory
  include Mongoid::Document
  include Mongoid::Timestamps

  embedded_in :category

  field :name

  validates_presence_of :name

end
