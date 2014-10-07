class HomeController < ApplicationController
 before_filter :authenticate_user!,:expect => [:shgw]
	def show
    @admin = Organization.where(:name => request.subdomain).first || not_found
  end

  def not_found
    raise ActionController::RoutingError.new('Orgnization Not Found')
  end

  def index
  	@users = User.all
  	# @organization = Organization.where(:name => request.subdomain).first || not_found
  end
end