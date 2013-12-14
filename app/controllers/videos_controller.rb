class VideosController < ApplicationController

def index
end

def show
	@user_name = current_user
end

end
