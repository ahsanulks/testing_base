class HealthzController < ApplicationController

  get('/') do
    { status: 'ok' }.to_json
  end

end
