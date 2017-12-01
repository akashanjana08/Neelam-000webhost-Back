<?php

  

         $jsonString= file_get_contents('php://input');

         $data = json_decode($jsonString,true);
    
         $connection = new mysqli("mysql1.000webhost.com", "a1227065_tracker", "neelam1994", "a1227065_tracker") or die(mysqli_error());
         
         mysql_connect("mysql1.000webhost.com","a1227065_tracker","neelam1994");
 
         mysql_select_db("a1227065_tracker");
 
 	  
         
         foreach($data as $key=>$value)

       	 {
                
		
                $appid= $value['appid'];

                $dateTime= $value['dateTime'];

                $deviceID= $value['deviceId'];

                $speakUser= $value['speakUser'];

                $profileuri= $value['profileuri'];

                $profileId= $value['profileId'];

                $MobileNumber = $value['mobile'];

                $randnum  = rand(1000, 9999);
                
                $userID=  getUserId($randnum,$deviceID,$maxid);



                 $sqlqueryy = "SELECT * FROM SpeakRegistration WHERE userId = '".$profileId."'";
                 $resultss  = $connection ->query($sqlqueryy);


                  if ($resultss ->num_rows > 0) 
                  {
                        $sqli = "UPDATE SpeakRegistration  SET AppId='".$appid."' , dateTime = '".$dateTime."' , MobileNumber = '".$MobileNumber."' , profileImageUrl = '".$profileuri."'  , UserName = '".$speakUser."'  WHERE userId='".$profileId."'";
                        mysqli_query($connection , $sqli);
                        
                         //mysql_query("insert into OlaUser(userId,latitude,longitude,DateTime)

                         //values('$emailId','$latitude','$longitude','$d$datetime')") or die(mysql_error());
                            
                   }
                  else
                   {
                       mysql_query("insert into SpeakRegistration(DeviceId,AppId,dateTime,UserId,UserName,profileImageUrl)

                                     values('$deviceID','$appid','$dateTime','$profileId','$speakUser','$profileuri')") or die(mysql_error());
                   }
                
                  
		

                  echo  $userID;
                   

         }


           

         function getUserId($deviceId,$mobileNo,$maxid)
          {
             $firstPart =substr($deviceId, 3, 4);

             //$finalString = substr($name,0,2).$mobileNo[8].$firstPart.$mobileNo[0] ;
              $dev = $mobileNo[8].$mobileNo[2] ;
             $day = date("d"); 
             $month = date("m"); 

             $finalString = "GB".$day."".$month."".$dev;

             return $finalString;  

         }


        function sendNotificationId($registrationIDs,$title)
          {

             $random_collapse = rand(11, 100);

             $apiKey = "AIzaSyAAO4IxP1WohABi-7wkmdZLA8AhRRQZJtY";

            // Replace with the real client registration IDs
            //$registrationIDs = array("APA91bGfYuznOA-y36IGSFN_98n-ypQSkK-P9COu2wYKLMsxu8pnhKHE03cj-SKcfpO9LWC7aaIWeCtWRCxnj0sdpxi9PdxqxgxXGerT4iuWbiisv2YjRztBTSw6zkPWDLC2enGyvxFVSACuSWl-nnO1eXqSEOHunw");

            // Message to be sent
            $message = "Hello World";

            // Set POST variables
            $url = 'https://android.googleapis.com/gcm/send';

            $fields = array(
                'registration_ids' => $registrationIDs,
                'data' => array( "message" => $message , "Title" => $title),
                'collapse_key'      => "{$random_collapse}", 
                "time_to_live"      =>  25000,
                "delay_while_idle" => true
             );
           $headers = array(
               'Authorization: key=' . $apiKey,
               'Content-Type: application/json'
             );

          // Open connection
            $ch = curl_init();

         // Set the URL, number of POST vars, POST data
           curl_setopt( $ch, CURLOPT_URL, $url);
           curl_setopt( $ch, CURLOPT_POST, true);
           curl_setopt( $ch, CURLOPT_HTTPHEADER, $headers);
           curl_setopt( $ch, CURLOPT_RETURNTRANSFER, true);
         //curl_setopt( $ch, CURLOPT_POSTFIELDS, json_encode( $fields));

           curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
         // curl_setopt($ch, CURLOPT_POST, true);
         // curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
            curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode( $fields));

         // Execute post
            $result = curl_exec($ch);

         // Close connection
           curl_close($ch);
         

         }
         
 

  
      
 exit();
 ?>	