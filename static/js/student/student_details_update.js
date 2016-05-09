 $('.activity_update_button').click(function(){
   	var activity_name=$('#nameofevent').val();
    var activityid=$('#activityid').val();
   	var activity_date=$('#activitydate').val();
   	var activity_nature=$('#natureofparticipation').val();
   	var activity_prize=$('#prize').val();
   	var activity_year=$('#year').val();
    if(activity_name.length!=0 && activity_date.length!=0 &&
      activity_nature.length!=0 && activity_prize.length!=0 &&
      activity_year.length!=0)
    {
          $.ajax ({
                       type: 'POST',
                       url:'candidate_activity/',
                       data:{activityid: activityid,activity_name: activity_name,activity_date: activity_date,activity_nature: activity_nature,activity_prize: activity_prize,activity_year: activity_year},              
                       success: function(data) 
                       {
                        Materialize.toast('Activity details successfully updated', 5000);
                       },
                    error: function() 
                    { 
                          alert("Error"); 
                     }   
               
   });
 }
 else
 {
    Materialize.toast('Fill up all the Manditory fields!', 4000);
 }
  });


    $('.performance_update_button').click(function(){
    var performance_exam=$('#nameofexam').val();
    var performanceid=$('#performanceid').val();
    var performance_pass=$('#yearofpassing').val();
    var performance_marks=$('#marks').val();
    var performance_year=$('#y').val();


    if(performance_exam.length !=0 && performance_pass.length !=0 &&
       performance_marks.length !=0 && performance_year.length !=0)
    {
          $.ajax ({
                       type: 'POST',
                       url:'candidate_performance/',
                       data:{performanceid: performanceid,performance_exam: performance_exam,performance_pass: performance_pass,performance_marks: performance_marks,performance_year: performance_year},              
                       success: function(data) 
                       {
                        Materialize.toast('Performance details successfully updated', 5000);
                       },
                    error: function() 
                    { 
                          alert("Error"); 
                     }   
                 
   });
      }
      else
      {
        Materialize.toast('Fill up all the Manditory fields!', 4000);
      }
   // //form2 ends
});