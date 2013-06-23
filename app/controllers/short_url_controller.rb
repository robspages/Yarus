class ShortUrlController < ApplicationController
rescue_from Exception, :with => :error_render_method

  # GET /short_urls/1
  # GET /short_urls/1.json
  def show
    @short_url = ShortUrl.where(:shortcode => params[:id]).first
    @link = Link.find(@short_url.link_id)
    redirect_to @link.fullurl, :status => 301
  end

  def error_render_method
    respond_to do |type|
      type.html { render :template => "errors/error_404", :status => 404 }
      type.all  { render :nothing => true, :status => 404 }
    end
    true
  end
end
