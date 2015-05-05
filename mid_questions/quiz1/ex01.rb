# For this exercise, write a one-line program that creates 10 lines of the following:
#     The Flintstones Rock!
#      The Flintstones Rock!
#       The Flintstones Rock!

10.times{ |index| puts "The Flintstones Rock!".rjust(21 + index) }