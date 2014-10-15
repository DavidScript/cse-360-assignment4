class ImagesController < ApplicationController
	def new
	end

	def create
		@image = Image.create(user_params)
	end
	
	def edit
	end
	
	def update
	end

	def destroy
	end

	def user_params
		params.require(:image).permit(:title, :data)
	end
end
