class ItemsController < ApplicationController
  before_action :set_department
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  def index
    @items = @department.items
  end

  def show
  end

  def new
    @item = @department.items.new(item_params)

    if @item.save
      redirect_to [@department, @item]
    else 
      render :new
    end
  end

  def edit
  end

  def create

  end

  def 
end
