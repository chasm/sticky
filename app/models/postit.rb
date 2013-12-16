class Postit
  include Mongoid::Document
  include Mongoid::Timestamps

  before_save :set_id

  embeds_many :upvotes

  field :id
  field :title

  validates :title, presence: true

  private

  def set_id
    self.id = SecureRandom.urlsafe_base64
  end
end