require 'hello'

module FiveMin
  class Root < ::Grape::API
    version 'v1', using: :header, vendor: 'twitter'
    format :json

    mount Hello
  end
end
