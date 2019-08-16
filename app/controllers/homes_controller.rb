class HomesController < ApplicationController
  before_action :set_home, only: [:show, :edit, :update, :destroy]
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
        redirect_to homes_path, notice: "新規投稿しました"
      else
      render :new
      end
    end
  end

  def show
  end

  def edit
  end

  def update
    if @home.update(home_params)
      redirect_to homes_path, notice: "投稿を編集しました"
    else
      render :edit
    end
  end

  def destroy
    @home.destroy
    redirect_to homes_path, notice: "投稿を削除しました"
  end

  def confirm
    @home = Home.new(home_params)
    render :new if @blog.invalid?
  end

  private

  def home_params
  params.require(:home).permit(:content)
  end

  def set_home
    @home = Home.find(params[:id])
  end
end
