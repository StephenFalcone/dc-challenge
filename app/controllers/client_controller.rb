class ClientController < ApplicationController
    def index
         @events = Event.order('id ASC');
        #render json: {status: 'SUCCESS', message:'Loaded events', data:@events}, status: :ok
    end
    def show
        @event = Event.find(params[:id]);
        @assitEvent = Assistance.where(event_id: @event);
        @peopleAttend = Person.where(id: @assitEvent.pluck(:person_id) );
        #render json: {status: 'SUCCESS', message:'Loaded event', data:@peopleAttend}, status: :ok
    end
end
