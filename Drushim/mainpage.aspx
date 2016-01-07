<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mainpage.aspx.cs" Inherits="Drushim.mainpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <!-- this is the main menu of home page and will be added with the site-->
	    <title>IEMjobs</title>
	    <meta charset="utf-8" />
	    <meta name="viewport" content="width=device-width, initial-scale=1" />
	    <!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
	    <link rel="stylesheet" href="assets/css/main.css" />
	    <!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
	    <!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
    </head>
    <body class="index">
		<div id="page-wrapper">

			<!-- Banner -->
				<section id="banner">

					<!--
						".inner" is set up as an inline-block so it automatically expands
						in both directions to fit whatever's inside it. This means it won't
						automatically wrap lines, so be sure to use line breaks where
						appropriate (<br />).
					-->
					<div class="inner">
						<header>
							<h2>IEMjobs</h2>
						</header>
                        <p>אפליקציה לחיפוש עבודה לסטודנטים ומהנדסי תעשייה וניהול
						<br />
						</p>
						<footer>
                            <p>אני עושים מאמצים על מנת שאתר יושק בהקדם האפשרי ובאיכות גבוהה</p>
                            <p>אנא הצרפו אלינו לקבלת פרטים נוספים</p>
							<ul class="buttons">
							 	<li><a href="#subsForm" class="button fit scrolly">הירשם</a></li>
							</ul>
						</footer>
					</div>
				</section>
                
            <section id="subsForm" class="wrapper style4 special container 75%" runat="server">
					<header class="inner" style="font-size:xx-large; color:#83d3c9;">
                        <h2><strong>הרשמה</strong></h2>
                    </header>
                    <div class="content">
                        <form class="sub" runat="server" dir="rtl">
                            <div class="row 50%">
                                <div class="6u 12u(mobile)">
                                    <asp:TextBox ID="email_Add" runat="server" TextMode="Email" placeholder="הכנס כתובת אימייל" require="required"/>
                                    <asp:RegularExpressionValidator ID="email_Val" runat="server" Font-Size="Small" ForeColor="Red" ValidationGroup ="sb" 
                                    ControlToValidate="email_Add" ErrorMessage="כתובת לא חוקית"
                                    ValidationExpression="^([0-9a-zA-Z]([-.\w]*[0-9a-zA-Z])*@([0-9a-zA-Z][-\w]*[0-9a-zA-Z]\.)+[a-zA-Z]{2,9})$" />
							    </div>
                                <div class="6u 12u(mobile)">
                                    <asp:TextBox ID="UserName" runat="server" TextMode="SingleLine" placeholder="הכנס שם משתמש" require="required" />
                                    <asp:RegularExpressionValidator ID="usernameVal" runat="server" Font-Size="Small" ForeColor="Red" ValidationGroup="sb"
                                        ControlToValidate="UserName"
                                        ErrorMessage="שם משתמש חייב להכיל לפחות 3 תווים"
                                        ValidationExpression=".{3}.*" />
								</div>
                            </div>
    
                            <div class="row">
                                <div class="12u">
                                    <ul>
                                        <li> <asp:Label ID="sub_message" runat="server" ForeColor="GrayText"></asp:Label></li>
                                    </ul>
                                    <ul class="buttons">
                                        <li><asp:Button ID="Sub" runat="server" onclick="send_mail" Text="הירשם" class="special" ValidationGroup="sb" /></li>
                                    </ul>
                                </div>
                            </div>
    
                        </form>
                    </div>
            </section>


			<!-- Footer -->
				<footer id="footer">

					<ul class="icons">
						<li><a href="https://www.twitter.com" class="icon circle fa-twitter"><span class="label">Twitter</span></a></li>
						<li><a href="https://www.facebook.com" class="icon circle fa-facebook"><span class="label">Facebook</span></a></li>
						<li><a href="https://www.plus.google.com" class="icon circle fa-google-plus"><span class="label">Google+</span></a></li>
						<li><a href="https://www.github.com" class="icon circle fa-github"><span class="label">Github</span></a></li>
					</ul>

					<ul class="copyright">
						<li>&copy; 2015</li><li>Designed by sima belker</li>
					</ul>

				</footer>

		</div>
        
		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.dropotron.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/jquery.scrollgress.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="assets/js/main.js"></script>

	</body>
</html>
