<?php
error_reporting(0);
include('includes/config.php');                                  
?>
<!DOCTYPE html>
<html lang="en">

<head>
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>BloodBank & Donor Management System</title>
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="css/modern-business.css" rel="stylesheet">
    <style>
    .navbar-toggler {
        z-index: 1;
    }
    
    @media (max-width: 576px) {
        nav > .container {
            width: 100%;
        }
    }
    .carousel-item.active,
    .carousel-item-next,
    .carousel-item-prev {
        display: block;
    }

.custom-panel {
    border-left: 6px solid lightblue; /* Add a left border */
    background-color: pink; 
    padding: 15px; /* Add some padding */
    margin-bottom: 15px; /* Add margin at the bottom */

}

.custom-panel p {
    font-size: 24px; /* Increase font size */
    margin-top: 5px; /* Add some space between icon and text */
color:red;
}
    </style>

</head>

<body>

    <!-- Navigation -->
<?php include('includes/header.php');?>
<?php include('includes/slider.php');?>
   

    <!-- Page Content -->
    <div class="container">

<center>

        <h1 class="my-4">Welcome to Online BloodBank & Donor Management System</h1><br>
</center>

<div class="custom-panel">
    <i class="fa-solid fa-hand-holding-droplet fa-3x"></i><center>
    <p>"Your little effort can give others second chance to live life."<br>
Donate blood and save lives.</p></center>
</div><br>
<br><center>
<!-- Marketing Icons Section -->
        <div class="row">
            <div class="col-lg-4 mb-4">
                <div class="card">
                 <center>
   <h4 class="card-header" style="background-color: #d9534f;">The need for blood</h4></center>

                   
                        <p class="card-text" style="padding-left:2%; font-size: 20px;">Blood is crucial for medical emergencies, surgeries, and treating various conditions like cancer and anemia. Donations are essential to ensure an adequate supply for patients in need, saving countless lives every day. </p>
                </div>
            </div>
            <div class="col-lg-4 mb-4">
                <div class="card">
                 <center>
   <h4 class="card-header" style="background-color: #d9534f;">Blood Tips</h4></center>

                   
                        <p class="card-text" style="padding-left: 2%; font-size: 20px;">
    Stay hydrated, eat well, and get plenty of rest before donating blood to ensure a smooth experience. Communicate any concerns with staff, follow post-donation instructions, and consider becoming a regular donor to support lifesaving efforts in your community.
</p>

                </div>
            </div>
            <div class="col-lg-4 mb-4">
              <center>
  <div class="card">
                    <h4 class="card-header" style="background-color: #d9534f;">Who you could Help</h4></center>

                   
                        <p class="card-text" style="padding-left:2%; font-size: 20px;">By donating blood, you could help patients undergoing surgeries, individuals with cancer, accident victims, and those with blood disorders like anemia. Your donation could be the lifeline they desperately need for survival and recovery. </p>
                </div>
            </div>
        </div><br>
        <!-- /.row --></center>

        <!-- Portfolio Section -->
      <center>  <h2 style="color: #8b0000;">Some of the Donors</h2>
</center>

        <div class="row">
                   <?php 
$status=1;
$sql = "SELECT * from tblblooddonars where status=:status order by rand() limit 6";
$query = $dbh -> prepare($sql);
$query->bindParam(':status',$status,PDO::PARAM_STR);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
$cnt=1;
if($query->rowCount() > 0)
{
foreach($results as $result)
{ ?>

            <div class="col-lg-4 col-sm-2 portfolio-item">
                <div class="card h-100" style="border: 1px solid pink;">
             <center>       <a href="#"><img class="card-img-top img-fluid" src="https://www.shutterstock.com/image-vector/blood-drop-plus-heart-shape-600nw-2238094877.jpg" alt="" style="max-height: 200px; max-width: 200px;" ></a></center>
                    <div class="card-block">
                        <h4 class="card-title"><a href="#"><?php echo htmlentities($result->FullName);?></a></h4>
<p class="card-text"><b>  Gender :</b> <?php echo htmlentities($result->Gender);?></p>
<p class="card-text"><b>Blood Group :</b> <?php echo htmlentities($result->BloodGroup);?></p>

                    </div>
                </div>
            </div>

            <?php }} ?>
          
 



        </div>
        <!-- /.row -->
<br>


 <center>  <h2 style="color: #8b0000;">Some of the Blood Banks</h2>
</center>

        <div class="row">
                   <?php 
$status=1;
$sql = "SELECT * from blood_banks where status=:status order by rand() limit 6";
$query = $dbh -> prepare($sql);
$query->bindParam(':status',$status,PDO::PARAM_STR);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
$cnt=1;
if($query->rowCount() > 0)
{
foreach($results as $result)
{ ?>

            <div class="col-lg-4 col-sm-2 portfolio-item">
                <div class="card h-100" style="border: 1px solid pink;">
             <center>       <a href="#"><img class="card-img-top img-fluid" src="https://cdn.icon-icons.com/icons2/1465/PNG/512/588hospital_100778.png" alt="" style="max-height: 200px; max-width: 200px;" ></a></center>
                    <div class="card-block">
                        <h4 class="card-title"><a href="#"><?php echo htmlentities($result->blood_bank_name);?></a></h4>
<p class="card-text"><b>  Contact Number :</b> <?php echo htmlentities($result->contact_no);?></p>
<p class="card-text"><b>Blood Groups :</b> <?php echo htmlentities($result->Availability);?></p>

                    </div>
                </div>
            </div>

            <?php }} ?>
          
 



        </div>
        <!-- /.row -->
<br>


        <!-- Features Section -->
        <div class="row">
            <div class="col-lg-6">
              <center>  <h2 style="color: #8b0000;">BLOOD GROUPS</h2>
          <p style="font-size: 20px;">  Blood group of any human being will mainly fall in any one of the following groups.</p>
                <center>
                
   <p style="font-size: 20px;">             
A positive or A negative<br>
B positive or B negative<br>
O positive or O negative<br>
AB positive or AB negative.<br>
 </p></center>               
                <p style="font-size: 20px;">A healthy diet helps ensure a successful blood donation, and also makes you feel better! Check out the following recommended foods to eat prior to your donation.</p>
            </div>
            <div class="col-lg-6">
                <img class="img-fluid rounded" src="https://kdahweb-static.kokilabenhospital.com/kdah-2019/tips/5941351e850a3blood_facts_.png" alt="" style="max-height: 500px; max-width: 500px;">
            </div>
        </div>
        <!-- /.row -->

        <hr><br>
<center>
        <!-- Call to Action Section -->
        <div class="row mb-4">
            <div class="col-md-8">
            <h4 style="color: #8b0000;">UNIVERSAL DONORS AND RECIPIENTS</h4>
                <p style="font-size: 20px;">
The most common blood type is O, followed by type A.

Type O individuals are often called "universal donors" since their blood can be transfused into persons with any blood type. Those with type AB blood are called "universal recipients" because they can receive blood of any type.</p><br>
            </div>
            
        </div>
</center>
    </div>
<center>
<div class="col-md-4">
    <a class="btn btn-lg btn-success btn-block" href="eligibility.php">Become a Donor&nbsp;&nbsp;&nbsp;<img src="https://www.boothbayregister.com/sites/default/files/2015/03/field/image/donate_blood%20small.png" width="100" height="100"></a>
</div>

</center>

    <!-- /.container -->
<br><br>

    <!-- Footer -->
  <?php include('includes/footer.php');?>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/tether/tether.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
 

</body>

</html>
