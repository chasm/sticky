object false

child @upvotes do
  attributes :id, :created_at

  node :links do |upvote|
    { postit: postit_url(upvote.postit) }
  end
end

