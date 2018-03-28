<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="zh">
    <head>
        <meta charset="utf-8" />
        <title>Simple example - Editor.md examples</title>
        <link rel="stylesheet" href="css/style.css" />
        <link rel="stylesheet" href="css/editormd.css" />
        <link rel="shortcut icon" href="https://pandao.github.io/editor.md/favicon.ico" type="image/x-icon" />
        <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">    
    </head>
    <body>
        <div id="layout">
            <header>
                <h1>Simple example</h1>
            </header>
            <form action="markdownTest" method="post">
            <div id="test-editormd">
                <textarea style="display:none;" name="markdownContent"></textarea>
            </div>
            <button type="submit" class="btn btn-info col-md-offset-3 col-md-6">添加</button>
                </form>
        </div>
        <script src="js/jquery.min.js"></script>
        <script src="js/editormd.min.js"></script>
        <script src="lib/marked.min.js"></script>
        <script src="lib/prettify.min.js"></script>
        
        <script src="lib/raphael.min.js"></script>
        <script src="lib/underscore.min.js"></script>
        <script src="lib/sequence-diagram.min.js"></script>
        <script src="lib/flowchart.min.js"></script>
        <script src="lib/jquery.flowchart.min.js"></script>

        <script src="js/editormd.js"></script>
        <script type="text/javascript">
			var testEditor;

            $(function() {
                testEditor = editormd("test-editormd", {
                    width   : "90%",
                    height  : 640,
                    syncScrolling : "single",
                    path    : "lib/",
                    imageUpload : true,
                    imageFormats : ["jpg", "jpeg", "gif", "png", "bmp", "webp"],
                    imageUploadURL : "imageUpload",
                });
                
                /*
                // or
                testEditor = editormd({
                    id      : "test-editormd",
                    width   : "90%",
                    height  : 640,
                    path    : "../lib/"
                });
                */
            });
        </script>
    </body>
</html>