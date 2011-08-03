module Tinker
  module FunRoutes
    NAMESPACE = "fun"

    def self.registered(app)
      app.get "/#{NAMESPACE}/times" do
        "I am fun"
      end
    end
  end
end