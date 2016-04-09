$(document).ready(function(){
   $('.activity_button').click(function(){
    alert('clicked');
   	var activity_name=$('#nameofevent').val();
   	var activity_date=$('#dateofevent').val();
   	var activity_nature=$('#natureofparticipation').val();
   	var activity_prize=$('#prize').val();
   	var activity_year=$('#year').val();
          $.ajax ({
                       type: 'POST',
                       url:'candidate_activity/',
                       data:{activity_name: activity_name,activity_date: activity_date,activity_nature: activity_nature,activity_prize: activity_prize,activity_year: activity_year},              
                       success: function(data) 
                       {
                        Materialize.toast('Activity details succesfully added', 5000)

                       },
                    error: function() 
                    { 
                          alert("Error"); 
                     }   
                 });
   });
});