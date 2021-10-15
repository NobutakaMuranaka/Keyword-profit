require 'rails_helper'

RSpec.describe Keyword, type: :model do
  let!(:keyword) { create(:keyword) }

  context "バリデーション" do
      it "有効な状態であること" do
        expect(keyword).to be_valid
      end

      it "検索ボリュームがなければ無効な状態であること" do
        keyword = build(:keyword, volume: nil)
        keyword.valid?
        expect(keyword.errors[:volume]).to include("を入力してください")
      end

      it "クエリがなければ無効な状態であること" do
        keyword = build(:keyword, query: nil)
        keyword.valid?
        expect(keyword.errors[:query]).to include("を入力してください")
      end

      it "目標PVがなければ無効な状態であること" do
        keyword = build(:keyword, goal_pv: nil)
        keyword.valid?
        expect(keyword.errors[:goal_pv]).to include("を入力してください")
      end

      it "コメントが200文字以内であること" do
        keyword = build(:keyword, description: "あ" * 201)
        keyword.valid?
        expect(keyword.errors[:description]).to include("は200文字以内で入力してください")
      end

      it "クエリが30文字以内であること" do
        keyword = build(:keyword, query: "あ" * 31)
        keyword.valid?
        expect(keyword.errors[:query]).to include("は30文字以内で入力してください")
      end
  end
end
