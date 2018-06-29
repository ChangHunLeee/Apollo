$(function() {
	

	/// step list 페이지
	$("#list-page").click(function(evt){
		
		var sid = $("#current-sid").val();
		

		$.ajax({
			url:"list.htm",
			data:{sid:sid},
			dataType:"html",
			success:function(data){

				$("#main-box").empty();
				$("#main-box").append(data);
				
			}
		})
		
	})
	// 스텝 board 페이지
	$("#board-page").click(function(evt){
		$.ajax({
			url:"board.htm",
			dataType:"html",
			success:function(data){
				$("#main-box").empty();
				$("#main-box").append(data);
				doDraggable();
				
			}
		})
	})
	
	
	// 스텝 timeline 페이지
	$("#timeline-page").click(function(evt){
		
		$.when(getGanttItems()).done(function(ajax){
			console.log(ajax);
			console.log(ajax.tasks);
			
			$.ajax({
				url:"step/timeline.htm",
				dataType:"html",
				success:function(data){
					$("#main-box").empty();
					$("#main-box").append(data);

					makeTimelineTable(ajax.tasks);
					makeTimelineGantt(ajax.tasks);
				}
			})
		})
	})
	
	// 스텝 workload 페이지
	$("#workload-page").click(function(evt){
		$.ajax({
			url:"workload.htm",
			dataType:"html",
			success:function(data){
			
				$("#main-box").empty();
				$("#main-box").append(data);
				
			}
		})
	})
	
	
	
	
});