class UsersController < ApplicationController

  def login

  end

  def authenticate
      logger.info "NAME:#{params[:username]}"
      logger.info "NAME:#{params[:password]}"
  end

  def registration

  end
end
