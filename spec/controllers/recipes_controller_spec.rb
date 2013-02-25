require File.dirname(__FILE__) + '/../spec_helper'

describe RecipesController do
  fixtures :all
  render_views

  it "index action should render index template" do
    get :index
    response.should render_template(:index)
  end

  it "show action should render show template" do
    get :show, :id => Recipe.first
    response.should render_template(:show)
  end

  it "new action should render new template" do
    get :new
    response.should render_template(:new)
  end

  it "create action should render new template when model is invalid" do
    Recipe.any_instance.stubs(:valid?).returns(false)
    post :create
    response.should render_template(:new)
  end

  it "create action should redirect when model is valid" do
    Recipe.any_instance.stubs(:valid?).returns(true)
    post :create
    response.should redirect_to(recipe_url(assigns[:recipe]))
  end

  it "edit action should render edit template" do
    get :edit, :id => Recipe.first
    response.should render_template(:edit)
  end

  it "update action should render edit template when model is invalid" do
    Recipe.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Recipe.first
    response.should render_template(:edit)
  end

  it "update action should redirect when model is valid" do
    Recipe.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Recipe.first
    response.should redirect_to(recipe_url(assigns[:recipe]))
  end

  it "destroy action should destroy model and redirect to index action" do
    recipe = Recipe.first
    delete :destroy, :id => recipe
    response.should redirect_to(recipes_url)
    Recipe.exists?(recipe.id).should be_false
  end
end
