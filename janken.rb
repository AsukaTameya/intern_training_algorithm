def janken
  puts "[0]:グー\n[1]:チョキ\n[2]:パー"

youser_input = gets.to_i

computer_input = rand(3)

hand = ["グー","チョキ","パー"]

puts "あなたの手：#{hand[youser_input]},わたしの手:#{hand[computer_input]}"

if youser_input == computer_input  #あいこ
  puts "あいこで"
  next_game = true

  elsif(youser_input == 0 && computer_input == 1) || (youser_input == 1 && computer_input == 2) || (youser_input == 2 && computer_input == 0)
    
    puts "あなたの勝ちです"
   next_game = false
  else
    puts "あなたの負けです"
    next_game = false
  end
end

next_game = true

puts "最初はグー、じゃんけん..."

while next_game do
  next_game = janken
end