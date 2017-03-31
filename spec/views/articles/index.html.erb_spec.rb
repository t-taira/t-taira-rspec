require 'rails_helper'

RSpec.describe 'articles/index.html.erb', type: :view do
  before { assign(:articles, [create(:article)]) }
  subject { render }
  it { expect(subject).to match(/初めてのブログ/) }
  it { expect(subject).to match(/ブログはじめました/) }
end
