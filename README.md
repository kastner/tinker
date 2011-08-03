# Tinker

A small example of namespaced routes with sinatra


## how it works

everything in `routes/*.rb` should look like:

`routes/foo.rb`:

```ruby
module Tinker
  module FooRoutes
    NAMESPACE = "foo"

    def self.registered(app)
      app.get "/#{NAMESPACE}/" do
        "Base of FOO"
      end
    end
  end
end
```

It will magically suck them up and include them in your routes


### Thanks

to [this](http://stackoverflow.com/questions/4681199/how-mix-in-routes-in-sinatra-for-a-better-structure/6843454#6843454) stack overflow answer.

and

[this](https://github.com/defunkt/mustache/blob/c1085a80d15495ea6342aa6b5acaaff1d6dd6ca7/lib/mustache.rb#L257-263) method from Mustache.rb

