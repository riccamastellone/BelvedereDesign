class DesignersController < ApplicationController

  before_filter :set_constants
  def set_constants
    @classecorpo = "designers"
  end


  def index
    @designer = Designer.all
  end

end
