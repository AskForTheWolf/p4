class RecipeCommentsController < ApplicationController
  before_action :set_recipe_comment, only: [:show, :edit, :update, :destroy]
  def show
    @recipe = Recipe.find(params[:recipe_id])
    @recipe_comment = Recipe.find(params[:id])
  end
  def new
    @recipe = Recipe.find(params[:recipe_id])
    @recipe_comment = RecipeComment.new
  end
  def create
    @recipe = Recipe.find(params[:recipe_id])
    @recipe_comment = @recipe.recipe_comments.create(comment_params)
    redirect_to recipe_path(@recipe)
  end
  def edit
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
  end
  def update
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)
    redirect_to post_path(@post)
  end
  def destroy
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to post_path(@post)
  end
  private
  def comment_params
    params.require(:comment).permit(:body)
  end
    # Never trust parameters from the scary internet, only allow the white list through.
    def recipe_comment_params
      params.require(:recipe_comment).permit(:title, :body)
    end
end
