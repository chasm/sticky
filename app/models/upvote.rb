class Upvote
  include Mongoid::Document
  include Mongoid::Timestamps

  embedded_in :postit
end