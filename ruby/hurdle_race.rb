# frozen_string_literal: true

# Given an array of hurdle heights , and an initial maximum height Dan can jump, , determine the minimum number of doses Dan must take to be able to clear all the hurdles in the race.

# For example, if  and Dan can jump  unit high naturally, he must take  doses of potion to be able to jump all of the hurdles.

def hurdleRace(k, height)
  k < height.max ? height.max - k : 0
end
