<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>サンプルですよ</h1>
    <p>今日のあなたのレッスンは以下の通りです。<a>戻る</a></p>
    <table border="1">
      <tr>
        <th>レッスンコース</th>
        <th>講師名</th>
        <th>開始時間</th>
      </tr>
      <tr>
        <td>Java応用</td>
        <td>山田太郎</td>
        <td>9:00</td>
      </tr>
      <tr>
        <td>Javaサーブレット</td>
        <td>山田太郎</td>
        <td>11:00</td>
      </tr>
      </table>
<br>
    <form action="/webProject/UserInfo" method="post">
        <p>姓：<input type="text" name="firstName"></p>
        <p>名前：<input type="text" name = "lastName"></p>
        <p>性別：<input type="radio" name="gender" value="male">男
                <input type="radio" name="gender" value="female">女
        <p>年齢：<input type="text" name="age"></p>
        <p>好きな昼食
                <input type="checkbox" name="lunch" value="ramen">ラーメン
                <input type="checkbox" name="lunch" value="spaghetti">スパゲッティ
                <input type="checkbox" name="lunch" value="sandwich">サンドウィッチ
                <input type="checkbox" name="lunch" value="beefbowl">牛丼
                <input type="checkbox" name="lunch" value="soba">そば
        </p>
        <p>参加したいイベント
                <select name="event">
                    <option value="">参加したいイベントを選んでください。</option>
                    <option value="ボーリング大会">ボーリング大会</option>
                    <option value="水泳大会">水泳大会</option>
                    <option value="マラソン大会">マラソン大会</option>
                    <option value="その他">その他</option>
                </select>
        </p>
        <input type="submit" value="送信">
    </form>
<br>
<h1><a href = "http://localhost:8080/webProject/SampleFile">Back to Home Page</a></h1>
</body>
</html>