class AddressesController < ApplicationController
  def index
    @places = Place.all
  end

  def new
    @address = Address.new
  end

  def create
    @address = Address.new(address_params)
    if @address.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @address = Address.find(params[:id])
    render json: {
      "message":{
        "attachment":{
          "type":"template",
          "payload":{
            "template_type":"button",
            "text":"#{@address.street}",
            "buttons":[
              {
                "type":"web_url",
                "url":"#{@address.option_1}",
                "title":"#{@address.option_2}",
                "webview_height_ratio": "full"
              }
            ]
          }
        }
      }
    }
  end
  private


  def address_params
    params.require(:address).permit(:city, :street, :place_id, :option_1, options_attributes: [:id, :option_1, :_destroy])
  end
end