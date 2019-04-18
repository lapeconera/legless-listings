class ListingsController < ApplicationController 
    before_action :set_listing, only: [:show, :edit, :update, :destroy]
    before_action :set_breeds_and_sexes, only: [:new, :edit]

    def index
        @listing = Listing.all

    end
    
    def create
        #create new listing
        @listing = Listing.create(listing_params)
        
        if @listing.errors.any?
            set_breeds_and_sexes
            render "new"
        else
        redirect_to listings_path            
        end
        
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

    private
    def set_breeds_and_sexes
        @breeds = Breed.all
        @sexes = Listing.sexes.keys

    end


    def set_listing
        id = params[:id]
        @listing = Lisitng.find(id)
    end

    def listing_params
        params.require(:listing).permit(:title,:description,:breed_id,:sex,:price,:deposit,:date_of_birth,:diet)
    
    end

end