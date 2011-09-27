class HomeController < ApplicationController
	before_filter :authenticate_user!#Vao trang home phai sign in
  def index
  end

end
