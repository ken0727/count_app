class ButtonPressesController < ApplicationController
  def index
    @button_press = ButtonPress.first_or_create # 最初のレコードを作成または取得
    @posts = Post.all # または適切な投稿のクエリを実行する
  end

  def increment
    @button_press = ButtonPress.first_or_create # 最初のレコードを作成または取得
    @button_press.count = 0 if @button_press.count.nil? # count プロパティが nil の場合は初期化
    @button_press.count += 1
    @button_press.save
    redirect_to button_presses_path
  end

  def decrement
    @button_press = ButtonPress.first_or_create
    @button_press.count = 0 if @button_press.count.nil?
    @button_press.count -= 1 # 数を減らす
    @button_press.count = 0 if @button_press.count < 0 # カウントが負の値にならないようにする
    @button_press.save
    redirect_to button_presses_path
  end

    def show
    # ここで別のビューを呼び出す
    render 'app/views/posts/index.html.erb'
    end

end
