class HomeController < ApplicationController
  # Use this to make this app. be a facebook app. It goes via the fbml pages
  # Also, start tunnel by rake facebooker:tunnel
  # Comment to see how Facebook Connect works with a regular RoR site
  ensure_application_is_installed_by_facebook_user

  def index
    respond_to do |format|
      # Comment the fbml format to see how Facebook Connect works with a regular RoR site
      format.fbml # index.fbml.erb
      format.html # index.html.erb
    end
  end
  
#  def show
#    @user = User.find params[:id]
#    respond_to do |wants|
#      wants.html
#      wants.fbml
#    end
#  end


end
