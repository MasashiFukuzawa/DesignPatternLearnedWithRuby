require './login_frame'

l = LoginFrame.new('Mediator Sample')

# when guest
l.check_guest.state = true
l.check_login.state = false
puts 'Mark the guest checkbox'
puts l.text_user.text_value_changed('') #false
puts l.text_pass.text_value_changed('') #false
puts 'Text input cannot be used'
puts 'OK Button can be used'

puts '========================================='

# when login
l.check_guest.state = false
l.check_login.state = true
puts 'Mark the login checkbox'
puts l.text_user.text_value_changed('Masashi Fukuzawa') #true
puts l.text_pass.text_value_changed('password') #true
puts 'Fill the text inputs'
puts 'OK Button can be used'
