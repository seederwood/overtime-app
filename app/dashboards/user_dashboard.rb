require 'administrate/base_dashboard'

class UserDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES

  ATTRIBUTE_TYPES = {
    posts: Field::HasMany,
    id: Field::Number,
    email: Field::String.with_options(searchable: true),
    password: Field::String.with_options(searchable: false),
    sign_in_count: Field::Number.with_options(searchable: false),
    current_sign_in_at: Field::DateTime.with_options(searchable: false),
    last_sign_in_at: Field::DateTime.with_options(searchable: false),
    current_sign_in_ip: Field::String.with_options(searchable: false),
    last_sign_in_ip: Field::String.with_options(searchable: false),
    first_name: Field::String.with_options(searchable: true),
    last_name: Field::String.with_options(searchable: true),
    created_at: Field::DateTime.with_options(searchable: false),
    updated_at: Field::DateTime.with_options(searchable: false),
    type: Field::String,
    phone: Field::String
  }.freeze

  # COLLECTION_ATTRIBUTES

  COLLECTION_ATTRIBUTES = %i[
    posts
    last_name
    first_name
    email
    type
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = %i[
    posts
    id
    email
    phone
    sign_in_count
    current_sign_in_at
    last_sign_in_at
    current_sign_in_ip
    last_sign_in_ip
    first_name
    last_name
    created_at
    updated_at
    type
  ].freeze

  # FORM_ATTRIBUTES

  FORM_ATTRIBUTES = %i[
    email
    password
    first_name
    last_name
    phone
  ].freeze

  # Overwrite this method to customize how users are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(user)
  #   "User ##{user.id}"
  # end
end
