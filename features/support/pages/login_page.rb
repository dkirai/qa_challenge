class LoginPage
   include PageObject

#signin page
  button       :login_button, :class => "btn btn-primary"
  text_field   :username,     :id => "client_email"
  text_field   :password,     :id => "client_password"

  expected_element :login_button

  def initialize_page
    has_expected_element?
  end


  def login_with(username, password)
    self.username = username
    self.password = password
    login
  end
end


