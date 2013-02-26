class RecipesController < ApplicationController
  def index
    @user = current_user
    @recipes = @user.recipes
    @allrecipes = Recipe.where('user_id != ?', current_user.id)
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @user = current_user
    @recipe = @user.recipes.build
  end

  def create
    @user = current_user
    @recipe = @user.recipes.build(params[:recipe])
    if @recipe.save
      redirect_to @recipe, :notice => "Successfully created recipe."
    else
      render :action => 'new'
    end
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])
    if @recipe.update_attributes(params[:recipe])
      redirect_to @recipe, :notice  => "Successfully updated recipe."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    redirect_to recipes_url, :notice => "Successfully destroyed recipe."
  end
end
