if defined?(APPLE_GEM_HOME) then
  Object.send :remove_const, :APPLE_GEM_HOME
  Gem.clear_paths
end

module Rubygems
  class Cleanroom
    VERSION = "1.0.2"
  end
end

require "rubygems"
class Gem::BasicSpecification # :nodoc:
  if respond_to? :default_specifications_dir then
    mc = class << self; self; end
    mc.send :alias_method, :old_defspecdir, :default_specifications_dir
  end

  def self.default_specifications_dir # :nodoc:
    ""
  end
end
