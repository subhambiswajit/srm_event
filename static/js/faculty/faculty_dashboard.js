
$('.datepicker').pickadate({
    selectMonths: false, // Creates a dropdown to control month
    selectYears: 15,
    format: 'yyyy-mm-dd' // Creates a dropdown of 15 years to control year
  });

 $('#fac_award_submit').click(function(){

  $('.preloader-wrapper').css("display","block");
  $('.body_award').css("display","none");
   	var award_fac_name=$('#awards_faculty_name').val();
   	var award_fac_desc=$('#awards_description').val();
    if(award_fac_name.length !=0 && award_fac_desc.length !=0)
    {
          $.ajax ({
                       type: 'POST',
                       url:'fac_award_save/',
                       data:{award_fac_name: award_fac_name,award_fac_desc: award_fac_desc},              
                       success: function(data) 
                       {
                         $('.preloader-wrapper').css("display","none");
                         $('.body_award').css("display","block");
                         Materialize.toast('Award details successfully added', 5000);  
                       },
                    error: function() 
                    { 
                          alert("Error"); 
                     }   
                 });

 }
 else
 {
  $('.preloader-wrapper').css("display","none");
  $('.body_award').css("display","block");
  Materialize.toast('Fill up all the Mandatory fields!', 4000);
 }

});

  $('#consultancy_submit').click(function(){
     $('.preloader-wrapper').css("display","block");
     $('.body_consultancy').css("display","none");
    var consultancy_nature=$('#consultancy_nature').val();
    var consultancy_client=$('#consultancy_client').val();
    var consultancy_department=$('#consultancy_department').val();
    var consultancy_revenue=$('#consultancy_revenue').val();

    if(consultancy_nature.length !=0 && consultancy_client.length !=0 &&
      consultancy_department.length !=0 && consultancy_revenue.length !=0)
    {
          $.ajax ({
                       type: 'POST',
                       url:'fac_consultancy_save/',
                       data:{consultancy_nature: consultancy_nature,consultancy_client: consultancy_client,consultancy_department: consultancy_department,consultancy_revenue:consultancy_revenue},              
                       success: function(data) 
                       {
                        $('.preloader-wrapper').css("display","none");
                        $('.body_consultancy').css("display","block");
                        Materialize.toast('Consultancy activity details successfully added', 5000);

                       },
                    error: function() 
                    {  $('.preloader-wrapper').css("display","none");
                        $('.body_consultancy').css("display","block");
                          alert("Error"); 
                     }   
                 });
   
}
else
{
   $('.preloader-wrapper').css("display","none");
    $('.body_consultancy').css("display","block");
  Materialize.toast('Fill up all the Mandatory fields!', 4000);
}
});

  $('#international_conference_submit').click(function(){
     $('.preloader-wrapper').css("display","block");
  $('.body_int_conf').css("display","none");
    var international_conference_title=$('#international_conference_title').val();
    var international_conference_author=$('#international_conference_author').val();
    var international_conference_name=$('#international_conference_name').val();
    var international_conference_journal_name=$('#international_conference_journal_name').val();
    var international_conference_date=$('#international_conference_date').val();
    var international_conference_place=$('#international_conference_place').val();
    var international_conference_published=$('#international_conference_published').val();

    if(international_conference_title.length !=0 && international_conference_author.length !=0 && international_conference_name.length !=0 &&
      international_conference_journal_name.length !=0 && international_conference_date.length !=0 && international_conference_place.length !=0 &&
       international_conference_published.length !=0)
    {
          $.ajax ({
                       type: 'POST',
                       url:'fac_int_conf_save/',
                       data:{international_conference_title: international_conference_title,international_conference_author: international_conference_author,international_conference_name :international_conference_name, international_conference_journal_name:international_conference_journal_name, international_conference_date: international_conference_date, international_conference_place: international_conference_place, international_conference_published: international_conference_published},              
                       success: function(data) 
                       {
                         $('.preloader-wrapper').css("display","none");
                         $('.body_int_conf').css("display","block");
                        Materialize.toast('International Conference details successfully added', 5000);

                       },
                    error: function() 
                    { 
                           $('.preloader-wrapper').css("display","none");
                         $('.body_int_conf').css("display","block");
                          alert("Error"); 
                     }   
                 });
   
}
    else
  {
       $('.preloader-wrapper').css("display","none");
        $('.body_int_conf').css("display","block");
      Materialize.toast('Fill up all the Mandatory fields!', 4000);
  }

  });


  $('#fac_international_journal').click(function(){
     $('.preloader-wrapper').css("display","block");
     $('.body_int_jour').css("display","none");

    var international_journal_title=$('#international_journal_title').val();
    var international_journal_author=$('#international_journal_author').val();
    var international_journal_oauthor=$('#international_journal_oauthor').val();
    var international_journal_journal_name=$('#international_journal_journal_name').val();
    var international_journal_date=$('#international_journal_date').val();
    var international_journal_volume=$('#international_journal_volume').val();
    var international_journal_factor=$('#international_journal_factor').val();
    var international_journal_citation=$('#international_journal_citation').val();
    var international_journal_indexed=$('#international_journal_indexed').val();


    if(international_journal_title.length !=0 && international_journal_author.length !=0 &&
       international_journal_oauthor.length !=0 &&  international_journal_journal_name.length !=0 &&
       international_journal_date.length !=0 && international_journal_volume.length !=0 &&
       international_journal_factor.length !=0 && international_journal_citation.length !=0 &&
       international_journal_indexed.length !=0)
    {
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
                         $('.preloader-wrapper').css("display","none");
                        $('.body_int_jour').css("display","block");
                        Materialize.toast('International Journal details successfully added', 5000);

                       },
                    error: function() 
                    { 
                          $('.preloader-wrapper').css("display","none");
                        $('.body_int_jour').css("display","block");
                          alert("Error"); 
                     }   
                 });
 
 }
 else
 {
  $('.preloader-wrapper').css("display","none");
   $('.body_int_jour').css("display","block");
   Materialize.toast('Fill up all the Mandatory fields!', 4000);
 }
   });

 $('#fac_nat_conference_submit').click(function(){

   $('.preloader-wrapper').css("display","block");
   $('.body_nat_conf').css("display","none");
    var national_conference_title=$('#national_conference_title').val();
    var national_conference_author=$('#national_conference_author').val();
    var national_conference_name=$('#national_conference_name').val();
    var national_conference_journal=$('#national_conference_journal').val();
    var national_conference_date=$('#national_conference_date').val();
    var national_conference_place=$('#national_conference_place').val();
    var national_conference_status=$('#national_conference_status').val();

    if(national_conference_title.length !=0 && national_conference_author.length !=0 &&
       national_conference_name.length !=0 && national_conference_journal.length !=0 &&
       national_conference_date.length !=0 && national_conference_place.length !=0 &&
       national_conference_status.length !=0)
    {
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
                        $('.preloader-wrapper').css("display","none");
                        $('.body_nat_conf').css("display","block");
                        Materialize.toast('National Conference details successfully added', 5000);

                       },
                    error: function() 
                    { 
                           $('.preloader-wrapper').css("display","none");
                        $('.body_nat_conf').css("display","block");
                          alert("Error"); 
                     }   
                 
   });
}
else
{
   $('.preloader-wrapper').css("display","none");
   $('.body_nat_conf').css("display","block");
   Materialize.toast('Fill up all the Mandatory fields!', 4000);
}

});

 $('#fac_national_journal_submit').click(function(){

     $('.preloader-wrapper').css("display","block");
     $('.body_nat_jour').css("display","none");
    var national_journal_title =$('#national_journal_title').val();
    var national_journal_author =$('#national_journal_author').val();
    var national_journal_oauthor =$('#national_journal_oauthor').val();
    var national_journal_name =$('#national_journal_name').val();
    var national_journal_date =$('#national_journal_date').val();
    var national_journal_volume =$('#national_journal_volume').val();
    var national_journal_factor =$('#national_journal_factor').val();
    var national_journal_citation =$('#national_journal_citation').val();
    var national_journal_indexed =$('#national_journal_indexed').val();
    if(national_journal_title.length!=0 && national_journal_author.length!=0 &&
       national_journal_oauthor.length!=0 && national_journal_name.length!=0 &&
       national_journal_date.length!=0 && national_journal_volume.length!=0 &&
       national_journal_factor.length!=0 && national_journal_citation.length!=0 &&
       national_journal_indexed.length!=0)
    {
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
<<<<<<< HEAD
                        
                        $('.preloader-wrapper').css("display","none");
                        $('.body_nat_jour').css("display","block");
                        Materialize.toast('Award details successfully added', 5000);
=======
                        Materialize.toast('National journal details successfully added', 5000);
>>>>>>> ca8902d1b09856a352787e46dc8a5a3b9b03190f


                       },
                    error: function() 
                    { 
                           $('.preloader-wrapper').css("display","none");
                        $('.body_nat_jour').css("display","block");
                          alert("Error"); 
                     }   
                 
   });
}

else
{
   $('.preloader-wrapper').css("display","none");
     $('.body_nat_jour').css("display","block");
  Materialize.toast('Fill up all the Mandatory fields!', 4000);
}

});


$('#fac_publication_submit').click(function(){

   $('.preloader-wrapper').css("display","block");
   $('.body_pub').css("display","none");
    var manual_title =$('#manual_title').val();
    var manual_author =$('#manual_author').val();
    var manual_publishers =$('#manual_publishers').val();
    var manual_first_edition =$('#manual_first_edition').val();
    var manual_other_edition =$('#manual_other_edition').val();
    var manual =$('#manual').val();

    if( manual_title.length !=0 && manual_author.length !=0 &&
        manual_publishers.length !=0 && manual_first_edition.length !=0 &&
        manual_other_edition.length !=0 && manual.length !=0)
    {
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
                        $('.preloader-wrapper').css("display","none");
                        $('.body_pub').css("display","block");
                        Materialize.toast('Publication Details successfully added', 5000);

                       },
                    error: function() 
                    { 
                           $('.preloader-wrapper').css("display","none");
                        $('.body_pub').css("display","block");
                          alert("Error"); 
                     }   
                 });
  
}
else
{
    $('.preloader-wrapper').css("display","none");
      $('.body_pub').css("display","block");
  Materialize.toast('Fill up all the Mandatory fields!', 4000);
}

 });

$('#fac_seminar_submit').click(function(){

   $('.preloader-wrapper').css("display","block");
   $('.body_seminar').css("display","none");
    var seminars_conference_faculty =$('#seminars_conference_faculty').val();
    var seminars_conference_place =$('#seminars_conference_place').val();
    var seminars_conference_date =$('#seminars_conference_date').val();
    var seminars_conference_nature_participation =$('#seminars_conference_nature_participation').val();

    if(seminars_conference_faculty.length !=0 && seminars_conference_place.length !=0 &&
       seminars_conference_date.length !=0 && seminars_conference_nature_participation.length !=0)
    {
          $.ajax ({
                       type: 'POST',
                       url:'fac_seminar_save/',
                       data:{seminars_conference_faculty:seminars_conference_faculty,
                        seminars_conference_place: seminars_conference_place,
                        seminars_conference_date: seminars_conference_date,
                        seminars_conference_nature_participation : seminars_conference_nature_participation
                      },              
                       success: function(data) 
                       {
                        $('.preloader-wrapper').css("display","none");
                        $('.body_seminar').css("display","block");
                        Materialize.toast('Seminar Details successfully added', 5000);

                       },
                    error: function() 
                    { 
                       $('.preloader-wrapper').css("display","none");
                        $('.body_seminar').css("display","block");
                          alert("Error"); 
                     }   
                 
   });
}
else
{
   $('.preloader-wrapper').css("display","none");
 $('.body_seminar').css("display","block");
  Materialize.toast('Fill up all the Mandatory fields!', 4000);
}

});
$('#fac_software_submit').click(function(){
   $('.preloader-wrapper').css("display","block");
   $('.body_software').css("display","none");
    var software_project_name =$('#software_project_name').val();
    var software_student =$('#software_student').val();
    var software_staff =$('#software_staff').val();
    if(software_project_name.length!=0 && software_student.length!=0 && software_staff.length!=0)
    {
          $.ajax ({
                       type: 'POST',
                       url:'fac_soft_dev_save/',
                       data:{software_project_name:software_project_name,
                        software_student: software_student,
                        software_staff:software_staff
                      },              
                       success: function(data) 
                       {
                         $('.preloader-wrapper').css("display","none");
                         $('.body_software').css("display","block");
                        Materialize.toast('Software Development Details successfully added', 5000);

                       },
                    error: function() 
                    { 
                      $('.preloader-wrapper').css("display","none");
                         $('.body_software').css("display","block");
                          alert("Error"); 
                     }   
                 });
   
}
else
{
  $('.preloader-wrapper').css("display","none");
   $('.body_software').css("display","block");
  Materialize.toast('Fill up all the Mandatory fields!', 4000);
}
});