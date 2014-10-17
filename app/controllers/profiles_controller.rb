class ProfilesController < ApplicationController
	
  def show
     @samplename = request.subdomain
    if Rails.env.it?
      @samplename.slice!(".it-inotary")
      @organization = @samplename
    end
    
    if Rails.env.development?
      @samplename.slice!(".it-inotary")
      @subdomain = @samplename
      @organization = Organization.where(:name => @subdomain).first || not_found
    end

    # if Rails.env.st?
    #   @domainname = request.subdomain.slice!(".st-inotary")
    #   @organization = @samplename

    # end

    if Rails.env.production?
      @samplename.slice!(".it-inotary")
      @subdomain = @samplename
      @organization = Organization.where(:name => @subdomain).first || not_found
    end

    # #@domainname  = request.subdomain.chop()
    # #@organization = Organization.where(:name => @organization).first || not_found
    # @organization = @samplename
    # @subdomain =  request.subdomain 
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