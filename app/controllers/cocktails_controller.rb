class CocktailsController < ApplicationController



    # GET /cocktails
    # GET /cocktails.json
    def index
      @cocktails = Cocktail.all
    end

    # GET /cocktails/1
    # GET /cocktails/1.json
    def show
      @cocktail = Cocktail.find(params[:id])
    end

    # GET /cocktails/new
    def new
      @cocktail = Cocktail.new
    end

    # GET /cocktails/1/edit

    # POST /cocktails
    # POST /cocktails.json
    def create
      @cocktail = Cocktail.new(cocktail_params)
      if @cocktail.save
        redirect_to cocktails_path(@cocktail)
      else
        render :new
      end
    end

    # DELETE /cocktails/1
    # DELETE /cocktails/1.json
    def destroy
    end

    private

      # Never trust parameters from the scary internet, only allow the white list through.
      def cocktail_params
        params.require(:cocktail).permit(:name)
      end
end
