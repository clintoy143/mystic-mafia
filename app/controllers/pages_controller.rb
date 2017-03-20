class PagesController < ApplicationController
    before_action :authorize, only: [:admin, :message, :content, :update]
    
    def landing
        @content = Content.find(1)
        @client = Client.new
    end
    
    def admin
        @message = Client.all
    end
    
    def dev
    end
    
    def showroom
    end
    
    def create
        @client = Client.create(client_params)
        if @client.save
            redirect_to thanks_path
        else
            redirect_to root_path
        end
    end
    
    def message
        @message = Client.all
        render :layout => false
    end
    
    def content
        @content = Content.find(1)
        render :layout => false
    end
    
    def update
       @content = Content.find(1)
       if @content.update_attributes(content_params)
           redirect_to root_path
       else
           render "admin"
       end
    end
    
    def sent
        @content = Content.find(1)
    end
    
    private
        def client_params
            params.require(:client).permit(:name, :email, :contact_number, :confirm_email)
        end
        
        def content_params
            params.require(:content).permit(:tagline, :heading, :message_confirmation)
        end
end
