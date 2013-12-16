class Postit
  include Mongoid::Document
  include Mongoid::Timestamps

  embeds_many :upvotes

  field :title

  validates :title, presence: true
end