class IncomingMailsController < ApplicationController
    
    

    protect_from_forgery with: :exception, prepend: true
    skip_before_action :verify_authenticity_token 
    

    require 'mail' 
    def create

      puts "Receiving emaizzzzl...."
      message = [ params[:plain], params[:envelope][:to],params[:envelope][:from],params[:headers][:Subject]]
      
      message.each do |m|
        puts m
     end
      redirect_to received_path
    end

end
