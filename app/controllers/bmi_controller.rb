class BmiController < ApplicationController
  protect_from_forgery with: :null_session
  def index

  end

  def calculate
    $bmi = params['bmi']['weight'].to_f / (params['bmi']['height'].to_f / 100 * params['bmi']['height'].to_f / 100)
    redirect_to action: 'index'
  end
end
