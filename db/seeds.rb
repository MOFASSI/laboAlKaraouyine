# create User
User.destroy_all



p 'on vas créer des user'
admin = User.new(
  email: 'mo@mo.com',
  password: 'azerty',
  first_name: 'mohammed',
  last_name: 'fassi fihri',
  birthday: '09/10/1997'
)
admin.save!


puts 'admin crée'
