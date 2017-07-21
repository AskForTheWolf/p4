class RecipesController < ApplicationController
def index
  @recipes = Recipe.all
end
def show
  @recipe = Recipe.find(params[:id])
end
def edit
  @post = Post.find(params[:id])
end
def new
  @post = Post.new
end
def create
  @post = Post.create!(post_params)
  redirect_to post_path(@post)
end
def update
  @post = Post.find(params[:id])
  @post.update(post_params)
  redirect_to post_path(@post)
end
def destroy
  @post = Post.find(params[:id])
  @post.destroy
  redirect_to posts_path
end
#post params are the things the post HAS, that we can access.
private
def post_params
  params.require(:recipe).permit(:name, :body, :glass)
end
end
