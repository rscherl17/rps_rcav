class GamesController < ApplicationController
  def play_rock

    @hand_user = "fa-hand-rock-o"
    @user_move = "Rock"

    @computer_move = ["Rock", "Paper", "Scissors"].sample

    if @computer_move == "Rock"
      @hand = "fa-hand-rock-o"
      @outcome = "tied"
      @label = "label-warning"
    elsif @computer_move == "Paper"
      @hand = "fa-hand-paper-o"
      @outcome = "lost"
      @label = "label-danger"
    else
      @hand = "fa-hand-scissors-o"
      @outcome = "won"
      @label = "label-success"
    end

    render("games/play_rock.html.erb")
  end

  def play_paper

    @hand_user = "fa-hand-paper-o"
    @user_move = "Paper"

    @computer_move = ["Rock", "Paper", "Scissors"].sample

    if @computer_move == "Paper"
      @hand = "fa-hand-paper-o"
      @outcome = "tied"
      @label = "label-warning"
    elsif @computer_move == "Scissors"
      @hand = "fa-hand-scissors-o"
      @outcome = "lost"
      @label = "label-danger"
    else
      @hand = "fa-hand-rock-o"
      @outcome = "won"
      @label = "label-success"
    end

    render("games/play_paper.html.erb")
  end

  def play_scissors

    @hand_user = "fa-hand-scissors-o"
    @user_move = "Scissors"

    @computer_move = ["Rock", "Paper", "Scissors"].sample

    if @computer_move == "Scissors"
      @hand = "fa-hand-scissors-o"
      @outcome = "tied"
      @label = "label-warning"
    elsif @computer_move == "Rock"
      @hand = "fa-hand-rock-o"
      @outcome = "lost"
      @label = "label-danger"
    else
      @hand = "fa-hand-paper-o"
      @outcome = "won"
      @label = "label-success"
    end

    render("games/play_scissors.html.erb")
  end
end
