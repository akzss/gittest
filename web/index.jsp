<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="java.util.*"%>
<%! public String getDayWeek(int n)
{ String week[]={"������","����һ","���ڶ�","������","������","������","������"};
 return week[n];
 }
%>
<HTML>
<BODY bgcolor=cyan><Font size=1>
  <% Calendar calendar=Calendar.getInstance(); //����һ����������
     calendar.setTime(new Date());//�õ�ǰʱ���ʼ������ʱ�䡣
    String ��=String.valueOf(calendar.get(Calendar.YEAR)),
    ��=String.valueOf(calendar.get(Calendar.MONTH)+1),
    ��=String.valueOf(calendar.get(Calendar.DAY_OF_MONTH)),
    ����=getDayWeek(calendar.get(Calendar.DAY_OF_WEEK)-1);
    int hour=calendar.get(Calendar.HOUR_OF_DAY),
     minute=calendar.get(Calendar.MINUTE),
     second=calendar.get(Calendar.SECOND);
  %>
  <P>���ڵ�ʱ����<BR>
      <%=��%>��
      <%=��%>��
      <%=��%>�ա�
      <%=����%>
    <BR>
      <%=hour%>��
      <%=minute%>��
      <%=second%>��
      <% if(��.equals("26"))
 {out.print("<BR><H2>�����ǲ������׷��������ӣ�</H2>");
 }
 if(hour>=22)
{ out.print("<BR><H2>����ʱ�������ע����Ϣ</H2>");
 }
%>��
</FONT>
</BODY>
</HTML>
