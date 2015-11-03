# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # takes an array of integers as an argument and returns the sum of its elements. 
  # For an empty array it should return zero.
  total=0
  if arr.is_a?(Array)
    arr.each { |chr| 
     total+=chr
     }
     return total
  else
    return 0
  end
end

def max_2_sum arr
    # Takes an array of integers as an argument and returns the sum of its two largest elements. 
    # For an empty array it should return zero. For an array with just one element, it should return that element. 
   largest1_index=0
   largest2_index=0
   largest1=0
   largest2=0
   index=0
  if arr.is_a?(Array)
       if arr.length==0
         return 0
       elsif arr.length==1
         return arr[0]
       else
       #To explore: Check if all elements are Intergers
       
       # sorts the array in inverse order
       arr.sort! { |x,y| y <=> x }  
       # returns sum of first two values
         return arr[0]+arr[1]
       end
  else
       return 0
  end     
end

def sum_to_n? arr, n
  # Define a method sum_to_n?(array, n) that takes an array of integers 
  # and an additional integer, n, as arguments and returns true
  # if any two elements in the array of integers sum to n. An empty array should sum to zero by definition.

   array_length=arr.length
  if arr.is_a?(Array) 
    if array_length<=1 
      return false
    end
    index1=0
    while index1<(array_length-1) do 
      index2=index1+1
      while   index2<array_length do
        if ((arr[index1]+arr[index2])==n)
          return true
        end  
        index2+=1
      end
     index1+=1
    end
    return false
  else
   return false
  end
end

# Part 2

def hello(name)
  #takes a string representing a name and returns the string
  # "Hello, " concatenated with the name.
  return "Hello, "+name
end

def starts_with_consonant? s
  # takes a string and returns true if it starts with a consonant and false otherwise. 
  #(For our purposes, a consonant is any letter other than A, E, I, O, U.) NOTE: be sure it works for both upper and lower case and for nonletters!

 #http://stackoverflow.com/questions/6338129/regex-expression-to-match-consonant
 my_reg_exp=/^(?i)([b-z&&[^eiou]])/
 
 if my_reg_exp.match(s)
   return true
  else
    return false
 end   
end

def binary_multiple_of_4? s
  # takes a string and returns true if the string represents a binary number that is a multiple of 4. 
  # NOTE: be sure it returns false if the string is not a valid binary number!
 
 #Regular expression for a binary number
 regex_bin_number=/^[0|1]+$/
  
  if regex_bin_number.match(s)
      
      #Binary to decimal conversion
      #Long version
      # number=0
      # multiplier=1
      # index=s.length-1
      # while index>=0 do
      # if s[index]=="1" 
      #   number+=multiplier 
      # end
      # index-=1
      # multiplier*=2
      # end
      
      # Short version:
      number=s.to_i(2)
      
     # Multiple of 4 test
      if number%4==0
        return true
      else
        return false
      end
      
  else
    return false
  end
end

# Part 3

class BookInStock
# Define a class BookInStock which represents a book with an ISBN number, isbn, 
# and price of the book as a floating-point number, price, as attributes. 
#The constructor should accept the ISBN number 
#(a string, since in real life ISBN numbers can begin with zero and can include hyphens) 
# as the first argument and price as second argument, 
# and should raise ArgumentError (one of Ruby's built-in exception types) 
#  if the ISBN number is the empty string or if the price is less than or equal to zero. 
# Include the proper getters and setters for these attributes.
# Include a method price_as_string that returns the price of the book formatted with 
# a leading dollar sign and two decimal places, that is, 
# a price of 20 should format as "$20.00" and a price of 33.8 should format as "$33.80".

attr_accessor:isbn
attr_accessor:price
def initialize (isbn,price)
  if isbn.length== 0
    raise ArgumentError, 'isbn is empty!'
  end
  if price<=0 
    raise ArgumentError, 'price is negative or zero!'
  end
  @isbn=isbn
  @price=price
  
  
end

def price_as_string
  return "$%.2f"%price   
end

end