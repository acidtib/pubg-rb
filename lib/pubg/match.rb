module PUBG
	class Match
		require "pubg/match/data"
		require "pubg/match/links"
		require "pubg/match/participants"
		require "pubg/match/telemetry"
		require "pubg/match/roster"

		def initialize(args)
			@args = args
		end

		def data
			Data.new(@args["data"])
		end

		def included
			include = []
			@args["included"].each do |inc|
				include << Telemetry.new(inc) if inc["type"] == "asset"
				include << Participants.new(inc) if inc["type"] == "participant"
				include << Roster.new(inc) if inc["type"] == "roster"
			end
			return include
		end

		def links
			Links.new(@args["links"])
		end

		def meta
			@args["meta"]
		end

		def telemetry
			Telemetry.new(@args["included"].select {|data| data["type"] == "asset" }.first)
		end

		def participants
			items = []
			participants = @args["included"].select {|data| data["type"] == "participant" }
			participants.each do |participant|
				items << Participants.new(participant)
			end
			return items
		end

		def roster
			items = []
			rosters = @args["included"].select {|data| data["type"] == "roster" }
			rosters.each do |roster|
				items << Roster.new(roster)
			end
			return items
		end
	end
end