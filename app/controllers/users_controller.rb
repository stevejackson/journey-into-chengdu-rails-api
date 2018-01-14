class UsersController < ApplicationController
  def dashboard_metrics
    render json: {
      percentOfChengduExplored: 22.58,
      landmarksUnlocked: 5,
      totalLandmarks: 15
    }
  end
end
