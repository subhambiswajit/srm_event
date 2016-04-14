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


  $('#fac_international_journal').click(function(){
    var international_journal_title=$('#international_journal_title').val();
    var international_journal_author=$('#international_journal_author').val();
    var international_journal_oauthor=$('#international_journal_oauthor').val();
    var international_journal_journal_name=$('#international_journal_journal_name').val();
    var international_journal_date=$('#international_journal_date').val();
    var international_journal_volume=$('#international_journal_volume').val();
    var international_journal_factor=$('#international_journal_factor').val();
    var international_journal_citation=$('#international_journal_citation').val();
    var international_journal_indexed=$('#international_journal_indexed').val();
          $.ajax ({
                       type: 'POST',
                       url:'fac_intjour_save/',
                       data:{international_journal_title: international_journal_title,
                        international_journal_author: international_journal_author,
                        international_journal_oauthor:international_journal_oauthor,
                        international_journal_journal_name: international_journal_journal_name,
                        international_journal_date :international_journal_date,
                        international_journal_volume : international_journal_volume,
                        international_journal_factor: international_journal_factor,
                        international_journal_citation: international_journal_citation,
                        international_journal_indexed: international_journal_indexed
                      },              
                       success: function(data) 
                       {
                        Materialize.toast('International Journal details successfully added', 5000);

                       },
                    error: function() 
                    { 
                          alert("Error"); 
                     }   
                 });
   });


 $('#fac_nat_conference_submit').click(function(){
    var national_conference_title=$('#national_conference_title').val();
    var national_conference_author=$('#national_conference_author').val();
    var national_conference_name=$('#national_conference_name').val();
    var national_conference_journal=$('#national_conference_journal').val();
    var national_conference_date=$('#national_conference_date').val();
    var national_conference_place=$('#national_conference_place').val();
    var national_conference_status=$('#national_conference_status').val();
    alert(national_conference_status);
          $.ajax ({
                       type: 'POST',
                       url:'fac_natconf_save/',
                       data:{national_conference_title: national_conference_title,
                        national_conference_author: national_conference_author,
                        national_conference_name: national_conference_name,
                        national_conference_journal: national_conference_journal,
                        national_conference_date: national_conference_date,
                        national_conference_place: national_conference_place,
                        national_conference_status: national_conference_status
                         },              
                       success: function(data) 
                       {
                        Materialize.toast('National Conference details successfully added', 5000);

                       },
                    error: function() 
                    { 
                          alert("Error"); 
                     }   
                 });
   });


 $('#fac_national_journal_submit').click(function(){
    var national_journal_title =$('#national_journal_title').val();
    var national_journal_author =$('#national_journal_author').val();
    var national_journal_oauthor =$('#national_journal_oauthor').val();
    var national_journal_name =$('#national_journal_name').val();
    var national_journal_date =$('#national_journal_date').val();
    var national_journal_volume =$('#national_journal_volume').val();
    var national_journal_factor =$('#national_journal_factor').val();
    var national_journal_citation =$('#national_journal_citation').val();
    var national_journal_indexed =$('#national_journal_indexed').val();
          $.ajax ({
                       type: 'POST',
                       url:'fac_natjour_save/',
                       data:{national_journal_title: national_journal_title,
                        national_journal_author: national_journal_author,
                        national_journal_oauthor: national_journal_oauthor,
                        national_journal_name: national_journal_name,
                        national_journal_date: national_journal_date,
                        national_journal_volume: national_journal_volume,
                        national_journal_factor: national_journal_factor,
                        national_journal_citation: national_journal_citation,
                        national_journal_indexed: national_journal_indexed
                      },              
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


$('#fac_publication_submit').click(function(){
    var manual_title =$('#manual_title').val();
    var manual_author =$('#manual_author').val();
    var manual_publishers =$('#manual_publishers').val();
    var manual_first_edition =$('#manual_first_edition').val();
    var manual_other_edition =$('#manual_other_edition').val();
    var manual =$('#manual').val();
          $.ajax ({
                       type: 'POST',
                       url:'fac_pub_save/',
                       data:{manual_title: manual_title,
                        manual_author: manual_author,
                        manual_publishers: manual_publishers,
                        manual_first_edition :manual_first_edition,
                        manual_other_edition: manual_other_edition,
                        manual: manual
                        
                      },              
                       success: function(data) 
                       {
                        Materialize.toast('Publication Details successfully added', 5000);

                       },
                    error: function() 
                    { 
                          alert("Error"); 
                     }   
                 });
   });
