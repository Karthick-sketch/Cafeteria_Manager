class MenuItemsController < ApplicationController
  def new
  end

  def create
    MenuItem.create!(
      menu_category_id: params[:menu_category_id],
      name: params[:name],
      description: params[:description],
      price: params[:price],
      availability: true,
    )

    redirect_to menu_categories_path
  end
end
