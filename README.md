# sundayLeague
team project of SCIT

## 외부경로 이미지 불러오기
<pre>
1. Server.xml
&lt;Context path="/img" reloadable="true" docBase="지정한 폴더 절대 경로" /&gt;

2. servlet-context
&lt;resources mapping="/resources/**" location="/resources/" /&gt;
&lt;resources mapping="/img/**" location="지정한 업로드 폴더 절대경로" /&gt;

3. 접근 방법
http://localhost:8080/img/파일명.jpg
</pre>
