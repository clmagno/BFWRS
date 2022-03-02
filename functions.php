<?php

function check_login($conn)
{

	if(isset($_SESSION['username']))
	{

		$username = $_SESSION['username'];
		$query = "SELECT * from accounts where username = '$username' limit 1";

		$result = mysqli_query($conn,$query);
		if($result && mysqli_num_rows($result) > 0)
		{

			$user_data = mysqli_fetch_assoc($result);
			return $user_data;
            echo $user_data;
		}
		else{

		echo "invalid password!";
		}
	}


}
?>