class LoginPage
    include Capybara::DSL
    def go
        visit "/login"
    end

    def with(user, pass)
        find('#username').set user
        find('#password').set pass
    end
    
    def sign_in_button
        click_button 'Login'
    end

    def alert
        find('.error').text
    end
    
    def success
        find('.success').text
    end
end