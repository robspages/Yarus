class ShortUrlController < ApplicationController

	def show
		@short_url = ShortUrl.where(shortcode: params[:id])
		@link = Link.find(@short_url.link_id)
		redirect_to @link.fullurl, :status => 301
	end
end
