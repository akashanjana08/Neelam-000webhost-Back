<?php
  
   $file_path = "uploads/";


    $filename= $_FILES['uploaded_file']['name'];

    $pieces = explode("ccccc", $filename);


     
    $file_path = $file_path . basename( $pieces[0]);
    if(move_uploaded_file($_FILES['uploaded_file']['tmp_name'], $file_path)) {
        echo "success";
    } else{
        echo "fail";
    }

       
         $connection = new mysqli("mysql1.000webhost.com", "a1227065_tracker", "neelam1994", "a1227065_tracker") or die(mysqli_error());
         
         mysql_connect("mysql1.000webhost.com","a1227065_tracker","neelam1994");
 
         mysql_select_db("a1227065_tracker");


                  $infoID    =  $pieces[1];

                
                  $mediaName =  $file_path;
                  
                
                  $gcmidr=mysql_query("SELECT max(AutoId) as AutoId FROM MediaInfo") or die(mysql_error());

                  while($datar=mysql_fetch_array($gcmidr))
                  {
                     $maxid =$datar['AutoId'];
                  }


                  $mediaID=  getUserId($maxid);
                

		
                  mysql_query("insert into MediaInfo(InfoId,MediaId,MediaName)

                                 values('$infoID','$mediaID','$mediaName')") or die(mysql_error());




             function getUserId($maxid)
              {
               
                $day = date("d"); 
                $month = date("m"); 

                $finalString = "MI".$day."".$month."".$maxid;

                return $finalString;  

             }





 ?>