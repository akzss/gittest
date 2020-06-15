<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="java.util.*"%>
<%! public String getDayWeek(int n)
{ String week[]={"星期日","星期一","星期二","星期三","星期四","星期五","星期六"};
 return week[n];
 }
%>
<HTML>
<BODY bgcolor=cyan><Font size=1>
  <% Calendar calendar=Calendar.getInstance(); //创建一个日历对象。
     calendar.setTime(new Date());//用当前时间初始化日历时间。
    String 年=String.valueOf(calendar.get(Calendar.YEAR)),
    月=String.valueOf(calendar.get(Calendar.MONTH)+1),
    日=String.valueOf(calendar.get(Calendar.DAY_OF_MONTH)),
    星期=getDayWeek(calendar.get(Calendar.DAY_OF_WEEK)-1);
    int hour=calendar.get(Calendar.HOUR_OF_DAY),
     minute=calendar.get(Calendar.MINUTE),
     second=calendar.get(Calendar.SECOND);
  %>
  <P>现在的时间是<BR>
      <%=年%>年
      <%=月%>月
      <%=日%>日　
      <%=星期%>
    <BR>
      <%=hour%>点
      <%=minute%>分
      <%=second%>秒
      <% if(日.equals("26"))
 {out.print("<BR><H2>今天是病毒容易发作的日子！</H2>");
 }
 if(hour>=22)
{ out.print("<BR><H2>现在时间很晚了注意休息</H2>");
 }
%>　
</FONT>
</BODY>
</HTML>
