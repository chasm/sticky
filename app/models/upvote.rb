class Upvote
  include Mongoid::Document
  include Mongoid::Timestamps

  before_save :set_id

  embedded_in :postit

  private

  def set_id
    self.id = SecureRandom.urlsafe_base64
  end
end