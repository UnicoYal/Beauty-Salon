# frozen_string_literal: true

class Manicure < ApplicationRecord
  def get_manicures
    Manicure.all
  end
end
