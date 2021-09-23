class ResultsController < ApplicationController
  def index
    @results = current_user.results
    json_response(@results)
  end

  def show
    @result = Result.find(params[:id])

    render json: @result
  end

  def create
    @result = current_user.results.create!(result_params)
    json_response(@result, :created)
  end

  def edit
    @result = Result.find(params[:id])
  end

  def update
    @result = Result.find(params[:id])

    if @result.update(result_params)
      redirect_to @result
    else
      render :edit
    end
  end

  private

  def result_params
    params.require(:result)
      .permit(
        :writing_score,
        :speaking_score,
        :reading_score,
        :listening_score,
        :overall_score
      )
  end
end
