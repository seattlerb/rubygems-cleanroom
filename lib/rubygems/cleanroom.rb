module Rubygems
  class Cleanroom
    VERSION = "1.0.1"
  end
end

class Gem::BasicSpecification # :nodoc:
  def self.default_specifications_dir # :nodoc:
    ""
  end
end
