class FoodItemsController < ApplicationController
  before_action :set_food_item, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index, :show]
  # GET /food_items or /food_items.json
  def index
    @food_items = FoodItem.all.order("created_at desc")
  end

  # GET /food_items/1 or /food_items/1.json
  def show
  end

  # GET /food_items/new FoodItem.new
  def new
    @food_item = current_user.food_items.build
  end

  # GET /food_items/1/edit
  def edit
  end

  # POST /food_items or /food_items.json FoodItem.new(food_item_params)
  def create
    @food_item = current_user.food_items.build(food_item_params)

    respond_to do |format|
      if @food_item.save
        format.html { redirect_to food_items_url(@food_item), notice: "Food item was successfully created." }
        format.json { render :show, status: :created, location: @food_item }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @food_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /food_items/1 or /food_items/1.json
  def update
    respond_to do |format|
      if @food_item.update(food_item_params)
        format.html { redirect_to food_items_url(@food_item), notice: "Food item was successfully updated." }
        format.json { render :show, status: :ok, location: @food_item }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @food_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /food_items/1 or /food_items/1.json
  def destroy
    @food_item.destroy

    respond_to do |format|
      format.html { redirect_to food_items_url, notice: "Food item was successfully destroyed." }
      format.json { head :no_content }
    end
  end

    # Use callbacks to share common setup or constraints between actions.
    def set_food_item
      @food_item = FoodItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def food_item_params
      params.require(:food_item).permit(:name, :foodtype, :description, :ingrediants, :resturant, :glutenfree, :vegan, :image)
    end
end
