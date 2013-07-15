class MainController < ApplicationController




  def home
  end

  def azienda
    @attivo = 5
  end

  def partners
    @attivo = 7
  end

  def contatti
  end

  def servizi
    @attivo = 6
  end

  def getinspired
    @attivo = 1
  end
end
