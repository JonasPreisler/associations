class PlacesController < ApplicationController
  def index
    @places = Place.all
  end

  def new
    @place = Place.new
    1.times { @place.addresses.build}
    @webview = Webview.all
  end

  def show
    @place = Place.find(params[:id])
    @addresses = @place.addresses
    @webview = @place.webview
  end


  def create
    @place = Place.new(place_params)
    if @place.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @place = Place.find_by(id: params[:id])
  end

  def update
    @place = Place.find_by(id: params[:id])
    if @place.update_attributes(place_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private


  def place_params
    params.require(:place).permit(:title, :webview_id, :webview, addresses_attributes: [:id, :option_1, :_destroy], option_attributes: [:id, :name, :_destroy])
  end
end