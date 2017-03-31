require 'rails_helper'

RSpec.describe Article, type: :model do
  context 'titleとbodyを指定した場合' do
    before { @article = build(:article) }
    subject { @article }
    it { expect(subject.title).to eq('初めてのブログ') }
    it { expect(subject.body).to eq('ブログはじめました') }
  end

  # 異常系
  context 'titleが指定されていない場合' do
    before { @article = Article.new }
    subject { @article }
    it { expect(subject).not_to be_valid }
  end

  # 正常系
  context 'titleが指定されている場合' do
    before { @article = Article.new(title: '初めてのブログ') }
    subject { @article }
    it { expect(subject).to be_valid }
  end
end
