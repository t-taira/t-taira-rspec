require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the ArticlesHelper. For example:
#
# describe ArticlesHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe ArticlesHelper, type: :helper do
  describe '#posted_on' do
    before do
      @now = Time.zone.now
      @article = create(:article)
    end
    subject { helper.posted_on(@article) }
    it { expect(subject).to eq("#{@now.year}/#{@now.month}/#{@now.day}") }
  end
end
