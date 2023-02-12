# frozen_string_literal: true

class Depilation < ApplicationRecord
  def get_depilations
    Depilation.all
  end
end
