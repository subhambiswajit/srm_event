$(document).ready(function(){
   $('.formone').click(function(){
   	var param1=$('.name of event').val();
   	var param2=$('.date').val();
   	var param3=$('.nature of participation').val();
   	var param4=$('.prize').val();
   	var param5=$('.year').val();
          $.ajax ({
                       type: 'POST',
                       url:'your url',
                       data:{p1: param1,p2: param2,p3: param3,p4: param4,p5: param5},              
                       success: function(data) 
                       {
                        //your statements
                       },
                    error: function() 
                    { 
                          alert("Error"); 
                     }   
                 });
   });
});