require "syro"
require_relative "./user_routes"

module Router
    Routes = Syro.new do
        get do
            res.text "hello, world"
        end
        # api/user
        on "api" do
            on "user" do
                run UserRoutes::Routes
            end
        end
    end
end