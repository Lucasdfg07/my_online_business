class InitialGuideController < ApplicationController
    def index
        @network = SocialNetwork.new
    end
end
