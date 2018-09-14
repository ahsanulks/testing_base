require './app/controllers/application_controller'
require './app/controllers/user_controller'
require './app/models/users'

RSpec.describe UserController do
  describe 'index' do
    let(:users) {
      [
        { name: 'subi', id: 3 },
        { name: 'anto', id: 2 }
      ]
    }
    it 'should return users' do
      get('/')

      expect(last_response).to be_ok
      expect(last_response.body).to eq(users.to_json)
    end

    it 'should return users with id 1' do
      get('/3')

      expect(last_response).to be_ok
      expect(last_response.body).to eq(users.first)
    end
  end
end
