while true do
  fukushu = true
  puts "3サイクル反復学習法"
  puts "翌日-----------"
  while fukushu
    puts "1分間ライティング"
    puts "復習"
    puts "復習に満足?"
    puts "[0]:まだまだ [1]:OK!"
    num = gets.to_i
    case num
    when 0
      fukushu = true
    when 1
      fukushu = false
      puts "翌日-----------"
    end
  end
end