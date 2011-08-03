module Tinker
  class << self
    def root(path = nil)
      base = File.expand_path(File.dirname(__FILE__))
      path ? File.join(base, path) : base
    end

    # solen from Mustache
    def classify(underscored)
      underscored.split('/').map do |namespace|
        namespace.split(/[-_]/).map do |part|
          part[0] = part[0].chr.upcase; part
        end.join
      end.join('::')
    end
  end

  class App < Sinatra::Base
    get "/" do
      "Hi!"
    end
  end
end