<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<script type="text/javascript" src="Scripts/jquery.min.js"></script>

		<script type="text/javascript">
	function slideSwitch() {
		var $active = $('#slideshow DIV.active');

		if ($active.length == 0)
			$active = $('#slideshow DIV:last');

		// use this to pull the divs in the order they appear in the markup
		var $next = $active.next().length ? $active.next()
				: $('#slideshow DIV:first');

		// uncomment below to pull the divs randomly
		// var $sibs  = $active.siblings();
		// var rndNum = Math.floor(Math.random() * $sibs.length );
		// var $next  = $( $sibs[ rndNum ] );

		$active.addClass('last-active');

		$next.css( {
			opacity : 0.0
		}).addClass('active').animate( {
			opacity : 1.0
		}, 1000, function() {
			$active.removeClass('active last-active');
		});
	}

	$(function() {
		setInterval("slideSwitch()", 3000);
	});
</script>

		<style type="text/css">
/*** set the width and height to match your images **/
#slideshow {
	position: relative;
	top: 10px;
	left: 8px;
	height: 29px;
	width: 100px;
}

#slideshow DIV {
	position: absolute;
	top: 0px;
	left: 0px;
	z-index: 8;
	opacity: 0.0;
	height: 297px;
	background-color: #FFF;
}

#slideshow DIV.active {
	z-index: 10;
	opacity: 1.0;
}

#slideshow DIV.last-active {
	z-index: 9;
}

#slideshow DIV IMG {
	height: 145px;
	width: 680px;
	display: block;
	border: 0;
}
</style>

	</head>

	<BODY class="center">
	

		<table width="100%" border="0" cellspacing="0" cellpadding="0"
			id="PageSize">

			<jsp:include page="top.jsp"></jsp:include>

			<tr>
				<td>
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td width="701" valign="top">
								<table width="100%" border="0" cellspacing="0" cellpadding="0">

									<tr>
										<td height="5"></td>
									</tr>
									<tr>
										<td>
											<div id="slideshow"
												style="position: absolute; background-color: #E8E8E8; overflow: hidden; left: 0px; top: 102px; width: 680px; height: 145px; z-index: 3">
												<div >
													<img src="Images/main1.jpg" alt="Slideshow Image 1" />
												</div>

												<div>
													<img src="Images/main2.jpg" alt="Slideshow Image 2" />
												</div>

												<div class="active">
													<img src="Images/main3.jpg" alt="Slideshow Image 3" />
												</div>

												<div>
													<img src="Images/main4.jpg" alt="Slideshow Image 4" />
												</div>
												<div>
													<img src="Images/p1.jpg" alt="Slideshow Image 5" />
												</div>
												<div>
													<img src="Images/p2.jpg" alt="Slideshow Image 6" />
												</div>
												<div>
													<img src="Images/p4.jpg" alt="Slideshow Image 7" />
												</div>
												<div>
													<img src="Images/j1.jpg" alt="Slideshow Image 8" />
												</div>
												<div>
													<img src="Images/j2.jpg" alt="Slideshow Image 9" />
												</div>
												<div>
													<img src="Images/a1.jpg" alt="Slideshow Image 10" />
												</div>

											</div>

											<script type="text/javascript">
	AC_FL_RunContent(
			'codebase',
			'http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0',
			'width', '100%', 'height', '143', 'src', 'images/main', 'wmode',
			'transparent', 'quality', 'high', 'pluginspage',
			'http://www.macromedia.com/go/getflashplayer', 'movie',
			'images/main'); //end AC code
</script>
											<!--<noscript>
												<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"
													codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0"
													width="100%" height="143">
													<param name="movie" value="images/main.swf" />
													<param name="quality" value="high" />
													<param name="wmode" value="transparent" />
													<embed src="images/main.swf" wmode="transparent"
														quality="high"
														pluginspage="http://www.macromedia.com/go/getflashplayer"
														type="application/x-shockwave-flash" width="100%"
														height="143"></embed>
												</object>
											</noscript>
										-->
										</td>
									</tr>
									<tr>
										<td height="5"></td>
									</tr>
									<tr>
										<td height="10">
											<table width="100%" border="0" cellspacing="0"
												cellpadding="0">
												<tr>
													<td width="7">
													</td>
													<td width="350" valign="top">
														<table width="100%" border="0" cellspacing="0"
															cellpadding="0">
															<tr>
																<td class="HomeWelcomeFontSize">
																	<span class="HomeWelcomeFontColor">Welcome</span>
																	<span class="HomeWelcomeContinuFontColor">to
																		2Lights Technologies</span>
																</td>
															</tr>
															<tr>
																<td height="6">
																</td>
															</tr>
															<tr>
																<td class="justify">
																	2Lights Technologies is an IT solutions and services
																	provider for Java, Web Service, Payment Solution and Integration, Andriod and POS Device based application
																	development and support.

																</td>
															</tr>
															<tr>
																<td height="5">
																</td>
															</tr>
															<tr>
																<td class="justify">
																	From enterprise software's to all the necessary tools, 
																	We offers a comprehensive suite of open source solutions that help's to create right business path, 
																	increase productivity and decrease loss of time.
																</td>
															</tr>
															<tr>
																<td height="6">
																</td>
															</tr>
															<tr>
																<td class=" ">
																	<table width="100%" border="0" cellspacing="0"
																		cellpadding="0">
																		<tr>
																			<td height="5"></td>
																			<td width="150" height="5">
																			</td>
																			<td width="10" height="5" class=""></td>
																			<td height="5" class=""></td>
																			<td width="10" height="5"></td>
																			<td height="5"></td>
																			<td width="10" height="5">
																			</td>
																		</tr>
																		<tr>
																			<td></td>
																			<td width="150" class="OrangeFontColor">
																				Java Web / Web Service / Payment Solution and
																				Integrations.
																			</td>
																			<td width="10" class=""></td>
																			<td class="FooterBGLine"></td>
																			<td width="10"></td>

																			<td class="OrangeFontColor">
																				Point of Sale
																			</td>
																			<td width="10" class="OrangeFontColor"></td>
																		</tr>
																		<tr>
																			<td height="5"></td>
																			<td height="5"></td>
																			<td width="10" height="5" class=""></td>
																			<td height="5" class="FooterBGLine"></td>
																			<td width="10" height="5"></td>
																			<td height="5"></td>
																			<td width="10" height="5"></td>
																		</tr>
																		<tr>
																			<td height="5"></td>
																			<td width="50" class="darkcementcolorfont left">


																				<a href=""><img title=""
																						alt="2Lights Technologies" src="Images/javasoftware.jpg"
																						border="0" /> </a>
																			</td>
																			<td width="10" class=""></td>
																			<td height="5" class="FooterBGLine"></td>
																			<td width="10" height="5"></td>

																			<td height="5" class="darkcementcolorfont left"
																				valign="top">
																				<a href=""><img title=""
																						alt="2Lights Technologies" src="Images/pos.jpg"
																						border="0" /> </a>
																			</td>
																			<td width="10" class=""></td>
																		</tr>

																		<tr>
																			<td height="3"></td>
																			<td height="3" class="right">
																			</td>
																			<td height="3" class=""></td>
																			<td height="3" class=""></td>
																			<td height="3"></td>
																			<td height="3">
																			</td>
																			<td height="3">
																			</td>
																		</tr>
																		<tr>
																			<td></td>
																			<td class="right">
																				<a href="java_dev.jsp" class="readmorefont">Read
																					More...</a>
																			</td>
																			<td class=""></td>
																			<td class=""></td>
																			<td></td>
																			<td class="right">
																				<a href="posDetail.jsp" class="readmorefont">Read
																					More...</a>
																			</td>
																			<td></td>
																		</tr>
																		<tr>
																			<td width="10" height="5">
																			</td>
																			<td height="5" class="right"></td>
																			<td width="10" height="5" class=""></td>
																			<td width="1" height="5" class="">
																			</td>
																			<td width="10" height="5">
																			</td>
																			<td height="5">
																			</td>
																			<td width="10" height="5">
																			</td>
																		</tr>
																	</table>
																</td>
															</tr>
														</table>
													</td>
													<td width="10"></td>
													<td valign="top">
														<table width="100%" border="0" cellspacing="0"
															cellpadding="0">
															<tr>
																<td height="6">
																</td>
															</tr>
															<tr>
																<!--<td class="OrangeFontColor  left">
																	Java Web / Web Services
																</td>
															--></tr>
															<tr>
																<td height="8">
																</td>
															</tr>
															<tr>
																<!--<td class="darkcementcolorfont left">
																	We deal in all types of java based web development and
																	web Services.
																</td>
															--></tr>
															<tr>
																<td height="5">
																</td>
															</tr>
															<tr>
																<!--<td class="right">
																	<a href="java_dev.jsp" class="readmorefont">Read
																		More...</a>
																</td>
															--></tr>
															<tr>
																<td height="15">
																</td>
															</tr>
															<tr>
																<td class="OrangeFontColor left">
																	POS-Point of Sale
																</td>
															</tr>
															<tr>
																<td height="5">
																</td>
															</tr>
															<tr>
																<td class="darkcementcolorfont left">
																	For POS device, we develop software for the following
																	manufacturer machine Verifone, Ingenico, PAX,
																	JustTide..
																</td>
															</tr>
															<tr>
																<td height="5">
																</td>
															</tr>
															<tr>
																<td class="right">
																	<a href="posDetail.jsp" class="readmorefont">Read
																		More...</a>
																</td>
															</tr>
															<tr>
																<td height="15">
																</td>
															</tr>

															<tr>
																<td class="OrangeFontColor left">
																	Mobile (Android & iOS)
																</td>
															</tr>
															<tr>
																<td height="5">
																</td>
															</tr>
															<tr>
																<td class="darkcementcolorfont left">
																	Android & iOS => mPOS (Mobile Payment Application) For
																	all, any type of work like: Banking application (EMV &
																	MSR), Loyalty, VAS etc..
																</td>
															</tr>
															<tr>
																<td height="5">
																</td>
															</tr>
															<tr>
																<td class="right">
																	<a href="mobility.jsp" class="readmorefont">Read
																		More...</a>
																</td>
															</tr>
														</table>
													</td>
												</tr>
											</table>
										</td>
										
									</tr>

								</table>
							</td>
							<td width="10">
							</td>

							<jsp:include page="bottom.jsp"></jsp:include>
					</table>
					<script type="text/javascript">
	var _gaq = _gaq || [];
	_gaq.push( [ '_setAccount', 'UA-17765265-3' ]);
	_gaq.push( [ '_trackPageview' ]);

	(function() {
		var ga = document.createElement('script');
		ga.type = 'text/javascript';
		ga.async = true;
		ga.src = ('https:' == document.location.protocol ? 'https://ssl'
				: 'http://www') + '.google-analytics.com/ga.js';
		var s = document.getElementsByTagName('script')[0];
		s.parentNode.insertBefore(ga, s);
	})();
</script>
	</BODY>
	</body>
</html>
