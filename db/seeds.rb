adham = User.create!(
  name: 'adham',
  email: 'adham@gmail.com',
  phone: '01011199988',
  password: 'adham123',
  password_confirmation: 'adham123'
)

biky = Bike.create!(
  status: 1
)

Ride.create!(user: adham, bike: biky)
