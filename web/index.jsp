<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Transliterator API</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/materialize.min.css" />
        <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/common.css" />
        <script type="text/javascript" src="${pageContext.request.contextPath}/jquery.min.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/materialize.min.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/common.js"></script>
    </head>
    <body>
        <nav style="height: 80px">
            <div class="nav-wrapper" style="background-color: #D5DBDB; height: 80px">
                <a href="#" class=" main-name brand-logo">TRANSLITERATE</a>
            </div>
        </nav>
        <div class="row">
            <div class="col s12 m6 l6">
                <div class="card-panel" style="height: 500px;">
                    <h5 style="color:#C70039;">SOURCE LANGUAGE</h5>
                   
                <div class="row" style="margin-top: 1%;">
                    <div class="col s12">
                        <ul class="tabs" id="srcList">
                            <li class="tab col s3"><a href="#" class="active cust-clr" id="src-h">HINDI</a></li>
                            <li class="tab col s3"><a href="#" class="cust-clr" id="src-k">KANNADA</a></li>
                            <li class="tab col s3"><a href="#" class="cust-clr" id="src-t">TELUGU</a></li>
                        </ul>
                    </div>
   
                </div>
                        <textarea id="srcText" style="height: 300px;"></textarea>
                        <button class="waves-effect btn right trans-btn" name="tr-btn" onclick="startTrans()">Transliterate</button>
                </div>
               
            </div>
            <div class="col s12 m6 l6">
                <div class="card-panel" style="height: 500px;">
                    <h5 style="color:#C70039;">DESTINATION LANGUAGE</h5>
                <div class="row" style="margin-top: 1%;">
                    <div class="col s12">
                        <ul class="tabs" id="destList">
                            <li class="tab col s3"><a href="#" class="active cust-clr">HINDI</a></li>
                            <li class="tab col s3"><a href="#" class="cust-clr">KANNADA</a></li>
                            <li class="tab col s3"><a href="#" class="cust-clr">TELUGU</a></li>
                        </ul>
                    </div>
                </div>
                    <textarea id="destText" style="height: 300px; font-size: 2rem;"></textarea>
                </div>
            </div>
        </div>        
    </body>
</html>
