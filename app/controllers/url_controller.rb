class UrlController < ApplicationController
  def index
    @url = Url.new
  end

  def show
    @url = Url.find(params[:id])
    redirect_to @url.url
  end

  def create
    @url = Url.new(cleanparams)
    @url.save
    redirect_to root_path(id: @url.id)
  end

  def cleanparams
    params.require(:url).permit(:url)
  end

end
