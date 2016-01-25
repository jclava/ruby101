require 'rest-client'
require 'json'
require 'httparty'

# Using RestClient
# https://github.com/rest-client/rest-client
class GithubUser
  attr_accessor :login, :name, :email, :company

  def initialize(attrs = {})
    @login = attrs['login']
    @name = attrs['name']
    @email = attrs['email']
    @company = attrs['company']
  end

  # TODO: Finish implementation of the all class method
  #def self.all

  #end
end

response = RestClient.get('https://api.github.com/users/kurenn')
body = JSON.parse(response.body)

github_user = GithubUser.new(body)
puts github_user.login


# Using HTTParty
# https://github.com/jnunemaker/httparty
class GithubUserWithHTTParty
  include HTTParty
  base_uri 'https://api.github.com'

  attr_accessor :login, :name, :email, :company

  def initialize(username = "")
    response = self.class.get("/users/#{username}")
    body = JSON.parse(response.body)
    @login = body['login']
    @name = body['name']
    @email = body['email']
    @company = body['company']
  end

  def self.all
    response = self.get("/users")

    response.map { |attrs| self.new(attrs['login']) }
  end
end

github_user = GithubUserWithHTTParty.new("kurenn")
puts github_user.login

github_users = GithubUserWithHTTParty.all
#=> [#<GithubUserWithHTTParty @login=""...>, ]
