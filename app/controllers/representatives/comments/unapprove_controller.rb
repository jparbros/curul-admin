class Representatives::Comments::UnapproveController < ApplicationController
  
  def create
    @representative = Representative.find params[:representative_id]
    @comment = @representative.comments.find params[:comment_id]
    @comment.unapprove!
    redirect_to representative_url(@representative)
  end
end
