<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<link rel="stylesheet" type="text/css" href="Style/common.css"
		media="screen" />


	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<script type="text/javascript">
       function CheckForm1() 
{ 		
	if(document.frmEnquiry.txtName.value=="")
	{
			document.getElementById("error").innerHTML="Please Enter Your Name"
			document.frmEnquiry.txtName.focus();
			return false;
		}		
	else if((document.frmEnquiry.txtPhone.value=="")) 
	{
			document.getElementById("error").innerHTML="Please Enter Your Phone"
			document.frmEnquiry.txtAge.focus();
			return false;
	}
	else if((document.frmEnquiry.txtEmail.value=="") || (! isValidEmail(document.frmEnquiry.txtEmail.value))) 
	{
			document.getElementById("error").innerHTML="Please Enter Your Email Id"
			document.frmEnquiry.txtEmail.focus();
			return false;
	}
	else if((document.frmEnquiry.txtplace.value==""))
	{
			document.getElementById("error").innerHTML="Please Enter Your Location"
			document.frmEnquiry.txtplace.focus();
			return false;
	}
	else if(document.frmEnquiry.txtComments.value=="")
	{
			document.getElementById("error").innerHTML="Please Enter Your Query"
			document.frmEnquiry.txtplace.focus();
			return false;
	}
	else
	document.frmEnquiry.submit();
	 
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

	<BODY class="center">
		<table width="100%" border="0" cellspacing="0" cellpadding="0"
			id="PageSize">
			<tr>
				<td></td>
			</tr>
			<tr>
				<jsp:include page="top.jsp"></jsp:include>

				<!--<td><table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="220" ><a href="Index-2.html"><img title="2lights Technologies Global Logo"  alt=" Global" src="Images/2lights TechnologiesGlobalLogo.jpg" border="0"/></a></td>
    <td valign="top" class="TopHeaderBG"><table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr >
  <td width="630" ></td>
   <td><a href="Index-2.html" class="FooterLink">Home</a></td>
    <td width="5"></td>
    <td width="5" class="FooterLink">|</td>
    <td width="5"></td>
    <td width="55"><a href="SiteMap.html" class="FooterLink">Site Map</a></td>
    <td width="7"></td>
    </tr>  
</table></td>
  </tr>
</table>
</td>
  </tr>  
</table>
</td>
  </tr>
  <tr>
    <td class="BorderLine" height="1"></td>
  </tr>
  <tr>
    <td height="22" class="MenuBG" ><div id="jsMenuLinks" onMouseOut="showHide(3,'hidden')">  <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr> 
              <td width="10" height="25"></td>
              <td height="22" width="80" onMouseOver="showmenu(this,0,25,145)"  class="center"  onmouseout="this.className='center '" onClick="window.location='#'" title="About Us"><a href="About.html" class="MainMenuLink">About Us</a></td>
             
    	<td height="25" width="4" ></td>
    <td height="22" width="1" class="linksbar"></td>
	 	<td height="25" width="4" ></td>
	 
            <td width="100" height="22"  class="center" title="Our Services" onClick="window.location='Services.html'" onMouseOver="showmenu(this,93,25,205);"  onmouseout="this.className='center'"> <a href="Services.html" class="MainMenuLink">Our Services</a></td>
      
            <td height="25" width="4" ></td>
    <td height="25" width="1" class="linksbar"></td>
	<td height="25" width="4" ></td>
            <td height="25" width="100"  class="center" onMouseOver="showmenu(this,202,25,235)"  onmouseout="this.className='center '" onClick="window.location='Competencies.html'" title="Competencies"><a href="Competencies.html" class="MainMenuLink">Competencies</a></td>
            <td height="25" width="4" ></td>
    <td height="25" width="1" class="linksbar"></td>
	<td height="25" width="4" ></td>
            <td height="25" width="65" class="center"  onmouseover="showmenu(this,312,25,145)"  onmouseout="this.className='center '" onClick="window.location='Products.html'" title="Products"><a href="Products.html" class="MainMenuLink">Products</a></td>
            <td height="25" width="4" ></td>
    <td height="25" width="1" class="linksbar"></td>
<td height="25" width="4" ></td>
            <td height="25" width="65" class="center"  onmouseout="this.className='center '" onClick="window.location='Training.html'" title="Training"><a href="Training.html" class="MainMenuLink">Training</a></td>
            <td height="25" width="4" ></td>
    <td height="25" width="1" class="linksbar"></td>

	<td height="25" width="4" ></td>
            <td height="25" width="65" class="center"  onmouseover="showmenu(this,420,22,145)" onmouseout="this.className='center '" onClick="window.location='Partners.html'" title="Partners"><a href="Partners.html" class="MainMenuLink">Partners</a></td>
            <td height="25" width="4" ></td>
    <td height="25" width="1" class="linksbar"></td>
	<td height="25" width="4" ></td>                
            <td width="55" height="25" class="center" onMouseOver="showmenu(this,532,25,145)"  onmouseout="this.className='center '" onClick="window.location='Clients.html'" title="Clients"><a href="Clients.html" class="MainMenuLink">Clients</a></td>
            <td height="25" width="4" ></td>
    <td height="25" width="1" class="linksbar"></td>
    <td height="25" width="4" ></td>                
            <td width="65" height="25" class="center" onMouseOver="showmenu(this,600,25,145)"  onmouseout="this.className='center '" onClick="window.location='CareersUs.html'" title="Careers"><a href="CareersUs.html" class="MainMenuLink">Careers</a></td>
            <td height="25" width="4" ></td>
    <td height="25" width="1" class="linksbar"></td>
	<td height="25" width="4" ></td>
            <td width="75" height="25" class="center MainMenuBGSelected" onMouseOver="showmenu(this,670,25,145)"  onmouseout="this.className='center MainMenuBGSelected'" onClick="window.location='Contact.html'" title="Contact Us"><a href="Contact.html" class="MainMenuLink">Contact Us</a></td>
             <td height="25" width="4" ></td>
    <td height="25" width="1" class="linksbar"></td>
	<td height="25" width="4" ></td>
          <td height="25" width="60" class="center"  onmouseout="this.className='center '" onClick="window.location='Enquiry.html'" title="Enquiry"><a href="Enquiry.html" class="MainMenuLink">Enquiry</a></td>
          <td height="25" width="4" ></td>

          <td height="25" width="1" class="linksbar"></td>
          <td >&nbsp;</td>
          </tr>
            </table>				
      <div id="jsMenu1"></div>
			<div id="jsMenu2"></div><div id="jsMenu3"></div>
			</div></td>
			</tr>
  <tr>
    <td class="BorderLine" height="1"> </td>
  </tr>   
  -->
				<tr>
					<td>
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td width="170" valign="top" class="InnerPageBGColor">

									<table width="100%" border="0" cellspacing="0" cellpadding="0">
										<tr>
											<td width="10" height="5"></td>
											<td height="5">
											</td>
										</tr>
										<tr>
											<td></td>
											<td>
												<a href="enquiry.jsp" class="MainTitleMenuLink">Enquiry</a>
											</td>
										</tr>
										<tr>
											<td height="5"></td>
											<td height="5">
											</td>
										</tr>
										<tr class="InnerPageLeftMenuLine">
											<td height="1"></td>
											<td height="1">
											</td>
										</tr>
										<tr>
											<td></td>
											<!--
    <td><a href="enquiry.jsp" class="MainLeftMenuLink">Enquiry</a></td>
  -->
										</tr>
										<tr class="InnerPageLeftMenuLine">
											<td height="1"></td>
											<td height="1">
											</td>
										</tr>
										<!--
    <tr>
    <td></td>
    <td><a href="https://webmail.mailtrust.com/" class="MainLeftMenuLink">Employee Login</a></td>
  </tr>
  -->
										<tr class="InnerPageLeftMenuLine">
											<td height="1"></td>
											<td height="1">
											</td>
										</tr>
									</table>
								</td>
								<td width="10">
								</td>
								<td width="" valign="top">
									<table width="100%" border="0" cellspacing="0" cellpadding="0">
										<tr>
											<td height="5">
											</td>
										</tr>

										<tr>
											<td>
												<img title="Contact Us" alt=" " src="Images/contact.jpg" />
											</td>
										</tr>
										<tr>
											<td height="5"></td>
										</tr>
										<tr>
											<td>
												<a href="index.jsp" class="InnerPageNavLink">Home</a><span
													class="InnerPageNavLink"></span>
												<span class="PaddingRight5px">></span>Enquiry
											</td>
										</tr>
										<tr>
											<td height="3">

											</td>
										</tr>
										<tr>
											<td height="1" class="FooterBG"></td>
										</tr>
										<tr>
											<td height="3"></td>
										</tr>
										<!--<tr>
											<td class="InnerHeaderOrangeFontColor">
												Enquiry
											</td>
										</tr>
										-->
										<tr>
											<td height="15" align="center" class="redtext1">
												<c:if test="${!empty requestScope.msg}">
								 ${requestScope.msg} 
							</c:if>
											</td>
										</tr>
										<tr>
											<td class="justify">
												<table width="100%" border="0" cellspacing="0"
													cellpadding="0">
													<tr>
														<td width="1" class=" "></td>
														<td>
															<form name="frmEnquiry" method="post"
																action="sendingQuery">
																<input type="hidden" class="exe" name="hidden"
																	value="enquiry"></input>
																<table width="100%" border="0" cellspacing="0"
																	cellpadding="0" class="tableborderEnquiry">
																	<tr>
																		<td width="5" height="10"></td>
																		<td width="200" height="10"></td>
																		<td width="15" height="10"></td>
																		<td height="10"></td>
																		<td height="10" width="5"></td>
																	</tr>
																	<tr>
																		<td width="5"></td>
																		<td class="InnerHeaderOrangeFontColor">
																			Enquiry Form
																		</td>
																		<td width="15"></td>
																		<td class="right">
																			&nbsp;
																		</td>
																		<td width="5"></td>
																	</tr>

																	<tr>
																		<td width="5" height="10"></td>
																		<td width="200" height="10"></td>
																		<td width="15" height="10"></td>
																		<td height="10"></td>
																		<td height="10" width="5"></td>
																	</tr>
																	<tr>
																		<td width="5" height="10"></td>
																		<td height="15" colspan="3" class="redtext" id="error"></td>
																		<td height="10" width="5"></td>
																	</tr>
																	<tr>
																		<td width="5"></td>
																		<td width="200" class="right">
																			Name
																		</td>
																		<td width="15" class="redtext">
																			*
																		</td>
																		<td>
																			<input class="exe" type="text" name="txtName"
																				value="" />
																		</td>
																		<td width="5"></td>
																	</tr>
																	<tr>
																		<td width="5" height="5"></td>
																		<td width="200" height="5"></td>
																		<td width="15" height="5"></td>
																		<td height="5"></td>
																		<td height="5" width="5"></td>
																	</tr>
																	<tr>
																		<td width="5"></td>
																		<td width="200" class="right">
																			Telephone No
																		</td>
																		<td width="15" class="redtext">
																			*
																		</td>
																		<td>
																			<input class="exe" type="text" name="txtPhone"
																				value="" />
																		</td>
																		<td width="5"></td>
																	</tr>
																	<tr>
																		<td height="5"></td>
																		<td height="5"></td>
																		<td width="15" height="5"></td>
																		<td height="5"></td>
																		<td height="5"></td>
																	</tr>
																	<tr>
																		<td width="5"></td>
																		<td width="200" class="right">
																			Email Id
																		</td>
																		<td width="15" class="redtext">
																			*
																		</td>
																		<td>
																			<input class="exe" type="text" name="txtEmail"
																				value="" />
																		</td>
																		<td width="5"></td>
																	</tr>
																	<tr>
																		<td width="5" height="5"></td>
																		<td width="200" height="5"></td>
																		<td width="15" height="5"></td>
																		<td height="5"></td>
																		<td height="5" width="5"></td>
																	</tr>
																	<tr>
																		<td width="5"></td>
																		<td width="200" class="right">
																			Location
																		</td>
																		<td width="15" class="redtext">
																			*
																		</td>
																		<td>
																			<input class="exe" type="text" name="txtplace"
																				value="" />
																		</td>
																		<td width="5"></td>
																	</tr>
																	<tr>
																		<td height="5"></td>
																		<td height="5"></td>
																		<td width="15" height="5"></td>
																		<td height="5"></td>
																		<td height="5"></td>
																	</tr>

																	<tr>
																		<td width="5"></td>
																		<td width="200" class="right">
																			Company Name
																		</td>
																		<td width="15"></td>
																		<td>
																			<input name="txtcompname" type="text" class="exe"
																				value="" />
																		</td>
																		<td width="5"></td>
																	</tr>
																	<tr>
																		<td width="5" height="5"></td>
																		<td width="200" height="5"></td>
																		<td width="15" height="5"></td>
																		<td height="5"></td>
																		<td height="5" width="5"></td>
																	</tr>
																	<tr>
																		<td height="20"></td>
																		<td height="20"></td>
																		<td width="15" height="20"></td>
																		<td height="20"></td>
																		<td height="20"></td>
																	</tr>
																	<tr>
																		<td width="5"></td>
																		<td width="200" class="right" valign="top">
																			Your Query
																		</td>
																	 
																		<td width="15" class="redtext">
																			*
																		</td>
																		<td>
																			<textarea cols="32" id="txtComments" class="taexe"
																				rows="5" name="txtComments"></textarea>
																		</td>
																		<td width="5"></td>
																	</tr>
																	<tr>
																		<td width="5" height="15"></td>
																		<td width="200" height="15"></td>
																		<td width="15" height="15"></td>
																		<td height="15"></td>
																		<td height="15" width="5"></td>
																	</tr>
																	<tr>
																		<td height="15"></td>
																		<td width="200" height="15" class="right"></td>
																		<td width="15" height="15"></td>
																		<td height="15">
																			<table width="100%" border="0" cellspacing="0"
																				cellpadding="0">
																				<tr>
																					<td width="60">
																						<input type="button" value="Submit"
																							class="buttonsubmit" name="Submit" title="Submit" onclick="return CheckForm1(this);"/>																			</td>
																					<td width="10">
																					</td>
																					<td>
																						<input type="reset" class="buttonclear"
																							name="Submit2" value="Reset">
																					</td>
																				</tr>
																			</table>
																		</td>
																		<td height="15"></td>
																	</tr>
																	<tr>
																		<td height="15"></td>
																		<td height="15" class="right"></td>
																		<td height="15"></td>
																		<td height="15"></td>
																		<td height="15"></td>
																	</tr>
																	<tr>
																		<td height="15"></td>
																		<td height="15" class="right"></td>
																		<td height="15"></td>
																		<td height="15" class="right">
																			Fields marked in
																			<span class="redtext">*</span>are compulsory
																		</td>
																		<td height="15"></td>
																	</tr>
																	<tr>
																		<td height="15"></td>
																		<td height="15" class="right"></td>
																		<td width="15" height="15"></td>
																		<td height="15">
																		</td>
																		<td height="15"></td>
																	</tr>
																</table>
															</form>
														</td>
														<td width="1" class=""></td>
													</tr>
													<tr>
														<td class=""></td>
														<td>
															<table width="100%" border="0" cellspacing="0"
																cellpadding="0">
																<tr>
																	<!--<td width="175" class="MiddleContentHeader">
																		Contact Emails
																	</td>
																	<td width="10" class="MiddleContentHeader"></td>
																	<td class="MiddleContentHeader">
																		&nbsp;
																	</td>
																-->
																</tr>

																<tr>
																	<!--<td width="175" class="bold">
																		Management consulting
																	</td>
																	<td width="10" class="">
																		:
																	</td>
																	<td class="">
																		itbusiness.consulting@gmail.com
																	</td>
																-->
																</tr>
																<tr>
																	<!--<td width="175" class="bold">Careers</td>
                    <td width="10" class="">:</td>
                    <td class="">careers@2lights Technologiesglobal.com</td>
                  -->
																</tr>
																<tr>
																	<td width="175"></td>
																	<td width="10"></td>
																	<td></td>
																</tr>
																<tr>
																	<td width="175"></td>
																	<td width="10"></td>
																	<td></td>
																</tr>
															</table>
														</td>
														<td class=" "></td>
													</tr>
													<tr>
														<td class=" "></td>
														<td>
															<table width="100%" border="0" cellspacing="0"
																cellpadding="0">
																<tr>
																	<td width="220" class="justify"></td>
																</tr>
																<tr>
																	<td></td>
																</tr>
																<tr>
																	<td height="20" class="MiddleContentHeader">
																	</td>
																</tr>
																<tr>
																	<!--<td height="8" class="MiddleContentHeader">
																		India office
																	</td>
																-->
																</tr>
																<tr>
																	<!--<td width="220" height="8" class="bold">
																		IT Business Consulting.
																	</td>
																-->
																</tr>
																<tr>
																	<!--<td width="220" height="8" class="">
																		New Delhi,
																	</td>
																-->
																</tr>
																<tr>
																	<!--
                        <td width="220" height="8" class="">Opposite lane to Chandana brothers showroom, Ameerpet,</td>
                        -->
																</tr>
																<tr>
																	<!--
                        <td width="220" height="8" class="">Hyderabad-500 016,</td>
                        -->
																</tr>
																<tr>
																	<!--
                        <td width="220" height="8" class="">Andhra Pradesh, India.</td>
                        -->
																</tr>
																<tr>
																	<td width="220" height="10" class="">
																		<table width="100%" border="0" cellspacing="0"
																			cellpadding="0">
																			<tr>
																				<td height="3"></td>
																				<td height="3"></td>
																			</tr>
																			<tr>
																				<!--<td width="22"><IMG type="image" src="Images/Phoneicon.gif" /></td>
                            <td> +91 40 66666165 / 66666156 / +91 9491390959</td>
                          -->
																			</tr>

																		</table>
																	</td>
																</tr>
															</table>
														</td>
														<td class=""></td>
													</tr>

													<tr>
														<td class=" "></td>
														<td>
															<table width="100%" border="0" cellspacing="0"
																cellpadding="0">
																<tr>
																	<td class="justify"></td>
																	<td width="5" class="justify"></td>
																	<td class="justify"></td>
																	<td width="5" class="justify"></td>
																</tr>
																<tr>
																	<td height="10" class="MiddleContentHeader">
																	</td>
																	<td width="5" height="10"></td>
																	<td class="MiddleContentHeader"></td>
																	<td width="5" class="MiddleContentHeader"></td>
																</tr>
																<tr>
																	<!--<td height="8" class="MiddleContentHeader">
																		Branch Offices
																	</td>
																	<td width="5"></td>
																	<td></td>
																	<td width="5" class=""></td>
																-->
																</tr>

																<tr>
																	<!--<td height="8" class="bold">
																		Patna
																	</td>
																	<td width="5"></td>
																	<td class="bold">
																	</td>
																	-->
																	<td width="5"></td>
																</tr>

																<tr>
																	<td height="8" class="">
																	</td>
																	<td width="5"></td>
																	<td class="" valign="top">
																	</td>
																	<td width="5"></td>
																</tr>

																<tr>
																	<td height="8" class="">
																	</td>
																	<td width="5"></td>
																	<td class="">
																	</td>
																	<td width="5"></td>
																</tr>

																<tr>
																	<!--<td height="8" class="">
																		Bihar
																	</td>
																	<td width="5"></td>
																	<td class="">
																	</td>
																	<td width="5"></td>
																-->
																</tr>

																<tr>
																	<td height="10" class="" valign="top">
																		<table width="100%" border="0" cellspacing="0"
																			cellpadding="0">
																			<tr>
																				<!--<td width="22"><IMG type="image" src="Images/Phoneicon.gif" /></td>
                        <td> +91 80 40849301 / 02 / 03</td>
                      -->
																			</tr>
																			<tr>
																				<!--<td width="22"><IMG type="image" src="Images/Phoneicon.gif" /></td>
                        <td> +91 80 41307781 / 82 / 83</td>
                      -->
																			</tr>

																		</table>
																	</td>
																	<td width="5" height="10"></td>
																	<td valign="top">
																		<table width="100%" border="0" cellspacing="0"
																			cellpadding="0">
																			<tr>
																				<!--<td width="22"><IMG type="image" src="Images/Phoneicon.gif" /></td>
                        <td> +91 44 64565270 / 4273 5526 </td>
                      -->
																			</tr>

																		</table>
																	</td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td height="10" class="MiddleContentHeader"></td>
																	<td width="5" height="10"></td>
																	<td></td>
																	<td width="5"></td>
																</tr>
															</table>
														</td>
														<td class=""></td>
													</tr>
													<tr>
														<td class=""></td>
														<td></td>
														<td class=""></td>
													</tr>
													<tr>
														<td class=""></td>
														<td></td>
														<td class=""></td>
													</tr>
													<tr>
														<td class=""></td>
														<td></td>
														<td class=""></td>
													</tr>
													<tr class="">
														<td height="1"></td>
														<td></td>
														<td></td>
													</tr>
												</table>
											</td>
										</tr>
										<tr>
											<td height="10"></td>
										</tr>

									</table>
								</td>
								<!--
        <td width="10"> </td>
        <td width="130" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
    <td height="5"> </td>
  </tr>
 <tr>
 <td height="8" class="InnerPageTableTopBgColor">Clients</td>
  </tr>
  <tr>
    <td class="TableBorderColorWithoutTop"> <script type="text/javascript">
AC_FL_RunContent( 'codebase','http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,28,0','width','128','height','82','src','Images/Clients','quality','high','pluginspage','http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash','movie','Images/Clients' ); //end AC code
</script><noscript><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,28,0" width="128" height="82">
      <param name="movie" value="Images/Clients.swf" />
      <param name="quality" value="high" />
      <embed src="Images/Clients.swf" quality="high" pluginspage="http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" width="128" height="82"></embed>
    </object></noscript></td>
  </tr>
  <tr>
    <td height="12"></td>
  </tr>
  <tr>
    <td height="21" class="InnerPageTableTopBgColor">Alliance Partners </td>
  </tr>
  <tr>
    <td class="TableBorderColorWithoutTop"> <script type="text/javascript">
AC_FL_RunContent( 'codebase','http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,28,0','width','128','height','82','src','Images/partner','quality','high','pluginspage','http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash','movie','Images/partner' ); //end AC code
    </script>
      <noscript>
      <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,28,0" width="128" height="82">
        <param name="movie" value="Images/partner.swf" />
        <param name="quality" value="high" />
        <embed src="Images/partner.swf" quality="high" pluginspage="http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" width="128" height="82"></embed>
      </object>
      </noscript>   </td>
  </tr>
  <tr>
    <td height="12"> </td>
  </tr>
  <tr>
 <td height="8" class="InnerPageTableTopBgColor">Related Links</td>
  </tr>
  <tr>
    <td class="TableBorderColorWithoutTop">
    
    
    <div class="InnerPageRight">
            <a href="ApplyForJob.html" class="">Apply for a Job</a>
              <a href="CareersUs.html" class="">Current Openings</a>    </div>  </td>
  </tr>
 
</table></td>
<td width="10"> </td>
      </tr>
      
    </table></td>
  </tr>
  
  <tr class="FooterLinkBGColor">
    <td height="25"><table width="100%" border="0" cellspacing="0" cellpadding="0"><tr><td class="FooterLink"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="8"></td>
        <td width="30"><a href="Index-2.html" class="FooterLink">Home</a></td>
               <td width="5"></td>
        <td class="FooterLink" width="2">|</td>
          <td width="5"></td>
           <td width="55"><a href="About.html" class="FooterLink">About US</a></td>
               <td width="5"></td>
        <td class="FooterLink" width="2">|</td>
          <td width="5"></td>
           <td width="76"><a href="Infrastucture.html" class="FooterLink">Infrastructure</a></td>
               <td width="5"></td>
        <td class="FooterLink" width="2">|</td>
          <td width="5"></td>
           <td width="70"><a href="Services.html" class="FooterLink">Our Services</a></td>
               <td width="5"></td>
        <td class="FooterLink" width="2">|</td>
          <td width="5"></td>
           <td width="39"><a href="Clients.html" class="FooterLink">Clients</a></td>
               <td width="5"></td>
        <td class="FooterLink" width="2">|</td>
          <td width="5"></td>
           <td width="60"><a href="Contact.html" class="FooterLink">Contact Us</a></td>
               <td width="5"></td>
        <td class="FooterLink" width="2">|</td>
          <td width="5"></td>
           <td width="30"><a href="Enquiry.html" class="FooterLink">Enquiry</a></td>
               <td width="5"></td>
        
        <td>&nbsp;</td>
      </tr>
    </table></td>
    </tr>
    </table>
</td>
  </tr>
  <tr class="FooterBG">
    <td height="20" class="CopyRight right"><span class="CopyRightIcon">&copy;</span> 2011 2lights Technologies Global Services Inc.  All rights reserved.</td>
  </tr>
-->
								<jsp:include page="bottom.jsp"></jsp:include>
						</table>
	</body>

	<!--   from 2lights Technologiesglobal.com/Contact.htm by HTTrack Website Copier/3.x [XR&CO'2013], Mon, 13 Jan 2014 07:05:36 GMT -->
</html>
