class DynamicControl
    include Capybara::DSL

    def go
        visit  "/dynamic_controls"
    end

    def a_check
        find("#checkbox").text
    end

    def rm
        click_button "Remove"
    end

    def gone_message
        find('#message').text
    end

    def add
        click_button "Add"
    end

    def check_true
        find('input[type=checkbox]').set(true)
    end

    def check_false
        find('input[type=checkbox]').set(false)
    end
end