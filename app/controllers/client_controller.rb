class ClientController < ApplicationController

    #list all Events on home page
    def index
         @events = Event.order('id ASC');
    end
    
    #list people at specific event
    def show
        #get specific event ID
        @event = Event.find(params[:id]);
        #get assistance objects where event_id = event ID
        @assitEvent = Assistance.where(event_id: @event);
        #get all people objects where ID = assistance person_id
        @peopleAttend = Person.where(id: @assitEvent.pluck(:person_id) );
    end

    #same as above but in raw JSON instead of a view
    def json
        @event = Event.find(params[:id]);
        @assitEvent = Assistance.where(event_id: @event);
        @peopleAttend = Person.where(id: @assitEvent.pluck(:person_id) );
        #render the people objects in raw JSON format
        render json: {status: 'SUCCESS', message:'Loaded event', data:@peopleAttend}, status: :ok        
    end 

end
