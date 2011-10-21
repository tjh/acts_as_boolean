# Acts As Boolean

A quick way to create an attribute on your ActiveRecord models that always responds with a boolean value, similar to the Boolean attributes from a table that have the ? method for syntactic sugar.

    class SomeObject < ActiveRecord::Base
      acts_as_boolean :is_active
    end

    o = SomeObject.new
    o.is_active?                  # => false
    o.is_active = true
    o.is_active?                  # => true
    o.is_active = SomeObject.new
    o.is_active?                  # => true
    o.is_active = nil 
    o.is_active?                  # => false

# Credits

* **[@jkreeftmeijer](http://twitter.com/jkreeftmeijer)** for coming up with the killer MicroGem concept<br/> (http://jeffkreeftmeijer.com/2011/microgems-five-minute-rubygems/)
* **[@moutten](http://twitter.com/moutten)** for the code idea and encouragement to stop creating these methods by hand
* **[@samshull](http://twitter.com/samshull)** for making bang-bang such a great inside joke that I had to use it instead of my preferred ternary. :)