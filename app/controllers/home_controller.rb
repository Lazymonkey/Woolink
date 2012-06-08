class HomeController < ApplicationController
  def index
    @websites = Website.all
  end
end
