class Bank
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :parsers, type: Array, default: []

  embeds_many :parsers

  validates_presence_of :name

end
