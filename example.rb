# require 'httparty'
# require 'json'

# response = HTTParty.get('http://api.stackexchange.com/2.2/questions?site=stackoverflow')

# parsed = JSON.parse(response.body)

# puts parsed


# the_count = [1, 2, 3, 4, 5]
# fruits = ['apples', 'oranges', 'pears', 'apricots']
# change = [1, 'pennies', 2, 'dimes', 3, 'quarters']


# for cnt in the_count
#     puts "This is count " + cnt.to_s
# end 

# for cnt in fruits
#     puts "A fruit of type: " + cnt.to_s
# end 

# for cnt in change
#     puts "I got " + cnt.to_s
# end 

#lcm(a,b) = a*b/gcd(a,b)
module Numbermod
    def gcd(a, b)
        if a<0 
            a= -a
        end
        if b<0
            b = -b
        end
        if a==0
            return b
        end
        if b==0
            return a
        end
        if a>b
            return gcd(a-b, b)
        end
        return gcd(a, b-a) 
    end
    def lcm(a,b)
        if a==0 && b==0
            return 0
        end
        x = gcd(a, b)
        y = a*b
        if(y<0)
            y = -y
        end
        z = y/x
        return  z
    end 
end

class Checking
    
    include Numbermod

    def perform
        s = gets
        s = s.chomp
        x = s.to_i
        s = gets
        s = s.chomp
        y = s.to_i
        lc = lcm(x, y)
        return lc
    end
    def lcmofarray(arr)
        ans = arr[0]
        for x in arr
            ans = lcm(ans, x)
        end
        return ans
    end
end

obj = Checking.new
p obj.lcmofarray([2,3,4,13])
class A
    define_singleton_method :loudly do |message|
      puts message.upcase
    end
  end

   A.loudly("hey")
   

