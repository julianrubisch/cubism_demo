class MessagesController < ApplicationController
  before_action :set_message, only: %i[ show ]
  before_action :set_user, only: %i[ show ]

  # GET /messages/1 or /messages/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_message
      @message = Message.find(params[:id])
    end
 
    def set_user
      @user = User.find(params[:user_id])
    end

    # Only allow a list of trusted parameters through.
    def message_params
      params.require(:message).permit(:user_id, :content)
    end
end
