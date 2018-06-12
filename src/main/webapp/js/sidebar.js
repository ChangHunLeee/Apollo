$(function() {

		// 사이드바 프로젝트 우클릭 >> 추후 Project id(DB상 기본키)를 받아와 li태그에 넣어주는 작업 필요
		$(".side-project")
				.contextmenu(
						function(event) {
							event.preventDefault();
							var dropdown_ul = document.createElement("ul");
							var dropdown = '<li class="dropdown-submenu" ><p data-toggle="dropdown" class="dropdown-toggle">추가 <span class="glyphicon glyphicon-menu-right"></span></p>'
							dropdown += '<ul class="dropdown-menu "><li data-toggle="modal" data-target="#add-folder">Folder추가</li><li data-toggle="modal" data-target="#add-step">Step추가</li></ul></li>'
							dropdown += '<li data-action="second">완료</li>'
							dropdown += '<li data-action="third" data-toggle="modal" data-target="#modify-project">수정</li>'
							dropdown += '<li data-action="fourth">삭제</li>'

							$(dropdown_ul).attr("class", "custom-menu").append(
									dropdown);
							console.log(dropdown_ul)
							$(dropdown_ul).css({
								top : event.pageY + "px",
								left : event.pageX + "px"
							}).appendTo("body");

						});

		// 사이드바 폴더 우클릭  >> 추후 폴더 id(DB상 기본키)를 받아와 li 태그에 넣어주는 작업 필요
		$(".side-folder").contextmenu(function(event) {
			event.preventDefault();
			var dropdown_ul = document.createElement("ul");
			var dropdown = '<li data-action="first" data-toggle="modal" data-target="#add-step">Step 추가</li>'
			dropdown += '<li data-action="second">수정</li>'
			dropdown += '<li data-action="third">삭제</li>'
			$(dropdown_ul).attr("class", "custom-menu").append(dropdown);
			console.log(dropdown_ul)
			$(dropdown_ul).css({
				top : event.pageY + "px",
				left : event.pageX + "px"
			}).appendTo("body");

		});

		// 사이드바 스텝 우클릭  >> 추후 스텝 id(DB상 기본키)를 받아와 li태그에 넣어주는 작업 필요

		$(".side-step").contextmenu(function(event) {
			event.preventDefault();
			var dropdown_ul = document.createElement("ul");
			var dropdown = '<li data-action="second">수정</li>'
			dropdown += '<li data-action="third">이동</li>'

			dropdown += '<li data-action="third">삭제</li>'
			$(dropdown_ul).attr("class", "custom-menu").append(dropdown);
			console.log(dropdown_ul)
			$(dropdown_ul).css({
				top : event.pageY + "px",
				left : event.pageX + "px"
			}).appendTo("body");

		});
		// 사이드 우클릭 메뉴 닫는 함수
		$(document).bind("mousedown", function(e) {

			// If the clicked element is not the menu
			if (!$(e.target).parents(".custom-menu").length > 0) {

				// Hide it
				$(".custom-menu").hide(100);
			}
		});
	
/*	$(".step1").click(function(event) {
		console.log(event.target.Id);
		$.ajax(
			{
				url:"list.htm",
				dataType:"html",
				success:function(data){
					console.log(data);
					$("#main-box").empty();
					$("#main-box").append(data);
					
				}
			}
		)
	});*/


		
	/*$(".date").datepicker({
			showOn : "button",
			buttonImage : "img/calendar.png",
			buttonImageOnly : true,
			buttonText : "Select date"

		});*/
	
	
	/////////////////////////// 비동기 화면전환 - 프로젝트 /////////////////////////
	

		$(".side-project").click(function(evt){
			console.log("test")
			$.ajax({
				url:"information.htm",
				dataType:"html",
				success:function(data){
					console.log(data);
					console.log("11");
					 $("#main-box").empty();
					 $("#main-box").append(data);	 		
					 
				}
			})
	    });
	
		$(".side-step").click(function(evt){
			console.log("test")
			$.ajax({
				url:"list.htm",
				dataType:"html",
				success:function(data){
					console.log(data);
					console.log("11");
					 $("#main-box").empty();
					 $("#main-box").append(data);	 		
					 
				}
			})
	    });
	
		$( ".date-img" ).datepicker({
		    showOn: "button",
		    buttonImage: "img/calendar.png",
		    buttonImageOnly: true,
		    dateFormat: 'yy년 mm월 dd일'


		});
});
