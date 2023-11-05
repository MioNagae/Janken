def janhoi_game
  def janken_game
    
    #ゲーム開始時
    puts "じゃんけん..."
    puts "[0]グー\n[1]チョキ\n[2]パー\n[３]戦わない"
    player_hand = gets.to_i
    computer_hand = 0 #rand(3)
    jankens = ["グー","チョキ","パー"]
    @janken_pattern = ""
    
    #じゃんけんパターン
    if player_hand == computer_hand
      @janken_pattern = "あいこ"
    elsif player_hand == 0 && computer_hand == 1
      @janken_pattern = "あなたの勝ち"
    elsif player_hand == 0 && computer_hand == 2
      @janken_pattern = "相手の勝ち"
    elsif player_hand == 1 && computer_hand == 2
      @janken_pattern = "あなたの勝ち"
    elsif player_hand == 1 && computer_hand == 0
      @janken_pattern = "相手の勝ち"
    elsif player_hand == 2 && computer_hand == 0
      @janken_pattern = "あなたの勝ち"
    elsif player_hand == 2 && computer_hand == 1
      @janken_pattern = "相手の勝ち"
    elsif player_hand == 3
      @janken_pattern = "ゲーム終了"
    else
      @janken_pattern = "入力エラー"
    end
  
    #じゃんけんの結果と条件分岐
    #グーを出した時
    if player_hand == 0
      puts "ぽんっ！"
      puts "-----------------------------"
      puts "あなた:#{jankens[player_hand]}を出しました"
      puts "相 手:#{jankens[computer_hand]}を出しました"
      puts "-----------------------------"
      case @janken_pattern
      when "あいこ"
          puts "あいこで・・・"
          puts "[0]グー\n[1]チョキ\n[2]パー\n[３]戦わない"
          player_hand = gets.to_i
          puts "しょっ！"
          puts "-----------------------------"
          puts "あなた:#{jankens[player_hand]}を出しました"
          puts "相 手:#{jankens[computer_hand]}を出しました"
          puts "-----------------------------"
          if player_hand == computer_hand
            puts "またあいこだよ"
            return true #最初に戻る
          elsif player_hand == 1
            return false
          elsif player_hand == 2
            return false
          elsif player_hand == 3
            puts "ゲームを終わります"
            exit
          else
            puts "0〜3の数字を入力して下さい"
            return true
          end
      when "あなたの勝ち"
        puts "☆じゃんけん勝ち☆"
      when "相手の勝ち"
        puts "×じゃんけん負け×"
      when "ゲーム終了"
        puts "ゲームを終わります"
      end
    #チョキを出した時  
    elsif player_hand == 1
      puts "ぽんっ！"
      puts "-----------------------------"
      puts "あなた:#{jankens[player_hand]}を出しました"
      puts "相 手:#{jankens[computer_hand]}を出しました"
      puts "-----------------------------"
      case @janken_pattern
      when "あいこ"
        puts "あいこで・・・"
        puts "[0]グー\n[1]チョキ\n[2]パー\n[３]戦わない"
        player_hand = gets.to_i
        puts "しょっ！"
        puts "-----------------------------"
        puts "あなた:#{jankens[player_hand]}を出しました"
        puts "相 手:#{jankens[computer_hand]}を出しました"
        puts "-----------------------------"
        if player_hand == computer_hand
          puts "またあいこだよ"
          return true #最初に戻る
        elsif player_hand == 1
          return false
        elsif player_hand == 2
          return false
        elsif player_hand == 3
          puts "ゲームを終わります"
          exit
        else
          puts "0〜3の数字を入力して下さい"
          return true
        end
      when "あなたの勝ち"
        puts "☆じゃんけん勝ち☆"
      when "相手の勝ち"
        puts "×じゃんけん負け×"
      when "ゲーム終了"
        puts "ゲームを終わります"
      end
    #パーを出した時  
    elsif player_hand == 2
      puts "ぽんっ！"
      puts "-----------------------------"
      puts "あなた:#{jankens[player_hand]}を出しました"
      puts "相 手:#{jankens[computer_hand]}を出しました"
      puts "-----------------------------"
      case @janken_pattern
      when "あいこ"
        puts "あいこで・・・"
        puts "[0]グー\n[1]チョキ\n[2]パー\n[３]戦わない"
        player_hand = gets.to_i
        puts "しょっ！"
        puts "-----------------------------"
        puts "あなた:#{jankens[player_hand]}を出しました"
        puts "相 手:#{jankens[computer_hand]}を出しました"
        puts "-----------------------------"
        if player_hand == computer_hand
          puts "またあいこだよ"
          return true #最初に戻る
        elsif player_hand == 1
          return false
        elsif player_hand == 2
          return false
        elsif player_hand == 3
          puts "ゲームを終わります"
          exit
        else
          puts "0〜3の数字を入力して下さい"
          return true
        end
      when "あなたの勝ち"
        puts "☆じゃんけん勝ち☆"
      when "相手の勝ち"
        puts "×じゃんけん負け×"
      when "ゲーム終了"
        puts "ゲームを終わります"
      end
    #戦わない、を選んだ時  
    elsif player_hand == 3
      puts "ゲームを終了します"
      exit
    else #それ以外を入力した時
      puts "0〜3の数字を入力して下さい"
      return true
    end
  end  
  #じゃんけんの最初に戻るtrueの式
  next_janken = true
  while next_janken
    next_janken = janken_game
  end
  
  #-----------------------------------------------------------
  #あっち向いてホイ
  
  lookways = ["上","下","左","右"]
  puts "あっち向いて〜〜〜〜〜〜"
  puts "[0]上\n[1]下\n[2]左\n[３]右"
  player_way = gets.to_i
  computer_way = 0 #rand(4)
  
  #あっち向いてホイの結果と条件分岐
  #上を出した時
  if player_way == 0
    if player_way == computer_way
      puts "ほいっ！"
      puts "-----------------------------"
      puts "あなた:#{lookways[player_way]}を選択しました"
      puts "相 手:#{lookways[computer_way]}を選択しました"
      puts "-----------------------------"
      case @janken_pattern
      when @janken_pattern = "あなたの勝ち"
        puts "あなたの勝ち！！ゲーム終了です"
        exit
      when @janken_pattern = "相手の勝ち"
        puts "残念、、、相手の勝ち。ゲーム終了です"
        exit
      end
    else
      puts "ほいっ！"
      puts "-----------------------------"
      puts "あなた:#{lookways[player_way]}を選択しました"
      puts "相 手:#{lookways[computer_way]}を選択しました"
      puts "-----------------------------"
      puts "じゃんけんに戻ります"
      return true
    end
  #下を出した時  
  elsif player_way == 1
    if player_way == computer_way
      puts "ほいっ！"
      puts "-----------------------------"
      puts "あなた:#{lookways[player_way]}を選択しました"
      puts "相 手:#{lookways[computer_way]}を選択しました"
      puts "-----------------------------"
      case @janken_pattern
      when @janken_pattern = "あなたの勝ち"
        puts "あなたの勝ち！！ゲーム終了です"
        exit
      when @janken_pattern = "相手の勝ち"
        puts "残念、、、相手の勝ち。ゲーム終了です"
        exit
      end
    else
      puts "ほいっ！"
      puts "-----------------------------"
      puts "あなた:#{lookways[player_way]}を選択しました"
      puts "相 手:#{lookways[computer_way]}を選択しました"
      puts "-----------------------------"
      puts "じゃんけんに戻ります"
      return true
    end
  #左を出した時  
  elsif player_way == 2
    if player_way == computer_way
      puts "ほいっ！"
      puts "-----------------------------"
      puts "あなた:#{lookways[player_way]}を選択しました"
      puts "相 手:#{lookways[computer_way]}を選択しました"
      puts "-----------------------------"
      case @janken_pattern
      when @janken_pattern = "あなたの勝ち"
        puts "あなたの勝ち！！ゲーム終了です"
        exit
      when @janken_pattern = "相手の勝ち"
        puts "残念、、、相手の勝ち。ゲーム終了です"
        exit
      end
    else
      puts "ほいっ！"
      puts "-----------------------------"
      puts "あなた:#{lookways[player_way]}を選択しました"
      puts "相 手:#{lookways[computer_way]}を選択しました"
      puts "-----------------------------"
      puts "じゃんけんに戻ります"
      return true
    end
  #右を出した時  
  elsif player_way == 3
    if player_way == computer_way
      puts "ほいっ！"
      puts "-----------------------------"
      puts "あなた:#{lookways[player_way]}を選択しました"
      puts "相 手:#{lookways[computer_way]}を選択しました"
      puts "-----------------------------"
      case @janken_pattern
      when @janken_pattern = "あなたの勝ち"
        puts "あなたの勝ち！！ゲーム終了です"
        exit
      when @janken_pattern = "相手の勝ち"
        puts "残念、、、相手の勝ち。ゲーム終了です"
        exit
      end
    else
      puts "ほいっ！"
      puts "-----------------------------"
      puts "あなた:#{lookways[player_way]}を選択しました"
      puts "相 手:#{lookways[computer_way]}を選択しました"
      puts "-----------------------------"
      puts "じゃんけんに戻ります"
      return true
    end  
  #0〜3以外を入力した時
  else
    puts "無効な値が入力されました。じゃんけんに戻ります"
    return true
  end 
end #janhoi_gameの終わり
#janhoi_gameの最初に戻る
next_hoi = true
while next_hoi
  next_hoi = janhoi_game
end
