class EventsController < ApplicationController
    before_action :authorize, except: [:index, :show]

    def index 
        @events = Event.all
    end
    
    def new 
        @event = Event.new
    end 

    def create 
        @event = Event.new(event_params)
        @event.user = current_user
        if @event.save
            redirect_to root_path
        else 
            render:new
        end 
    end
    
    def show 
        @event = Event.find(params[:id])
        @comment = Comment.new
    end 

    def edit
        @event = Event.find(params[:id])
    end

    def update
        @event = Event.find(params[:id])
        @event.update_attributes(event_params)
        redirect_to event_path(@event)
    end 

    def destroy 
        @event = Event.find(params[:id])
        @event.destroy
        redirect_to events_path 
    end 

    private 
    
        def event_params
            params.require(:event).permit(:name, :location, :description, :category, :time, :image)
        end 

end