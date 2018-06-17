class ShowListController < ApplicationController

  #before_action :authenticate_user!

  def new
    @wantlists = WantList.new
    p @wantlists
  end

  # GET /show_list/index
  def index
    @wantlists = WantList.all
  end

  def create
    input_data = wantlist_params
    @wantlists = WantList.new(
      {
       user_id: current_user&.id || UserConfig::NOT_LOGIN_USER,
       product:input_data[:product],
       url:input_data[:url],
       want_lists_count: 1,
       comment:input_data[:comment]
      }
    )

    p "after"
    p @wantlists

    respond_to do |format|
      if @wantlists.save
        format.html { redirect_to @wantlists, notice: 'User was successfully created.' }
        format.json { render :index, status: :created, location: @wantlists }
        format.js { @status = "success"}
      else
        format.html { render :new }
        format.json { render json: @wantlists.errors, status: :unprocessable_entity }
        format.js { @status = "fail" }
      end
    end

    redirect_to :action => "index"
  end

  private

  def wantlist_params
    p 'start wantlist_prams'
    params.require(:want_list)
  end


end
