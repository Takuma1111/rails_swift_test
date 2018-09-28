class Chat1Controller < ApplicationController

    skip_before_action :verify_authenticity_token, only: [:create, :destroy] # どうやらこの記述が必要


    def index
       @chat = Chat.all
       render json: @chat
   end


   def create
    chat = Chat.new(create_params)

    # エラー処理
    unless chat.save # もし、memoが保存できなかったら
      @error_message = [chat.errors.full_messages].compact # エラーが入ってるインスタンス変数を定義
    end
  end

  # def destroy
  #   @chat.destroy
  #   respond_to do |format|
  #   format.json { head :no_content }
  # end


  def show
    render :text => "id = #{params[:id]}"
  end



  private
  def create_params
    params.permit(:name,:descript)
  end

  def destroy_params
    params.permit(:name,:descript)
  end


end
