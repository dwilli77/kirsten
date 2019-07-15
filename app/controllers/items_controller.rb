class ItemsController < ApplicationController
  def index
    @items = Item.all
    @item = Item.new
  end
  # def new
  #   @item = Item.new
  # end

  private def item_params
    params.require(:item).permit(:content, :notes)
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to '/'
    else
      redirect_to '/'
    end
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    Item.update(@item.id, content: params[:item][:content], notes: params[:item][:notes])
    redirect_to '/'
  end

  def mark_complete
    @item = Item.find(params[:id])
    Item.update(@item.id, is_complete: !@item[:is_complete])
    redirect_to '/'
  end

  def delete
    @item = Item.find(params[:id])
    Item.destroy(@item.id)
    redirect_to '/'
  end

  def delete_all_items
    Item.delete_all
    redirect_to '/'
  end
end
