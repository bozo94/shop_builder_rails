# frozen_string_literal: true

class RegistrationsController < Devise::RegistrationsController
  respond_to :html, :js
end
