class BugsController < ApplicationController

  before_action :load_cms_context

  def yes
  end

  def no
    render :cms_layout => @cms_page.layout.identifier
  end

  private

  def load_cms_context
    @cms_site = Comfy::Cms::Site.first
    @cms_page = @cms_site.pages.find_by_slug!( 'test' )
    @cms_layout = @cms_page.layout
  end

end