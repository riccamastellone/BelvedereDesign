class ShowroomController < ApplicationController
# ricordardi da fare rake geocode:all CLASS=Showroom

  before_filter :set_constants
  def set_constants
    @attivo = 4
    @classecorpo = "prodotti"
  end

  def index
  end


  def listajax
    if((!params[:indirizzo].include? 'italia') && (!params[:indirizzo].include? 'italy'))
        indirizzo = params[:indirizzo] + " italy"
    else
      indirizzo = params[:indirizzo]
        end
    render :text => JSON.generate( Showroom.near(indirizzo, 50, {:order => :distance, :units => :km}).as_json).html_safe
  end



  def ajaxdetail
    @showroom = Showroom.find(params[:id])
    render :text => JSON.generate(@showroom.as_json).html_safe
  end
end
