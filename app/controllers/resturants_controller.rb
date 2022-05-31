  class ResturantsController < ApplicationController
    before_action :set_resturant, only: %i[ show edit update destroy ]

    # GET /resturants or /resturants.json
    def index
      @resturants = Resturant.all.order("created_at desc")
    end

    # GET /resturants/1 or /resturants/1.json
    def show
        @food_items = FoodItem.all.where(resturant: @resturant.name)
    end

    # GET /resturants/new
    def new
      
    end

    # GET /resturants/1/edit
    def edit
    end

    # POST /resturants or /resturants.json
    def create
      @resturant = Resturant.new(resturant_params)

      respond_to do |format|
        
        if @resturant.save
          format.html { redirect_to resturant_url(@resturant), notice: "Resturant was successfully created." }
          format.json { render :show, status: :created, location: @resturant }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @resturant.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /resturants/1 or /resturants/1.json
    def update
      respond_to do |format|

        if @resturant.update(resturant_params)
          format.html { redirect_to resturant_url(@resturant), notice: "Resturant was successfully updated." }
          format.json { render :show, status: :ok, location: @resturant }
        else
          format.html { render :edit, status: :unprocessable_entity }
          format.json { render json: @resturant.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /resturants/1 or /resturants/1.json
    def destroy
      @resturant.destroy

      respond_to do |format|
        format.html { redirect_to resturants_url, notice: "Resturant was successfully destroyed." }
        format.json { head :no_content }
      end
    end

 
      # Use callbacks to share common setup or constraints between actions.
      def set_resturant
        @resturant = Resturant.find(params[:id])
      end

      # Only allow a list of trusted parameters through.
      def resturant_params
        params.require(:resturant).permit(:name, :genre, :description, :location, :glutenfree, :vegan, :image, :resturant)
      end
  end
