class SecureView
    include Capybara::DSL

    def logged_user
        find('.subheader').text
    end

    def sign_out_link
        click_link "Logout"
    end
end