 <?php 

$pName=$pPrice =$pQty ="";
 if(isset($_POST["proceed"]) || isset($_POST["product_id"]))   {

  include ('getProduct.php');

   		// $pID= $_POST['qty'];
        $GLOBALS['pName'] = $pName;
       $GLOBALS['pPrice']= $pPrice;
       $GLOBALS['pPrice']= $pQty ;
        $pSubtotal = $pQty * $pPrice;
        $pCategory = $_row['description'];
        $pRemarks = $_POST['remarks'];
        $aId = $_SESSION["id"];

       
$ins_sql = "INSERT INTO cart(productID, productName, productPrice, productQty, productSub, productCategory, productRemarks, accountID) VALUES ('$pID','$pName','$pPrice','$pQty','$pSubtotal','$pCategory','$pRemarks','$aID')";
     
    
  if(mysqli_query($link, $ins_sql)){
            
                
                // Function definition
                function function_alert($message) {
                
                // Display the alert box 
                    echo "<script>alert('$message');</script>";
                     echo $ins_sql;
                }
                // header("Location: shop.php");
                exit();
                // Function call
                function_alert("Item Successfully added!");
                 echo $ins_sql;

                // link($home);
           
        } 
        else{
            echo "ERROR: Hush! Sorry $sql. " 
                . mysqli_error($link);
        } }
     

?>