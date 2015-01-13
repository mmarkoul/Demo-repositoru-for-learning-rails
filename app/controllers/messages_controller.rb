class MessagesController < ApplicationController
  before_filter :set_message, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!,:except=>[:new, :create]
  respond_to :html

  def index
    @messages = Message.all
    respond_with(@messages)
  end

  def show
    respond_with(@message)
  end

  def new
    @message = Message.new
    get_page_metadata
    respond_with(@message)
  end

  def edit
  end

  def create
    @message = Message.new(params[:message])
    respond_to do |format|
      if @message.save
        ContactMailer.delivermessage(@message).deliver
        flash[:notice]='Thanks for your message'
        #respond_with(@message)
        format.html{redirect_to root_path}
      else
        format.html{render :action=>"new"}
      end
    end
  end

  def update
    @message.update_attributes(params[:message])
    respond_with(@message)
  end

  def destroy
    @message.destroy
    respond_with(@message)
  end

  private
    def set_message
      @message = Message.find(params[:id])
    end
end
