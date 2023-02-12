# frozen_string_literal: true

ActiveAdmin.register WomenHairCut do
  permit_params :title, :price_lower_ten, :price_ten_to_twenty, :price_upper_twenty
end
