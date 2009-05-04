class HomeController < ApplicationController
#  ensure_authenticated_to_facebook :set_user
#  before_filter :get_user
#
#  def get_user
#    @facebook_user = facebook_session.user
#    @user = User.find_or_create_by_facebook_uid(@facebook_user.uid)
#  end
 
  def index
    respond_to do |format|
      format.fbml # index.fbml.erb
      format.html # index.html.erb
    end
  end

  def debug
    #render_with_facebook_debug_panel
  end
end
