require  "spec_helper"

describe ChurchSearch::News do
  describe "instantiation" do
    context "with invalid params" do
      let(:params) { {} }
      it "should raise an error" do
        expect { ChurchSearch::News.new(params) }.to raise_error
      end
    end

    context "with valid params" do
      let(:params) { {} }
      it "should not raise an error" #do
      #expect { ChurchSearch::News.new(params) }.not_to raise_error
      #end
    end

  end
end
