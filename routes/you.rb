module Tinker
  module YouRoutes
    NAMESPACE = "/you"

    def self.registered(app)
      app.get "#{NAMESPACE}/are" do
        "a luzer"
      end

      app.get "#{NAMESPACE}/are/a" do
        "a SUPER luzer"
      end
    end
  end
end