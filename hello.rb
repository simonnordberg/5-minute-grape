module FiveMin
  class Hello < ::Grape::API
    resource :hello do

      params do
        requires :name
      end

      get do
        { msg: "Hello, #{params[:name]}!" }
      end
    end

  end
end
