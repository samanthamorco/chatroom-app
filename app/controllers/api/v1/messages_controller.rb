class Api::V1::MessagesController < ApplicationController
  def index
    @messages = Message.all
    render "index.json.jbuilder"
  end

  def create
    @message = Message.create(
      body: params[:body],
      user_id: params[:user_id],
      chatroom_id: params[:chatroom_id]
    )
    render "show.json.jbuilder"
  end
end
