require 'administrate/base_dashboard'

class AdminUserDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    posts: Field::HasMany,
    id: Field::Number,
    email: Field::String.with_options(searchable: true),
    password: Field::String.with_options(searchable: false),
    sign_in_count: Field::Number,
    current_sign_in_at: Field::DateTime,
    last_sign_in_at: Field::DateTime,
    current_sign_in_ip: Field::String.with_options(searchable: false),
    last_sign_in_ip: Field::String.with_options(searchable: false),
    first_name: Field::String.with_options(searchable: true),
    last_name: Field::String.with_options(searchable: true),
    type: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    phone: Field::String
  }.freeze

  # COLLECTION_ATTRIBUTES

  COLLECTION_ATTRIBUTES = %i[
    posts
    last_name
    first_name
    email
  ].freeze

  # SHOW_PAGE_ATTRIBUTES

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
    type
    phone
  ].freeze

  # Overwrite this method to customize how admin users are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(admin_user)
  #   "AdminUser ##{admin_user.id}"
  # end
end
