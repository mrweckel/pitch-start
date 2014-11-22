class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :yt_client

  def yt_client
    @yt_client ||= YouTubeIt::OAuth2Client.new(
      client_access_token: "access_token",
      client_refresh_token: "refresh_token",
      client_id: "client_id",
      client_secret: "client_secret",
      dev_key: "dev_key",
      expires_at: "expiration time")
  end
end
