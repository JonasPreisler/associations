class WebviewsController < ApplicationController
  before_action :set_webview, only: [:show, :edit, :update, :destroy]

  # GET /webviews
  # GET /webviews.json
  def index
    @webviews = Webview.all
  end

  # GET /webviews/1
  # GET /webviews/1.json
  def show
    @webview = Webview.find(params[:id])
    @addresses = @webview.addresses
  end

  # GET /webviews/new
  def new
    @webview = Webview.new
  end

  # GET /webviews/1/edit
  def edit
  end

  # POST /webviews
  # POST /webviews.json
  def create
    @webview = Webview.new(webview_params)

    respond_to do |format|
      if @webview.save
        format.html { redirect_to @webview, notice: 'Webview was successfully created.' }
        format.json { render :show, status: :created, location: @webview }
      else
        format.html { render :new }
        format.json { render json: @webview.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /webviews/1
  # PATCH/PUT /webviews/1.json
  def update
    respond_to do |format|
      if @webview.update(webview_params)
        format.html { redirect_to @webview, notice: 'Webview was successfully updated.' }
        format.json { render :show, status: :ok, location: @webview }
      else
        format.html { render :edit }
        format.json { render json: @webview.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /webviews/1
  # DELETE /webviews/1.json
  def destroy
    @webview.destroy
    respond_to do |format|
      format.html { redirect_to webviews_url, notice: 'Webview was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_webview
      @webview = Webview.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def webview_params
      params.require(:webview).permit(:name, :places, :place_id, :address_id, addresses_attributes: [:id, :option_1, :_destroy])
    end
end
