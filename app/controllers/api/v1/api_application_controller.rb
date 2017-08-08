class Api::V1::ApiApplicationController < ActionController::API
  # protect_from_forgery with: :null_session

  protected

  def pagination(paginated_array, per_page)
    { pagination: { per_page: per_page.to_i,
                    total_pages: paginated_array.total_pages,
                    total_objects: paginated_array.total_count,
                    current_page: paginated_array.current_page
    } }
  end
end