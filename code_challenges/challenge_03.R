# LOOPS

# Solve the following equations using `for` and `while` loops;

# 1. A vector `v` contains `34, 86, 23, 65, 98`. Use a `for` loop to print each 
#`v` element. 
# UNCOMMENT AND FILL CODE BELOW 
# v = c(__,__,__,__)

# for (__ in __)
{
  #print(__)
}

# 2. Create a matrix with the first column containing numbers from 1 to 3 and b 
#containing 4 to 6. Use a `for` loop to print each row of the data frame. 
# FILL THE CODE BELOW


# 3. Vector `x` has elements, `1, 2, 3` while vector `y` consist of elements, 
#`3, 0, -3`. Use nested `for` loops to print all combinations of the elements in
#`x` and `y`. 
# UNCOMMENT AND FILL CODE BELOW 
#x = c(__,__,__)
#y = c(__,__,__)

#for (_ in _)
{
  #for (_ in _)
  {
    #print(paste("x=", _, "y=", _))
  }
}

# 4. Create a sequence, `m`, from 1 to 10. Use a `for` loop to print each element, 
#but break the loop if the element is equal to 5.
# UNCOMMENT AND FILL THE CODE 
#m = seq(_:_)

#for (_ in _)
{
  #print(_)
  #if (_==5)
  {
    break
  }
}

# 5. A variable `b` initially has a value of 1. Double the value of `b` alliteratively and 
#print it out to the console. The printing should stop once `b` is greater than 
#or equal to 30. Use a `while` loop for this. 
# UNCOMMENT AND FILL THE CODE

#b = _

#while(_<=30)
{
 # _ = _ * 2
  #print(_)
}

# 6. A vector `names` contains elements, `"Vipin", "Patel", "Pradip", "Salman", "Tom"`. 
#Iterate through the vector and print `"Hello"` alongside each name to print 
#greet the participant. 
# **Hint**: *Use a for loop*
# UNCOMMENT AND FILL THE CODE BELOW

#names = c("____", "____", "____", "____", "___")

#for (___ in ____)
{
  #print(paste("Hello", ___))
}
  
# 7. Create a matrix `m` filled with values from 1 to 12 that has 4 rows and 3 
#columns. Use a for loop to iterate through each row and find its sum.
# UNCOMMENT AND FILL CODE BELOW
#m = matrix(seq(1:12), ncol = _, byrow = TRUE)
#print(m)

#for(_ in 1:4)
{
  #print(sum(m[_, ]))
}

# 8. A variable `n` has a value 3. Add 3 to `n` alliteratively and print out the 
# result as long as `n` is equal to or less than 25. Use a `while` loop to solve this problem. 
# UNCOMMENT AND FILL THE CODE BELOW
# n = _

#while(n<=__)
{
  #print(_)
  #_ = _ + 3
}

# 9. A vector `v` contains values from 1 to 7. Using a `for` loop, iterate 
#through each element the use a `while` loop to subtract `1` from each element until it 
#reaches 0. Print out the result(It should print all zeros). 
# **Hint**: *Nest a ``while` loop in a `for` loop*.
# UNCOMMENT AND FILL THE CODE BELOW
#_ = seq(1:7)
#print(_)

#for(_ in _)
{
  #while(_>0)
  {
    #_ = _-1
  }
  #print(_)
}


# 10. Create a vector, `animals` containing `"cat", "lion", "dog", "sheep"`. Use 
# a for loop to print out each element alongside the number of characters the 
# element contains. Use `nchar` to count number of characters in character data types 
# UNCOMMENT AND FILL CODE BELOW

#animals= c("__", "___", "__", "__")

#for (_____ in ___)
{
  #print(paste(___, nchar(___)))
}