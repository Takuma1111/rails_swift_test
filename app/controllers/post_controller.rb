class PostController < ApplicationController

  def show
    @print = params[:id]
    @chat = Chat.find_by(id: params[:id])
    @chat.destroy
  end

  def destroy


   # @post = Chat.find_by(id: params[:id])
   # @post.destroy
   # redirect_to("/")
 end
end
