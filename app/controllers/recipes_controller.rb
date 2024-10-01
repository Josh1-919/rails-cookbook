class RecipesController < ApplicationController
  def create
    @recipe = Recipe.new(recipe_params)
    @category = category.find(params[category])
    @recipe.category = @category
    if @recipe.save
      redirect_to categories_path
    else
      @bookmark = Bookmark.new
      render "categories/show", status: :unprocessable_entity
  end
end


  private

  def review_params
    params.require(:recipe).permit(:name, :rating, :description, :image_url)
  end
end
