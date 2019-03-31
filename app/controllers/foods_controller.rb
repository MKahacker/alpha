class FoodsController < ApplicationController
  # GET /foods/new
  def new
    @food = Food.new
    @food.food_serving = params[:serving]
    @food.name = params[:food_name]
  end

  # POST /foods
  # POST /foods.json
  def create
    @food = Food.new(food_params)
    @serving = Serving.new({:serving => @food.food_serving})
    @serving.food = @food
    if @serving.save
    end
    respond_to do |format|
      if @food.save
        format.html { redirect_to servings_url, notice: 'Food was successfully created.' }
        format.json { render :show, status: :created, location: @food }
      else
        format.html { render :new }
        format.json { render json: @food.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foods/1
  # PATCH/PUT /foods/1.json
  #TODO :- work on update
  # def update
  #   respond_to do |format|
  #     if @food.update(food_params)
  #       format.html { redirect_to servings_url, notice: 'Food was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @food }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @food.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end


  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def food_params
      params.require(:food).permit( :name, :category,:calories,:carbohydrates,
        :protein,:fat, :food_serving)
    end
end
