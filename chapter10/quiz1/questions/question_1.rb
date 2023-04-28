# Write a program that keeps a list of todos. It should:
# * Have two classes:
#   * `Todo`
#     * Has two methods:
#       * `initialize`: Creates a new todo object. Takes a string as a
#         parameter and stores it on the todo object.
#       * `text`: Takes no parameters. Returns the string that was
#         stored when the todo object was created.
#   * `TodoList`
#     * Has three methods:
#       * `initialize`: Creates a new todo list object. Takes no parameters.
#       * `add`: Takes a todo object as a parameter.  Stores it on the
#         todo list object.
#       * `print`: Takes no parameters.  Creates a string of all the
#         stored todos, one per line.  Each line should start with a
#         `* `.  `puts`es the string.
#         * e.g.
#           ```
#           * get milk
#           * get the papers
#           ```

# * Note: When you run the automated tests, make sure to remove from
#   the top level of the file any calls to any methods.
class Todo
  def initialize(string)
    @string = string
  end 
  
  def text
    return @string
  end 
end 

class TodoList
  def initialize
    @todolist = []
  end 
    
  def add(todo)
    @todolist.push(todo.text)
  end 
        
  def print
    @todolist.each do |activity|
      puts "* #{activity}"
    end 
  end
end
# Create a new TodoList object
todo_list = TodoList.new

# Create a new Todo object and add it to the list
todo = Todo.new("Get milk")
todo_list.add(todo)

# Create another Todo object and add it to the list
todo = Todo.new("Get the papers")
todo_list.add(todo)

# Print the list of todos
todo_list.print