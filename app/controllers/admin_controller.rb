class AdminController < ApplicationController
  # Usiamo una semplice autenticazione http per proteggere il nostro pannello admin
  before_filter :admin_required
  def home

  end
end
