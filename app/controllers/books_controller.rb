class BooksController < ApplicationController
  def new
    # Viewへ渡すためのインスタンス変数に空のモデルオブジェクトを生成する。
     @list = List.new
  end
  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to book_path(list.id), notice: 'Book was successfully created.'
    else
      @lists = List.all
      render action: :index
    end
  end
  def index
     @lists = List.all
     @list = List.new
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
      redirect_to book_path(@list.id), notice: 'Book was successfully updated.'
    else
      render action: :edit
    end
  end
  
  def destroy
    list = List.find(params[:id])
    list.destroy
    redirect_to book_index_path, notice: 'Book was successfully destroyed.'
  end
  private
  # ストロングパラメータ
  def list_params
    params.require(:list).permit(:title, :body)
  end
end
