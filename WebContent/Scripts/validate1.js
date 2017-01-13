
function CheckForm1(frmEnquiry) 
{ 		
	if(document.frmEnquiry.txtName.value=="")
	{
			document.getElementById("error").innerHTML="Please Enter Your Name"
			document.frmEnquiry.txtName.focus();
			return false;
		}		
	if((document.frmEnquiry.txtPhone.value=="")) 
	{
			document.getElementById("error").innerHTML="Please Enter Your Phone"
			document.frmEnquiry.txtAge.focus();
			return false;
	}
	if((document.frmEnquiry.txtEmail.value=="") || (! isValidEmail(document.frmEnquiry.txtEmail.value))) 
	{
			document.getElementById("error").innerHTML="Please Enter Your Email Id"
			document.frmEnquiry3.txtEmail.focus();
			return false;
	}
	if((document.frmEnquiry.txtplace.value==""))
	{
			document.getElementById("error").innerHTML="Please Enter Your Location"
			document.frmEnquiry.txtAddress.focus();
			return false;
	}
	if(document.frmEnquiry.txtComments.value=="")
	{
			document.getElementById("error").innerHTML="Please Enter Your Query"
			document.frmEnquiry.txtquery.focus();
			return false;
	}
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
