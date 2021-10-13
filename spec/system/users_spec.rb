require 'rails_helper'

RSpec.describe "Users", type: :system do
  let!(:user) { create(:user) }

  describe "ユーザー登録ページ" do
    before do
      visit signup_path
    end

  context "ページレイアウト" do
    it "「ユーザー登録」の文字列が存在することを確認" do
      expect(page).to have_content 'ユーザー登録'
    end

    it "正しいタイトルが表示されることを確認" do
      expect(page).to have_title full_title('ユーザー登録')
    end
  end

    context "ユーザー登録処理" do
      it "有効なユーザーでユーザー登録を行うとユーザー登録成功のフラッシュが表示されること" do
        fill_in "user[name]", with: "Example User"
        fill_in "user[email]", with: "user@example.com"
        fill_in "user[password]", with: "password"
        fill_in "user[password_confirmation]", with: "password"
        click_button "登録する"
        expect(page).to have_content "ようこそ！"
      end

      it "無効なユーザーでユーザー登録を行うとユーザー登録失敗のフラッシュが表示されること" do
        fill_in "user[name]", with: ""
        fill_in "user[email]", with: "user@example.com"
        fill_in "user[password]", with: "password"
        fill_in "user[password_confirmation]", with: "pass"
        click_button "登録する"
        expect(page).to have_content "ユーザー名を入力してください"
        expect(page).to have_content "パスワード(確認)とパスワードの入力が一致しません"
      end
    end
  end

  describe "プロフィールページ" do
    context "ページレイアウト" do
      before do
        login_for_system(user)
        visit user_path(user)
      end

      it "「プロフィール」の文字列が存在することを確認" do
        expect(page).to have_content 'プロフィール'
      end

      it "正しいタイトルが表示されることを確認" do
        expect(page).to have_title full_title('プロフィール')
      end

      it "ユーザー情報が表示されることを確認" do
        expect(page).to have_content user.name
        expect(page).to have_content user.introduction
      end
    end
  end
end
