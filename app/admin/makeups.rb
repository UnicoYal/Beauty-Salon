# frozen_string_literal: true

ActiveAdmin.register Makeup do
  permit_params :title, :price
end
