#PATCHARA VANTHONGKAM 5631285621
#KUNNAPAT RUNGRUANGSATIEN 5631216321

puts "-----------------------------------------------"
puts "------------- Class Manager V1.0b -------------"
puts "-----------------------------------------------\n\n"

require 'csv'
puts "*******************"
puts "Select the Options."
puts "*******************"
puts "1.Student who has the highest and lowest score in the class."
puts "2.The mean of all student’s scores"
puts "3.The most and least popular color among students"
puts "4.Capitalized last letter of first name and last name, lowercased first letter of first name and last name."
puts "5.Program Creators"
puts "*******************"
#processing 1
  data = CSV.read('data.csv')
  score = Array.new(data.length-1)

  for num in 1...data.length
  score[num-1] = data[num][1]
  end 
  minmax = score.minmax

  color = Array.new(data.length-1)

  for num in 1...data.length
  color[num-1] = data[num][2]
  end
 


#

imenu= gets.chomp.to_i
if imenu ==1
    for num in 1...data.length-1
       if data[num][1] == minmax[0]
          puts "The person with minimum score is " + data[num][0] + "."
        elsif data[num][1] == minmax[1]
          puts "The person with maximum score is " + data[num][0] + "."

      end
    end



elsif imenu ==2
    temp = 0
  for num in 0...data.length
    temp = temp + data[num][1].to_f
  end
  print "The mean of overall class is "
  puts temp/score.length

elsif imenu ==3 
 count = Hash.new(0)
  color.each {|word| count[word] += 1}
  topColor, trash = count.first
  print "Most Favourite Color: " 
  puts topColor

  leastColor, trash = count.to_a.last
  print "Least Favourite Color: " 
  puts leastColor


elsif imenu ==4
    for num in 1...data.length
       puts data[num][0].reverse.split(/\b/).map(&:capitalize).join.reverse
    end

elsif imenu ==5
puts "PATCHARA VANTHONGKAM 5631285621"
puts "#KUNNAPAT RUNGRUANGSATIEN 5631216321"


else
  puts "Wrond Input! Try Again :D"
end