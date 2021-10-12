module ApplicationHelper
  def full_title(page_title = '')  # full_titleメソッドを定義
    base_title = 'Keyword-profit'
    if page_title.blank?
      base_title  # トップページはタイトル「Keyword-profit」
    end
  end
end
