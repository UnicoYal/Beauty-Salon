# frozen_string_literal: true

class PageController < ApplicationController
  def index
    @for_men = ManHairCut.new.man_hair
    @for_women = WomenHairCut.new.women_hair
    @depilations = Depilation.new.get_depilations
    @manicures = Manicure.new.get_manicures
    @pedicures = Pedicure.new.get_pedicures
    @makeups = Makeup.new.get_makeups
  end
end
