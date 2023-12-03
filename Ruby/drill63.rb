# 追加する仕様
# ・[1]の処理
# 入力された乗車人数に対して、あと何人乗ることが出来るのか、何人定員オーバーなのか出力を行う

def register_data(cars)
  puts "車種の入力をして下さい。"
  type = gets.chomp
  puts "1Lあたりの走行可能距離(km/l)を入力して下さい。"
  fuel_economy = gets.to_f
  puts "乗車可能人数を入力して下さい。"
  capacity = gets.to_i
  car = { type: type, fuel_economy: fuel_economy, capacity: capacity }
  cars << car
end

def show_cars(cars)
  cars.each_with_index do |car, index|
    puts "[#{index}]: #{car[:type]}"
  end
  puts "確認したい番号を入力して下さい。"
  input = gets.to_i
  car = cars[input]
  if car
    show_data(car)
  else
    puts "該当する番号はありません。"
  end
end

def show_data(car)
  puts "車種:#{car[:type]}"
  puts "1Lあたりの走行可能距離:#{car[:fuel_economy]}km/l"
  puts "乗車人数:#{car[:capacity]}人"

  puts "乗車する人数を入力して下さい。"
  input_people = gets.to_i

  calculate_capacity(car, input_people)

  puts "これから走る距離(km)を入力して下さい。"
  input_distance = gets.to_f

  calculate_fuel_consumption(car, input_distance)
end

def calculate_capacity(car, people)
  capacity = car[:capacity] - people
  if capacity < 0
    puts "#{capacity.abs}人定員オーバーです。"
  end
end

def calculate_fuel_consumption(car, distance)
  fuel_consumption = distance / car[:fuel_economy]
  puts "その目的地までは、ガソリンを#{fuel_consumption.round(1)}L消費します。"
end

cars = []

while true do
  puts "番号を入力して下さい"
  puts "[0]:登録をする"
  puts "[1]:データを確認する"
  puts "[2]:終了する"
  input = gets.chomp

  case input
  when "0"
    register_data(cars)
  when "1"
    show_cars(cars)
  when "2"
    exit
  else
    puts "無効な値です"
  end
end