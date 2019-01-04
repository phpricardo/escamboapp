class BackofficeController < ApplicationController
  before_action :authenticate_admin!

  layout "backoffice"

  def pundit_user
    current_admin # idem current_user
  end
end