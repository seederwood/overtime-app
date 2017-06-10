class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  def index
    search_term = params[:search].to_s.strip
    resources = Administrate::Search.new(resource_resolver, search_term).run
    resources = order.apply(resources)
    resources = resources.page(params[:page]).per(records_per_page)
    page = Administrate::Page::Collection.new(dashboard, order: order)

    render locals: {
      resources: resources,
      search_term: search_term,
      page: page
    }
  end
end
