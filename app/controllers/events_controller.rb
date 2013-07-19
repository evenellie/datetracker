class EventsController < ApplicationController

  def index
    @events = Event.all

  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(params[:event])

    if @event.save
      flash[:notice] = "Date saved"
      redirect_to @event
    else
      #
    end
  end

  def show
    @event = Event.find(params[:id])
  end

end
