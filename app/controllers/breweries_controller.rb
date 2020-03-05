class BreweriesController < ApplicationController

  def index
    @brewery = Brewery.new
  end

  def by_name
  end

  def by_city
  end

  def new
    @brewery = Brewery.new
  end

  def create
    @brewery = Brewery.new(brewery_params)
    if @brewery.valid?
      @brewery.save
      redirect_to @brewery
    else
      render :new
    end
  end

  def show
    @brewery = Brewery.find(params[:id])
  end

  private

  def brewery_params
    params.require(:brewery).permit(:name, :address, :city, :zip_code)
  end

end
