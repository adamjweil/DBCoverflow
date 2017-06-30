helpers do

  def create_user
    @user = User.new(params[:user_information])
    @user.password = params[:user_information][:password]
    @user.save!
  end

  def current_user
    @current_user ||= User.find(session[:user_id])
  end

  def logged_in?
    !!@current_user
  end

end
