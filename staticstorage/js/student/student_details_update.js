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
    Materialize.toast('Fill up all the Mandatory fields!', 4000);
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
        Materialize.toast('Fill up all the Mandatory fields!', 4000);
      }
   // //form2 ends
});



  $('.recognition_update_button').click(function(){
    var recognition_recognitions=$('#recognitions').val();
    var recognitionid=$('#recognitionid').val();
    var recognition_year=$('#yr').val();
    if(recognition_recognitions.length !=0 && recognition_year.length !=0)
    {
          $.ajax ({
                       type: 'POST',
                       url:'candidate_nat_reg/',
                       data:{recognitionid: recognitionid, recognition_recognitions: recognition_recognitions,recognition_year: recognition_year},              
                       success: function(data) 
                       {
                        Materialize.toast('Recognition details successfully updated', 5000);

                       },
                    error: function() 
                    { 
                          alert("Error"); 
                     }   
                 });
   
}
else
{
   Materialize.toast('Fill up all the Mandatory fields!', 4000);
}
});


$('.initiatives_update_button').click(function(){
    var initiatives_univ=$('#univ').val();
    var initiativeid=$('#initiativeid').val();
    var initiatives_seminar=$('#seminar').val();
    var initiatives_place=$('#place').val();
    var initiatives_d=$('#d').val();

    if(initiatives_univ.length !=0 && initiatives_seminar.length !=0 && initiatives_place.length !=0 &&
      initiatives_d.length !=0)
    {
          $.ajax ({
                       type: 'POST',
                       url:'candidate_initiatives/',
                       data:{initiativeid: initiativeid, initiatives_univ: initiatives_univ, initiatives_seminar:  initiatives_seminar,initiatives_place: initiatives_place,initiatives_d: initiatives_d},              
                       success: function(data) 
                       {
                        Materialize.toast('initiatives details successfully updated', 5000);

                       },
                    error: function() 
                    { 
                          alert("Error"); 
                     }   
                 });
  
 }
 else
 {
  Materialize.toast('Fill up all the Mandatory fields!', 4000);
 }
 });


  $('.internship_update_button').click(function(){

    var internship_comp=$('#comp').val();
    var internshipid=$('#internshipid').val();
    var internship_sdate=$('#sdate').val();
    var internship_edate=$('#edate').val();
    var internship_stipend=$('#stipend').val();
    if(internship_comp.length !=0 && internship_sdate.length !=0 &&
       internship_edate.length !=0 && internship_stipend.length !=0)
    {
          $.ajax ({
                       type: 'POST',
                       url:'candidate_internship/',
                       data:{internshipid: internshipid, internship_comp: internship_comp,internship_sdate: internship_sdate,internship_edate: internship_edate,internship_stipend: internship_stipend},              
                       success: function(data) 
                       {
                        Materialize.toast('internship details successfully updated', 5000);

                       },
                    error: function() 
                    { 
                          alert("Error"); 
                     }   
                
   });
}
else
{
  Materialize.toast('Fill up all the Mandatory fields!', 4000);
}

 });


  $('.conferences_update_button').click(function(){
    var conferences_tt=$('#tt').val();
    var presentid=$('#presentid').val();
    var conferences_a=$('#a').val();
    var conferences_cname=$('#cname').val();
    var conferences_dd=$('#dd').val();
    var conferences_dr=$('#dr').val();
    var conferences_ins=$('#ins').val();
    var conferences_pl=$('#pl').val();
    var conferences_opt=$('#opt').val();
    if(conferences_tt.length !=0 && conferences_a.length !=0 && conferences_cname.length !=0 &&
      conferences_dd.length !=0 && conferences_dr.length !=0 && conferences_ins.length !=0 &&
      conferences_pl.length !=0 && conferences_opt.length !=0)
    {
          $.ajax ({
                       type: 'POST',
                       url:'candidate_paper_conference/',
                       data:{presentid:presentid, conferences_tt: conferences_tt,conferences_a:conferences_a,conferences_cname:conferences_cname,
                        conferences_dd: conferences_dd,conferences_dr: conferences_dr,conferences_ins: conferences_ins,
                         conferences_pl: conferences_pl,conferences_opt: conferences_opt},              
                       success: function(data) 
                       {
                        Materialize.toast('Paper conference details successfully updated', 5000);

                       },
                    error: function() 
                    { 
                          alert("Error"); 
                     }   
                
   });
 }
 else
 {
   Materialize.toast('Fill up all the Mandatory fields!', 4000);
 }
 });


 $('.journels_update_button').click(function(){

    var journels_title=$('#title').val();
    var publishid=$('#publishid').val();
    var journels_Fauthor=$('#Fauthor').val();
    var journels_oauthors=$('#oauthors').val();
    var journels_jname=$('#jname').val();
    var journels_dt=$('#dt').val();
    var journels_vol=$('#vol').val();
    var journels_ifactor=$('#ifactor').val();
    var journels_Citationindex=$('#Citationindex').val();
    var journels_Indexed=$('#Indexed').val();
    
    if(journels_title.length !=0 && journels_Fauthor.length !=0 && journels_oauthors.length !=0 &&
       journels_jname.length !=0 && journels_dt.length !=0 && journels_vol.length !=0 &&
       journels_ifactor.length !=0 && journels_Citationindex.length !=0 && journels_Indexed.length !=0)
    {
          $.ajax ({
                       type: 'POST',
                       url:'candidate_journals/',
                       data:{publishid: publishid,journels_title: journels_title,journels_Fauthor: journels_Fauthor,journels_oauthors: journels_oauthors,
                        journels_jname: journels_jname,journels_dt: journels_dt,journels_vol: journels_vol,
                        journels_ifactor: journels_ifactor,journels_Citationindex: journels_Citationindex,
                        journels_Indexed: journels_Indexed},              
                       success: function(data) 
                       {
                        Materialize.toast('Journel details successfully updated', 5000);

                       },
                    error: function() 
                    { 
                          alert("Error"); 
                     }   
                 
   });
 }
 else
 {
  Materialize.toast('Fill up all the Mandatory fields!', 4000);
 }
   // //form 6.1 ends
});

$('.soft_dev_update_button').click(function(){
    var devid=$('#devid').val();
    var activity_soft=$('#soft').val();
    var activity_mentor=$('#mentor').val();
    if(activity_soft.length !=0 && activity_mentor.length !=0)
    {
          $.ajax ({
                       type: 'POST',
                       url:'candidate_development/',
                       data:{devid: devid, Journel_soft: activity_soft,Journel_mentor: activity_mentor},              
                       success: function(data) 
                       {
                        Materialize.toast('Development work details successfully updated', 5000)

                       },
                    error: function() 
                    { 
                          alert("Error"); 
                     }   
                
   });
  }
  else
  {
    Materialize.toast('Fill up all the Mandatory fields!', 4000);
 }
  });