module PUBG
  class Match
    class Data
      class Relationships
        require "pubg/match/data/relationships/rosters"
        require "pubg/match/data/relationships/assets"

        def initialize(args)
          @args = args
        end
    
        def rosters
          rosters = []
          @args["rosters"]["data"].each do |roster|
            rosters << Rosters.new(roster)
          end
          return rosters
        end

        def assets
          assets = []
          @args["assets"]["data"].each do |asset|
            assets << Assets.new(asset)
          end
          return assets
        end
      end
    end
  end
end