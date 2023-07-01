class UserRepository

    def find_by_email(email)
    end

    def save(user)
        puts "User:"
        puts "Name: #{user.name}"
        puts "Email: #{user.email}"
    end
end