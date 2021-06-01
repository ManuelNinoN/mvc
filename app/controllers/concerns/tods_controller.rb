class TodsController < ApplicationController	
	def new
		@tod = Tod.new
	end	

	 def create 
  	@tod = Tod.new(tod_params)
    if @tod.save
    	flash[:notice] = "El registro fue guardado con exito!"
    redirect_to tod_path(@tod)
	else 
	render 'new'
	end
	end

	def show
		@tod = Tod.find(params[:id])
	end
  private
  def tod_params
  	params.require(:tod).permit(:nombre, :descripcion)
  end
end