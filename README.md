# java-web-learning

## 学習の流れ
- そもそもWebの仕組みとはなんぞや
  - 参照動画 (小栗氏おすすめ)
    - [Webアプリ基礎](https://www.youtube.com/watch?v=iGTuTbxnV8M)
    - [Webの仕組み](https://www.youtube.com/watch?v=D6s7f8DHd5M)
    - [jspの基礎](https://www.youtube.com/watch?v=uYQzpGNx084)

この時点でサーブレットとjspの役割が理解できているならOK  
例えば...
  - サーブレットは今まで勉強してきたJavaでサーバーサイドのプログラムを作れる便利なもので, DBの検索とか更新をやってくれるんだよな
  - サーブレットでもHTMLを出力できるけどprintlnばかりで書くのもめんどくさい... → そんな時に使えるのがjspだったな
  - jspはHTMLで記述したものにJavaのコードを埋め込める. このjspのおかげでHTMLの出力がめっちゃ楽になるんだよな
  - つまり流れは
    1. クライアントからのリクエスト（〜〜検索！！）をサーブレットで受け取る
    2. 受け取ったリクエストを条件にサーブレットでDB検索や更新の処理を行う
    3. サーブレットで得た処理結果をjspに渡す 
