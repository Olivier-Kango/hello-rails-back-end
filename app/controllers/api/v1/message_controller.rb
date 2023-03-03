module Api
  module V1
    class MessageController < ApplicationController
      def index
        @message = Message.order("RANDOM()").limit(1).first
        render json: @message
      end
    end
  end
end
