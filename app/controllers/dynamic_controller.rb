class DynamicController < ApplicationController
  def throw_dice
    
    @num_dice = params.fetch("throws").to_i
    @num_side = params.fetch("sides").to_i

    @draws = []

    @num_dice.times do
      die = rand(1..@num_side)

      @draws.push(die)
    end

    render({:template => "dice_templates/dice_roll"})

  end
end
