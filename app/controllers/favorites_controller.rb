class FavoritesController < ApplicationController

  def create
    @book = Book.find(params[:book_id])
    @favorite = current_user.favorites.create(book_id: params[:book_id])
    redirect_back(fallback_location: root_path)
  end

  def destroy
    @book = Book.find(params[:book_id])
    @favorite = current_user.favorites.find_by(post_image_id: post_image.id)
    @favorite.destroy
    redirect_back(fallback_location: root_path)
  end
end
