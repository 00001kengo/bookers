class TodolistsController < ApplicationController


  def create
    @lists = List.all
    @list = List.new(list_params)
    if @list.save
      flash[:notice]="Book was successfully create."
      redirect_to todolist_path(@list.id)
    else
      render :index
    end
  end


  def index
    @list = List.new
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def edit
    @list = List.find(params[:id])


  end

  def update
    @list = List.find(params[:id])

    if @list.update(list_params)
      flash[:notice]="Book was successfully updated."
      redirect_to todolist_path(@list.id)
    else

      render :edit
    end
  end

  def destroy
    list = List.find(params[:id])
    list.destroy
    flash[:notice]="Book was successfully destroy."
    redirect_to books_path
  end

  private
  def list_params
    params.require(:list).permit(:title, :body)
  end

end
