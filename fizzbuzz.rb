def gogo
  @param = Array.new
  @paramNum = Array.new
  interations = 50000
  count = 0
  puts "Now enter all desired Number-Word sets:  "

  loop do
    puts "Enter a number (leave blank to run FizzBuzz for previous sets): "
    inp = gets.chomp
    inp2 = ""
    if (inp.to_i.to_s == inp)
      loop do
        print "Enter a word or phrase:  "
        inp2 = gets.strip
        if inp2 == ""
          puts "Error: Input blank; please enter at least 1 character"
        else break
        end
      end
      @param[count] = inp2
      @paramNum[count] = inp.to_i
      count += 1
    else
      break if inp == ""
      puts "Invalid Input, please enter only integers"
    end
  end

  interations.times do |x|
    x += 1
    printstring = ""
    @param.length.times do |y|
      printstring += @param[y] if x % @paramNum[y] == 0
    end

    printstring = x.to_s if printstring == ""
    puts printstring
  end
end
