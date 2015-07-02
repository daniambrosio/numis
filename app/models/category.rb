class Category
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Enum

  field :name, type: String
  enum :group, [:unclassified, :transfer, :split, :income, :expense]
  field :sub_categories, type: Array, default: []

  embeds_many :sub_categories
  # has_many :transactions

  validates_presence_of :name, :group
  attr_accessor :type_description

end
