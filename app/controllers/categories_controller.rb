class CategoriesController < ApplicationController
  def anglisht
   @posts = Post.where(anglisht: true).order('created_at DESC').page(params[:page]).per(7)
  end
  def matematik
        @posts = Post.where(matematik: true).order('created_at DESC').page(params[:page]).per(7)
  end

  def histori
        @posts = Post.where(histori: true).order('created_at DESC').page(params[:page]).per(7)
  end

  def tik
        @posts = Post.where(tik: true).order('created_at DESC').page(params[:page]).per(7)
  end

  def letersi
        @posts = Post.where(letersi: true).order('created_at DESC').page(params[:page]).per(7)
  end
  def revista
    @posts = Post.where(letersi: true).order('created_at DESC').page(params[:page]).per(7)
  end
  def projekte
    @posts = Post.where(letersi: true).order('created_at DESC').page(params[:page]).per(7)
  end
end
