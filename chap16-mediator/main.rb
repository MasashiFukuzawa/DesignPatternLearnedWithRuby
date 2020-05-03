require './login_frame'

l = LoginFrame.new('Mediator Sample')

# when guest
l.check_guest.state = true
l.check_login.state = false
puts 'Mark the guest checkbox'
l.text_user.text_value_changed('')
puts l.text_user.state #false
puts l.text_pass.state #false
puts 'Text input cannot be used'
puts l.button_ok.state #true
puts 'OK Button can be used'

puts '========================================='

# when login
l.check_guest.state = false
l.check_login.state = true
puts 'Mark the login checkbox'
puts 'Text input can be used'
l.text_user.text_value_changed('Masashi Fukuzawa')
l.text_pass.text_value_changed('password')
puts l.text_user.state #true
puts l.text_pass.state #true
puts 'Fill the text inputs'
puts l.button_ok.state #true
puts 'OK Button can be used'
