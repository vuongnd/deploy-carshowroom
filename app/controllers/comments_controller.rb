class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :edit, :update, :destroy]
  before_action :load_event
  # GET /comments
  # GET /comments.json
  def index
    @comments = Comment.all
  end

  # GET /comments/1
  # GET /comments/1.json
  def show
  end

  # GET /comments/new
  def new
    @comment = Comment.new
  end


  # POST /comments
  # POST /comments.json
  def create
    @comment = @event.comments.new(comment_params)
      if @comment.save
        redirect_to @event, notice: 'Thanks for your comment'
      else
        redirect_to @event, alert: 'Comment failse'
      end
  end

  def destroy
    @comment = @event.comments.find(params[:id])
    @comment.destroy
    redirect_to @event, notice: ''
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:name, :body, :event_id)
    end
    def load_event
      @event = Event.find(params[:event_id])
    end
end
