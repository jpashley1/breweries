class BreweryController < ApplicationController

  def index
    @brewery = Brewery.method(params[:address])
    render :index
  # render json: {message: "hello index"}
  end
 
  def show
    render :show
    # render json: {message: "hello show"}
  end
  
  # def create
  #   @brewery = Brewery.new(name: name, type: type, website: website, address: address, state: state)
  #   render :show
  # end

end

# name: name, type: type, website: website, address: address, state: state