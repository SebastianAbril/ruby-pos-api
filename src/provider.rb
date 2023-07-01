require_relative './repository/role_repository'
require_relative './repository/user_repository'
require_relative './service/user_service'

module Provider
    role_repository = RoleRepository.new
    user_repository = UserRepository.new

    UserSevice1 = UserSevice.new(user_repository, role_repository)
end