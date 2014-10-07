class ProfilesController < ApplicationController
	
  def show
    @organization = Organization.where(:domain_name => request.subdomain).first || not_found
  end
  
  def not_found
    raise ActionController::RoutingError.new('Organization Domain Not Found')
  end

  def index
    # @user = .all
  end

  def sample
      @organization = Organization.where(:domain_name => request.subdomain).first || not_found
  end
end