require "syro"
require "json"
require_relative '../provider'

module UserRoutes
    Routes = Syro.new do
        get do
            res.text "get user"
        end

        post do
            req.body.rewind
            request_data = JSON.parse(req.body.read)

            Provider::UserSevice1.save(
                request_data['name'], 
                request_data['lastName'], 
                request_data['email'], 
                request_data['password'], 
                request_data['roleId']
            )

            response_data = { message: 'Respuesta exitosa', data: { foo: 'bar' } }
            
            res['Content-Type'] = 'application/json'
            res.status = 200
            res.write(response_data.to_json)
        end
    end
end
