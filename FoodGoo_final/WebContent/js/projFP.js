function validations(){
	var email=document.myform.email.value;
	var atpos=email.indexOf("@");
	var dotpos=email.lastIndexOf(".");

	if(!(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(email)) || email=="") {
    	alert("You have entered an invalid email address!");
    	return (false);
	}
	//else return true;
}