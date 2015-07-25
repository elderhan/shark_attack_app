class VictimsController < ApplicationController

	def create
		@shark = Shark.find(params[:shark_id])
		@victim = @shark.victims.create(victim_params)
		redirect_to shark_path(@shark)
	end

	def destroy

	end

	def victim_params
		params.require(:victim).permit(:name, :victim_species, :location, :fatal, :description)
	end


end