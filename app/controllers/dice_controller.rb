class DiceController < ApplicationController
  def home
    render('dice/home')
  end

  def roll
    @num_rolls = params[:rolls].to_i
    @num_faces = params[:faces].to_i
    @rolls = []
    @num_rolls.times do
      @rolls << 1 + rand(@num_faces)
    end
    render('dice/roll')
  end
end
