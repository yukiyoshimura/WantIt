class ShowListController < ApplicationController

  before_action :authenticate_user!

  def new
    @wantlists = WantList.new
    p @wantlists

  end

  # GET /show_list/index
  def index
    p "start index"
#    @test = User.find_by_sql('select users.id,ifnull(likes.want_lists_id,"abc") from users,likes where users.id = likes.users_id').
p @test

    @wantlists = WantList.all
  end

  def create
    p "start create"
    p wantlist_params

    input_data = wantlist_params

    @wantlists = WantList.new(
        { # name:input_data[:name],
         product:input_data[:product],
         url:input_data[:url],
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
