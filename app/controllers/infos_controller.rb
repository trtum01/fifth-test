class InfosController < ApplicationController

  def create
    @article = Article.find(params[:article_id])
    @info = @article.infos.create(info_params)
    redirect_to article_path(@article)
  end

  def destroy
    @article = Article.find(params[:article_id])
    @info = @article.infos.find(params[:id])
    @info.destroy
    redirect_to article_path(@article)
  end

  private
  def info_params
    params.require(:info).permit(:address, :telephone)
  end

end
