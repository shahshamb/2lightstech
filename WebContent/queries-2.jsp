  


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en" >

<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>:..2Lights:Queries..:</title>
<link rel="stylesheet" type="text/css" href="Style/common.css" media="screen" />
<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<script type="text/javascript"
	      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCdsbr5jfrIhHFMdLw6SiJYM3Zo9Osla4A&sensor=false">
</script> 
<script type="text/javascript" src="Scripts/script.js"></script>
<style type="text/css">

<!--
.redstar {color: #FF0000;}
.redtext1 {FONT: 11px Verdana, arial; color:#FF0805;}
.taquery {widht:80px;}
.bgclr{	background-color: #FFFFFF;}
-->
</style>
<script type="text/javascript">

function CheckForm1() 
{ 		
	if(document.frmEnquiry.txtName.value=="")
	{
			document.getElementById("error").innerHTML="Please Enter Your Name"
			document.frmEnquiry.txtName.focus();
			return false;
		}
		else if((document.frmEnquiry.txtEmail.value=="") || (! isValidEmail(document.frmEnquiry.txtEmail.value))) 
	{
			document.getElementById("error").innerHTML="Please Enter Your Email Id"
			document.frmEnquiry.txtEmail.focus();
			return false;
	}		
	else if((document.frmEnquiry.txtPhone.value=="")) 
	{
			document.getElementById("error").innerHTML="Please Enter Your Phone"
			document.frmEnquiry.txtPhone.focus();
			return false;
	}
	
	else if(document.frmEnquiry.txtComments.value=="")
	{
			document.getElementById("error").innerHTML="Please Enter Your Query"
			document.frmEnquiry.txtComments.focus();
			return false;
	}
	else
	{
		getLocationDetails();
    }
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
       
    
       </script>
</head>
<body>
<form name="frmEnquiry" method="post" action="sendingQuery">
<table width="195" border="0" cellspacing="0" cellpadding="0" class="TableBorderColorWithoutTop">
  <tr class="bgclr">
    <td width="5"><input type="hidden"  class="exe" name="hidden" value="query"></input> 
	<input type="hidden" name="pindetail"/>
	</td>
		
	
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="5" height="5" ></td>
        <td height="5"></td>
      </tr>
      <tr>
        <td width="10" height="28" class="redtext1"> <c:if test="${!empty requestScope.msg}" >
								 ${requestScope.msg} 
							</c:if></td>
        <td height="28" class="redtext1"  id="error"></td>
      </tr>
      
    </table><table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="5" height="18"></td>
    <td height="18" class="left">Your Name<span class="redstar">* </span>:</td>
  </tr>
  <tr>
    <td width="5"></td>
     <td><input type="hidden" name="rtnFile" value="queries.html"/>
	 <input name="txtName" type="text" maxlength="25" value=""/></td>
  </tr>
  <tr>
    <td width="5" height="18"></td>
    <td height="18" class="left">Your E-mail ID<span class="redstar">*</span> :</td>
  </tr>
  <tr>
    <td width="5"></td>
    <td><input name="txtEmail" type="text" maxlength="25" value=""/></td>
  </tr>
  <tr>
    <td height="18"></td>
    <td height="18" class="left">Telephone No<span class="redstar">*</span> :</td>
  </tr>
  <tr>
    <td height="18"></td>
    <td class="left"><input class="exe" name="txtPhone" value=""/></td>
  </tr>
   <tr>
    <td height="18"></td>
    <td height="18" class="left">Pin Code<span class="redstar">*</span> :</td>
  </tr>
  <tr>
    <td height="18"></td>
    <td class="left"><input class="exe" name="pin" id="pin" value=""/></td>
  </tr>
  <tr>
    <td width="5" height="18"></td>
    <td height="18" class="left">Type your query here<span class="redstar">*</span>:</td>
  </tr>
  <tr>
    <td width="5"></td>
    <td><textarea cols="16" class="taquery" rows="2" id="txtComments" name="txtComments" ></textarea></td>
  </tr>
  <tr>
    <td width="5" height="6"></td>
    <td height="6"></td>
  </tr>
  <tr>
    <td width="5"></td>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="60"><input  type="submit" value="Submit" class="buttonsubmit" name="Submit" title="Submit"  onclick="return CheckForm1(this);"/></td>
        <td width="5"></td>
        <td><input type="reset" class="buttonclear"  name="Submit2" value="Reset"></td>
		<td width="48"></td>
      </tr>
      
    </table></td>
  </tr>
  <tr>
    <td height="7"></td>
    <td height="7"></td>
  </tr>
  <tr>
    <td height="10"></td>
    <td class="right"><span class="redstar">*</span> Compulsory Fields</td>
  </tr>
  <tr>
    <td width="5" height="8"></td>
    <td height="8"></td>
  </tr>
</table>

    <td width="10"></td>
  </tr>
  
</table>
</form>
</body>

<!--   from 2lights Technologiesglobal.com/queries.asp by HTTrack Website Copier/3.x [XR&CO'2013], Mon, 13 Jan 2014 07:06:26 GMT -->
</html>
