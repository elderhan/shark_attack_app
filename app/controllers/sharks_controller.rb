class SharksController < ApplicationController
	def index
		@sharks = Shark.all.order(name: :desc)
	end

	def show
		@shark = Shark.find(params[:id])
	end

	def new
		@shark = Shark.new
	end

	def edit
		@shark = Shark.find(params[:id])
	end

	def create
		@shark = Shark.new(shark_params)

		if @shark.save
			redirect_to shark_path(@shark)
		else
			render :new
		end
	end

	def update
		@shark = Shark.find(params[:id])

		if @shark.update(shark_params)
			redirect_to shark_path(@shark)
		else
			render :edit
		end
	end

	def destroy
		@shark = Shark.find(params[:id])
		@shark.destroy
		redirect_to root_path
	end

	def shark_params
		params.require(:shark).permit(:name, :shark_species, :weight, :age
			:description)
	end

end