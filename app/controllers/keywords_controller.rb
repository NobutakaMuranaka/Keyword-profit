class KeywordsController < ApplicationController
  before_action :logged_in_user

  def new
    @keyword = Keyword.new
  end

  def create
    @keyword = current_user.keywords.build(keyword_params)
    if @keyword.save
      flash[:success] = "キーワードが登録されました！"
      redirect_to current_user
    else
      render 'keywords/new'
    end
  end
  
  def edit
    @keyword = Keyword.find(params[:id])
  end

  def update
    @keyword = Keyword.find(params[:id])
    if @keyword.update_attributes(keyword_params)
      flash[:success] = "キーワード情報が更新されました！"
      redirect_back(fallback_location: root_path)
    else
      render 'edit'
    end
  end
  
  def destroy
    @keyword = Keyword.find(params[:id])
    @keyword.destroy
    flash[:success] = "キーワードが削除されました"
    redirect_back(fallback_location: root_path)
  end

  private

    def keyword_params
      params.require(:keyword).permit(:query, :volume, :goal_rank, :goal_pv,
                                      :goal_cvr, :goal_price, :goal_profit, :description)
    end
end
