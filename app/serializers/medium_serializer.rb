# frozen_string_literal: true

class MediumSerializer
  include FastJsonapi::ObjectSerializer
  set_type :medium

  attributes :logo, :name, :external_link, :slug
end