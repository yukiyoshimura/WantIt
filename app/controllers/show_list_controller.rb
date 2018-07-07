class ShowListController < ApplicationController
require 'csv'
  #before_action :authenticate_user!
  def new
    @wantlists = WantList.new
  end

  # GET /show_list/index
  def index
    @wantlists = WantList.all
    respond_to do |format|
      format.html
      format.csv do
        filename = 'csv_data.csv'
      end
    end
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

  def download
    @wantlists = WantList.all
    respond_to do |format|
      format.csv do
        send_data render_to_string, filename: 'wantlists.csv', type: :csv
      end
    end
  end

  private

  def wantlist_params
    params.require(:want_list)
  end
end
