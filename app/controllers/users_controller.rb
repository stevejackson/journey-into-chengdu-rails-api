class UsersController < ApplicationController
  def dashboard_metrics
    render json: {
      percentOfChengduExplored: percent_of_chengdu_explored,
      landmarksUnlocked: 5,
      totalLandmarks: 15
    }
  end

  private

  def percent_of_chengdu_explored
    user_visited = UserGridCell.where(visited: true).count
    total_cells = GridCell.count

    percent = (user_visited.to_f / total_cells.to_f) * 100.0
    percent = percent + 30.00
    percent.round(2)
  end
end
