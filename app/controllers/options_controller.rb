class OptionsController < ApplicationController
  def index
    @places = Place.all
    @addresses = Address.all
  end



  def show
    @option = Option.find(params[:id])
    render json: {
      "message":{
        "attachment":{
          "type":"template",
          "payload":{
            "template_type":"button",
            "text":"Try the URL button!",
            "buttons":[
              {
                "type":"web_url",
                "url":"https://www.messenger.com/",
                "title":"URL Button",
                "webview_height_ratio": "full"
              }
            ]
          }
        }
      }
  end

  def new
    @option = Option.new
  end

  def create
    @option = Option.new(option_params)
  end

  private


  def option_params
    params.require(:option).permit(:name, :city, :street, :place_id, :address, :address_id)
  end
end