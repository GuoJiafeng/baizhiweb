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
        .footer{
            position: absolute;
            top: 90%;
            width: 100%;
        }
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
        }
        .select_sum_last{
            position: relative;
        }
    </style>
    <script type="text/javascript">
        $(function () {
            $.get("${base_path}/select/selectByPageName?source=order.jsp",function(result){
                console.log(result)
                var type=["type","demand","number"];
               for(var i in result){
                   var data = result[i].options.split("_");
                   data.forEach(function (t) {
                       console.log(t)
                       $("#"+type[i]).append("<option value=''>"+t+"</option>");
                   })
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

            alert(type)

            $.ajax({
                    type: "post",
                    url: "<c:url value="/order/getPrice"/>",
                    data: "type=" + type + "&number=" + number + "&demand=" + demand,
                    dataType: "text",
                    success: function (result) {
                        alert("成功获取价格，将显示在页面中！")
                        alert(result)
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
        </ul>


        <p class="submit"><input type="submit" name="" id="" value=""/></p>
    </div>
</form>
<div class="footer">
<jsp:include page="footer.jsp"/>
</div>
</body>
</html>
