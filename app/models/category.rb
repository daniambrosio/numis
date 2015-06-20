class Category
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :type, type: String
  field :sub_categories, type: Array, default: []

  embeds_many :sub_categories
  # has_many :transactions

  validates_presence_of :name, :type
  attr_accessor :type_description

end
