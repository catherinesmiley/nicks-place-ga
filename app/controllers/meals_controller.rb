class MealsController < ApplicationController
      # GET /meals
  def index
    @meals = Meal.all
  end

  # GET /meals/1
  def show
    render json: @meal
  end

  # POST /meals
  def create
    @meal = Meal.new(meal_params)

    if @Meal.save
      render json: @meal, status: :created, location: @meal
    else
      render json: @Meal.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /meals/1
  def update
    if @Meal.update(meal_params)
      render json: @meal
    else
      render json: @Meal.errors, status: :unprocessable_entity
    end
  end

  # DELETE /meals/1
  def destroy
    @Meal.destroy
  end
end