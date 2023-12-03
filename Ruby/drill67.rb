  # 問題.1
  # 以下の機能が満たされた、アプリケーションを作成してください。

  # 仕様
  # ・プログラムの実行を行うと、
  # [0]商品をカートに入れる
  # [1]カートを確認する
  # [2]アプリを終了する
  # という選択肢を表示し、ユーザーに入力を求め、その入力に従い以下のような処理を行う。

  # ・[2]でアプリケーションを終了するまで、投稿や閲覧が出来るように繰り返す。

  # ・[0]の処理
  # 1.商品名、値段、個数をユーザーに入力を行って貰う(入力された値の表示まで行う)。
  # 2.上記の値の保存を行う。

  # ・[1]の処理
  # 1.保存された全ての商品情報（商品名・値段・個数）を、商品ごとに表示する。また、全ての商品の合計金額を表示する。
  # 2.(買い物を続ける) メニューの表示まで戻る。

  # ・[2]の処理
  # 1.アプリケーションを終了する。


  def post_item(a_cart)
    # 商品名・値段・個数の入力を促し、入力された値をハッシュオブジェクトで管理する
      puts "商品名を入力してください："
      name = gets.chomp
      puts "値段を入力してください："
      price = gets.to_i
      puts "個数を入力してください："
      order = gets.to_i
      cart = {name: name, price: price, order: order}

      line = "---------------------------"
      puts line

      sum_price = price * order
    # 入力された値（ハッシュオブジェクトで管理している値）と合計金額を表示する
      puts "商品名 : #{cart[:name]}"
      puts "値段 : #{cart[:price]}"
      puts "個数 : #{cart[:order]}"
      puts "合計金額 : #{sum_price}"
    
    # ハッシュを配列オブジェクトに追加する
      a_cart << cart
    # a_cartをメソッドの呼び出し元に返す
      return a_cart
    end
    
    def check_items(a_cart)
    # 保存された全ての商品情報（商品名・値段・個数）を、商品ごとに表示する
      a_cart.each_with_index do |cart, index|
        puts "商品名 : #{cart[:name]}"
        puts "値段 : #{cart[:price]}"
        puts "個数 : #{cart[:order]}"
        sum_price = cart[:price] * cart[:order]
      end
    # 全ての商品の合計金額を表示する
      puts "合計金額 : #{sum_price}"
    end
    
    def end_program
      # プログラムを終了させる
      exit
    end
    
    def exception
      puts "入力された値は無効な値です"
    end
    
    cart = []             # 配列オブジェクトcartの生成
    
    while true do
    # メニューの表示
      puts "商品数: #{cart.length}"
      puts "[0]商品をカートに入れる"
      unless cart.empty?       #カートに商品がない場合、[1]は選択不可
        puts "[1]カートを確認する"
      end
      puts "[2]アプリを終了する"
      input = gets.to_i
    
      if input == 0 then
        cart = post_item(cart)  # post_itemメソッドを呼び出す記述
      elsif input == 1 then
        check_items(cart) # check_itemsメソッドを呼び出す記述
      elsif input == 2 then
        end_program     # end_programメソッドを呼び出す記述
      else
        exception           # exceptionメソッドを呼び出す記述
      end
    end