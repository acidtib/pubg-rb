module PUBG
    class Match
      class Links
        def initialize(args)
          @args = args
        end
  
        def self
          @args["self"]
        end
      end
    end
end