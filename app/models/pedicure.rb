# frozen_string_literal: true

class Pedicure < ApplicationRecord
  def get_pedicures
    Pedicure.all
  end
end
