<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
    <meta name="viewpoint" content="width=device-width, intital-scale=1, shrink-to-fit=no">
    <title>나의 강의평가 WEB-SITE</title>
    <link rel="stylesheet" href="./css/bootstrap.min.css">
    <link rel="stylesheet" href="./css/custom.css">
</head>
<body>
 <nav class="navbar navbar-expand-lg navbar-light bg-light">
     <a class="navbar-brand" href="index.jsp">나의 강의평가 WEB-SITE</a>
     <button class="navbar-toggler" type="button" data-toggle="collapse" data-targe="#navbar">
         <span class="navbar-toggler-icon"></span>
     </button>
     <div id="navbar" class="collapse navbar-collapse">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="index.jsp">Main</a>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" id="dropdown" data-toggle="dropdown">
                    about
                </a>
                <div class="dropdown-menu" aria-labelledby="dropdown">
                    <a class="dropdown-item" href="#">로그인</a>
                    <a class="dropdown-item" href="#">회원가입</a>
                    <a class="dropdown-item" href="#">로그아웃</a>
                </div>
            </li>
        </ul>
         <form class="form-inline my-2 my-lg-0">
             <input class="form-control mr-sm-2" type="search" placeholder="내용을 입력하세요" aria-label="Search">
             <button class="btn btn-outline-success my-2 my-sm-0" type="submit">검색</button>
         </form>
     </div>
 </nav>
 <section class="container">
    <form method="get" action="./index.jsp" class="form-inline mt-3">
        <select name="LectureDivide" class="form-control mx-1 mx-2">
            <option value="전체">전체</option>
            <option value="전공">전공</option>
            <option value="교양">교양</option>
            <option value="기타">기타</option>
        </select>
        <input type="text" name="search" class="form-control mx-1 mt-2" placeholder="내용을 입력하세요">
        <button type="submit" class="btn btn-primary mx-1 mx-2">검색</button>
        <a class="btn btn-primary mx-1 mx-2" data-toggle="modal" href="#registerModal">등록하기</a>
        <a class="btn btn-primary mx-1 mx-2" data-toggle="modal" href="#reportModal">신고하기</a>
    </form>
 </section>
 <div class="modal fade" id="registerModal" tabindex="-1" role="dialog" aria-labelledby="modal" aria-hidden="true">
     <div class="modal-dialog">
         <div class="modal-content">
             <div class="modal-header">
                 <h5 class="modal-title" id="modal">평가등록</h5>
                 <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                     <span aria-hidden="true">&times;</span>
                 </button>
             </div>
             <div class="modal-body">
                 <form action="./evaluationRegisterAction.jsp" method="post">
                     <div class="form-row">
                         <div class="form-group col-sm-6">
                             <label>강의명</label>
                             <input type="text" name="LectureName" class="form-control" maxlength="20">
                         </div>
                         <div class="form-group col-sm-6">
                             <label>교수</label>
                             <input type="text" name="professorName" class="form-control" maxlength="20">
                         </div>
                     </div>
                 </form>
             </div>
         </div>
     </div>
 </div>
 <script src="./js/jquery-3.3.1.min.js"></script>
 <script src="./js/popper.js"></script>
 <script src="./js/bootstrap.min.js"></script>
</body>
</html>