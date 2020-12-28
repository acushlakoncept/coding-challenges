# frozen_string_literal: true

# For example, there are  students who arrive at times . Four are there on time, and two arrive late. If there must be  for class to go on, in this case the class will continue. If there must be , then class is cancelled.

def angryProfessor(k, a)
  a.count { |x| x <= 0 } >= k ? 'NO' : 'YES'
end
