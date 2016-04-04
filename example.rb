require_relative 'Tropo/Sessions'
require_relative 'Tropo/Routes'
require_relative 'Client'
require 'json'


headers = {
  "accept": "application/json",
  "content-type": "application/json"
}

session = Tropo::Sessions.new({
  token: "55724d51445172465247475a7a72506a5a6b7445747a6e4444554a64584a6c4b7641676568744a6659464b72",
  numbers: "+19257755171",
  message: "Patrick says hello, hope you're having a very nice day",
})

session2 = Tropo::Sessions.new({
  token: "55724d51445172465247475a7a72506a5a6b7445747a6e4444554a64584a6c4b7641676568744a6659464b72",
  numbers: "+19256825105",
  message: "Patrick says hello, hope you're having a very nice day",
})

res  =  Client.post_it(Tropo::Routes.sessions, headers, session.body)
res2 =  Client.post_it(Tropo::Routes.sessions, headers, session2.body)

#puts res
