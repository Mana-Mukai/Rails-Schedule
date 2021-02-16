class MyschedulesController < ApplicationController
  def index
    @myschedules = Myschedule.all
  end
  
  def new
    @myschedule = Myschedule.new
  end

  def create
    @myschedule = Myschedule.new(params.require(:myschedule).permit(:title, :starttime, :endingtime, :detail))
  if @myschedule.save
    flash[:notice] = "スケジュールを新規登録しました"
    redirect_to :myschedules
  else
    render "new"
  end
  end

  def show
    @myschedule = Myschedule.find(params[:id])
  end

  def edit
    @myschedule = Myschedule.find(params[:id])
  end

  def update
    @myschedule = Myschedule.find(params[:id])
  if @myschedule.update(params.require(:myschedule).permit(:title, :starttime, :endingtime, :detail))
    flash[:notice] = "「#{@myschedule.title}」の情報を更新しました"
    redirect_to :myschedules
  else
    render "edit"
  end
  end

  def destroy
    @myschedule = Myschedule.find(params[:id])
    @myschedule.destroy
    flash[:notice] = "スケジュール「#{@myschedule.title}」を削除しました"
    redirect_to :myschedules 
  end
end
