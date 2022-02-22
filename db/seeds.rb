Usuario.delete_all

5.times do |i|
    Usuario.create name: "Jose #{i}"
    Usuario.create surname: "Souza #{i}"
    Usuario.create email: "jose#{i}@algumacoisa.com"