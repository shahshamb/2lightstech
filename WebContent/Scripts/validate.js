function CheckForm() 
{ 		
//		document.frmEnquiry.hdnreg.value =""
	//	document.frmEnquiry.mytomail.value="swiftbgl@yahoo.com" //document.getElementById("tomail").innerHTML
		//document.frmEnquiry.mytomail.value="My"
		if(document.frmEnquiry.txtName.value=="")
		{
				document.getElementById("error").innerHTML="Please Enter Your Name"
				document.frmEnquiry.txtName.focus();
				return false;
		}		
		if(document.frmEnquiry.txtPhone.value=="")
		{
				document.getElementById("error").innerHTML="Please Enter Telephone No"
				document.frmEnquiry.txtPhone.focus();
				return false;
		}
		if(document.frmEnquiry.txtEmail.value<=0)
		{
				document.getElementById("error").innerHTML="Please Enter Email Id"
				document.frmEnquiry.txtEmail.focus();
				return false;
		}
		//if((document.frmEnquiry.txtPhone.value=="")|| (isNaN(document.frmEnquiry.txtPhone.value)))
		//{
		//		document.getElementById("error").innerHTML="Please Enter Your Phone Number"
		//		document.frmEnquiry.txtPhone.focus();
		//		return false;
		//}
		if((document.frmEnquiry.txtMobile.value=="") || (isNaN(document.frmEnquiry.txtMobile.value)))
		{
				document.getElementById("error").innerHTML="Please Enter Your Mobile Number"
				document.frmEnquiry.txtMobile.focus();
				return false;
		}
		
		if((document.frmEnquiry.txtEmail.value=="") ||  (! isValidEmail(document.frmEnquiry.txtEmail.value))) 
		{
				document.getElementById("error").innerHTML="Please Enter Your Email Id"
				document.frmEnquiry.txtEmail.focus();
				return false;
		}
		//if(document.frmEnquiry.txtComments.value=="")
		//{
		//		document.getElementById("error").innerHTML="Please Enter Your Feedback"
		//		document.frmEnquiry.txtComments.focus();
		//		return false;
		//}
	 
	return true;
}



 
function isValidEmail(email, required) {
    if (required==undefined) {   // if not specified, assume it's required
        required=true;
    }
    if (email==null) {
        if (required) {
            return false;
        }
        return true;
    }
    if (email.length==0) {  
        if (required) {
            return false;
        }
        return true;
    }
    if (! allValidChars(email)) {  // check to make sure all characters are valid
        return false;
    }
    if (email.indexOf("@") < 1) { //  must contain @, and it must not be the first character
        return false;
    } else if (email.lastIndexOf(".") <= email.indexOf("@")) {  // last dot must be after the @
        return false;
    } else if (email.indexOf("@") == email.length) {  // @ must not be the last character
        return false;
    } else if (email.indexOf("..") >=0) { // two periods in a row is not valid
	return false;
    } else if (email.indexOf(".") == email.length) {  // . must not be the last character
	return false;
    }
    return true;
}

function allValidChars(email) {
  var parsed = true;
  var validchars = "abcdefghijklmnopqrstuvwxyz0123456789@.-_";
  for (var i=0; i < email.length; i++) {
    var letter = email.charAt(i).toLowerCase();
    if (validchars.indexOf(letter) != -1)
      continue;
    parsed = false;
    break;
  }
  return parsed;
}



 
 function ApplyForJob() 
{ 		
//		document.frmEnquiry.hdnreg.value =""
	//	document.frmEnquiry.mytomail.value="swiftbgl@yahoo.com" //document.getElementById("tomail").innerHTML
		//document.frmEnquiry.mytomail.value="My"
		if(document.frmEnquiry.txtName.value=="")
		{
				document.getElementById("error").innerHTML="Please Enter Your Name"
				document.frmEnquiry.txtName.focus();
				return false;
		}		
		if(document.frmEnquiry.txtaddress.value=="")
		{
				document.getElementById("error").innerHTML="Please Enter Your  Experience"
				document.frmEnquiry.txtaddress.focus();
				return false;
		}
		if(document.frmEnquiry.Services.value<=0)
		{
				document.getElementById("error").innerHTML="Please Select No Of Years"
				document.frmEnquiry.Services.focus();
				return false;
		}
		if((document.frmEnquiry.txtPhone.value=="")|| (isNaN(document.frmEnquiry.txtPhone.value)))
		{
				document.getElementById("error").innerHTML="Please Enter Your Phone Number"
				document.frmEnquiry.txtPhone.focus();
				return false;
		}
		if((document.frmEnquiry.txtMobile.value=="") || (isNaN(document.frmEnquiry.txtMobile.value)))
		{
				document.getElementById("error").innerHTML="Please Enter Your Mobile Number"
				document.frmEnquiry.txtMobile.focus();
				return false;
		}
		
		if((document.frmEnquiry.txtEmail.value=="") ||  (! isValidEmail(document.frmEnquiry.txtEmail.value))) 
		{
				document.getElementById("error").innerHTML="Please Enter Your Email Id"
				document.frmEnquiry.txtEmail.focus();
				return false;
		}
		if(document.frmEnquiry.txtComments.value=="")
		{
				document.getElementById("error").innerHTML="Please Paste Your Resume"
				document.frmEnquiry.txtComments.focus();
				return false;
		}
	document.frmEnquiry.allvalid.value="swiftbgl@yahoo.com";

	return true;
}