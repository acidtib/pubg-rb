require "spec_helper"
RSpec.describe PUBG::Match do
  let(:match) { @pubg.match("match_id") }
  
  describe "has data" do  
    it "data" do
      expect(match.data).not_to be nil
    end

    it "included" do
      expect(match.included.count).not_to be(0)
    end

    it "links" do
      expect(match.links).not_to be nil
    end

    it "meta" do
      expect(match.meta).not_to be nil
    end

    it "telemetry" do
      expect(match.telemetry).not_to be nil
    end

    it "participants" do
      expect(match.participants).not_to be nil
    end

    it "roster" do
      expect(match.roster).not_to be nil
    end

    describe "can read data" do
      describe "data" do
        it "type" do
          expect(match.data.type).to eq("match")
        end

        describe "attributes" do
          it "duration" do
            expect(match.data.attributes.duration).to eq(1826)
          end
        end
      end

      it "links" do
        expect(match.links.self).to eq("https://api-origin.playbattlegrounds.com/shards/xbox-na/matches/895e77a8-0efa-492b-b256-3e9bf79097e6")
      end
    end
  end
end
