Postit.destroy_all

p1 = Postit.create(title: "My first postit.")
p2 = Postit.create(title: "My second postit.")
p3 = Postit.create(title: "My third postit.")

p1.upvotes << Upvote.new
p1.upvotes << Upvote.new
p1.upvotes << Upvote.new

p2.upvotes << Upvote.new
p2.upvotes << Upvote.new

p3.upvotes << Upvote.new
p3.upvotes << Upvote.new
p3.upvotes << Upvote.new
p3.upvotes << Upvote.new