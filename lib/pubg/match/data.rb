module PUBG
  class Match
    class Data
      require "pubg/match/data/attributes"
      require "pubg/match/data/links"

      def initialize(args)
        @args = args
      end
  
      def type
        @args["type"]
      end

      def id
        @args["id"]
      end

      def attributes
        Attributes.new(@args["attributes"])
      end

      def relationships
        @args["ralationships"]
      end

      def links
        Links.new(@args["links"])
      end
    end
  end
end