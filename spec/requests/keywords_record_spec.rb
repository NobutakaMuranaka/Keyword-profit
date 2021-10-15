require "rails_helper"

RSpec.describe "キーワード登録", type: :request do
  let!(:user) { create(:user) }
  let!(:keyword) { create(:keyword, user: user) }

  context "ログインしているユーザーの場合" do
    before do
      login_for_request(user)
      get new_keyword_path
    end

    it "レスポンスが正常に表示されること" do
      expect(response).to have_http_status "200"
      expect(response).to render_template('keywords/new')
    end

    it "有効なキーワードで登録できること" do
      expect {
        post keywords_path, params: { keyword: { query: "タブレット学習 デメリット",
                                                 volume: 400,
                                                 goal_rank: 1,
                                                 goal_pv: 100,
                                                 goal_cvr: 1.0,
                                                 goal_price: 1000,
                                                 goal_profit: 1000,
                                                 description: "競合性そこそこ" } }
      }.to change(Keyword, :count).by(1)
      follow_redirect!
      expect(response).to render_template('static_pages/home')
    end

    it "無効な料理データでは登録できないこと" do
      expect {
        post keywords_path, params: { keyword: { query: "",
                                                 volume: 400,
                                                 goal_rank: 1,
                                                 goal_pv: 100,
                                                 goal_cvr: 1.0,
                                                 goal_price: 1000,
                                                 goal_profit: 1000,
                                                 description: "競合性そこそこ" } }
      }.not_to change(Keyword, :count)
      expect(response).to render_template('keywords/new')
    end
  end

  context "ログインしていないユーザーの場合" do
    it "ログイン画面にリダイレクトすること" do
      get new_keyword_path
      expect(response).to have_http_status "302"
      expect(response).to redirect_to login_path
    end
  end
end
