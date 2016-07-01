class HomeController < ApplicationController
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
    @url = "https://github.com/TyThompson.atom"
    @feed = Feedjira::Feed.fetch_and_parse @url
    @email = "tythompson@gmail.com"
  end

  def resume
    @url = "https://github.com/TyThompson.atom"
    @feed = Feedjira::Feed.fetch_and_parse @url
    @email = "tythompson@gmail.com"
    @phone = "919-275-5880"
  end

end
