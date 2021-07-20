class MyPublicController < ApplicationController
    def index
        @network = SocialNetwork.new
    end
end
