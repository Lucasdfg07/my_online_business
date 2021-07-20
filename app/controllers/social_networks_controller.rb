class SocialNetworksController < ApplicationController
    def create
        @social_network = SocialNetwork.new

        if SocialNetwork.save_networks(params[:social_network][:name], current_user.id)
            redirect_to final_my_public_index_url
        else
            redirect_to root_path, alert: 'Falha ao registrar. Tente novamente mais tarde.'
        end
    end
end
