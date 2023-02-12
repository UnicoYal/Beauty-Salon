# frozen_string_literal: true

ActiveAdmin.register Manicure do
  permit_params :title, :price
end
