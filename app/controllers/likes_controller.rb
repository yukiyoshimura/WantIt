class LikesController < ApplicationController

  def create
    p params
    p params[:wantlist_id]
    p current_user.id
    @like = Like.create(user_id: current_user.id, want_list_id: params[:wantlist_id])
    @wantlist_target = WantList.find(params[:wantlist_id])

  end
  def destroy
    p params
    p params[:id]
    p current_user.id
    like = Like.find_by(user_id: current_user.id, want_list_id: params[:id])
    like.destroy
    @wantlist_target = params[:wantlist_id]
  end
end