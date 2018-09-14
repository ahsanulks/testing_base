require './app'

map('/healthz') { run HealthzController }
map('/user') { run UserController }
