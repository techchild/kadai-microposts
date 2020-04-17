class ToppagesController < ApplicationController
  def index
    if logged_in? # ログイン済みか？であるならば、トップページに「投稿フォームを表示したい」←「form_withの1th引数modelに指定するオブジェクトが必要」
      @micropost = current_user.microposts.build  # form_with 用
      @microposts = current_user.feed_microposts.order(id: :desc).page(params[:page])
    end
  end
end