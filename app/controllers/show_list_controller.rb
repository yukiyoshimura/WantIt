class ShowListController < ApplicationController
  def index
    @wantlists = WantList.all
  end
end
