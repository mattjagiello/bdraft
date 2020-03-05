class BeersController < ApplicationController

  def index
    @beers = Beer.first
    @beers = Beer.all
  
  end

  def new
    @beer = Beer.new
  end

  def create
      @beer = Beer.new(beer_params)
       if @beer.valid?
        @beer.save
        redirect_to beer_path(@beer)
    else
      render :new
    end
  end

  def show
    @beer = Beer.find(params[:id])
    @beers= Beer.all
  end

  def delete
  end

  def like_beer
    @beer = Beer.find(params[:id])
    @beer.like
    @beer.save
    redirect_to action: "show"
  end

  private

  def beer_params
    params.require(:beer).permit(:name, :brand, :style, :abv, :strength, :likes, :avg_rating )
  end

end