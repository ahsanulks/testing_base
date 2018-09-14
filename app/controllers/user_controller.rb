class UserController < ApplicationController

  before do
    @users = []
    create_user
  end

  get('/') do
    array_user = []
    @users.map do |user|
      array_user << {
        id: user.id,
        name: user.nama
      }
    end
    array_user.to_json
  end

  get('/:id') do
    user = @users.find{ |user| user.id == params['id'].to_i }
    {
      name: user.nama,
      id: user.id
    }.to_json
  end

  private

  def create_user
    ['subi', 'anto'].each_with_index.map do |name, index|
      @users[index] = User.new(name)
    end
  end
end
