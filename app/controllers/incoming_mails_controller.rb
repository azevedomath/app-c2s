class IncomingMailsController < ApplicationController
    
    
    
    protect_from_forgery with: :exception
    skip_before_action :verify_authenticity_token 
    

    def create

     
      message = [ params[:plain], params[:envelope][:to],params[:envelope][:from],params[:headers][:Subject]]
      
      message.each do |m|
        puts m
     end
      p = Post.new(:body => params[:plain], :email => params[:envelope][:from] ) 
      p.save
    end

end
