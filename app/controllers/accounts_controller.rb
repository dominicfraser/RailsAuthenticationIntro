class AccountsController < ApplicationController

  before_action :authenticate_user!
  #this can also go into application controller to enforce it on all controllers that inherit from it

  def index
    accounts = current_user.accounts
    render :json => accounts
  end

end