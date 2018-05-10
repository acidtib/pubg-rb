module PUBG
  class Match
    class Data
      class Relationships
        class Rosters
          def initialize(args)
            @args = args
          end
        
          def type
            @args["type"]
          end

          def id
            @args["id"]
          end
        end
      end
    end
  end
end