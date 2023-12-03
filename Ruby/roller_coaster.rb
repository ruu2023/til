
def judge_height(list)
  ride_count = 0
  list.each do |friend|
    if friend[:height] >= 130
      puts "#{friend[:name]}くんは乗車できます"
      ride_count += 1    
    else
      puts "#{friend[:name]}くんは乗車できません!"
    end
  end
  puts "乗車するのは#{ride_count}人です"
end

def add_friends(list)
  friend = {}
  puts "お友達の名前は?"
  friend[:name] = gets.chomp
  puts "お友達の身長は?"
  friend[:height] = gets.to_i
  list << friend
end

friends = []

3.times do
  friends = add_friends(friends)
end

judge_height(friends)