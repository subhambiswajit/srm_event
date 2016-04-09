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
                        Materialize.toast('Activity details succesfully added', 5000);

                       },
                    error: function() 
                    { 
                          alert("Error"); 
                     }   
                 });
   });

   // //formtwo
        $('.performance_button').click(function(){
    alert('clicked');
    var performance_exam=$('#nameofexam').val();
    var performance_pass=$('#yearofpassing').val();
    var performance_marks=$('#marks').val();
    var performance_year=$('#y').val();
          $.ajax ({
                       type: 'POST',
                       url:'candidate_performance/',
                       data:{performance_exam: performance_exam,performance_pass: performance_pass,performance_marks: performance_marks,performance_year: performance_year},              
                       success: function(data) 
                       {
                        Materialize.toast('Performance details succesfully added', 5000);
                       },
                    error: function() 
                    { 
                          alert("Error"); 
                     }   
                 });
   });
   // //form2 ends

   //   //form3
         $('.recognition_button').click(function(){
    alert('clicked');
    var recognition_recognitions=$('#recognitions').val();
    var recognition_year=$('#yr').val();
          $.ajax ({
                       type: 'POST',
                       url:'candidate_nat_reg/',
                       data:{recognition_recognitions: recognition_recognitions,recognition_year: recognition_year},              
                       success: function(data) 
                       {
                        Materialize.toast('Recognition details succesfully added', 5000);

                       },
                    error: function() 
                    { 
                          alert("Error"); 
                     }   
                 });
   });


   // //form3 ends

   // //form 4

    $('.initiatives_button').click(function(){
    alert('clicked');
    var initiatives_univ=$('#univ').val();
    var initiatives_seminar=$('#seminar').val();
    var initiatives_event=$('#event').val();
    var initiatives_place=$('#place').val();
    var initiatives_d=$('#d').val();
          $.ajax ({
                       type: 'POST',
                       url:'candidate_initiatives/',
                       data:{initiatives_univ: initiatives_univ, initiatives_seminar:  initiatives_seminar,initiatives_event: initiatives_event,initiatives_place: initiatives_place,initiatives_d: initiatives_d},              
                       success: function(data) 
                       {
                        Materialize.toast('initiatives details succesfully added', 5000);

                       },
                    error: function() 
                    { 
                          alert("Error"); 
                     }   
                 });
   });

   // //form 4 ends

   // //form 5

   //  $('.internship_button').click(function(){
   //  alert('clicked');
   //  var internship_comp=$('#comp').val();
   //  var internship_sdate=$('#sdate').val();
   //  var internship_edate=$('#edate').val();
   //  var internship_stipend=$('#stipend').val();
   //        $.ajax ({
   //                     type: 'POST',
   //                     url:'',
   //                     data:{internship_comp: internship_comp,internship_sdate: internship_sdate,internship_edate: internship_edate,internship_stipend: internship_stipend},              
   //                     success: function(data) 
   //                     {
   //                      Materialize.toast('internship details succesfully added', 5000)

   //                     },
   //                  error: function() 
   //                  { 
   //                        alert("Error"); 
   //                   }   
   //               });
   // });



   // //form 5 ends


   // //form 6.1
   //  $('.journels_button').click(function(){
   //  alert('clicked');
   //  var journels_title=$('#title').val();
   //  var journels_Fauthor=$('#Fauthor').val();
   //  var journels_oauthors=$('#oauthors').val();
   //  var journels_jname=$('#jname').val();
   //  var journels_dt=$('#dt').val();
   //  var journels_vol=$('#vol').val();
   //  var journels_ifactor=$('#ifactor').val();
   //  var journels_Citationindex=$('#Citationindex').val();
   //  var journels_Indexed=$('#Indexed').val();

   //        $.ajax ({
   //                     type: 'POST',
   //                     url:'',
   //                     data:{journels_title: journels_title,journels_Fauthor: journels_Fauthor,journels_oauthors: journels_oauthors
   //                      journels_jname: journels_jname,journels_dt: journels_dt,journels_vol: journels_vol,
   //                      journels_ifactor: journels_ifactor,journels_Citationindex: journels_Citationindex,
   //                      journels_Indexed: journels_Indexed},              
   //                     success: function(data) 
   //                     {
   //                      Materialize.toast('Journel details succesfully added', 5000)

   //                     },
   //                  error: function() 
   //                  { 
   //                        alert("Error"); 
   //                   }   
   //               });
   // });
   // //form 6.1 ends

   // //form 6.2

   //  $('.conferences_button').click(function(){
   //  alert('clicked');
   //  var conferences_tt=$('#tt').val();
   //  var conferences_a=$('#a').val();
   //  var conferences_cname=$('#cname').val();
   //  var conferences_dd=$('#dd').val();
   //  var conferences_dr=$('#dr').val();
   //  var conferences_ins=$('#ins').val();
   //  var conferences_pl=$('#pl').val();
   //  var conferences_opt=$('#opt').val();

   //        $.ajax ({
   //                     type: 'POST',
   //                     url:'',
   //                     data:{conferences_tt: conferences_tt,conferences_a:conferences_a,conferences_cname:conferences_cname,
   //                      conferences_dd: conferences_dd,conferences_dr: conferences_dr,conferences_ins: conferences_ins,
   //                       conferences_pl: conferences_pl,conferences_opt: conferences_opt},              
   //                     success: function(data) 
   //                     {
   //                      Materialize.toast('Journel details succesfully added', 5000)

   //                     },
   //                  error: function() 
   //                  { 
   //                        alert("Error"); 
   //                   }   
   //               });
   // });

   // //form 6.2 ends

   // //form 6.3
   //  $('.Journel_button').click(function(){
   //  alert('clicked');
   //  var activity_soft=$('#soft').val();
   //  var activity_mentor=$('#mentor').val();
    
   //        $.ajax ({
   //                     type: 'POST',
   //                     url:'',
   //                     data:{Journel_soft: Journel_soft,Journel_mentor: Journel_mentor},              
   //                     success: function(data) 
   //                     {
   //                      Materialize.toast('Journel details succesfully added', 5000)

   //                     },
   //                  error: function() 
   //                  { 
   //                        alert("Error"); 
   //                   }   
   //               });
   // });

   //form 6.3 ends
