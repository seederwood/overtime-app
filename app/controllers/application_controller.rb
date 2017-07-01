class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

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

  private

  def user_not_authorized
    flash[:alert] = 'You are not authorized to perform this action.'
    redirect_to(root_path)
  end
end
