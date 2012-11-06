class ::Representatives::Comments::ApproveController < ApplicationController
  def create
    @representative = Representative.find params[:representative_id]
    @comment = @representative.comments.find params[:comment_id]
    @comment.approve!
    redirect_to representative_url(@representative)
  end
end
