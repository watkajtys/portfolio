class Api::StatsController < ApplicationController
	respond_to :json, :html

	def index
      @stats = Stat.last
      respond_with @stats
	end

end