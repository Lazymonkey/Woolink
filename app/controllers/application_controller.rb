class ApplicationController < ActionController::Base
  protect_from_forgery

  private
  def current_collect
      Collect.find(session[:collect_id])
  rescue ActiveRecord::RecordFound
      collect = Collect.create
      session[:collect_id] = collect_id
      collect
  end
end
