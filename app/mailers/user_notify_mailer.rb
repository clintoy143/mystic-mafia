class UserNotifyMailer < ApplicationMailer
    default :from => "johnkennethmacasero@gmail.com"
    
    def send_client_mail(user)
       @client = user
       mail( :to => @client.email, :subject => "Thank's for your interest in Mandani")
    end
    
    def send_admin_mail(user)
        @client = user
        @admin_mail = "johnkennethmacasero@gmail.com"
        mail( :to => @admin_mail, :subject => "New Client Mail" )
    end
end
