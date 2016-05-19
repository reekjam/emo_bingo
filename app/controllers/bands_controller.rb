class BandsController < ApplicationController

  def index
    @bands = Band.all.order('name asc')
  end

  def new
    @band = Band.new
  end

  def create
    bands = band_params[:name].split(',')

    if bands.count > 1
      bands.each do |band_name|
        begin
          band = Band.new name: band_name.strip
          band.save
        rescue ActiveRecord::RecordInvalid
        end
      end
      flash[:notice] = 'Cool. Bands added.'
    else
      band = Band.new band_params
      if band.save
        flash[:notice] = 'Sweet. Band added!'
      else
        flash[:error] = 'There was an error. Bummer.'
      end
    end

    redirect_to bands_path
  end

  def destroy
    @band = Band.find_by id: params[:id]

    if @band.delete
      flash[:notice] = 'That band was so over, anyway.'
    else
      flash[:error] = 'Arg! There was an error.'
    end

    redirect_to bands_path
  end

  private

  def band_params
    params.require(:band).permit(:name)
  end

end