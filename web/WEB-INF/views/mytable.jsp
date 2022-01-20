<%--
  Created by IntelliJ IDEA.
  User: wjdrm
  Date: 2022-01-19
  Time: 오후 8:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>

    <script type="text/javascript" src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.3/dist/additional-methods.min.js"></script>

<%--    <script--%>
<%--            src="http://code.jquery.com/jquery-3.5.1.js"--%>
<%--            integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="--%>
<%--            crossorigin="anonymous">--%>
<%--    </script>--%>


    <title>html연습시간</title>
    <script>
        $(function (){
            $("#mytable").validate({
                rules:{
                    USERID:{required:true, maxLength:100},
                    PASSWORD:{required: true,maxLength: 20},
                    NAME:{required:true,maxLength:300},
                    AGE:{required:true,maxLength:10},
                    GENDER:{required:true,maxLength:10},
                    ADDRESS:{required:true,maxLength:500},
                    PHONE:{required:true,maxLength:20},
                    EMAIL:{required:true,maxLength:100},
                    COUNTRY:{required:true,maxLength:60},
                    BIRTH:{required:true,maxLength:10}
                },
                messages:{
                    USERID:{required:"필수입력사항 입니다.", maxLength:"30자 이하로 입력 하세요"},
                    PASSWORD:{required:"필수입력사항 입니다.",maxLength: "20자 이하로 입력 하세요"},
                    NAME:{required:"필수입력사항 입니다.",maxLength:"100자 이하로 입력 하세요"},
                    AGE:{required:"필수입력사항 입니다.",maxLength:"10자 이하로 입력 하세요"},
                    GENDER:{required:"필수입력사항 입니다.",maxLength:"3자 이하로 입력 하세요"},
                    ADDRESS:{required:"필수입력사항 입니다.",maxLength:"150자 이하로 입력 하세요"},
                    PHONE:{required:"필수입력사항 입니다.",maxLength:"10자 이하로 입력 하세요"},
                    EMAIL:{required:"필수입력사항 입니다.",maxLength:"30자 이하로 입력 하세요"},
                    COUNTRY:{required:"필수입력사항 입니다.",maxLength:"20자 이하로 입력 하세요"},
                    BIRTH:{required:"필수입력사항 입니다.",maxLength:"10자 이하로 입력 하세요"}
                },

                submitHandler: function(form) {

                     form.submit();

                },


                errorPlacement: function(error, element) {

                }
            });
        });
    </script>
</head>
<body>
<form action="/complete" id="mytable" method="post">
    <table border="30">
        <tr>
            <th>USERID</th>
            <th><input type="text" id="userid" name="userid"/></th>
        </tr>
        <tr>
            <th>PASSWORD</th>
            <th><input type="text" id="password" name="password"/></th>
        </tr>
        <tr>
            <th>NAME</th>
            <th><input type="text" id="NAME" name="NAME"/></th>
        </tr>
        <tr>
            <th>AGE</th>
            <th><input type="text" id="AGE" name="AGE"/></th>
        </tr>
        <tr>
            <th>GENDER</th>
            <th><input type="text" id="GENDER" name="GENDER"/></th>
        </tr>
        <tr>
            <th>ADDRESS</th>
            <th><input type="text" id="ADDRESS" name="ADDRESS"/></th>
        </tr>
        <tr>
            <th>PHONE</th>
            <th><input type="tel" id="PHONE" name="PHONE"/></th>
        </tr>
        <tr>
            <th>EMAIL</th>
            <th><input type="text" id="EMAIL" name="EMAIL"/></th>
        </tr>
        <tr>
            <th>COUNTRY</th>
            <th><input type="text" id="COUNTRY" name="COUNTRY"/></th>
        </tr>
        <tr>
            <th>BIRTH</th>
            <th><input type="text" id="BIRTH" name="BIRTH"/></th>
        </tr>
    </table>
    <button type="submit" >가입합니다.</button>

</form>

</body>
</html>
