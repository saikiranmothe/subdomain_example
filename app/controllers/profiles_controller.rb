class ProfilesController < ApplicationController
	
  def show
     @samplename = request.subdomain
    if Rails.env.it?
      @samplename.slice!(".it-inotary")
      @organization = @samplename
    end
    if Rails.env.development?
      @samplename.slice!(".it-inotary")
      @organization = @samplename
    end
    if Rails.env.st?
      @domainname = request.subdomain.slice!(".st-inotary")
      @organization = @samplename

    end
    if Rails.env.production?
      @domainname = request.subdomain.slice!(".it-inotary")
      @organization = @samplename
    end
    #@domainname  = request.subdomain.chop()
    @organization = Organization.where(:name => @organization).first || not_found

  end
  
  def not_found
    raise ActionController::RoutingError.new('Organization Domain Not Found')
  end

  def index
    # @user = .all
  end

  def sample
      @organization = Organization.where(:name => request.subdomain).first || not_found
  end
end