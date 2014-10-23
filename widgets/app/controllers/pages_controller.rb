class PagesController < ApplicationController
  def index
    @products = Product
      .order("created_at desc")
      .includes(:widgets)
      .page(params[:page])
      .per(10)
      .where("name LIKE ?", "%#{params[:qs]}%")
      # .where("name = ? or name = ?", "Small Wooden Shirt", "Sword")

      #.where(name: "Sword")
      # .where("name = ?", "Sword")
      #.where("name LIKE ?", "%#{params[:qs]}%")
  end

end
