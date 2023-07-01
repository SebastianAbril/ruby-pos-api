require_relative '../entity/role'

class RoleRepository

    def find_by_id(rol_id)
        role = Role.new(rol_id, 'ADMIN', 'ANY ADMIN')
    end
end