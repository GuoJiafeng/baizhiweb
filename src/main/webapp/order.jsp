<%@ page pageEncoding="UTF-8" contentType="text/html;charest=UTF8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="base_path" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title></title>

    <link rel="stylesheet" type="text/css" href="${base_path}/css/mainRiver.css"/>
    <link rel="stylesheet" type="text/css" href="${base_path}/css/webStyle1.css"/>
    <script type="text/javascript" src="${base_path}/js/jquery-1.8.3.min.js"></script>
    <style type="text/css">
        .priceC{
            position: absolute;
            top: 23px;
            right: 70px;
            height: 40px;
            width: 140px;
            border: 1px solid #E6E6E6;
            background-color: #F8FFC0;
            border-radius: 3px;
            color: #fccf80;
            font-size: 18px;
        }
        .select_sum_last{
            position: relative;
        }
        .section_text{
            font-size: 18px;
        }
        .wenImg{
            position: relative;
            top:-3px;
            cursor: pointer;
        }
        .tishi{
            font-size: 10px;
        }
        .up_file_img{
            position: relative;
            top:23px;
            height: 40px;
            width: 140px;
            cursor: pointer;
            right: -120px;
        }
        .footer{
            position: relative;
            top:95%;
        }
    </style>
    <script type="text/javascript">

        $(function () {
            $(".tishi").hide();

            $("#up_file").change(function () {
                checkType();
            })
        })

        function checkType() {

            //检测上传文件的类型
            var imgName = document.all.up_file.value;
            var ext, idx;
            if (imgName == '') {
                document.all.submit_upload.disabled = true;
                alert("请选择需要上传的文件!");
                return;
            } else {
                idx = imgName.lastIndexOf(".");
                if (idx != -1) {
                    ext = imgName.substr(idx + 1).toUpperCase();
                    ext = ext.toLowerCase();
                    // alert("ext="+ext);
                    if (ext != 'doc' && ext != 'docx' && ext != 'txt') {
                        document.all.submit_upload.disabled = true;
                        $("#up_file").val("");
                        alert("只能上传.doc，.ocx，.txt类型的文件!");
                        return;
                    }
                } else {
                    document.all.submit_upload.disabled = true;
                    alert("只能上传.doc，.ocx，.txt类型的文件!");
                    return;
                }
            }
        }

        function showFont(){
            $(".tishi").show();
        }

        $(function () {
            $.get("${base_path}/select/selectByPageName?source=order.jsp",function(result){
                var type=["type","demand","number"];
                console.log(result)
                for(var i in result){
                    var data = result[i].options.split("_");
                    var prices = result[i].price.split("_");
                    for(var j in data){
                        $("#"+type[i]).append("<option value='"+prices[j]+"'>"+data[j]+"</option>");
                    }
                }
            },"json")

            $("#getPrice").click(function () {
                getPrice();
            })
        })

        function getPrice() {

            var type = $("#type").val();
            var number = $("#number").val();
            var demand = $("#type").val();
            $.ajax({
                    type: "post",
                    url: "<c:url value="/order/getPrice"/>",
                    data: "type=" + type + "&number=" + number + "&demand=" + demand,
                    dataType: "text",
                    success: function (result) {
                        alert("成功获取价格，将显示在页面中！")
                        $("#showPrice").text("price：" + result);
                    }
                }
            )

        }


    </script>
</head>
<body>

<jsp:include page="top.jsp"/>
<form action="${base_path}/order/order.do" method="post">
    <div class="section_text">
        <ul>
            <li class="select_yes2 select_sum">
                <span>${requestScope.contents[0]}</span>
                <select name="type" id="type">
                    <%--<option value="Web">Web</option>
                    <option value="App">App</option>--%>
                </select>
            </li>
            <li class="select_yes select_sum">
                <span>${requestScope.contents[1]}</span>
                <select name="demand" id="demand">
                    <%--<option value="1">YES</option>
                    <option value="0">NO</option>--%>
                </select>
            </li>
            <li class="select_sum">
                <span>${requestScope.contents[2]}</span>
                <select name="number" id="number">
                    <%--<option value="1-5">1-5</option>
                    <option value="5-10">5-10</option>
                    <option value="10以上">10以上</option>--%>
                </select>
            </li>


            <li class="select_sum select_sum_last">
                <span id="showPrice">${price}${requestScope.contents[3]}</span>
                <input  class="priceC" type="button" id="getPrice" value="calculation"/>
            </li>
                <li class="s_upload">
                <span>${requestScope.contents[0]}
                    <img class="wenImg" onmousemove="showFont()" src="${base_path}/img/wenhao.png" alt="">
                    <a class="tishi" href="javascript:void(0)">没有模板请下载</a>
                </span>
                    <label for="up_file" class="up_file_img"><img  src="../img/s_upload.png" alt="upload"></label>
                    <p><input id="up_file" type="file" name="up_file" style="display: none"/></p>
                    <%--background: url(../img/s_upload.png) no-repeat center;--%>
                </li>

                <li class="select_sum">
                    <span>${requestScope.contents[1]}</span>
                </li>
                <li class="select_sum">
                    <textarea style="height: 100%;width: 99.6%" name="text" placeholder="Please enter:"></textarea>
                </li>
        </ul>
        <p class="submit"><input type="submit" name="" id="" value=""/></p>
    </div>
</form>
<div class="footer">
    <jsp:include page="footer.jsp"/>
</div>
</body>
</html>
