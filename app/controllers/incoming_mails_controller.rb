class IncomingMailsController < ApplicationController

    protect_from_forgery with: :null_session

    def create
      puts "Receiving email...."
      Rails.logger.debug "Received: #{params[:headers][:subject]} for #{params[:envelope][:to]}"
      
      redirect_to received_path(params.require(:headers))
    end

end
