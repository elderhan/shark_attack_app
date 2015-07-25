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

	def victim_params
		params.require(:victim).permit(:name, :victim_species, :location, :fatal, :description)
	end


end