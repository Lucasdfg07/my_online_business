class SocialNetwork < ApplicationRecord
    belongs_to :user

    enum name: [:linkedin, :facebook, :instagram, :tiktok, :youtube]

    validates_presence_of :name
end
