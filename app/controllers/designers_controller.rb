class DesignersController < ApplicationController
  require 'json'

  before_filter :set_constants
  def set_constants
    @classecorpo = "designers"
  end


  def index
    @designer = Designer.all
  end


  def showajax
    @designer = Designer.find(params[:id])
    respond_to do |format|
      format.html { render :layout => false }
      # other formats
    end



  end

end
