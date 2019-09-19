class IncomingMailsController < ApplicationController

    protect_from_forgery with: :null_session
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
