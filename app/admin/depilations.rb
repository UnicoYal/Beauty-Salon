# frozen_string_literal: true

ActiveAdmin.register Depilation do
  permit_params :title, :price
end
