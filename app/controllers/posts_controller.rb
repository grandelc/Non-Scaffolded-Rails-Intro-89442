class PostsController < ApplicationController
  
  # Route defined for this index action
  # the URL being /posts
  def index
    # Fetch all the posts from the Post model
    # Save this to an instance variable.
    @posts = Post.order('id DESC')
  end
  # After this index action executes Rails will
  # load the app/views/posts/index.html.erb

  def show
    # params is a combination of the super global GET / POST
    @post = Post.find(params) 
  end # AUto load the app/views/posts/show.html.erb 
end
