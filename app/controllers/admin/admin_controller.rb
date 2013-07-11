class Admin::AdminController < ApplicationController
  layout "adminlayout"

  # Usiamo una semplice autenticazione http per proteggere il nostro pannello admin
  before_filter :admin_required
  def index
    render 'admin/index'
  end
end
