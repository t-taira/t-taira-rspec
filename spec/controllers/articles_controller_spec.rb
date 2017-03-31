require 'rails_helper'

RSpec.describe ArticlesController, type: :controller do
  describe "GET #index" do
    before do
      @article1 = Article.create(
        title: 'Article 1',
        body: 'HELLO'
      )
      @article2 = Article.create(
        title: 'Article 2',
        body: 'WORLD'
      )
    end
    subject! { get :index }
    it { expect(response).to have_http_status(:success) }
    it { expect(assigns[:articles]).to eq([@article1, @article2]) }
  end
end
