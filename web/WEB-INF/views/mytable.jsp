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
    <title>html연습시간</title>

    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.3/dist/additional-methods.min.js"></script>
    <script>
        $(function (){
            $("#mytable").validate({
                rules:{
                    USERID:{required:true,maxlength:100},
                    PASSWORD:{required: true,maxlength:100 },
                    NAME:{required:true,maxlength:300},
                    AGE:{required:true,maxlength:10},
                    GENDER:{required:true,maxlength:10},
                    ADDRESS:{required:true,maxlength:500},
                    PHONE:{required:true,maxlength:20},
                    EMAIL:{required:true,maxlength:100},
                    COUNTRY:{required:true,maxlength:60},
                    BIRTH:{required:true,maxlength:10}
                },
                messages:{
                    USERID:{required:"[필수입력사항 입니다.]", maxlength:"30자 이하로 입력 하세요"},
                    PASSWORD:{required:"필수입력사항 입니다.",maxlength: "20자 이하로 입력 하세요"},
                    NAME:{required:"필수입력사항 입니다.",maxlength:"100자 이하로 입력 하세요"},
                    AGE:{required:"필수입력사항 입니다.",maxlength:"10자 이하로 입력 하세요"},
                    GENDER:{required:"필수입력사항 입니다.",maxlength:"3자 이하로 입력 하세요"},
                    ADDRESS:{required:"필수입력사항 입니다.",maxlength:"150자 이하로 입력 하세요"},
                    PHONE:{required:"필수입력사항 입니다.",maxlength:"10자 이하로 입력 하세요"},
                    EMAIL:{required:"필수입력사항 입니다.",maxlength:"30자 이하로 입력 하세요"},
                    COUNTRY:{required:"필수입력사항 입니다.",maxlength:"20자 이하로 입력 하세요"},
                    BIRTH:{required:"필수입력사항 입니다.",maxlength:"10자 이하로 입력 하세요"}
                }
                // errorPlacement: function(error, element) {
                //     console.log('error',error);
                // }
            });
            $("#button").click(function(){

                // $("div").text($("form").
                alert("가입완료!");
                $.ajax(
                    { //modelattribute로 보내고 json으로 받을떄 start
                        //@ModelAttribute Dto dto
                        url: "/complete"
                        , type :'post'
                        , data :$("#mytable").serialize()
                        , contentType : 'application/x-www-form-urlencoded; charset=UTF-8'
                        //modelattribute 로 받고 json 으로 받을때 end
                        , beforeSend(xhr){
                            // console.log('beforeSend xhr',xhr);
                        }
                        //타고 와서 여기부터 결과쪽
                        , dataFilter(data,type){
                      //      console.log('dataFilter data',data);
                            return data;
                        }
                        , success: function (result) {
              //              console.log('success result', result);

                            $("#div1").html(result);

                        }
                        , complete(xhr,status){
             //               console.log('complete xhr',xhr);
                        }
                        , error(xhr,status,error){
                //            console.log('error xhr',xhr);
                        }
                    }
                );
            });
        });
    </script>
</head>
<body>
<form  id="mytable" method="post">
    <table border="1">
        <tr>
            <th>USERID</th>
            <th><input type="text" id="USERID" name="USERID"/></th>
        </tr>
        <tr>
            <th>PASSWORD</th>
            <th><input type="text" id="PASSWORD" name="PASSWORD"/></th>
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
    <button type="submit" id="button" >가입 전용 버튼</button>
    <div id="div1"></div>

</form>

</body>
</html>
