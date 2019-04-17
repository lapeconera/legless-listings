class ListingsController < ApplicationController 
    before_action :set_listing, only: [:show, :edit, :update, :destroy]

    def index
        @listing = Listing.all

    end
    
    def create
        #create new listing
    end

    def new
        #show form for creating a new listing
        @listing = Listing.new
        
    end

    def edit
        #shos the edit form
        
    end

    def show
        #view a sing listing
        
    end

    def update
        #updates the current listing
    end

    def destroy
        #deletes current listing
       
    end

    def set_listing
        id = params[:id]
        @listing = Lisitng.find(id)
    end

end