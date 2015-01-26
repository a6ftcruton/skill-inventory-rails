class Api::V1::SessionsController < Api::V1::BaseController
  def create
    require 'pry'; binding.pry
    github_authenticator = GithubAuthenticator.new(github_auth_code)
    user_factory = UserFactory.new(github_authenticator)
    user = user_factory.find_or_create_user

    render json: user, status: :created
  end

  private

  def github_auth_code
    params.require(:'github-auth-code')
  end
end
