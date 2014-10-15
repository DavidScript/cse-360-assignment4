class ImagesController < ApplicationController
	def new
		@image = Image.new
	end

	def create
		@image = Image.create(user_params)
		@image.user = current_user
		@image.save
	
		redirect_to root_path
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
