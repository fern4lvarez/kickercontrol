# app.rb

require 'sinatra'
require 'sinatra/activerecord'
require './environments'

helpers do
  def protected!
    return if authorized?
    headers['WWW-Authenticate'] = 'Basic realm="Restricted Area"'
    halt 401, "Not authorized\n"
  end

  def authorized?
    @auth ||=  Rack::Auth::Basic::Request.new(request.env)
    @auth.provided? and @auth.basic? and @auth.credentials and @auth.credentials == ['admin', 'kickit']
  end
end


class Player < ActiveRecord::Base
end

class Game < ActiveRecord::Base
	belongs_to :team1backend, :class_name => 'Player', :foreign_key => 'team1backend_id'
	belongs_to :team1frontend, :class_name => 'Player', :foreign_key => 'team1frontend_id'
	belongs_to :team2backend, :class_name => 'Player', :foreign_key => 'team2backend_id'
	belongs_to :team2frontend, :class_name => 'Player', :foreign_key => 'team2frontend_id'
end

get "/" do
	protected!
	erb :match
end

get "/games" do
	@games = Game.all
	erb :games
end

get "/games/:id" do
	@games = Game.find(params[:id])
	erb :games
end

post "/games" do
	@params = params[:post]
	@team1backend = Player.where("name = ?", @params["team1backend"]).pluck("id").first
	@team1frontend = Player.where("name = ?", @params["team1frontend"]).pluck("id").first
	@team2backend = Player.where("name = ?", @params["team2backend"]).pluck("id").first
	@team2frontend = Player.where("name = ?", @params["team2frontend"]).pluck("id").first

	# puts @team1backend
	Game.create({ :team1backend_id => @team1backend,
								:team1frontend_id => @team1frontend,
								:team2backend_id => @team2backend,
								:team2frontend_id => @team2frontend,
								:team1score => @params["team1score"],
								:team2score => @params["team2score"]}
								)
	@games = Game.all
	@players = Game.all.uniq.joins(:name)
	erb :games
end

get "/players" do
	@players = Player.all
	erb :players
end
