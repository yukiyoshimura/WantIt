class LikesController < ApplicationController

  def create
    @like = Like.create(user_id: current_user.id, want_list_id: params[:id])
    @wantlist_target = WantList.find(params[:id])
  end

  def destroy
    like = Like.find_by(user_id: current_user.id, want_list_id: params[:id])
    like.destroy
    @wantlist_target = WantList.find(params[:id])
  end
end
