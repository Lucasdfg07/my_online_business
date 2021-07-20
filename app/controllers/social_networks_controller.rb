class SocialNetworksController < ApplicationController
    def create
        @social_network = SocialNetwork.new

        if SocialNetwork.save_networks(params[:social_network][:name], current_user.id)
            redirect_to root_path
        else
            redirect_to root_path
        end
    end
end
