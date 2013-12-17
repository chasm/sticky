object false

child @postits do
  attributes :id, :title, :created_at

  node :upvotes do |postit|
    postit.upvotes.count
  end

  node :links do |postit|
    { upvotes: postit_upvotes_url(postit) }
  end
end

