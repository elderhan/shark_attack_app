class VictimsController < ApplicationController

	def create
		@shark = Shark.find(params[:shark_id])
		@victim = @shark.victims.create(victim_params)
		redirect_to shark_path(@shark)
	end

	def destroy
		@shark = Shark.find(params[:shark_id])
		@victim = @shark.victims.find(params[:id])
		@victim.destroy
		redirect_to shark_path(@shark)
	end

	def edit
		@shark = Shark.find(params[:shark_id])
		@victim = @shark.victims.find(params[:id])
	end


	def update
		@shark = Shark.find(params[:shark_id])
		@victim = @shark.victims.find(params[:id])

		if @victim.update(victim_params)
			redirect_to shark_path(@shark)
		else
			render :edit
		end
	end


	def victim_params
		params.require(:victim).permit(:name, :victim_species, :location, :fatal, :description)
	end




end