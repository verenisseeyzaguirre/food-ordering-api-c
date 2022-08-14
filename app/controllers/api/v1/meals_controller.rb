class Api::V1::MealsController < Api::V1::BaseController
  
  def index
    @meals = Meal.all
  end

  def show
    @meal = Meal.find(params[:id])
  end
end
