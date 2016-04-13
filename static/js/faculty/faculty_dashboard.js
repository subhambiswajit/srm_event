 $('#fac_award_submit').click(function(){
   	var award_fac_name=$('#awards_faculty_name').val();
   	var award_fac_desc=$('#awards_description').val();
          $.ajax ({
                       type: 'POST',
                       url:'fac_award_save/',
                       data:{award_fac_name: award_fac_name,award_fac_desc: award_fac_desc},              
                       success: function(data) 
                       {
                        Materialize.toast('Award details successfully added', 5000);

                       },
                    error: function() 
                    { 
                          alert("Error"); 
                     }   
                 });
   });



  $('#consultancy_submit').click(function(){
    var consultancy_nature=$('#consultancy_nature').val();
    var consultancy_client=$('#consultancy_client').val();
    var consultancy_department=$('#consultancy_department').val();
    var consultancy_revenue=$('#consultancy_revenue').val();
          $.ajax ({
                       type: 'POST',
                       url:'fac_consact_save/',
                       data:{consultancy_nature: consultancy_nature,consultancy_client: consultancy_client,consultancy_department: consultancy_department,consultancy_revenue:consultancy_revenue},              
                       success: function(data) 
                       {
                        Materialize.toast('Consultancy activity details successfully added', 5000);

                       },
                    error: function() 
                    { 
                          alert("Error"); 
                     }   
                 });
   });