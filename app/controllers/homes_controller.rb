class HomesController < ApplicationController
  def index
    @homes = Home.all
  end

  def new
    @home = Home.new
  end

  def create
    @home = Home.new(home_params)
    if params[:back]
      render :new
    else
      if @home.save
        redirect_to new_home_path, notice: "新規メッセージを投稿しました！"
      else
      render :new
      end
    end
  end
end

  private

  def home_params
  params.require(:home).permit(:content)
  end
