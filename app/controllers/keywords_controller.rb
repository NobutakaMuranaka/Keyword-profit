class KeywordsController < ApplicationController
  before_action :logged_in_user
    
  def new
    @keyword = Keyword.new
  end
end
