class Legislatures::ActualController < ApplicationController
  def create
    Legislature.update_all(active: false)
    @legislature = Legislature.find params[:legislature_id]
    @legislature.toggle(:active).save
    redirect_to legislatures_url
  end
end
