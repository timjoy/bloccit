class PostsController < ApplicationController
  def index
    @posts = Post.all
    @posts.each do |post|
      if post.id == 1
        post.title = "SPAM"
      elsif post.id % 5 == 1
        post.title = "SPAM"
      else post
      end
    p = Post.find(6)
    puts "#{{p.title}}"  
  end

  def show
  end

  def new
  end

  def edit
  end
end
