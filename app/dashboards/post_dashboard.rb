require 'administrate/base_dashboard'

class PostDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES

  ATTRIBUTE_TYPES = {
    user: Field::BelongsTo,
    id: Field::Number,
    date: Field::DateTime,
    rationale: Field::Text.with_options(searchable: :true),
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    status: Field::String.with_options(searchable: :true)
  }.freeze

  # COLLECTION_ATTRIBUTES

  COLLECTION_ATTRIBUTES = %i[
    user
    status
    date
    rationale
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = %i[
    user
    status
    id
    date
    rationale
    created_at
    updated_at
  ].freeze

  # FORM_ATTRIBUTES

  FORM_ATTRIBUTES = %i[
    user
    date
    rationale
    status
  ].freeze

  # Overwrite this method to customize how posts are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(post)
  #   "Post ##{post.id}"
  # end
end
