class RecipesController < ApplicationController

  def index
  @recipes = Recipe.all
  end

  def new
  @recipe = Recipe.new
  end

  def create
  @recipe = Recipe.create(
  name: params[:name],
  description: params[:description])

      redirect_to '/'
  end

  def show
  @recipe =Recipe.find_by(id: params[:id])
  end

  def edit
  @recipe =Recipe.find_by(id: params[:id])
  end

  def update
  @recipe = Recipe.find_by(id: params[:id])
  @recipe.update(
  name: params[:name],
  description: params[:description])

    redirect_to "/recipes/#{@recipe.id}"
  end

  def destroy
  @recipe = Recipe.find_by(id: params[:id])
  @recipe.destroy

    redirect_to '/'
  end
  
end
