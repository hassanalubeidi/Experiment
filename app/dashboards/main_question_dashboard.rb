require "administrate/base_dashboard"

class MainQuestionDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    questions: Field::HasMany,
    objectives: Field::HasMany,
    test_paper: Field::BelongsTo,
    id: Field::Number,
    answer_html: Field::Text,
    exampro_id: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    main_questions: Field::String,
    html: Field::Text,
  }

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :questions,
    :objectives,
    :test_paper,
    :id,
  ]

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = ATTRIBUTE_TYPES.keys

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :questions,
    :objectives,
    :test_paper,
    :answer_html,
    :exampro_id,
    :main_questions,
    :html,
  ]

  # Overwrite this method to customize how main questions are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(main_question)
  #   "MainQuestion ##{main_question.id}"
  # end
end
