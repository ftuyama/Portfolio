module UsersHelper
  def fetch_github_image
    if @user.github
      profile_json = RestClient.get('https://api.github.com/users/' + @user.github)
      profile = JSON.parse(profile_json)
      profile['avatar_url']
    end
  end
end
