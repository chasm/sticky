object false

child @postits do
  attributes :id, :title, :created_at

  node :links do |postit|
    {
      upvotes: postit.upvotes.map {|u| { id: u._id, created_at: u.created_at }}
    }
  end
end

