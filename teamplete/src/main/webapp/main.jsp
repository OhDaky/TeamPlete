<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="${ pageContext.request.contextPath }/resources/css/bootstrap.css">
<link rel="stylesheet" type="text/css"
	href="${ pageContext.request.contextPath }/resources/css/colors.css">
<link rel="stylesheet" type="text/css"
	href="${ pageContext.request.contextPath }/resources/css/components.css">

<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/gh/moonspam/NanumSquare@1.0/nanumsquare.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,600">
<link rel="stylesheet" type="text/css"
	href="${ pageContext.request.contextPath }/resources/css/vendors.min.css">

<link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/resources/css/select2.min.css">

<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,600">

<link rel="stylesheet" type="text/css"
	href="${ pageContext.request.contextPath }/resources/css/dark-layout.css">
<link rel="stylesheet" type="text/css"
	href="${ pageContext.request.contextPath }/resources/css/semi-dark-layout.css">

<!-- BEGIN: Page CSS-->
<link rel="stylesheet" type="text/css"
	href="${ pageContext.request.contextPath }/resources/css/horizontal-menu.css">
<link rel="stylesheet" type="text/css"
	href="${ pageContext.request.contextPath }/resources/css/palette-gradient.css">
<link rel="stylesheet" type="text/css"
	href="${ pageContext.request.contextPath }/resources/css/authentication.css">
<link rel="stylesheet" type="text/css"
	href="${ pageContext.request.contextPath }/resources/css/vegas.min.css">
<link
	href="http://fonts.googleapis.com/css?family=Lato:300,400,400i,700|Raleway:300,400,500,600,700,800,900|Yellowtail%3A400|Montserrat%3A700"
	rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css"
	href="${ pageContext.request.contextPath }/resources/css/settings.css"
	media="screen" />
<link rel="stylesheet" type="text/css"
	href="${ pageContext.request.contextPath }/resources/css/layers.css">
<link rel="stylesheet" type="text/css"
	href="${ pageContext.request.contextPath }/resources/css/navigation.css">
	
<!-- TYPEWRITER ADDON -->	
<link rel="stylesheet" type="text/css" href="${ pageContext.request.contextPath }/resources/css/typewriter.css">
<!-- END: Page CSS-->

</head>
<body
	class="horizontal-layout horizontal-menu 1-column  navbar-floating footer-static bg-full-screen-image  blank-page blank-page"
	data-open="hover" data-menu="horizontal-menu" data-col="1-column">

	<div class="app-content content">
		<div class="content-overlay"></div>
		<div class="header-navbar-shadow"></div>
		<div class="content-wrapper">
			<div class="content-header row"></div>
			<div class="content-body">
				<section class="row flexbox-container">
				<div class="col-xl-8 col-11 d-flex justify-content-center">
					<div class="card bg-authentication rounded-0 mb-0">
						<div class="row m-0">
							<div
								class="col-lg-6 d-lg-block d-none text-center align-self-center px-1 py-0">
								<img
									src="${ pageContext.request.contextPath }/resources/images/login.png"
									alt="branding logo">
							</div>
							<div class="col-lg-6 col-12 p-0">
								<div class="card rounded-0 mb-0 px-2">
									<div class="card-header pb-1">
										<div class="card-title">
											<h2 class="mb-0" style="font-weight:600 !important;">로그인</h2>
										</div>
									</div>
									<h4 class="px-2" style="font-weight:500 !important;">팀플리트에 오신 것을 환영합니다!</h4>
									<div class="card-content">
										<div class="card-body pt-1">
											<form method="post" style="margin-top: 5%;"
												action="${ pageContext.request.contextPath }/login"
												name="inputForm" onsubmit="return checkForm()"
												class="login-form">
												<fieldset
													class="form-label-group form-group position-relative has-icon-left">
													<input type="text" class="form-control" name="memberid"
														id="user-name" placeholder="Username" required>
													<div class="form-control-position">
														<i class="feather icon-user"></i>
													</div>
													<label for="user-name">Username</label>
												</fieldset>

												<fieldset
													class="form-label-group position-relative has-icon-left">
													<input type="password" class="form-control" name="password"
														id="user-password" placeholder="Password" required>
													<div class="form-control-position">
														<i class="feather icon-lock"></i>
													</div>
													<label for="user-password">Password</label>
												</fieldset>
												<div
													class="form-group d-flex justify-content-between align-items-center">
													<!-- <div class="text-left">
														<fieldset class="checkbox">
															<div class="vs-checkbox-con vs-checkbox-primary">
																<input type="checkbox"> <span
																	class="vs-checkbox"> <span
																	class="vs-checkbox--check"> <i
																		class="vs-icon feather icon-check"></i>
																</span>
																</span> <span class="">Remember me</span>
															</div>
														</fieldset>
													</div>
													<div class="text-right">
														<a href="auth-forgot-password.html" class="card-link">Forgot
															Password?</a>
													</div> -->
												</div>
												<a href="${ pageContext.request.contextPath }/member/join"
													class="btn btn-success btn-block">회원가입</a>
												<button type="submit" class="btn btn-primary btn-block">로그인</button>
												<div class="divider">
													<div class="divider-text">OR</div>
												</div>
												
												<a class="btn btn-block" href="https://kauth.kakao.com/oauth/authorize?client_id=e355c450ecfaeb579db7e67d74790574&redirect_uri=http://localhost:8088/kakaologin&response_type=code"
												>
            									<img src="${ pageContext.request.contextPath }/resources/images/kakao_account_login_btn_medium_wide.png"></a>
												
												
											</form>
										</div>
									</div>


									
								</div>
							</div>
						</div>
					</div>
				</div>
				</section>
				
				<section id="slider" class="slider-element revslider-wrap full-screen clearfix">

			<div id="rev_slider_1014_1_wrapper" class="rev_slider_wrapper fullscreen-container" data-alias="typewriter-effect" data-source="gallery" style="background-color:transparent;padding:0px;">
				<!-- START REVOLUTION SLIDER 5.3.0.2 fullscreen mode -->
				<div id="rev_slider_1014_1" class="rev_slider fullscreenbanner" style="display:none;" data-version="5.3.0.2">
					<ul>	<!-- SLIDE  -->
						<li class="dark" data-index="rs-2800" data-transition="slidingoverlayhorizontal" data-slotamount="default" data-hideafterloop="0" data-hideslideonmobile="off"  data-easein="default" data-easeout="default" data-masterspeed="default"  data-thumb="${ pageContext.request.contextPath }/resources/images/Dancing-Bulbs-100x50.jpg"  data-rotate="0"  data-saveperformance="off"  data-title="Slide" data-param1="" data-param2="" data-param3="" data-param4="" data-param5="" data-param6="" data-param7="" data-param8="" data-param9="" data-param10="" data-description="">
							<!-- MAIN IMAGE -->
							<img src="${ pageContext.request.contextPath }/resources/images/Dancing-Bulbs.jpg"  alt=""  data-bgposition="center center" data-bgfit="cover" class="rev-slidebg" data-no-retina>
							<!-- LAYERS -->

							<!-- BACKGROUND VIDEO LAYER -->
							<div class="rs-background-video-layer"
								data-forcerewind="on"
								data-volume="mute"
								data-videowidth="100%"
								data-videoheight="100%"
								data-videomp4="${ pageContext.request.contextPath }/resources/images/Dancing-Bulbs.mp4"
								data-videopreload="auto"
								data-videoloop="loop"
								data-forceCover="1"
								data-aspectratio="16:9"
								data-autoplay="true"
								data-autoplayonlyfirsttime="false"
							></div>
							<!-- LAYER NR. 1 -->
							<div class="tp-caption tp-shape tp-shapewrapper "
								 id="slide-2800-layer-7"
								 data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']"
								 data-y="['middle','middle','middle','middle']" data-voffset="['0','0','0','0']"
											data-width="full"
								data-height="full"
								data-whitespace="nowrap"

								data-type="shape"
								data-basealign="slide"
								data-responsive_offset="off"
								data-responsive="off"
								data-frames='[{"from":"opacity:0;","speed":500,"to":"o:1;","delay":0,"ease":"Power4.easeOut"},{"speed":5000,"to":"opacity:0;","ease":"Power4.easeInOut"}]'
								data-textAlign="['left','left','left','left']"
								data-paddingtop="[0,0,0,0]"
								data-paddingright="[0,0,0,0]"
								data-paddingbottom="[0,0,0,0]"
								data-paddingleft="[0,0,0,0]"

								style="z-index: 5;background-color:rgba(0, 0, 0, 0.50);border-color:rgba(0, 0, 0, 0);border-width:0px;"> </div>

							<!-- LAYER NR. 2 -->
							<div class="tp-caption   tp-resizeme"
								 id="slide-2800-layer-1"
								 data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']"
								 data-y="['middle','middle','middle','middle']" data-voffset="['-80','-80','-130','-157']"
											data-fontsize="['130','130','100','80']"
								data-lineheight="['130','130','100','80']"
								data-width="none"
								data-height="none"
								data-whitespace="nowrap"

								data-type="text"
								data-responsive_offset="on"

								data-frames='[{"from":"y:50px;sX:1;sY:1;opacity:0;","speed":2500,"to":"o:1;","delay":500,"ease":"Power4.easeOut"},{"delay":"wait","speed":300,"to":"opacity:0;","ease":"nothing"}]'
								data-textAlign="['center','center','center','center']"
								data-paddingtop="[0,0,0,0]"
								data-paddingright="[0,0,0,0]"
								data-paddingbottom="[0,0,0,0]"
								data-paddingleft="[0,0,0,0]"

								style="z-index: 6; white-space: nowrap; font-size: 130px; line-height: 130px; font-weight: 700; color: rgba(255, 255, 255, 1.00);font-family:Arial, Helvetica, sans-serif;border-width:0px;letter-spacing:-7px;">Web Agency </div>

							<!-- LAYER NR. 3 -->
							<div class="tp-caption tp-shape tp-shapewrapper  tp-resizeme"
								 id="slide-2800-layer-3"
								 data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']"
								 data-y="['middle','middle','middle','middle']" data-voffset="['16','16','-54','-89']"
											data-width="60"
								data-height="3"
								data-whitespace="nowrap"

								data-type="shape"
								data-responsive_offset="on"

								data-frames='[{"from":"y:50px;opacity:0;","speed":2500,"to":"o:1;","delay":500,"ease":"Power4.easeOut"},{"delay":"wait","speed":300,"to":"opacity:0;","ease":"nothing"}]'
								data-textAlign="['left','left','left','left']"
								data-paddingtop="[0,0,0,0]"
								data-paddingright="[0,0,0,0]"
								data-paddingbottom="[0,0,0,0]"
								data-paddingleft="[0,0,0,0]"

								style="z-index: 7;background-color:rgba(38, 211, 105, 1.00);border-color:rgba(0, 0, 0, 0);border-width:0px;"> </div>

							<!-- LAYER NR. 4 -->
							<div class="tp-caption   tp-resizeme"
								 id="slide-2800-layer-2"
								 data-x="['center','center','center','center']" data-hoffset="['-10','-10','-10','-10']"
								 data-y="['middle','middle','middle','middle']" data-voffset="['65','65','-8','-32']"
											data-fontsize="['40','40','30','30']"
								data-width="['640','640','480','360']"
								data-height="none"
								data-whitespace="['nowrap','nowrap','normal','normal']"

								data-type="text"
								data-typewriter='{"lines":"167%20Clients%20Worldwide.,23%20Qualified%20Employees.,150%20Cups%20of%20Coffee%20per%20Day.","enabled":"on","speed":"60","delays":"1%7C100","looped":"on","cursorType":"one","blinking":"on","word_delay":"off","sequenced":"on","hide_cursor":"off","start_delay":"1500","newline_delay":"1000","deletion_speed":"20","deletion_delay":"1000","blinking_speed":"500","linebreak_delay":"60","cursor_type":"two","background":"off"}'
								data-responsive_offset="on"

								data-frames='[{"from":"y:50px;sX:1;sY:1;opacity:0;","speed":2500,"to":"o:1;","delay":500,"ease":"Power4.easeOut"},{"delay":"wait","speed":300,"to":"opacity:0;","ease":"nothing"}]'
								data-textAlign="['center','center','center','center']"
								data-paddingtop="[0,0,0,0]"
								data-paddingright="[0,0,0,0]"
								data-paddingbottom="[0,0,0,0]"
								data-paddingleft="[0,0,0,0]"

								style="z-index: 8; min-width: 640px; max-width: 640px; white-space: nowrap; font-size: 40px; line-height: 40px; font-weight: 400; color: rgba(255, 255, 255, 1.00);font-family:Georgia, serif;font-style:italic;border-width:0px;">Dedicated. Inspired. Passionate. </div>

							<!-- LAYER NR. 5 -->
							<div class="tp-caption rev-btn  tp-resizeme"
								 id="slide-2800-layer-4"
								 data-x="['right','right','center','center']" data-hoffset="['660','550','0','0']"
								 data-y="['middle','middle','middle','middle']" data-voffset="['240','240','100','83']"
											data-width="none"
								data-height="none"
								data-whitespace="nowrap"

								data-type="button"
								data-actions='[{"event":"click","action":"scrollbelow","offset":"px","delay":""}]'
								data-responsive_offset="on"

								data-frames='[{"from":"x:-50px;opacity:0;","speed":2500,"to":"o:1;","delay":500,"ease":"Power4.easeOut"},{"delay":"wait","speed":300,"to":"opacity:0;","ease":"nothing"},{"frame":"hover","speed":"150","ease":"Power2.easeInOut","to":"o:1;rX:0;rY:0;rZ:0;z:0;","style":"c:rgba(0, 0, 0, 1.00);bg:rgba(255, 255, 255, 1.00);bc:rgba(255, 255, 255, 0);bw:2px 2px 2px 2px;"}]'
								data-textAlign="['left','left','left','left']"
								data-paddingtop="[0,0,0,0]"
								data-paddingright="[50,50,50,50]"
								data-paddingbottom="[0,0,0,0]"
								data-paddingleft="[50,50,50,50]"

								style="z-index: 9; white-space: nowrap; font-size: 15px; line-height: 46px; font-weight: 700; color: rgba(255, 255, 255, 1.00);font-family:Arial, Helvetica, sans-serif;background-color:rgba(0, 0, 0, 0);border-color:rgba(255, 255, 255, 0.25);border-style:solid;border-width:2px;border-radius:4px 4px 4px 4px;outline:none;box-shadow:none;box-sizing:border-box;-moz-box-sizing:border-box;-webkit-box-sizing:border-box;letter-spacing:5px;cursor:pointer;">ABOUT US </div>

							<!-- LAYER NR. 6 -->
							<div class="tp-caption   tp-resizeme"
								 id="slide-2800-layer-6"
								 data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']"
								 data-y="['middle','middle','middle','middle']" data-voffset="['237','237','158','141']"
											data-width="none"
								data-height="none"
								data-whitespace="nowrap"

								data-type="text"
								data-responsive_offset="on"

								data-frames='[{"from":"y:50px;opacity:0;","speed":2500,"to":"o:1;","delay":500,"ease":"Power4.easeOut"},{"delay":"wait","speed":300,"to":"opacity:0;","ease":"nothing"}]'
								data-textAlign="['left','left','left','left']"
								data-paddingtop="[0,0,0,0]"
								data-paddingright="[0,0,0,0]"
								data-paddingbottom="[0,0,0,0]"
								data-paddingleft="[0,0,0,0]"

								style="z-index: 10; white-space: nowrap; font-size: 25px; line-height: 25px; font-weight: 400; color: rgba(255, 255, 255, 1.00);font-family:Georgia, serif;font-style:italic;border-width:0px;">or </div>

							<!-- LAYER NR. 7 -->
							<div class="tp-caption rev-btn  tp-resizeme"
								 id="slide-2800-layer-5"
								 data-x="['left','left','center','center']" data-hoffset="['660','550','0','0']"
								 data-y="['middle','middle','middle','middle']" data-voffset="['240','240','224','207']"
											data-width="none"
								data-height="none"
								data-whitespace="nowrap"

								data-type="button"
								data-actions='[{"event":"click","action":"scrollbelow","offset":"px","delay":""}]'
								data-responsive_offset="on"

								data-frames='[{"from":"x:50px;opacity:0;","speed":2500,"to":"o:1;","delay":500,"ease":"Power4.easeOut"},{"delay":"wait","speed":300,"to":"opacity:0;","ease":"nothing"},{"frame":"hover","speed":"150","ease":"Power2.easeInOut","to":"o:1;rX:0;rY:0;rZ:0;z:0;","style":"c:rgba(0, 0, 0, 1.00);bg:rgba(255, 255, 255, 1.00);bc:rgba(255, 255, 255, 0);bw:2px 2px 2px 2px;"}]'
								data-textAlign="['left','left','left','left']"
								data-paddingtop="[0,0,0,0]"
								data-paddingright="[50,50,50,50]"
								data-paddingbottom="[0,0,0,0]"
								data-paddingleft="[50,50,50,50]"

								style="z-index: 11; white-space: nowrap; font-size: 15px; line-height: 46px; font-weight: 700; color: rgba(255, 255, 255, 1.00);font-family:Arial, Helvetica, sans-serif;background-color:rgba(0, 0, 0, 0);border-color:rgba(255, 255, 255, 0.25);border-style:solid;border-width:2px;border-radius:4px 4px 4px 4px;outline:none;box-shadow:none;box-sizing:border-box;-moz-box-sizing:border-box;-webkit-box-sizing:border-box;letter-spacing:5px;cursor:pointer;">CONTACT </div>
						</li>
						<!-- SLIDE  -->
						<li data-index="rs-2801" data-transition="slidingoverlayhorizontal" data-slotamount="default" data-hideafterloop="0" data-hideslideonmobile="off"  data-easein="default" data-easeout="default" data-masterspeed="default"  data-thumb="${ pageContext.request.contextPath }/resources/images/citybg-100x50.jpg"  data-rotate="0"  data-saveperformance="off"  data-title="Slide" data-param1="" data-param2="" data-param3="" data-param4="" data-param5="" data-param6="" data-param7="" data-param8="" data-param9="" data-param10="" data-description="">
							<!-- MAIN IMAGE -->
							<img src="${ pageContext.request.contextPath }/resources/images/citybg.jpg"  alt=""  data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat" class="rev-slidebg" data-no-retina>
							<!-- LAYERS -->

							<!-- LAYER NR. 8 -->
							<div class="tp-caption tp-shape tp-shapewrapper "
								 id="slide-2801-layer-7"
								 data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']"
								 data-y="['middle','middle','middle','middle']" data-voffset="['0','0','0','0']"
											data-width="full"
								data-height="full"
								data-whitespace="nowrap"

								data-type="shape"
								data-basealign="slide"
								data-responsive_offset="off"
								data-responsive="off"
								data-frames='[{"from":"opacity:0;","speed":1000,"to":"o:1;","delay":0,"ease":"Power4.easeOut"},{"delay":"wait","speed":1000,"to":"opacity:0;","ease":"Power4.easeOut"}]'
								data-textAlign="['left','left','left','left']"
								data-paddingtop="[0,0,0,0]"
								data-paddingright="[0,0,0,0]"
								data-paddingbottom="[0,0,0,0]"
								data-paddingleft="[0,0,0,0]"

								style="z-index: 12;background-color:rgba(0, 0, 0, 0.50);border-color:rgba(0, 0, 0, 0);border-width:0px;"> </div>

							<!-- LAYER NR. 9 -->
							<div class="tp-caption   tp-resizeme"
								 id="slide-2801-layer-1"
								 data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']"
								 data-y="['middle','middle','middle','middle']" data-voffset="['-80','-80','-130','-157']"
											data-fontsize="['130','130','100','80']"
								data-lineheight="['130','130','100','80']"
								data-width="none"
								data-height="none"
								data-whitespace="nowrap"

								data-type="text"
								data-responsive_offset="on"

								data-frames='[{"from":"y:50px;sX:1;sY:1;opacity:0;","speed":2500,"to":"o:1;","delay":500,"ease":"Power4.easeOut"},{"delay":"wait","speed":300,"to":"opacity:0;","ease":"nothing"}]'
								data-textAlign="['center','center','center','center']"
								data-paddingtop="[0,0,0,0]"
								data-paddingright="[0,0,0,0]"
								data-paddingbottom="[0,0,0,0]"
								data-paddingleft="[0,0,0,0]"

								style="z-index: 13; white-space: nowrap; font-size: 130px; line-height: 130px; font-weight: 700; color: rgba(255, 255, 255, 1.00);font-family:Arial, Helvetica, sans-serif;background-color:rgba(0, 0, 0, 0);border-width:0px;letter-spacing:-7px;">Dream. Big. </div>

							<!-- LAYER NR. 10 -->
							<div class="tp-caption tp-shape tp-shapewrapper  tp-resizeme"
								 id="slide-2801-layer-3"
								 data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']"
								 data-y="['middle','middle','middle','middle']" data-voffset="['16','16','-54','-89']"
											data-width="60"
								data-height="3"
								data-whitespace="nowrap"

								data-type="shape"
								data-responsive_offset="on"

								data-frames='[{"from":"y:50px;opacity:0;","speed":2500,"to":"o:1;","delay":500,"ease":"Power4.easeOut"},{"delay":"wait","speed":300,"to":"opacity:0;","ease":"nothing"}]'
								data-textAlign="['left','left','left','left']"
								data-paddingtop="[0,0,0,0]"
								data-paddingright="[0,0,0,0]"
								data-paddingbottom="[0,0,0,0]"
								data-paddingleft="[0,0,0,0]"

								style="z-index: 14;background-color:rgba(0, 220, 186, 1.00);border-color:rgba(0, 0, 0, 0);border-width:0px;"> </div>

							<!-- LAYER NR. 11 -->
							<div class="tp-caption   tp-resizeme"
								 id="slide-2801-layer-2"
								 data-x="['center','center','center','center']" data-hoffset="['-10','-10','-10','-10']"
								 data-y="['middle','middle','middle','middle']" data-voffset="['65','65','-8','-32']"
											data-fontsize="['40','40','30','30']"
								data-width="['640','640','480','360']"
								data-height="none"
								data-whitespace="normal"

								data-type="text"
								data-typewriter='{"lines":"Customizable%20Typerwiter%20Effect.,Add%20to%20any%20Text%20Layer.,A%20100%25%20Free%20Addon%20for%20Rvsldr.","enabled":"on","speed":"60","delays":"1%7C100","looped":"on","cursorType":"one","blinking":"on","word_delay":"off","sequenced":"on","hide_cursor":"off","start_delay":"1500","newline_delay":"1000","deletion_speed":"20","deletion_delay":"1000","blinking_speed":"500","linebreak_delay":"60","cursor_type":"two","background":"off"}'
								data-responsive_offset="on"

								data-frames='[{"from":"y:50px;sX:1;sY:1;opacity:0;","speed":2500,"to":"o:1;","delay":500,"ease":"Power4.easeOut"},{"delay":"wait","speed":300,"to":"opacity:0;","ease":"nothing"}]'
								data-textAlign="['center','center','center','center']"
								data-paddingtop="[0,0,0,0]"
								data-paddingright="[0,0,0,0]"
								data-paddingbottom="[0,0,0,0]"
								data-paddingleft="[0,0,0,0]"

								style="z-index: 15; min-width: 640px; max-width: 640px; white-space: normal; font-size: 40px; line-height: 40px; font-weight: 400; color: rgba(255, 255, 255, 1.00);font-family:Georgia, serif;font-style:italic;border-width:0px;">Made to Captivate your Audience. </div>

							<!-- LAYER NR. 12 -->
							<div class="tp-caption rev-btn  tp-resizeme"
								 id="slide-2801-layer-4"
								 data-x="['right','right','center','center']" data-hoffset="['660','550','0','0']"
								 data-y="['middle','middle','middle','middle']" data-voffset="['240','240','100','83']"
											data-width="none"
								data-height="none"
								data-whitespace="nowrap"

								data-type="button"
								data-actions='[{"event":"click","action":"scrollbelow","offset":"px","delay":""}]'
								data-responsive_offset="on"

								data-frames='[{"from":"x:-50px;opacity:0;","speed":2500,"to":"o:1;","delay":500,"ease":"Power4.easeOut"},{"delay":"wait","speed":300,"to":"opacity:0;","ease":"nothing"},{"frame":"hover","speed":"150","ease":"Power2.easeInOut","to":"o:1;rX:0;rY:0;rZ:0;z:0;","style":"c:rgba(0, 0, 0, 1.00);bg:rgba(255, 255, 255, 1.00);bc:rgba(255, 255, 255, 0);bw:2px 2px 2px 2px;"}]'
								data-textAlign="['left','left','left','left']"
								data-paddingtop="[0,0,0,0]"
								data-paddingright="[50,50,50,50]"
								data-paddingbottom="[0,0,0,0]"
								data-paddingleft="[50,50,50,50]"

								style="z-index: 16; white-space: nowrap; font-size: 15px; line-height: 46px; font-weight: 700; color: rgba(255, 255, 255, 1.00);font-family:Arial, Helvetica, sans-serif;background-color:rgba(0, 0, 0, 0);border-color:rgba(255, 255, 255, 0.25);border-style:solid;border-width:2px;border-radius:4px 4px 4px 4px;outline:none;box-shadow:none;box-sizing:border-box;-moz-box-sizing:border-box;-webkit-box-sizing:border-box;letter-spacing:5px;cursor:pointer;">ABOUT US </div>

							<!-- LAYER NR. 13 -->
							<div class="tp-caption   tp-resizeme"
								 id="slide-2801-layer-6"
								 data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']"
								 data-y="['middle','middle','middle','middle']" data-voffset="['237','237','158','141']"
											data-width="none"
								data-height="none"
								data-whitespace="nowrap"

								data-type="text"
								data-responsive_offset="on"

								data-frames='[{"from":"y:50px;opacity:0;","speed":2500,"to":"o:1;","delay":500,"ease":"Power4.easeOut"},{"delay":"wait","speed":300,"to":"opacity:0;","ease":"nothing"}]'
								data-textAlign="['left','left','left','left']"
								data-paddingtop="[0,0,0,0]"
								data-paddingright="[0,0,0,0]"
								data-paddingbottom="[0,0,0,0]"
								data-paddingleft="[0,0,0,0]"

								style="z-index: 17; white-space: nowrap; font-size: 25px; line-height: 25px; font-weight: 400; color: rgba(255, 255, 255, 1.00);font-family:Georgia, serif;font-style:italic;border-width:0px;">or </div>

							<!-- LAYER NR. 14 -->
							<div class="tp-caption rev-btn  tp-resizeme"
								 id="slide-2801-layer-5"
								 data-x="['left','left','center','center']" data-hoffset="['660','550','0','0']"
								 data-y="['middle','middle','middle','middle']" data-voffset="['240','240','224','207']"
											data-width="none"
								data-height="none"
								data-whitespace="nowrap"

								data-type="button"
								data-actions='[{"event":"click","action":"scrollbelow","offset":"px","delay":""}]'
								data-responsive_offset="on"

								data-frames='[{"from":"x:50px;opacity:0;","speed":2500,"to":"o:1;","delay":500,"ease":"Power4.easeOut"},{"delay":"wait","speed":300,"to":"opacity:0;","ease":"nothing"},{"frame":"hover","speed":"150","ease":"Power2.easeInOut","to":"o:1;rX:0;rY:0;rZ:0;z:0;","style":"c:rgba(0, 0, 0, 1.00);bg:rgba(255, 255, 255, 1.00);bc:rgba(255, 255, 255, 0);bw:2px 2px 2px 2px;"}]'
								data-textAlign="['left','left','left','left']"
								data-paddingtop="[0,0,0,0]"
								data-paddingright="[50,50,50,50]"
								data-paddingbottom="[0,0,0,0]"
								data-paddingleft="[50,50,50,50]"

								style="z-index: 18; white-space: nowrap; font-size: 15px; line-height: 46px; font-weight: 700; color: rgba(255, 255, 255, 1.00);font-family:Arial, Helvetica, sans-serif;background-color:rgba(0, 0, 0, 0);border-color:rgba(255, 255, 255, 0.25);border-style:solid;border-width:2px;border-radius:4px 4px 4px 4px;outline:none;box-shadow:none;box-sizing:border-box;-moz-box-sizing:border-box;-webkit-box-sizing:border-box;letter-spacing:5px;cursor:pointer;">CONTACT </div>
						</li>
						<!-- SLIDE  -->
						<li data-index="rs-2802" data-transition="slidingoverlayhorizontal" data-slotamount="default" data-hideafterloop="0" data-hideslideonmobile="off"  data-easein="default" data-easeout="default" data-masterspeed="default"  data-thumb="${ pageContext.request.contextPath }/resources/images/farmbg-100x50.jpg"  data-rotate="0"  data-saveperformance="off"  data-title="Slide" data-param1="" data-param2="" data-param3="" data-param4="" data-param5="" data-param6="" data-param7="" data-param8="" data-param9="" data-param10="" data-description="">
							<!-- MAIN IMAGE -->
							<img src="${ pageContext.request.contextPath }/resources/images/farmbg.jpg"  alt=""  data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat" class="rev-slidebg" data-no-retina>
							<!-- LAYERS -->

							<!-- LAYER NR. 15 -->
							<div class="tp-caption tp-shape tp-shapewrapper "
								 id="slide-2802-layer-7"
								 data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']"
								 data-y="['middle','middle','middle','middle']" data-voffset="['0','0','0','0']"
											data-width="full"
								data-height="full"
								data-whitespace="nowrap"

								data-type="shape"
								data-basealign="slide"
								data-responsive_offset="off"
								data-responsive="off"
								data-frames='[{"from":"opacity:0;","speed":1000,"to":"o:1;","delay":0,"ease":"Power4.easeOut"},{"delay":"wait","speed":1000,"to":"opacity:0;","ease":"Power4.easeOut"}]'
								data-textAlign="['left','left','left','left']"
								data-paddingtop="[0,0,0,0]"
								data-paddingright="[0,0,0,0]"
								data-paddingbottom="[0,0,0,0]"
								data-paddingleft="[0,0,0,0]"

								style="z-index: 19;background-color:rgba(0, 0, 0, 0.50);border-color:rgba(0, 0, 0, 0);border-width:0px;"> </div>

							<!-- LAYER NR. 16 -->
							<div class="tp-caption   tp-resizeme"
								 id="slide-2802-layer-1"
								 data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']"
								 data-y="['middle','middle','middle','middle']" data-voffset="['-80','-81','-171','-146']"
											data-fontsize="['100','100','70','60']"
								data-lineheight="['100','100','70','50']"
								data-width="['760','760','none','360']"
								data-height="none"
								data-whitespace="['normal','normal','nowrap','normal']"

								data-type="text"
								data-typewriter='{"lines":"","enabled":"on","speed":"80","delays":"1%7C100","looped":"off","cursorType":"one","blinking":"on","word_delay":"off","sequenced":"off","hide_cursor":"on","start_delay":"1000","newline_delay":"1000","deletion_speed":"20","deletion_delay":"1000","blinking_speed":"500","linebreak_delay":"60","cursor_type":"two","background":"off"}'
								data-responsive_offset="on"

								data-frames='[{"from":"y:50px;sX:1;sY:1;opacity:0;","speed":2500,"to":"o:1;","delay":500,"ease":"Power4.easeOut"},{"delay":"wait","speed":300,"to":"opacity:0;","ease":"nothing"}]'
								data-textAlign="['center','center','center','center']"
								data-paddingtop="[0,0,0,0]"
								data-paddingright="[0,0,0,0]"
								data-paddingbottom="[0,0,0,0]"
								data-paddingleft="[0,0,0,0]"

								style="z-index: 20; min-width: 760px; max-width: 760px; white-space: normal; font-size: 100px; line-height: 100px; font-weight: 700; color: rgba(255, 255, 255, 1.00);font-family:Arial, Helvetica, sans-serif;border-width:0px;letter-spacing:-5px;">It Always Seems<br/>Impossible<br/> Until its Done.  </div>

							<!-- LAYER NR. 17 -->
							<div class="tp-caption tp-shape tp-shapewrapper  tp-resizeme"
								 id="slide-2802-layer-3"
								 data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']"
								 data-y="['middle','middle','middle','middle']" data-voffset="['96','96','-35','-19']"
											data-width="60"
								data-height="3"
								data-whitespace="nowrap"

								data-type="shape"
								data-responsive_offset="on"

								data-frames='[{"from":"y:50px;opacity:0;","speed":2500,"to":"o:1;","delay":5000,"ease":"Power4.easeOut"},{"delay":"wait","speed":300,"to":"opacity:0;","ease":"nothing"}]'
								data-textAlign="['left','left','left','left']"
								data-paddingtop="[0,0,0,0]"
								data-paddingright="[0,0,0,0]"
								data-paddingbottom="[0,0,0,0]"
								data-paddingleft="[0,0,0,0]"

								style="z-index: 21;background-color:rgba(0, 220, 186, 1.00);border-color:rgba(0, 0, 0, 0);border-width:0px;"> </div>

							<!-- LAYER NR. 18 -->
							<div class="tp-caption   tp-resizeme"
								 id="slide-2802-layer-2"
								 data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']"
								 data-y="['middle','middle','middle','middle']" data-voffset="['144','144','12','18']"
											data-fontsize="['40','40','30','30']"
								data-width="['640','640','480','360']"
								data-height="none"
								data-whitespace="normal"

								data-type="text"
								data-responsive_offset="on"

								data-frames='[{"from":"y:50px;sX:1;sY:1;opacity:0;","speed":2500,"to":"o:1;","delay":5000,"ease":"Power4.easeOut"},{"delay":"wait","speed":300,"to":"opacity:0;","ease":"nothing"}]'
								data-textAlign="['center','center','center','center']"
								data-paddingtop="[0,0,0,0]"
								data-paddingright="[0,0,0,0]"
								data-paddingbottom="[0,0,0,0]"
								data-paddingleft="[0,0,0,0]"

								style="z-index: 22; min-width: 640px; max-width: 640px; white-space: normal; font-size: 40px; line-height: 40px; font-weight: 400; color: rgba(255, 255, 255, 1.00);font-family:Georgia, serif;font-style:italic;border-width:0px;">Nelson Mandela </div>

							<!-- LAYER NR. 19 -->
							<div class="tp-caption rev-btn  tp-resizeme"
								 id="slide-2802-layer-4"
								 data-x="['right','right','center','center']" data-hoffset="['660','550','0','0']"
								 data-y="['middle','middle','middle','middle']" data-voffset="['240','240','100','93']"
											data-width="none"
								data-height="none"
								data-whitespace="nowrap"

								data-type="button"
								data-actions='[{"event":"click","action":"scrollbelow","offset":"px","delay":""}]'
								data-responsive_offset="on"

								data-frames='[{"from":"x:-50px;opacity:0;","speed":2500,"to":"o:1;","delay":5000,"ease":"Power4.easeOut"},{"delay":"wait","speed":300,"to":"opacity:0;","ease":"nothing"},{"frame":"hover","speed":"150","ease":"Power2.easeInOut","to":"o:1;rX:0;rY:0;rZ:0;z:0;","style":"c:rgba(0, 0, 0, 1.00);bg:rgba(255, 255, 255, 1.00);bc:rgba(255, 255, 255, 0);bw:2px 2px 2px 2px;"}]'
								data-textAlign="['left','left','left','left']"
								data-paddingtop="[0,0,0,0]"
								data-paddingright="[50,50,50,50]"
								data-paddingbottom="[0,0,0,0]"
								data-paddingleft="[50,50,50,50]"

								style="z-index: 23; white-space: nowrap; font-size: 15px; line-height: 46px; font-weight: 700; color: rgba(255, 255, 255, 1.00);font-family:Arial, Helvetica, sans-serif;background-color:rgba(0, 0, 0, 0);border-color:rgba(255, 255, 255, 0.25);border-style:solid;border-width:2px;border-radius:4px 4px 4px 4px;outline:none;box-shadow:none;box-sizing:border-box;-moz-box-sizing:border-box;-webkit-box-sizing:border-box;letter-spacing:5px;cursor:pointer;">ABOUT US </div>

							<!-- LAYER NR. 20 -->
							<div class="tp-caption   tp-resizeme"
								 id="slide-2802-layer-6"
								 data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']"
								 data-y="['middle','middle','middle','middle']" data-voffset="['237','237','158','151']"
											data-width="none"
								data-height="none"
								data-whitespace="nowrap"

								data-type="text"
								data-responsive_offset="on"

								data-frames='[{"from":"y:50px;opacity:0;","speed":2500,"to":"o:1;","delay":5000,"ease":"Power4.easeOut"},{"delay":"wait","speed":300,"to":"opacity:0;","ease":"nothing"}]'
								data-textAlign="['left','left','left','left']"
								data-paddingtop="[0,0,0,0]"
								data-paddingright="[0,0,0,0]"
								data-paddingbottom="[0,0,0,0]"
								data-paddingleft="[0,0,0,0]"

								style="z-index: 24; white-space: nowrap; font-size: 25px; line-height: 25px; font-weight: 400; color: rgba(255, 255, 255, 1.00);font-family:Georgia, serif;font-style:italic;border-width:0px;">or </div>

							<!-- LAYER NR. 21 -->
							<div class="tp-caption rev-btn  tp-resizeme"
								 id="slide-2802-layer-5"
								 data-x="['left','left','center','center']" data-hoffset="['660','550','0','0']"
								 data-y="['middle','middle','middle','middle']" data-voffset="['240','240','224','217']"
											data-width="none"
								data-height="none"
								data-whitespace="nowrap"

								data-type="button"
								data-actions='[{"event":"click","action":"scrollbelow","offset":"px","delay":""}]'
								data-responsive_offset="on"

								data-frames='[{"from":"x:50px;opacity:0;","speed":2500,"to":"o:1;","delay":5000,"ease":"Power4.easeOut"},{"delay":"wait","speed":300,"to":"opacity:0;","ease":"nothing"},{"frame":"hover","speed":"150","ease":"Power2.easeInOut","to":"o:1;rX:0;rY:0;rZ:0;z:0;","style":"c:rgba(0, 0, 0, 1.00);bg:rgba(255, 255, 255, 1.00);bc:rgba(255, 255, 255, 0);bw:2px 2px 2px 2px;"}]'
								data-textAlign="['left','left','left','left']"
								data-paddingtop="[0,0,0,0]"
								data-paddingright="[50,50,50,50]"
								data-paddingbottom="[0,0,0,0]"
								data-paddingleft="[50,50,50,50]"

								style="z-index: 25; white-space: nowrap; font-size: 15px; line-height: 46px; font-weight: 700; color: rgba(255, 255, 255, 1.00);font-family:Arial, Helvetica, sans-serif;background-color:rgba(0, 0, 0, 0);border-color:rgba(255, 255, 255, 0.25);border-style:solid;border-width:2px;border-radius:4px 4px 4px 4px;outline:none;box-shadow:none;box-sizing:border-box;-moz-box-sizing:border-box;-webkit-box-sizing:border-box;letter-spacing:5px;cursor:pointer;">CONTACT </div>
							</li>
						</ul>
						<div class="tp-bannertimer tp-bottom" style="visibility: hidden !important;"></div>
					</div>
				</div><!-- END REVOLUTION SLIDER -->
			</div>

		</section>
				
				
				
				
				
				
				
				
				
			</div>
		</div>
	</div>
	<!-- END: Content-->


	<!-- BEGIN: Vendor JS-->
	<script
		src="${ pageContext.request.contextPath }/resources/js/vendors.min.js"></script>
	<!-- BEGIN Vendor JS-->

	<!-- BEGIN: Page Vendor JS-->
	<script
		src="${ pageContext.request.contextPath }/resources/js/jquery.sticky.js"></script>
	<script
		src="${ pageContext.request.contextPath }/resources/js/vegas.min.js"></script>

	<script
		src="${ pageContext.request.contextPath }/resources/js/jquery.themepunch.tools.min.js"></script>
	<script
		src="${ pageContext.request.contextPath }/resources/js/jquery.themepunch.revolution.min.js"></script>

	<script
		src="${ pageContext.request.contextPath }/resources/js/revolution.extension.actions.min.js"></script>
	<script
		src="${ pageContext.request.contextPath }/resources/js/revolution.extension.carousel.min.js"></script>
	<script
		src="${ pageContext.request.contextPath }/resources/js/revolution.extension.kenburn.min.js"></script>
	<script
		src="${ pageContext.request.contextPath }/resources/js/revolution.extension.layeranimation.min.js"></script>
	<script
		src="${ pageContext.request.contextPath }/resources/js/revolution.extension.migration.min.js"></script>
	<script
		src="${ pageContext.request.contextPath }/resources/js/revolution.extension.navigation.min.js"></script>
	<script
		src="${ pageContext.request.contextPath }/resources/js/revolution.extension.parallax.min.js"></script>
	<script
		src="${ pageContext.request.contextPath }/resources/js/revolution.extension.slideanims.min.js"></script>
	<script
		src="${ pageContext.request.contextPath }/resources/js/revolution.extension.video.min.js"></script>

	<!-- TYPEWRITER ADDON -->
	<script src="${ pageContext.request.contextPath }/resources/js/revolution.addon.typewriter.min.js"></script>
			



		
		
	<!-- END: Page Vendor JS-->

	<!-- BEGIN: Theme JS-->
	<script
		src="${ pageContext.request.contextPath }/resources/js/app-menu.js"></script>
	<script src="${ pageContext.request.contextPath }/resources/js/app.js"></script>
	<script
		src="${ pageContext.request.contextPath }/resources/js/components.js"></script>
	<!-- END: Theme JS-->

	<!-- BEGIN: Page JS-->
	<!-- END: Page JS-->


	

	<script>
	
 	<c:if test = '${ not empty loginVO }'>
    	location.href = "${ pageContext.request.contextPath}/team/${ loginVO.memberid }"
	</c:if>

		
   if ("${ param.msg }")
      alert("${ param.msg }");
   
   $(function(){
	   $('body').vegas({
		   slides:[
			   {src: '${ pageContext.request.contextPath }/resources/images/bg1.jpg'},
			   {src: '${ pageContext.request.contextPath }/resources/images/bg2.jpg'},
			   {src: '${ pageContext.request.contextPath }/resources/images/bg3.jpg'},
			   {src: '${ pageContext.request.contextPath }/resources/images/bg4.jpg'},
			   {src: '${ pageContext.request.contextPath }/resources/images/bg5.jpg'},
			   {src: '${ pageContext.request.contextPath }/resources/images/bg6.jpg'},
			   {src: '${ pageContext.request.contextPath }/resources/images/bg7.jpg'},
			   {src: '${ pageContext.request.contextPath }/resources/images/bg8.jpg'},
			   {src: '${ pageContext.request.contextPath }/resources/images/bg9.jpg'},
			   {src: '${ pageContext.request.contextPath }/resources/images/bg10.jpg'}
		   ],
		   delay:5500,
		   timer:false,
		   overlay:true
		   
	   })
   })
   
   
   var tpj=jQuery;

		var revapi1014;
		tpj(document).ready(function() {
			if(tpj("#rev_slider_1014_1").revolution == undefined){
				revslider_showDoubleJqueryError("#rev_slider_1014_1");
			}else{
				revapi1014 = tpj("#rev_slider_1014_1").show().revolution({
					sliderType:"standard",
					jsFileLocation: "include/rs-plugin/js/",
					sliderLayout:"fullscreen",
					dottedOverlay:"none",
					delay:9000,
					navigation: {
						keyboardNavigation:"off",
						keyboard_direction: "horizontal",
						mouseScrollNavigation:"off",
						mouseScrollReverse:"default",
						onHoverStop:"off",
						touch:{
							touchenabled:"on",
							swipe_threshold: 75,
							swipe_min_touches: 1,
							swipe_direction: "horizontal",
							drag_block_vertical: false
						}
						,
						arrows: {
							style:"uranus",
							enable:true,
							hide_onmobile:true,
							hide_under:768,
							hide_onleave:false,
							tmp:'',
							left: {
								h_align:"left",
								v_align:"center",
								h_offset:20,
								v_offset:0
							},
							right: {
								h_align:"right",
								v_align:"center",
								h_offset:20,
								v_offset:0
							}
						}
					},
					responsiveLevels:[1240,1024,778,480],
					visibilityLevels:[1240,1024,778,480],
					gridwidth:[1240,1024,778,480],
					gridheight:[868,768,960,600],
					lazyType:"none",
					shadow:0,
					spinner:"off",
					stopLoop:"on",
					stopAfterLoops:0,
					stopAtSlide:1,
					shuffle:"off",
					autoHeight:"off",
					fullScreenAutoWidth:"off",
					fullScreenAlignForce:"off",
					fullScreenOffsetContainer: "",
					fullScreenOffset: "",
					disableProgressBar:"on",
					hideThumbsOnMobile:"off",
					hideSliderAtLimit:0,
					hideCaptionAtLimit:0,
					hideAllCaptionAtLilmit:0,
					debugMode:false,
					fallbacks: {
						simplifyAll:"off",
						nextSlideOnWindowFocus:"off",
						disableFocusListener:false,
					}
				});
			}

			RsTypewriterAddOn(tpj, revapi1014);
		});	/*ready*/
   
</script>
</body>
</html>