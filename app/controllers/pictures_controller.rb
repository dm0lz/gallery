class PicturesController < ApplicationController

	def show
		#binding.pry
		@picture = Picture.find(params[:id])
	end

	def create
		#binding.pry
		params[:picture][:user_id] = current_user.id
		@picture = set_album.pictures.new(picture_params)

		respond_to do |format|
			if @picture.save
				#binding.pry
				format.html { redirect_to [@album, @picture], notice: 'Album was successfully created.' }
				format.json { render action: 'show', status: :created, location: [@album, @picture] }
				format.js { render :action => 'create' }
			else
				format.html { render action: 'new' }
				format.json { render json: @picture.errors, status: :unprocessable_entity }
			end
		end

	end

	def destroy
		#binding.pry
		picture = Picture.find(params[:id])
		picture.destroy
		redirect_to set_album
	end

	private
	# Use callbacks to share common setup or constraints between actions.
	def set_album
	  @album = Album.find(params.require(:album_id))
	end

	# Never trust parameters from the scary internet, only allow the white list through.
	def picture_params
	  params.require(:picture).permit(:name, :image, :user_id)
	end

end
