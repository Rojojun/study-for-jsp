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

     <div class="card bg-light mt-3">
         <div class="card-header bg-light">
             <div class="row">
                 <div class="col-8 text-left">컴퓨터 개론&nbsp;<small>교수명</small></div>
                 <div class="col-4 text-right">
                     종합<span style="color: red">B</span>
                 </div>
             </div>
         </div>
         <div class="card-body">
             <h5 class="card-title">
                 정말 좋은 강의에요!&nbsp;<small>(2017년 가을학기)</small>
             </h5>
             <p class="card-text">학점은 잘나온다... 그 외는 딱히 모르겠다 타이핑 겁나 빠르네 ㅡㅡ</p>
             <div class="col-9 text-left">
                 성적<span style="color: red">A</span>
                 재미<span style="color: red">A</span>
                 강의<span style="color: red">A</span>
                 <span style="color: green">(추천 : 15)</span>
             </div>
             <div class="col-3 text-right">
                 <a onclick="return confirm('추천하시겠습니까?')" href="./likeAction.jsp?evaluationId=">추천</a>
                 <a onclick="return confirm('삭제하시겠습니까?')" href="./deleteAction.jsp?evaluationId=">삭제</a>
             </div>
         </div>
     </div>

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
                     <div class="form-row">
                         <div class="form-group col-sm-4">
                             <label>수강 연도</label>
                             <select name="LectureYear" class="form-control">
                                 <option selected>default</option>
                                 <option id="year">year</option>
                             </select>
                         </div>
                         <div class="form-group col-sm-4">
                             <label>수강 학기</label>
                             <select name="semesterDivide" class="form-control">
                                 <option value="1학기" selected>1학기</option>
                                 <option value="1학기">2학기</option>
                                 <option value="1학기">여름학기</option>
                                 <option value="1학기">겨울학기</option>
                             </select>
                         </div>
                         <div class="form-group col-sm-4">
                             <label>강의 구분</label>
                             <select name="lectureDivide" class="form-control">
                                 <option value="전공" selected>전공</option>
                                 <option value="교양">교양</option>
                                 <option value="기타">기타</option>
                             </select>
                         </div>
                     </div>
                     <div class="form-group">
                         <label>제목</label>
                         <input type="text" name="evaluationTime" class="form-control" max="30px">
                     </div>
                     <div class="form-group">
                         <label>내용</label>
                         <textarea name="evaluationContent" class="form-control" maxlength="2048" style="height: 180px"></textarea>
                     </div>
                     <div class="form-row">
                         <label>종합</label>
                         <select name="totalScore" class="form-control">
                             <option value="A" selected>A</option>
                             <option value="B">B</option>
                             <option value="B">C</option>
                             <option value="B">D</option>
                             <option value="B">E</option>
                             <option value="B">F</option>
                         </select>
                     </div>
                     <div class="form-row">
                         <label>재미</label>
                         <select name="totalScore" class="form-control">
                             <option value="A" selected>A</option>
                             <option value="B">B</option>
                             <option value="B">C</option>
                             <option value="B">D</option>
                             <option value="B">E</option>
                             <option value="B">F</option>
                         </select>
                     </div>
                     <div class="form-row">
                         <label>성적</label>
                         <select name="totalScore" class="form-control">
                             <option value="A" selected>A</option>
                             <option value="B">B</option>
                             <option value="B">C</option>
                             <option value="B">D</option>
                             <option value="B">E</option>
                             <option value="B">F</option>
                         </select>
                     </div>
                     <div class="modal-footer">
                         <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
                         <button type="button" class="btn btn-primary">등록하기</button>
                     </div>
                     <div class="modal fade" id="reportModal" tabindex="-1" role="dialog" aria-labelledby="modal" aria-hidden="true">
                         <div class="modal-dialog">
                             <div class="modal-content">
                                 <div class="modal-header">
                                     <h5 class="modal-title" id="modal">신고하기</h5>
                                     <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                         <span aria-hidden="true">&times;</span>
                                     </button>
                                 </div>
                                 <div class="modal-body">
                                     <form action="./reportAction.jsp" method="post">
                                         <div class="form-group">
                                             <label>신고 제목</label>
                                             <input type="text" name="reportTitle" class="form-control" max="30px">
                                         </div>
                                         <div class="form-group">
                                             <label>신고 내용</label>
                                             <textarea name="reportContent" class="form-control" maxlength="2048" style="height: 180px"></textarea>
                                         </div>
                                         <div class="modal-footer">
                                             <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
                                             <button type="button" class="btn btn-danger">신고하기</button>
                                         </div>
                 </form>
             </div>
         </div>
     </div>
 </div>
                     <footer class="bg-dark mt-4 p-5 text-center" style="color: #ffffff">
                         Copyright &copy; me All Rights Reserved.
                     </footer>
 <script src="./js/jquery-3.3.1.min.js"></script>
 <script src="./js/popper.js"></script>
 <script src="./js/bootstrap.min.js"></script>
</body>
</html>