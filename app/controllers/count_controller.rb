# frozen_string_literal: true

# Count Controller
class CountController < ApplicationController
  include CountHelper
  before_action :validate_string, only: :result
  def input; end

  def result
    @result_array = squares(@array)
  end

  private

  def validate_string
    @string = params[:string_array]
    @count = params[:number].to_i
    @array = @string.split.map(&:to_i)
    if /[^\d^\s^]/.match(@string)
      redirect_to home_path, alert: 'Вводите только числа и пробелы'
    elsif @count != @array.size
      redirect_to home_path, alert: 'N не равно количеству чисел'
    end
  end
end
