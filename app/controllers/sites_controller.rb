class SitesController < ApplicationController
  skip_authorization_check
  before_filter :find_site, only: [:edit, :update, :destroy]
  
  def index
    @sites = Site.scoped
  end
  
  def new 
    @site = Site.new
  end
  
  def edit
  end
  
  def create
    @site = Site.new(params[:site])
    if @site.save
      redirect_to sites_path, notice: 'Sitio Creado'
    else
      render :new
    end
  end
  
  def update 
    if @site.update_attributes(params[:site])
      redirect_to sites_path, notice: 'Sitio Actualizado'
    else
      render :edit
    end
  end
  
  def destroy
    @site.destroy
     redirect_to sites_path, notice: 'Sitio Borrado'
  end

  
  private
  def find_site
    @site = Site.find params[:id]
  end
end