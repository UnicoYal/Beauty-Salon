# frozen_string_literal: true

ActiveAdmin.register Pedicure do
  permit_params :title, :price
end
