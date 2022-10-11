# Arthur Embry, CS 2318-00?, Assignment 2 Part 1 Program A.
#
#
#
# Program to do the following (in the order described):
# 
# Prompt the user to enter an integer, read the user's input, and display a labeled output about the user's input.
# 
# Prompt the user to enter a string of up to 80 characters long, read the user's input, and display a labeled output about the user's input.
# 
# ►	String entered MUST be stored in separate storage space (i.e., not overwriting the storage space used by prompt and label strings) allocated just enough (no more, no less) to accommodate up to the maximum number of characters indicated.
# 
# Prompt the user to enter a character, read the user's input, and display a labeled output about the user's input.
# 
# ►	Note that it involves a character, NOT a one-charater string. You will get no credits if you do it using a one-character string even though the same output is obtained.
# The exact strings to use for user-prompting and output-labeling are left to your discretion - do keep each reasonably short/crisp/meaningful, however.



.data

#prompts
promptInt: .asciiz "Enter a int: " 
promptString: .asciiz "Enter a String (max 80 chars): " 
promptChar: .asciiz "Enter a char: " 

#labels
labelInt: .asciiz "your Integer: " 
labelString: .asciiz "your String: " 
labelChar: .asciiz "your Character: " 

#inputs
inputInt: .word
inputString: .space 81 # including '\0'
inputChar: .byte

.text

# Print promptInt
la $a0, promptInt
li $v0, 4
syscall

# Input int
la $a0, inputInt
li $a1, 81
li $v0, 8
syscall

# Print int label
la $a0, labelInt
li $v0, 4
syscall

# Print int
la $a0, inputInt
li $v0, 4
syscall

# Print promptString
la $a0, promptString
li $v0, 4
syscall

# Input string
la $a0, inputString
li $a1, 81
li $v0, 8
syscall

# Print string label
la $a0, labelString
li $v0, 4
syscall

# Print string
la $a0, inputString
li $v0, 4
syscall


# Print promptChar
la $a0, promptChar
li $v0, 4
syscall

# Input string
la $a0, inputChar
li $a1, 81
li $v0, 8
syscall

# Print char label
la $a0, labelChar
li $v0, 4
syscall

# Print char
la $a0,inputChar
li $v0, 4
syscall

# Exit
li $v0, 10
syscall
