# frozen_string_literal: true

# == Schema Information
#
# Table name: testimonials
#
#  id         :integer          not null, primary key
#  avatar     :string
#  content    :text
#  name       :string
#  occupation :string
#  slug       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class TestimonialSerializer
  include FastJsonapi::ObjectSerializer
  set_type :testimonial

  attributes :avatar, :name, :occupation, 
             :content, :slug
end
