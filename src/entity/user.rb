class User
    attr_accessor :name, :last_name, :email, :password, :role

    def initialize(name, last_name, email, password, role)
        @name = name
        @last_name = last_name
        @email = email
        @password = password
        @role = role
    end
end