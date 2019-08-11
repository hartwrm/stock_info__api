class PricesController < ApplicationController

  # GET /prices
  def index
    @prices = Price.all

    render json: @prices
  end



  # POST /prices
  def create
    @price = Price.new(price_params)
    @price.company_id = params[:company_id]

    if @price.save
      render json: @price, status: :created
    else
      render json: @price.errors, status: :unprocessable_entity
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_price
      @price = Price.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def price_params
      params.require(:price).permit(:price, :company_id)
    end
end
