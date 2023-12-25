<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta charset="UTF-8">
	<title>MBTI Survey</title>
<!--   <script src="lib/jquery-3.4.1.min.js"></script> -->

    <script src="http://code.jquery.com/jquery-latest.js"></script>
</head>
<body>
	<h1>MBTI Survey</h1>
<div>
                        <div  style="max-width: 900px;">
<!--                         	            <form id="questionForm"> -->
                        	              <c:forEach items="${questionList}" var="question">                       	             
                        	<h1 >MBTIStart</h1>
                            <h3 style="margin-top: 50px" id="my" >${question.questionContent}</h3>
                             
                    		<input type=hidden name="questionId" id="questionId" value="${question.questionId}">
                               
<%--                                 <input type="hidden" name="${question.question_content}" value="1"> Yes --%>
<%--                 				<input type="hidden" name="${question.question_id}" value="0"> No --%>
                				</c:forEach>
<!--                 				 </form> -->
                             <button  style="margin-top: 50px" id="yes"  >Yes</button>
                            <button  style="margin-top: 50px" id="nextBtn"  >No</button>
                         
                				
                        </div>
                    </div>
         
                     
</body>
		
	<script>
	 var answers = []; // 선택한 결과를 담을 배열
     var questionIndex = 0; // 현재 문항 인덱스
     $(document).ready(function() {
         loadQuestion();
     }); 
     function loadQuestion() {
         var question = "${questionList[0].questionContent}";
         $("#question").text(question);
         $("#questionId").val(questionIndex + 1);
     }
		    // 다음 페이지 버튼 클릭 시
// 		    $('#yes').click(function(){
		    	
// 		        yes_click(); // 다음 문항 데이터 요청
// 		    });		    		  
// function yes_click() {
//     var question_id = $("#questionId").val();
//     question_id++;
//     alert(question_id);
//     $.ajax({
//         type : "GET",
//         url : "/Nextquestion.do",
//         dataType: 'json',
//         data : {
//         	question_id: question_id
//         },
//         success : function(data, status,request) {
//        	  $("#my").text(data.questionList[0].questionContent);
//        	  $("#questionId").val(data.questionList[0].questionId);
//         },        
//         error : function(request, status, error) {
//             alert("에러 발생");
//             alert(request.status+"message:"+request.responseText);
//             console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
//         }
//     });
// }
$('#yes').click(function(){
            answers.push("Yes"); // 선택한 답변을 배열에 추가
            questionIndex++;
            if (questionIndex < ${questionList.size()}) {
                loadQuestion();
            } else {
                // 모든 문항을 다 했을 때 처리
                alert("설문이 완료되었습니다.");
            }
        });

        $('#no').click(function(){
            answers.push("No"); // 선택한 답변을 배열에 추가
            questionIndex++;
            if (questionIndex < ${questionList.size()}) {
                loadQuestion();
            } else {
                // 모든 문항을 다 했을 때 처리
                alert("설문이 완료되었습니다.");
            }
        });
        
        var yesCount = answers.filter(answer => answer === "Yes").length;
        var noCount = answers.filter(answer => answer === "No").length;
        console.log("Yes 횟수:", yesCount);
        console.log("No 횟수:", noCount);
  </script>
</html>