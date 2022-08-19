<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.84.0">

<!-- <link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/dashboard/"> -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<title>Spring Hotel 관리자페이지입니다.</title>
<style>

	.container-fluid {
		background-color:RGB(245, 246, 250);
	}
	
	.row .col {
		background-color:RGBa(255, 255, 255, 0.9);
		border-radius: 10px;
		margin: 20px;
	}
	
	/* -------------------------지점별 버튼------------------------ */
	#btn-seoul {
		color:rgba(103, 36, 54, 1);	
		font-weight:bold;
	}
	#btn-seoul:hover {
		color: rgba(255, 255, 255, 1);
		box-shadow: rgba(103, 36, 54, 1) 0 80px 0px 2px inset;
	}
	#btn-jeju {
		color:rgba(132, 50, 61, 1);	
		font-weight:bold;
	}
	#btn-jeju:hover {
		color: rgba(255, 255, 255, 1);
		box-shadow: rgba(132, 50, 61, 0.8) 0 80px 0px 2px inset;
	}
	#btn-busan {
		color:rgba(179, 76, 73, 1);	
		font-weight:bold;
	}
	#btn-busan:hover {
		color: rgba(255, 255, 255, 1);
		box-shadow: rgba(179, 76, 73, 1) 0 80px 0px 2px inset;
	}
	#btn-reung {
		color:rgba(243, 115, 88, 1);
		font-weight:bold;
	}
	#btn-reung:hover {
		color: rgba(255, 255, 255, 1);
		box-shadow: rgba(243, 115, 88, 1) 0 80px 0px 2px inset;
	}
	#btn-gwang {
		color:rgba(255, 173, 104, 1);	
		font-weight:bold;
	}
	#btn-gwang:hover {
		color: rgba(255, 255, 255, 1);
		box-shadow: rgba(255, 173, 104, 1) 0 80px 0px 2px inset;
	}
	
</style>
<%-- <link href="${pageContext.request.contextPath}/resources/admincss/dashboard.css" rel="stylesheet"> --%>
</head>
<body>
<c:set var="menu" value="main"/>
<%@ include file="common/nav.jsp" %>

<div class="container-fluid">
    <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
      <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2" style="font-weight:bold;">Spring Hotel Admin</h1>
        <div class="btn-group" role="group" aria-label="Basic mixed styles example">
		  <button type="button" class="btn" id="btn-seoul">서울점</button>
		  <button type="button" class="btn" id="btn-jeju">제주점</button>
		  <button type="button" class="btn" id="btn-busan">부산점</button>
		  <button type="button" class="btn" id="btn-reung">강릉점</button>
		  <button type="button" class="btn" id="btn-gwang">광주점</button>
		</div>
      </div>
	  <div class="row" id="sale">
	  	<div class="col py-3" id="sale-chart">
	  		<div class="row">
	  			<div class="col-8">
			  		<span style="font-size:0.94rem; font-weight:bold;">2022년 상반기 지역별 매출</span>
	  			</div>
	  			<div class="col-4 text-end">
			  		<span style="color: darkgray; font-size:0.75rem;">단위 : 만원</span>
	  			</div>
	  		</div>
	  		<div class="row">
		  		<canvas id="bar-chart" style="height:20vh; width:20vw;"></canvas>
		  	</div>
	  	</div>
	  	<div class="col py-3">
	  		<div class="row">
	  			<div class="col-8">
			  		<span style="font-size:0.94rem; font-weight:bold;">2022년 상반기 월별 매출</span>
	  			</div>
	  			<div class="col-4 text-end">
			  		<span style="color: darkgray; font-size:0.75rem;">단위 : 만원</span>
	  			</div>
	  		</div>
	  		<div class="row">
	  			<canvas id="line-chart" style="height:20vh; width:15vw;"></canvas>
	  		</div>
	  	</div>
	  	<div class="col">
	  	
	  	</div>
	  </div>
	  <div class="row" id="rev">
	  	<div class="col py-3">
	  		<div class="row">
	  			<div class="col-8">
					<span style="font-size:0.94rem; font-weight:bold;">2022년 상반기 지역별 예약수</span>
				</div>
				<div class="col-4 text-end">
			  		<span style="color: darkgray; font-size:0.75rem;">단위 : 건</span>	  	
			  	</div>
			</div>
			<div class="row p-3">
		  		<canvas id="doughnut-chart" style="height:15vh; width:18vw;"></canvas>
			</div> 
	  	</div>
	  	<div class="col">
	  	
	  	</div>
	  	<div class="col" id="rev-chart">	
	  	</div>
	  </div>

		      
      <h2>예약 임박</h2>
      <div class="table-responsive">
        <table class="table table-striped table-sm">
          <thead>
            <tr>
              <th scope="col">예약종류</th>
              <th scope="col">예약번호</th>
              <th scope="col">고객명</th>
              <th scope="col">예약상태</th>
              <th scope="col">예약상세</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td><a href="">1,001</a></td>
              <td>random</td>
              <td>data</td>
              <td>placeholder</td>
              <td>text</td>
            </tr>
          </tbody>
        </table>
      </div>
    </main>
  </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js" integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js@3.9.1/dist/chart.min.js" integrity="sha256-+8RZJua0aEWg+QVVKg4LEzEEm/8RFez5Tb4JBNiV5xA=" crossorigin="anonymous"></script>
<script src="${pageContext.request.contextPath}/resources/admincss/dashboard.js"></script>
<script>
$(function () {
	
	// 지역별 매출
	var ctx = document.getElementById('bar-chart'); // node
	var ctx = document.getElementById('bar-chart').getContext('2d'); // 2d context
	var ctx = $('#bar-chart'); // jQuery instance
	var ctx = 'bar-chart'; // element id

	// 월별 매출
	var ctx2 = document.getElementById('line-chart'); // node
	var ctx2 = document.getElementById('line-chart').getContext('2d'); // 2d context
	var ctx2 = $('#line-chart'); // jQuery instance
	var ctx2 = 'line-chart'; // element id
	
	// 지역별 예약수
	var ctx3 = document.getElementById('doughnut-chart'); // node
	var ctx3 = document.getElementById('doughnut-chart').getContext('2d'); // 2d context
	var ctx3 = $('#doughnut-chart'); // jQuery instance
	var ctx3 = 'doughnut-chart'; // element id
	
	// 지역별 매출
	var barChart = new Chart(ctx, {
				    type: 'bar',
				    data: {
				      labels: ["서울", "제주", "부산","강릉","광주"],
				      datasets: [
				        { 
				          label: "2022 상반기 지역별 매출",
				          backgroundColor: ["rgba(103, 36, 54, 1)", "rgba(132, 50, 61, 1)", "rgba(179, 76, 73, 1)", "rgba(243, 115, 88, 1)", "rgba(255, 173, 104, 1)"],
				          data: [5202,4352,7341,2305,2056]
				        }
				      ]
				    },
				    options: {
				      indexAxis: 'y',
			    	  scales: {
			    	      x: {
			    	        grid: {
			    	          display: false,
			    	        }
			    	      },
			    	      y: {
			    	        grid: {
			    	          display: false
			    	        }
			    	      },
			    	  },
				      responsive: false,
				      plugins: {
				    	  legend: { 
				    		  display: false 
				    		  }
				      }
				      /* title: {
				        display: false,
				        text: '2022 상반기 지점별 매출현황'
				      } */
				    }
				}); 
	
	// 월별 매출
	var lineChart = new Chart(ctx2, {
		  type: 'bar',
		  data: {
		    labels: ['01월', '02월', '03월', '04월', '05월', '06월'],
		    datasets: [{ 
		        data: [1000,2000,3000,3500,2600,3500],
		        label: "2022 상반기 월별 매출",
		        backgroundColor: ["#002743", "#00486d", "#00769f", "#00b2d5", "#00fbff", "#003697"], 
		      }]
		  },
		  options: {
		    title: {
		      display: true,
		      text: 'World population per region (in millions)'
		    },
		    plugins: {
		    	  legend: { 
		    		  display: false 
		    		  }
		    },
		    responsive: false,
		    scales: {
		    	  yAxes: [{
	                  display: true,
	                  ticks: {
	                      beginAtZero: true
	                  }
	              }],
	    	      x: {
	    	        grid: {
	    	          display: false,
	    	        }
	    	      },
	    	      y: {
	    	        grid: {
	    	          display: false
	    	        }
	    	      },
	    	      beginAtZero: true
	    	     
	    	  }
		}
	});
	
	// 지역별 예약수
	var doughnutChart = new Chart(ctx3, {
					  type: 'doughnut',
					  data: {
					    labels: ["서울", "제주", "부산", "강릉", "광주"],
					    datasets: [{ 
					        data: [100,200,300,400,500],
					        label: "지점별 예약수",
					        borderColor: "RGBa(220, 220, 220, 0.3)",
					        backgroundColor: ["rgba(103, 36, 54, 1)", "rgba(132, 50, 61, 1)", "rgba(179, 76, 73, 1)", "rgba(243, 115, 88, 1)", "rgba(255, 173, 104, 1)"]
					      }]
					  },
					  options: {
						responsive: false,
					    title: {
					      display: false,
					      text: '매출 증가 추이'  
					    },
					      plugins: {
				    	  legend: { 
				    		  display: false 
				    		  }
				        }, 		    
					  }
					});
})
</script>
</body>
</html>