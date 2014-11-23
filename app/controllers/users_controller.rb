class UsersController < ApplicationController

	def login

	end

	def index

  end

  def show

  end

  def new
  	@user = User.new
  end

  def create
    @user = User.new(user_params)
	    if @user.save
	      redirect_to pitches_path
	    else
	      render :new
	    end
  end

  def destroy

  end

  def edit

  end

  def update

  end

  def oauth
  # Get the token from the session if available or exchange the authorization
  # code for a token.
      if !session[:token]
        # Make sure that the state we set on the client matches the state sent
        # in the request to protect against request forgery.
        if session[:state] == params[:state]
          # Upgrade the code into a token object.
          $authorization.code = request.body.read
          $authorization.fetch_access_token!
          $client.authorization = $authorization

          id_token = $client.authorization.id_token
          encoded_json_body = id_token.split('.')[1]
          # Base64 must be a multiple of 4 characters long, trailing with '='
          encoded_json_body += (['='] * (encoded_json_body.length % 4)).join('')
          json_body = Base64.decode64(encoded_json_body)
          body = JSON.parse(json_body)
          # You can read the Google user ID in the ID token.
          # "sub" represents the ID token subscriber which in our case
          # is the user ID. This sample does not use the user ID.
          gplus_id = body['sub']

          # Serialize and store the token in the user's session.
          token_pair = TokenPair.new
          token_pair.update_token!($client.authorization)
          session[:token] = token_pair
        else
          halt 401, 'The client state does not match the server state.'
        end
        status 200
      else
        content_type :json
        'Current user is already connected.'.to_json
      end
    end
  end

    def get_videos
        $client.authorization.update_token!(session[:token].to_hash)
        youtube = $client.discovered_api('youtube', 'v3')

        auth_util = CommandLineOAuthHelper.new(YOUTUBE_READONLY_SCOPE)
        client.authorization = auth_util.authorize()

        # Retrieve the "contentDetails" part of the channel resource for the
        # authenticated user's channel.
        channels_response = client.execute!(
          :api_method => youtube.channels.list,
          :parameters => {
            :mine => true,
            :part => 'contentDetails'
          }
        )

      channels_response.data.items.each do |channel|
        # From the API response, extract the playlist ID that identifies the list
        # of videos uploaded to the authenticated user's channel.
        uploads_list_id = channel['contentDetails']['relatedPlaylists']['uploads']

        # Retrieve the list of videos uploaded to the authenticated user's channel.
        playlistitems_response = client.execute!(
            :api_method => youtube.playlist_items.list,
            :parameters => {
            :playlistId => uploads_list_id,
            :part => 'snippet',
            :maxResults => 50
          }
        )

    end

  private

  def user_params
  	params.require(:user).permit([:username, :password, :password_confirmation])
  end

end
