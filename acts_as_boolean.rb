module ActsAsBoolean
  def acts_as_boolean(*attributes)
    [*attributes].each do |attribute|

      # Define the = setter method
      attr_writer attribute

      # Define the ? accessor method
      define_method("#{attribute}?") { !!instance_variable_get("@#{attribute}") }

    end
  end
end
