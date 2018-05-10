module PUBG
  class Match
    class Data
      class Attributes
        def initialize(args)
          @args = args
        end
  
        def gameMode
          @args["gameMode"]
        end
  
        def titleId
          @args["titleId"]
        end

        def shardId
          @args["shardId"]
        end

        def tags
          @args["tags"]
        end

        def createdAt
          @args["createdAt"]
        end

        def duration
          @args["duration"]
        end

        def stats
          @args["stats"]
        end
      end
    end
  end
end