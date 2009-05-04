class HomeController < ApplicationController
 
  def index
    respond_to do |format|
      format.fbml # index.fbml.erb
      format.html # index.html.erb
    end
  end

end
