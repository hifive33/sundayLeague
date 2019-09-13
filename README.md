# sundayLeague
team project of SCIT

외부 이미지 load시
Server.xml 에
<Context path="/img" reloadable="true" docBase="지정한 폴더 절대 경로"/>
servlet-context.xml 에
<resources mapping="/img/**" location="/img/" />

http://localhost:8080/img/파일명.jpg 로 접근가능
