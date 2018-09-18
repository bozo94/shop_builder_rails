# frozen_string_literal: true

module ApplicationHelper
  def resource
    @resource ||= User.new
  end
end
