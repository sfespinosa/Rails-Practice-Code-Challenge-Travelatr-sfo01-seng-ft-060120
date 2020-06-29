class DestinationsController < ApplicationController
    before_action :set_destination, only: :show


    private
    def set_destination
        @destination = Destination.find(params[:id])
    end
end