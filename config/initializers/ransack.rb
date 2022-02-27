# frozen_string_literal: true

Ransack.configure do |config|
  config.search_key = :query
  config.strip_whitespace = false
end