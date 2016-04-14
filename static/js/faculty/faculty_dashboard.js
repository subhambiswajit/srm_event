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
                       url:'fac_consultancy_save/',
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


  $('#international_conference_submit').click(function(){
    var international_conference_title=$('#international_conference_title').val();
    var international_conference_author=$('#international_conference_author').val();
    var international_conference_name=$('#international_conference_name').val();
    var international_conference_journal_name=$('#international_conference_journal_name').val();
    var international_conference_date=$('#international_conference_date').val();
    var international_conference_place=$('#international_conference_place').val();
    var international_conference_published=$('#international_conference_published').val();
          $.ajax ({
                       type: 'POST',
                       url:'fac_int_conf_save/',
                       data:{international_conference_title: international_conference_title,international_conference_author: international_conference_author,international_conference_name :international_conference_name, international_conference_journal_name:international_conference_journal_name, international_conference_date: international_conference_date, international_conference_place: international_conference_place, international_conference_published: international_conference_published},              
                       success: function(data) 
                       {
                        Materialize.toast('International Conference details successfully added', 5000);

                       },
                    error: function() 
                    { 
                          alert("Error"); 
                     }   
                 });
   });