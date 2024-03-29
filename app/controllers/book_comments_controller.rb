class BookCommentsController < ApplicationController
  def create
    book = Book.find(params[:book_id])
    comment = BookComment.new(book_comment_params)
    comment.book_id = book.id
    comment.book_id = user.id
    comment.save
    redirect_to book_path(book)
  end
  
  def destroy
    comment = BookComment.find(params[:id])
    comment.destroy
  
  end
  private

  def book_comment_params
    params.require(:book_comment).permit(:comment)
  end
end
