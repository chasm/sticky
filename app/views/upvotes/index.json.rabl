object false

child @upvotes do
  attributes :id, :created_at

  node :links do |upvote|
    {
      postit_id: upvote.postit.id
    }
  end
end

