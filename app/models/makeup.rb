# frozen_string_literal: true

class Makeup < ApplicationRecord
  def get_makeups
    Makeup.all
  end
end
