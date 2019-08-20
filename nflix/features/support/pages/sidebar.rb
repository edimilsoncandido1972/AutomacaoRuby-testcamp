class SideBar
    include Capybara::DSL

    def logged_user
        find(".user .info span")
    end
end
