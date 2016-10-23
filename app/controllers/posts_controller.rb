class PostsController < ApplicationController
	def index
		@posts = Post.published.includes(:tags)
	end

	def show
	end
end
