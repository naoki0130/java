<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%
    String[] omikujiArray = {"大吉","吉","中吉","小吉","凶"};

    //おみくじのコメント
    String[] unseiArray = {"最高の運勢です！今日もいいことがありますよ。", //大吉
                            "良い運勢です。忘れ物に注意してね。",  //吉
                            "まあまあの運勢です。焦らずに、足元に気をつけてね。",  //中吉
                            "良くなりつつあります。この時期の努力はきっと実りますよ。",  //小吉
                            "今は我慢の時。これを乗り越えると、運が開けますよ" //凶
    };
    //0以上５未満の整数を乱数で発生
    int index = (int)(Math.random()* 5);
    //おみくじの種類を決定
    String omikuji = omikujiArray[index];
    //おみくじのコメントを決定
    String unsei = unseiArray[index];
    //今日の日付
    Date date = new Date();
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
    String today = sdf.format(date);

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Random Page</title>
</head>
<body>
 	<p>今日（<%=today %>）のおみくじは、「<%=omikuji %>」です。</p>
    <p><%=unsei %></p>
    <p>おみくじの結果はいかがでしたか。今日も頑張りましょう。</p>
<br>
<h1><a href = "http://localhost:8080/webProject/SampleFile">Back to Home Page</a></h1>
</body>
</html>