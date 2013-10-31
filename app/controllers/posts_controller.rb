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
    @post = Post.find(params[:id]) 
  end # AUto load the app/views/posts/show.html.erb 

  def new
    @post = Post.new 
  end # Load the app/views/posts/new.html.erb

  def create
    # Create a new post object with the data the use submitted
    # from the new view form.
    @post = Post.new(params[:post])

    if (@post.save)
      # Validations pass we direct ti to the index action
      redirect_to :action => :index
    else 
      # Validation fails we reuse the view associated with the new action
      render :action => :new
    end

  end #only loads a view on error, otherwise redirects 
end
