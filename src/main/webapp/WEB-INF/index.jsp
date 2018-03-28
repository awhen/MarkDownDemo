<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE html>
<html lang="zh">
    <head>
        <meta charset="utf-8" />
        <title>HTML Preview(markdown to html) - Editor.md examples</title>
        <link rel="stylesheet" href="css/style.css" />
        <link rel="stylesheet" href="css/editormd.css" />
        <link rel="shortcut icon" href="https://pandao.github.io/editor.md/favicon.ico" type="image/x-icon" />
        <style>            
            .editormd-html-preview {
                width: 90%;
                margin: 0 auto;
            }
        </style>
    </head>
    <body>
        <div id="layout">
            <div id="test-editormd-view">
                <textarea id="append-test" style="display:none;">${markdownContent}</textarea>          
            </div>
        </div>
        <!-- <script src="js/zepto.min.js"></script>
		<script>		
			var jQuery = Zepto;  // 为了避免修改flowChart.js和sequence-diagram.js的源码，所以使用Zepto.js时想支持flowChart/sequenceDiagram就得加上这一句
		</script> -->
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
            $(function() {
                var testEditormdView
                    
                testEditormdView = editormd.markdownToHTML("test-editormd-view", {
                    htmlDecode      : "style,script,iframe",  // you can filter tags decode
                    emoji           : true,
                    taskList        : true,
                    tex             : true,  // 默认不解析
                    flowChart       : true,  // 默认不解析
                    sequenceDiagram : true,  // 默认不解析
                });
            });
        </script>
    </body>
</html>