require 'random_data'

 # Create Posts
 50.times do
 # #1
   Post.create!(
 # #2
     title:  RandomData.random_sentence,
     body:   RandomData.random_paragraph
   )
 end

 posts = Post.all

 # Create Comments
 # #3
 100.times do
   Comment.create!(
 # #4
     post: posts.sample,
     body: RandomData.random_paragraph
   )
 end

 puts"#{Post.count}"
 # post = Post.sample

 post = Post.find_or_create_by(title: "Where's  Waldo?", body: "Waldo is in backyard")
 puts"#{Post.count}"
 puts"#{Comment.count}"

 # Comment.find_or_create_by(body: "Unique comment body", post_id: 51)
 Comment.create(post: post, body: "Unique comment body")

 # create advertisement seed data
 50.times do
   Advertisement.create!(
     title:  RandomData.random_sentence,
     body:   RandomData.random_paragraph
   )
 end
 # intersperse the seed data with the posts
 i=0
 @posts.each_with_index do |post, index|
   i+=1
   if index % 5 == 0
     @posts.insert(Advertisement(i))
   end
 end

 puts "Seed finished"
 puts "#{Post.count} posts created"
 puts "#{Comment.count} comments created"
