class SocialNetworksController < ApplicationController
    def create
        @social_network = SocialNetwork.new(social_networks_params)

        @social_network.user_id = current_user.id

        if @social_network.save
            redirect_to request.referrer, notice: 'Redes salvas com sucesso!'
        else
            redirect_to request.referrer, notice: 'Erro ao salvar. Tente novamente mais tarde!'
        end
    end

    private

    def social_networks_params
        params.require(:social_network).permit(:name, :user_id)
    end 
end
