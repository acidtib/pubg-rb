module PUBG
    class Match
      class Data
        class Links
          def initialize(args)
            @args = args
          end
  
          def schema
            @args["schema"]
          end
  
          def self
            @args["self"]
          end
        end
      end
    end
  end