<%@ page pageEncoding="UTF-8" contentType="text/html;charest=UTF8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="base_path" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title></title>

    <link rel="stylesheet" type="text/css" href="${base_path}/css/mainRiver.css"/>
    <link rel="stylesheet" type="text/css" href="${base_path}/css/webStyle.css"/>

    <script type="text/javascript" src="${base_path}/js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript">

        $(function () {
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
    </script>
</head>
<body>

<jsp:include page="top.jsp"/>

<form action="${base_path}/file/upload.do" method="post" enctype="multipart/form-data">
    <div class="section_text">

        <ul>
            <li class="s_upload">
                <span>Please upload your demand book!</span>
                <p><input id="up_file" type="file" name="up_file"/></p>
            </li>

            <li class="select_sum">
                <span>Please enter the requirement document description below</span>
            </li>

            <li class="select_sum">
                <textarea style="height: 100%;width: 99.6%" name="text" placeholder="Please enter:"></textarea>
            </li>
        </ul>

        <p class="submit"><input type="submit" name="" id="submit_upload" value=""/></p>
    </div>
</form>

<footer>

    <div id="middle_footer">
        <ul class="out">
            <li>
                <p><a href="#">Guudjob Worldwide SL</a></p>
                <p><a href="#">Plaza Carlos Trias Bertrain,</a></p>
                <p><a href="#">7</a></p>
                <p><a href="#">Madrid,Esparia</a></p>
                <p>
                    <img src="${base_path}/img/face.png"/>
                    <img src="${base_path}/img/wic.png"/>
                    <img src="${base_path}/img/wifi.png"/>
                </p>
                <br/>
                <p><a href="#">Esparnol | English</a></p>

            </li>
            <li>
                <p><a href="#">
                    GuuBjob</a>
                </p>
                <p><a href="#">Sorbre Guudjob</a></p>
                <p><a href="#">Equipo</a></p>
                <p><a href="#">Prensa & Noticias</a></p>
                <p><a href="#">Agradecimientos</a></p>
                <p><a href="#">Contacto</a></p>
                <p><a href="#">Privacidad</a></p>
                <p><a href="#">Embajadores</a></p>
            </li>
            <li>
                <p><a href="#">
                    GuuBjob APP</a>
                </p>
                <p><a href="#">Reconocimiento Laboral</a></p>
                <p><a href="#">Reputacion Profesional</a></p>
                <p><a href="#">Blog</a></p>
                <p><a href="#">Presonal Branding</a></p>
                <p><a href="#">Academy</a></p>
                <p><a href="#">ios & Android</a></p>
                <p><a href="#">Video Tutoriales</a></p>

            </li>
            <li>
                <p><a href="#">
                    EMPRESAS</a>
                </p>
                <p><a href="#">Soluciones</a></p>
                <p><a href="#">Reconocimeento Cliente</a></p>
                <p><a href="#">Reconocimeento Intemo</a></p>
                <p><a href="#">CX Academy</a></p>
                <p><a href="#">Logos y pegatinas</a></p>
            </li>
        </ul>
    </div>
    <div id="bottom_footer">
        Registration:000000000
    </div>
</footer>

</body>
</html>
