require_relative '../repository/user_repository'
require_relative '../repository/role_repository'
require_relative '../entity/user'

class UserSevice 
    def initialize(user_repository, role_repository)
        @user_repository = user_repository
        @role_repository = role_repository
    end

    def save(name, last_name, email, password, role_id)
        role_user = @role_repository.find_by_id(role_id)
        raise  "The Role with id: #{role_id} does not exist" if role_user.nil?

        user = @user_repository.find_by_email(email)
        raise "The e-mail #{email} is already registered, try another one" unless user.nil?
    
        user = User.new(name, last_name, email, password, role_user)

        @user_repository.save(user)
    end
end