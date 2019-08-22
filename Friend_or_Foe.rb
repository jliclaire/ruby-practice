# Make a program that filters a list of strings and returns a list with only your friends name in it.

# If a name has exactly 4 letters in it, you can be sure that it has to be a friend of yours! Otherwise, you can be sure he's not...

# Ex: Input = ["Ryan", "Kieran", "Jason", "Yous"], Output = ["Ryan", "Yous"]

# i.e.

# friend ["Ryan", "Kieran", "Mark"] `shouldBe` ["Ryan", "Mark"]
# Note: keep the original order of the names in the output.

# MY SOLUTION
# def friend(friends)
#   friends_name = []
#   friends.each do |friend|
#     if friend.length === 4
#       friends_name.push(friend)
#     end
#   end
#   return friends_name
# end

def friend(friends)
  friends_name = []
  friends.each {|friend| friends_name.push(friend) if friend.length == 4}
  return friends_name
end

print friend(["Ryan", "Jimmy", "123", "4", "Cool Man"])

#CODEWAR SOLUTION
def friend(friends)
  friends.select{|friend| friend.length == 4}
end

# print friend(["Ryan", "Jimmy", "123", "4", "Cool Man"])