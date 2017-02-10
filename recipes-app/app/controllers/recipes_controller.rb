class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all 
    render "index.html.erb"
  end

  def new
    render "new.html.erb"
  end

  def create
    @recipe = Recipe.new(name: params[:name], ingredients: params[:ingredients], directions: parmas[:directions] )
    @recipe.save
    redirect_to "/recipes"
  end

  def show
    @recipe = Recipe.find_by(id: params[:id])
    render "show.html.erb" 
  end

  def edit 
    @recipe = Recipe.find_by(id: params[:id])
    render "edit.html.erb"
  end

  def update
    @recipe = Recipe.find_by(id: params[:id])
    @recipe.assign_attributes(name: params[:name], ingredients: params[:ingredients], directions: params[:directions])
    @recipe.save
    redirect_to "/recipes"
  end

  def destroy
    @recipe = Recipe.find_by(id: params[:id])
    @recipe.destroy
    redirect_to "/recipes"
  end

end
