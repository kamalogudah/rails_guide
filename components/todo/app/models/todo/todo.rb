module Todo
  class Todo < ApplicationRecord
    #  include Todo
    attr_accessor :author_name
    belongs_to :author, class_name: "User"

    # belongs_to :author, class_name: Todo.author_class.to_s

    before_validation :set_author

    private

    def set_author
      # self.author = Todo.author_class.find_or_create_by(name: author_name)
      self.author = User.find_or_create_by(name: author_name)
    end
  end
end
