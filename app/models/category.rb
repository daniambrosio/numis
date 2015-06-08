class Category
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :type, type: String
  field :system, type: Mongoid::Boolean

  validates_presence_of :name, :type
  attr_accessor :type_description

end
