class PCommentsController < ApplicationController
  def index
    @p_comment = current_user.p_comment
  end

  def create
    p_comment = P_comment.new
    p_comment.user_id = current_user.id
    p_comment.topic_id = params[:topic_id]

    if p_comment.save
      redirect_to p_comments_path, success: 'コメントを登録しました'
    else
      redirect_to p_comments_path, danger: 'コメントの登録に失敗しました'
    end
  end

private
  #ストロングパラメータ実装
  def t_content_params
    　params.require(:p_comment).permit(:t_content)
  end
end
