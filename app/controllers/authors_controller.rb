class AuthorsController < ApplicationController
  def posts_index
    @author = Author.find(params[:id])
    @posts = @author.posts
    render template: 'posts/index'  #explict telling to use this temp path. no need to add erb as rails figures it out
  end
  def post
    @author = Author.find(params[:id])
 
    # Note that because ids are unique by table we can go directly to
    # Post.find — no need for @author.posts.find...
    @post = Post.find(params[:post_id])
    render template: 'posts/show'
  end
  def show
    @author = Author.find(params[:id])
  end

end
