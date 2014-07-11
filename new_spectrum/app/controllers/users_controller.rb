class UsersController < ApplicationController

  def index
    @user = User.find(session[:user_id])
    logger.info "INDEX"
    logger.info "PARENT_ID:#{session[:user_id]}"
  end

  def login
     @user = User.new
     render layout: 'layouts/login_layout'
  end

  def authenticate
    @password = Digest::MD5.hexdigest(params[:password])
    @decrpt_password = Digest::MD5.hexdigest(@password)
    @users = User.where(username:params[:username],password:@decrpt_password)

    if @users.size > 0
      @users.each do |user|
        session[:user_id] = user.id
        session[:username] = user.username
        session[:name] = user.name
      end

      #redirect_to dashboard_index_path
      redirect_to users_path
    else
      flash[:notice] = t('users.created')
      @errors = 1
      if params[:password].size <= 0 && params[:password].size <= 0
        @error_alert = t('users.usrandpass_error')
      else
        @error_alert = t('users.invalidusrpass_error')
      end
      render login_users_path
    end
  end

  def registration
      @user = User.new
      @user.gender = t('users.gender')
  end

  def create_user
    @user = User.new(user_permitted_params)

    @password = Digest::MD5.hexdigest(params[:password])
    @enc_pass = Digest::MD5.hexdigest(@password)
    @parent_id = params[:parent_id]
    @user.username = params[:username]
    @user.password = @enc_pass
    @user.parent_id = @parent_id
    logger.info "PARENT_ID:#{@parent_id}"

    if @user.save
      if @user.parent_id.to_i > 0
        flash[:notice] = t('users.created')
        render add_account_users_path
      else
        redirect_to login_users_path
      end

    else
      flash[:notice] = t('media_table_top.surveys.form_error_notice')
      render :action=> :registration
    end
  end

  def destroy
    @user = User.find(params[:id])
    if @user.present?
      @user.destroy
    end

    @users = User.where(parent_id:session[:user_id])
    flash[:notice] = t('users.deleted')

  end

  def view_network
    @users = User.where(parent_id:session[:user_id])
    logger.info "Users:#{@users.inspect}"
  end

  def add_account
    @user = User.new
    @user.gender = t('users.gender')
    @user.role = t('users.role')
    @parent_id = session[:user_id]
  end

  def logout
    session.delete(:user_id)
    session.delete(:username)
    redirect_to login_users_path
  end

  private

  def user_permitted_params
    params.require(:user).permit(:name, :address,:company_name,:tel_number,:cp_number,:username,:password,:gender,:parent_id,:creadit_card_number,:role,:avatar)
  end
end
