class PagesController < ApplicationController
    def landing
        @content = Content.find(1)
        @client = Client.new
    end
    
    def admin
        @message = Client.all
    end
    
    def create
        @client = Client.create(client_params)
        if @client.save
            
            UserNotify.send_client_mail(@client).deliver
            redirect_to admin_path
        else
            render "landing"
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
    
    private
        def client_params
            params.require(:client).permit(:name, :email, :contact_number)
        end
        
        def content_params
            params.require(:content).permit(:tagline, :heading, :message_confirmation)
        end
end
