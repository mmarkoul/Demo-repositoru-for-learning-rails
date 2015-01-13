class LinksController < ApplicationController
  before_filter :set_link, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!,:except=>[:list]
  
  respond_to :html

  def index
    @links = Link.all
    respond_with(@links)
  end

  def list
    @categories=Category.find(:all,:order=>'title')
   
  end


  def show
    respond_with(@link)
  end

  def new
    @link = Link.new
    respond_with(@link)
  end

  def edit
  end

  def create
    @link = Link.new(params[:link])
    @link.save
    respond_with(@link)
  end

  def update
    @link.update_attributes(params[:link])
    respond_with(@link)
  end

  def destroy
    @link.destroy
    respond_with(@link)
  end

  private
    def set_link
      @link = Link.find(params[:id])
    end
end
