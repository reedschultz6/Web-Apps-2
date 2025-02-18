class PostsController < ApplicationController

  def index
    # find all Post rows
    @posts = Post.all
    # render posts/index view
  end

  def new
    # render posts/new view with new Post form
  end

  def create
    @post = Post.new
    @post["author"] = params["author"]
    @post["image"] = params["image"]
    @post["description"] = params["description"]
  #   # start with a new Post
  #   # assign user-entered form data to Post's columns
  #   # save Post row
  @post.save
  #   # redirect user
  redirect_to "/posts"
  end

end
