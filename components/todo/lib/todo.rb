require "todo/engine"
require 'active_support/concern'


module Todo
  extend ActiveSupport::Concern
  # Your code goes here...
  mattr_accessor :author_class
 class_methods do
  def self.author_class
    @@author_class.constantize
  end
end
end
