class SocialNetwork < ApplicationRecord
    belongs_to :user

    enum name: [:linkedin, :facebook, :instagram, :youtube]

    validates_presence_of :name

    def self.save_networks(networks_array, user_id)
        user = User.find(user_id)
        user.social_networks.destroy_all

        if networks_array.size > 1
            networks_array.map { |network| SocialNetwork.create(name: network, user_id: user_id) }
        end
    end
end
