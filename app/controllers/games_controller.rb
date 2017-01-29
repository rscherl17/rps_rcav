class GamesController < ApplicationController
  def play_rock

    @computer_move = ["Rock", "Paper", "Scissors"].sample

    if @computer_move == "Rock"
      @outcome = "tied"
    elsif @computer_move == "Paper"
      @outcome = "lost"
    else
      @outcome = "won"
    end

    render("games/play_rock.html.erb")
  end

  def play_paper

    @computer_move = ["Rock", "Paper", "Scissors"].sample

    if @computer_move == "Paper"
      @outcome = "tied"
    elsif @computer_move == "Scissors"
      @outcome = "lost"
    else
      @outcome = "won"
    end

    render("games/play_paper.html.erb")
  end

  def play_scissors

    @computer_move = ["Rock", "Paper", "Scissors"].sample

    if @computer_move == "Scissors"
      @outcome = "tied"
    elsif @computer_move == "Rock"
      @outcome = "lost"
    else
      @outcome = "won"
    end

    render("games/play_scissors.html.erb")
  end
end
