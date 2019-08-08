require_relative 'start'
puts "Welcome to word guesing game..."
puts "Press one (1) to proceed to or any other key to cancel"
start = gets.chomp.to_i

if start == 1
  start_playing = Start.new(start)
  playing = true
  while playing
    question = start_playing.get_question.join(" ")
    if question.length != 0
      print "Plase guese the word: #{question}\n"
      answer = gets
      check = start_playing.check_answer(answer)
      check ? s = "RIGHT! Your point: #{start_playing.score}!\n" : s = "Wrong! Please Try Again\n"
      puts s
    else
      puts "Thank you for playing"
      exit
    end
  end
else
  puts "Thank you, have nice day!"
  exit
end
