class LinksController < ApplicationController
  def index
    @links = Link.all
  end

  
  def show
    
    @link = Link.find(params[:id])
    
  end

  def new
    @link = Link.new
  end

  def create
    @link = Link.new(link_params)
    merger @link.url

    if @link.save 
      redirect_to @link
    else
      render 'new'
    end
  end

  def merger url
      
      s = ScraperMagicPin.new url 
      s.html_document
      
      r = Restaurant.new
      r.name = s.rest_name
      r.save
      @link.restaurant_id = r.id
      


  end

  def edit
    @link = Link.find(params[:id])
  end

  def update
    @link = Link.find(params[:id])

    if @link.update(link_params)
      redirect_to @link
    else
      render 'edit'
    end
  end

  def destroy
    @link = Link.find(params[:id])
    @link.destroy

    redirect_to links_path
  end

  private
    def link_params
      params.require(:link).permit(:platform, :url, :last_changed_on, :restaurant_id)
    end
end

