class PagesController < ApplicationController
    def landing
        @content = Content.find(1)
        @client = Client.new
    end
    
    def admin
        
    end
    
    def create
        @client = Client.create(client_params)
        if @client.save
            redirect_to admin_path
        else
            render "landing"
        end
    end
    
    private
        def client_params
            params.require(:client).permit(:name, :email, :contact_number)
        end
end
