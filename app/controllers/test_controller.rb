class TestController < ApplicationController
  def test
  end

  def search
  @post=Post.search(params[:search])
end

end
