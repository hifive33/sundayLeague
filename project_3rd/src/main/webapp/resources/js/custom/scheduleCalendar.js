/*
 * Author : Jinwoo Jeong
 * When : 2019-09-23 ~ 
 * Environment : Windows 10, Spring Framework v3.8.2, JDK v1.8.0u202
 * Object : 일정관리 calendar.jsp 의 풀캘린더 자바스크립트
 */
$(function() {
	var seq = 0;
	var team_name = $("#team_name").val();

	$('#calendar').fullCalendar({
		header: {
			left: 'prev,next today addEventButton',
	        center: 'title',
	        right: 'month,basicWeek,basicDay'
    	},

    	defaultDate: '2019-09-01',
	    navLinks: true,
	    eventLimit: true,
	    selectable: true,
	    selectHelper: true,
	    
	    select: function(start, end) {
	    	document.getElementById("createEventForm").reset();
	    	var startDate = moment(start).format("YYYY-MM-DD"); 
			var endDate = moment(end).format("YYYY-MM-DD"); 
			$("#start").val(startDate);
			$("#end").val(endDate);
			$("#exampleModal").modal("show");
	    },
        
        eventRender: function (eventObj, $el) {
        	$el.popover({
        		title: eventObj.title,
        		content: eventObj.description,
        		trigger: 'hover',
        		placement: 'top',
        		container: 'body',
        	});
        },
		
		eventClick: function (view) {
			if(confirm("delete?")){
				$.ajax({
					url: 'deleteCalendarEvent',
					type: 'GET',
					data: 'seq=' + view.id,
					success: function(res) {
						alert(res);
					}
				});
				$(".popover").remove();
				$('#calendar').fullCalendar('removeEvents', view.id);
			}
		},
		
		events: function(start, end, timezone, callback) {
			$.ajax({
				url: 'initCalendar',
				type: 'GET',
				data: 'team_name=' + team_name,
				success: function(res) {
					var events = [];
					$.each(res, function(idx, item){
						events.push({
							id: item.seq,
							title: item.title,
							description: item.description,
							start: item.startdate,
							end: item.enddate,
							allDay: true
						});
					});
					callback(events);
				}
			});
		}
	});
	
	$('#submitButton').on('click', function(){
		$("#exampleModal").modal("hide");
		
		var title = $('#title').val();
		var description = $('#description').val();
		var start = moment($('#start').val());
		var end = moment($('#end').val());
		
		if (start.isValid()) {
			var eventData = {
				title: title,
				description: description,
				start: start,
				end: end,
				allDay: true,
				id: seq
			};
			$('#calendar').fullCalendar('renderEvent', eventData, true);

			start =  moment(start).format("YYYY-MM-DD");
			end = moment(end).format("YYYY-MM-DD");

			var sendData = {
					"team_name": team_name,				
					"title": title,
					"description": description,
					"startdate": start,
					"enddate": end
			}
			
			$.ajax({
				url: 'insertCalendarEvent',
				type: "POST",
				data: sendData,
				success: function(res){ 
					alert(res);
				}
			});
		} else {
			alert('Invalid');
		}
	});	
})