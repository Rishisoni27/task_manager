class CategoriesController < ApplicationController
 def create
  category = Category.new(name:"work")
  category.save 
  render plain: "category created "
 end
end
