<%@ page import="java.sql.*" %>
<%@ page import="java.util.Base64" %>
<%@ page import="java.io.ByteArrayOutputStream" %>
<%@ page import="java.io.InputStream" %>

<!DOCTYPE html>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/meanmenu.css">
<link rel="stylesheet" href="assets/css/owl.carousel.min.css">
<link rel="stylesheet" href="assets/css/owl.theme.default.min.css">
<link rel="stylesheet" href="assets/css/magnific-popup.css">
<link rel="stylesheet" href="assets/css/flaticon.css">
<link rel="stylesheet" href="assets/css/remixicon.css">
<link rel="stylesheet" href="assets/css/odometer.min.css">
<link rel="stylesheet" href="assets/css/aos.css">
<link rel="stylesheet" href="assets/css/style.css">
<link rel="stylesheet" href="assets/css/dark.css">
<link rel="stylesheet" href="assets/css/responsive.css">
<link rel="stylesheet" href="assets/css/header.css">
<link rel="icon" type="image/png" href="assets/images/Logo/bvicam_mainlogo.png">
<link rel="stylesheet" href="D:\sanu\default\assets\css\slider.css">
 <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.6.0/js/bootstrap.bundle.min.js"></script>
  
<title>BHARATI VIDYAPEETH'S INSTITUTE OF COMPUTER APPLICATIONS AND MANAGEMENT</title>
</head>
<body></div>
</div>
</div>


<div class="small">    

  <div include-html="header.html" id="header"></div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
$(function() {
  $('#header').load('header.html');
});
</script>
</div>



<style>

 @keyframes fadeIn {
      from {
        opacity: 0;
      }
      to {
        opacity: 1;
      }
    }

    .flex {
      display: flex;
    }

    .flex > div {
      flex: 1;
    }

    .fade-in {
      animation: fadeIn 1s ease-in-out;
    }


.flex {
  margin:100px;
  display: flex;
  border: 5px solid #333;
  background-color: #fff;
  margin-bottom: 2rem;
}
/* optional: alternately flips module layout 
.flex:nth-child(odd) {
  flex-direction: row-reverse;
}
*/
.flex div:first-child {
  flex: 1;
  background-size: cover;
  background-position: center;
}
.flex:first-of-type div:first-child {
  background-image: url("https://s3-us-west-2.amazonaws.com/s.cdpn.io/4273/aloe-polyphylla-2x.jpg");
}
.flex:last-of-type div:first-child {
  background-image: url(assets/images/campus-information/campus-1.jpg);
}
.flex div:last-child {
  margin: 2rem;
  flex: 2;
}
.flex h3 {
  font-size: 1.5rem;
  margin-top: 0;
  font-weight: 400;
}
.flex p {
  font-size: 1rem;
  line-height: 1.4;
  font-weight: 400;
}
.flex p:last-of-type {
  margin-bottom: 0;
}
.column {
  width: 80%;
  margin: 0 auto;
  max-width: 700px;
}
@media all and (max-width: 600px) {
  body { margin: 0; }
  // .flex div { flex: 1 !important; } optional: equalizes the visual "weight" of the photo and description
}
@media all and (max-width: 450px) {
  h2 {
    margin: 1rem;
  }
  .flex {
    border: 0;
    margin: 0;
    border-bottom: 2px solid #333;
  }
  .flex div:last-child {
    margin: 1rem;
  }
  .column {
    width: 100%;
  }
}
@media all and (max-width: 400px) {
  .flex { flex-direction: column; } 
  .flex div:first-child {
    min-height: 200px;
  }
}





  
 /* Custom CSS for the provided HTML */
        .academic-area {
            background-color: #f7f7f7;
            padding-top: 100px;
            padding-bottom: 70px;
        }

        .section-title {
            text-align: center;
            margin-bottom: 50px;
        }

        .section-title h2 {
            font-size: 36px;
            font-weight: bold;
            color: #333;
            margin-bottom: 0;
        }

        .single-academics-card {
            background-color: #fff;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.1);
            margin-bottom: 30px;
            transition: all 0.3s ease;
        }

        .single-academics-card:hover {
            transform: translateY(-5px);
            box-shadow: 0px 0px 40px rgba(0, 0, 0, 0.2);
        }

        .academic-top-content {
            padding: 20px;
            text-align: center;
        }

        .academic-top-content h3 {
            font-size: 24px;
            font-style: italic;
            margin-bottom: 10px;
            color: #333;
        }

        .academic-top-content a {
            text-decoration: none;
            color: #333;
        }

        .academic-top-content a:hover {
            text-decoration: underline;
        }

        @media (max-width: 768px) {
            .single-academics-card {
                text-align: center;
            }
        }

	#frame {
			margin-top: -320px;
			margin-left: 700px;	
			width: 400px;
			max-width: 100%;
			text-align: center;
		}

		#frame input[type=radio] {
			display: none;
		}

		#frame label {
			cursor: pointer;
			text-decoration: none;
		}
    
		
		.quick-links{
			background: #497dc1;
background: -moz-linear-gradient(left, #7293bf 0%, #bfe6ff 100%);
background: -webkit-linear-gradient(left, #7293bf 0%, #bfe6ff 100%);
background: -o-linear-gradient(left, #7293bf 0%, #bfe6ff 100%);
background: -ms-linear-gradient(left, #7293bf 0%, #bfe6ff 100%);
background: linear-gradient(to right, #7293bf 0%, #bfe6ff 100%);
		}

		#slides {
			padding: 10px;
border: 2px solid #000; /* Border color and thickness */
  border-radius: 10px; /* Rounded border radius */
background: #497dc1;
background: -moz-linear-gradient(left, #497dc1 0%, #bfe6ff 100%);
background: -webkit-linear-gradient(left, #497dc1 0%, #bfe6ff 100%);
background: -o-linear-gradient(left, #497dc1 0%, #bfe6ff 100%);
background: -ms-linear-gradient(left, #497dc1 0%, #bfe6ff 100%);
background: linear-gradient(to right, #497dc1 0%, #bfe6ff 100%);

			position: relative;
			z-index: 1;
		}

	  	#overflow {
			width: 100%;
			overflow: hidden;
		}

		#frame1:checked~#slides .inner {
			margin-left: 0;
		}

		#frame2:checked~#slides .inner {
			margin-left: -100%;
		}

		#frame3:checked~#slides .inner {
			margin-left: -200%;
		}

		#frame4:checked~#slides .inner {
			margin-left: -300%;
		}

		#slides .inner {
			transition: margin-left 800ms cubic-bezier(0.770, 0.000, 0.175, 1.000);
			width: 400%;
			line-height: 0;
			height: 300px;
		}

		#slides .frame {
			width: 25%;
			float: left;
			display: flex;
			justify-content: center;
			align-items: center;
			height: 100%;
   
			color: #FFFFFF;
		}

	

		#controls {
			margin: -180px 0 0 0;
			width: 100%;
			height: 50px;
			z-index: 3;
			position: relative;
		}

		#controls label {
			transition: opacity 0.2s ease-out;
			display: none;
			width: 50px;
			height: 50px;
			opacity: .4;
		}

		#controls label:hover {
			opacity: 1;
		}

		#frame1:checked~#controls label:nth-child(2),
		#frame2:checked~#controls label:nth-child(3),
		#frame3:checked~#controls label:nth-child(4),
		#frame4:checked~#controls label:nth-child(1) {
			background:
				url(https://image.flaticon.com/icons/svg/130/130884.svg) no-repeat;
			float: right;
			margin: 0 -50px 0 0;
			display: block;
		}

		#frame1:checked~#controls label:nth-last-child(2),
		#frame2:checked~#controls label:nth-last-child(3),
		#frame3:checked~#controls label:nth-last-child(4),
		#frame4:checked~#controls label:nth-last-child(1) {
			background:
				url(https://image.flaticon.com/icons/svg/130/130882.svg) no-repeat;
			float: left;
			margin: 0 0 0 -50px;
			display: block;
		}

		#bullets {
			margin: 150px 0 0;
			text-align: center;
		}

		#bullets label {
			display: inline-block;
			width: 10px;
			height: 10px;
			border-radius: 100%;
			background: #ccc;
			margin: 0 10px;
		}

		#frame1:checked~#bullets label:nth-child(1),
		#frame2:checked~#bullets label:nth-child(2),
		#frame3:checked~#bullets label:nth-child(3),
		#frame4:checked~#bullets label:nth-child(4) {
			background: #444;
		}

		@media screen and (max-width: 900px) {

			#frame1:checked~#controls label:nth-child(2),
			#frame2:checked~#controls label:nth-child(3),
			#frame3:checked~#controls label:nth-child(4),
			#frame4:checked~#controls label:nth-child(1),
			#frame1:checked~#controls label:nth-last-child(2),
			#frame2:checked~#controls label:nth-last-child(3),
			#frame3:checked~#controls label:nth-last-child(4),
			#frame4:checked~#controls label:nth-last-child(1) {
				margin: 0;
			}

			#slides {
				max-width: calc(100% - 140px);
				margin: 0 auto;
			}
		}

html, body {

  
	background-color: #f4f6f9;

}

	#twitch-app {
  		border-radius: 10px; /* Rounded border radius */
  		width: 200px; /* Example width */
  		height: 100px; /* Example height */
		max-width: 540px;
		min-width: 340px;

		margin: 0 auto;
		margin-top: 32px;

		padding: 0;

		font-family: Arial, sans-serif;
	}


		#search-bar-section {

			background-color: #FFFFFF;
			display: block;				
			height: 52px;
			padding-top: 16px;

		}

		#search-bar-wrapper {
			position: relative;
			display: block;
			padding: 0 32px 0 32px;

		}

			#search-bar {
				
				height: 32px;
				width: 100%;

				background-color: transparent;

				text-align: left;
				text-indent: 36px;
				
				border: 2px solid #706A80;
				border-radius: 18px;
			}

			#search-icon {

				position: absolute;
				top: 16px;
				left: 42px;
				
				color: #706A80;
				z-index: 2;
				cursor: pointer;
			}

		#status-filters {
			
			background-color: aliceblue;
			list-style-type: none;
			margin: 0;
			padding: 0;
			border-bottom: 2px solid #706A80;
			position: relative;
		}

		#status-filters li {

			display: inline-block;
			margin: 0 -6px 0 0;
			padding: 0;
			width: 33.3333%;
			cursor: pointer;
			
		}

		#status-filters li p{

			display: block;

			text-align: center;
			color: #000000;
			z-index: 1;
			
		}

		#online-filter {
			border-left: 2px solid #39bff9; 
			border-right: 2px solid #39bff9;
		}

		#choice-box {
      
			position: absolute;
			margin: 0;
			padding: 0;
			width: 33.3333%;
			height: 100%;
			z-index: 2;
			background-color: #8fa7fc;
			color: rgb(141, 184, 222);

			left: 0;

			transition: 0.3s;
		}

		#choice-box p {
			text-align: center;
		}

			#choice-caret {
				position: absolute;
				top: 20px;
				width: 100%;
				text-align: center;
				color: #3a58c4;
			}

	#player-list {

		display: block;
		list-style-type: none;
		margin: 0;
		padding: 0;
	}

		.player-data {
			
			background-color: rgba(32, 32, 32, 0.5);
			margin-top: 8px;
			display: block;
			height: 96px; 
		}

		.player-data a {

			display: block;
			height: 100%;
			text-decoration: none;
			color: #706A80;

		}

			.player-img {
				
				float: left;
				width: 96px;
				height: 100%;
			}

			.player-img img{
				margin: 0 auto;
				height: 100%;
				width: 100%;
			}

			.player-status {
				
				float: right;
				text-align: center;
				width: 96px;
				vertical-align: middle;
				height: 100%
			}

			.name-stream-info{
				height: 100%;
				width: auto;
				margin: 0 auto;
			}

			.name-stream-info>*{
				padding-top: 16px;
				margin: 0;
				text-align: left;
				text-indent: 16px;
				color: #706A80;
				display: block;

				white-space: nowrap;
				overflow: hidden;
				text-overflow: ellipsis;

			}



		.fa-check {
			margin-top: 28px;
			color: #55FF55;
		}

		.fa-times {
			margin-top: 28px;
			color: #FF5555;
		}

		.fa-exclamation {
			margin-top: 28px;
			color: #FFFF55;
		}



.board ul {
    margin: 0;
    padding: 0;
    padding-left: 5px;
}
.board ul li{
    padding: 10px 0;
    border-bottom: 1px dotted #747474;
    list-style: none;
}
.board ul li p{
    font-size: 14px;
    margin-bottom: 5px;
}
.board ul li a{
    font-size: 14px;
    text-decoration: none;
    color: #FA482E;
}

.abt-right{
  display:inline-block;
  background-color:rgb(232, 230, 227);
  color:white;
  width:30%;
  height:100%;
  padding: 47.8px;
  font-size:20px;
  vertical-align:top;
  margin-left: 100px;
  
}

.abt-right:hover{
  opacity:0.7;
}

.text-on-right:hover{
  color:green;
}

.section_news{
  background: #497dc1;
background: -moz-linear-gradient(left, #7293bf 0%, #bfe6ff 100%);
background: -webkit-linear-gradient(left, #7293bf 0%, #bfe6ff 100%);
background: -o-linear-gradient(left, #7293bf 0%, #bfe6ff 100%);
background: -ms-linear-gradient(left, #7293bf 0%, #bfe6ff 100%);
background: linear-gradient(to right, #7293bf 0%, #bfe6ff 100%);
height: 300px;
}

.testimonial-pics {
  padding: 40px 0;
}

.testimonial-pics img {

  width: 80px;
  height: 80px;
  border-radius: 50%;
  margin: 0 20px;
  filter: grayscale(100%);
  transition: .3s;
  cursor: pointer;
}

.testimonial-pics img:hover, .testimonial-pics img.active {
  filter: none;
}
.new ul li {
  display: flex;
  align-items: center;
}

.new ul li i {
  margin-right: 5px; /* Adjust spacing between icon and text */
}



</style>

  
<title>BHARATI VIDYAPEETH'S INSTITUTE OF COMPUTER APPLICATIONS AND MANAGEMENT</title>
</head>
<body style="background-color: #f4f6f9;"></div>
</div>
</div>


<div class="small">    

  <div include-html="/indexHeader.html" id="header"></div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
$(function() {
  $('#header').load('/indexHeader.html');
});
</script>
</div>



<br>
<br>
<div class="container" style="display: flex;" >
    <div class="section quick-links" style="flex-basis: 30%; padding: 20px; margin-top: 40px; color: #000; font-size: 20px; height: 400px; ">
        <h2><b>QUICK LINKS</b></h2>
        <div class="content"><ul>
         <ul>

		<div id="twitch-app" style="color: #000; font-size: 20px;">
				<b>
				<ul id="status-filters">

					<div id="choice-box">
						
						<p>ALL</p>
					</div>

					<li id="all-filter">
						<p>ALL</p>
					</li>  
					<li id="online-filter">
						<p>TECH-WEBINAR</p>
					</li>
					<li id="offline-filter">
						<p>MEDIA-WEBINAR</p>
					</li>
				</ul>
        
        
				<div id="search-bar-section">
					<div id="search-bar-wrapper">
						<i class="fa fa-search fa-lg" aria-hidden="true" id="search-icon"></i>
						<input type="text" placeholder="Search" id="search-bar">
					</div>
				</div>

				<ul id="player-list">

				</ul>	

				<template id="streamer-data-template">
					<li class="player-data">
						<a href="#">
							<div class="player-img">
								<img src="#" alt="">	
							</div>
							<div class="player-status">
								<i class="fa fa-2x" aria-hidden="true"></i>	
							</div>
							<div class="name-stream-info">
								<p class="player-name"></p>
								<p class="stream-data"></p>	
							</div>
						</a>
					</li>
				</template>

		</div>
	

    <br>
    <br>

                 <li>
                   <p>Election Coverage: Ethics and Responsibilities of Journalists</p>
                   <p> 04-April -2024</p>
                   <a href="#">Read more ....</a>
                 </li>  
                 </b>
                
                
               </ul>


          </div>
    </div>

   <div class="unique-card-class">
        <style>
            /* Style for card */
            .unique-card-class {
                border: 1px solid #ccc;
                border-radius: 5px;
                padding: 15px;
                box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
                max-width: 400px;
                margin: auto;
                text-align: center;
            }

            /* Style for slider container */
            .unique-slider-container {
                width: 100%;
                overflow: hidden;
                position: relative;
                margin-top: -10px;
            }

            /* Style for slides */
            .unique-slide {
                display: none;
            }

            /* Style for images */
            .unique-slide img {
                width: 100%;
                height: auto;
            }
        </style>
        
        <h2>BVICAM PHOTO GALLERY</h2>
        <div class="unique-slider-container">
            <% 
                try {
                    // Database connection details
                    String url = "jdbc:mysql://localhost:3306/bvp";
                    String username = "root";
                    String password = "Rattle@123";

                    // Establish database connection
                    Connection conn = DriverManager.getConnection(url, username, password);

                    // Query to retrieve images
                    String sql = "SELECT image FROM images";
                    PreparedStatement statement = conn.prepareStatement(sql);
                    ResultSet resultSet = statement.executeQuery();

                    // Counter for slide index
                    int slideIndex = 1;

                    // Iterate through the result set and display images
                    while (resultSet.next()) {
                        Blob blob = resultSet.getBlob("image");
                        if (blob != null) {
                            InputStream inputStream = blob.getBinaryStream();
                            ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
                            byte[] buffer = new byte[4096];
                            int bytesRead = -1;
                            while ((bytesRead = inputStream.read(buffer)) != -1) {
                                outputStream.write(buffer, 0, bytesRead);
                            }
                            byte[] imageBytes = outputStream.toByteArray();
                            String base64Image = Base64.getEncoder().encodeToString(imageBytes);
                            String imageUrl = "data:image/jpeg;base64," + base64Image;
            %>
                            <div class="unique-slide" id="unique-slide<%= slideIndex %>">
                                <img src="<%= imageUrl %>" alt="Uploaded Image">
                            </div>
            <% 
                            slideIndex++;
                        }
                    }
                    // Close resources
                    resultSet.close();
                    statement.close();
                    conn.close();
                } catch (Exception ex) {
                    ex.printStackTrace();
                } 
            %>
        </div>
    </div>

    <script>
        // Automatically change slide every 3 seconds
        var slideIndex = 0;
        showSlides();

        function showSlides() {
            var i;
            var slides = document.getElementsByClassName("unique-slide");
            for (i = 0; i < slides.length; i++) {
                slides[i].style.display = "none";  
            }
            slideIndex++;
            if (slideIndex > slides.length) {slideIndex = 1}    
            slides[slideIndex-1].style.display = "block";  
            setTimeout(showSlides, 7000); // Change image every 3 seconds
        }
    </script>

  
    
    <div class="section_news" style="flex-basis: 30%; background-color: aliceblue; padding: 1px; margin-top: 50px; height: 400px; ">
        <h2 style="margin-top: 10px;"><b>WHAT'S NEW</b></h2>
        <marquee direction="up" scrollamount="3" style="padding-top: 100px; height: 300px;">
        <div class="content" style="margin-left: 5; "><ul>
          <i><b>
         <div class="wrap">
  <div class="article">
    <h4>Changing Contours of Political Campaign in India</h4><h6>08-April -2024, the Monday, at 05:30 p.m.</h6></div>
  <div class="article"><br><br>
    <h4>Digital Democracy: The Impact of Social Media on Indian Politics</h4><h6>25-January -2024, the Thursday, at 05:30 p.m.</h6></div>
  <div class="article"><br><br>
    <h3>?????? ??? ?????: ????????? ?? ?????????</h3><h6>07.01.2024</h6></div>
  
            </marquee>
           
            
    </div>
</div>



<div class="academic-area pt-100 pb-70">
<div class="container">
<div class="section-title">
<h2>MAGAZINES OF BVICAM</h2>
</div>
<div class="row justify-content-center">
<div class="col-lg-4 col-md-6" data-aos="fade-up" data-aos-duration="1200" data-aos-delay="200" data-aos-once="true">
<div class="single-academics-card" style="font-family: ;">
<div class="academic-top-content">
<a href="indiacom.html"><h3><i>INDIACom</i></h3></a><br>
</div>
<a href="/indiacom.html">
    <img src="assets/images/magazines/INDIACOM.jpg" alt="IndiaCom" height="200px" width="300px">
</a>

</div>
</div>
<div class="col-lg-4 col-md-6" data-aos="fade-up" data-aos-duration="1200" data-aos-delay="400" data-aos-once="true">
<div class="single-academics-card">
<div class="academic-top-content">
<a href="academics-details.html"><h3><i>BJIT</i></h3></a><br>

</div>
<a href="/bjit.html">
    <img src="assets/images/magazines/BJIT.jpg" alt="BJIT" height="200px" width="300px">
</a>

</div>
</div>
<div class="col-lg-4 col-md-6" data-aos="fade-up" data-aos-duration="1200" data-aos-delay="600" data-aos-once="true">
<div class="single-academics-card">
<div class="academic-top-content">
<a href="academics-details.html"><h3><i>IJRMS</i></h3></a><br>
</div>
<a href="/ijrms.html">
<img src="assets/images/magazines/ijrms.png" alt="IJRMS" height="200px" width="375px">
</a>
</div>
</div>
</div>
</div>
</div>  







    
<figure class="flex">
  <div></div>
  <div>
   <h2><b>Campus of BVICAM</b></h2>
  <p>
              BVICAM is centrally located at National Highway No. 10, Rohtak Road, A-4, Paschim Vihar (just adjacent to Paschim Vihar (East) Metro Station), New Delhi, in its own state of the art sprawling campus. It is well poised with spacious parking areas with an excellent surrounding striving for a pollution-free and healthy environment.
            </p>
            <p>
              The campus incorporates amenities like Conference Hall, Auditorium, Amphitheatre, ultra-modern Computer Centre, well-stocked Library, Students' Hostel, In-house Banking facility, Indoor and Outdoor games facility, aesthetically designed Canteen in an open-air ambience, etc.
            </p>
          </div>


              </div>
            </div>
          </div>
        </div>
      </div>
  
  
   </div>
</figure>














<div class="admisssion-area bg-f4f6f9 ptb-100">
  <div class="container">
  <div class="admission-content">
  <div class="section-title" >
  <h3><b>Bharati Vidyapeeth's Institute of Computer Applications and Management Admission</h3>
  
  </div>
  <div class="Video">
  <iframe width="560" height="315" src="https://www.youtube.com/embed/8wJx2gdguQU?si=cQVnvw38BxVNY8BU&amp;start=1" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen style="margin-left: 0px;"></iframe>
  </video>
  <div id="frame">
      <input type="radio" name="frame" id="frame1" checked />
      <input type="radio" name="frame" id="frame2" />
      <input type="radio" name="frame" id="frame3" />
      <input type="radio" name="frame" id="frame4" />
      <div id="slides">
        <div id="overflow">
          <div class="inner">
            <div class="frame frame_1">
              <div class="frame-content">
               <div id="nav-tab" class="testimonial-pics">
                 <p><i>"Studying at BVICAM, Delhi has been an enriching experience."</i></p>
               <img src="https://i.postimg.cc/3xQK8g7V/p1.png" id="0" alt="img-1" class="active">
               <h6>Shagun Sharma</h6>
               <p>MCA(2023-2025)</p>
              </div></div>
            </div>
            <div class="frame frame_2">
              <div class="frame-content">
                <div id="nav-tab" class="testimonial-pics">

                   <p><i>"Choosing BVICAM, Delhi for my higher education was one of the best decisions I've made."</i></p>
                 
                <img src="https://i.postimg.cc/3xQK8g7V/p1.png" id="0" alt="img-1" class="active">
                <h6>Rohit Chauhan</h6>
               <p>MCA(2023-2025)</p>
              </div></div>
            </div>
            <div class="frame frame_3">
              <div class="frame-content">
                <div id="nav-tab" class="testimonial-pics">
                  <p><i>" The diverse student community and vibrant campus life create a conducive learning environment. "</i></p>
                
                <img src="https://i.postimg.cc/3xQK8g7V/p1.png" id="0" alt="img-3" class="active">
                <h6>Arun Kumar</h6>
               <p>MCA(2023-2025)</p>
              </div></div>
            </div>
             <div class="frame frame_4">
              <div class="frame-content">
                <div id="nav-tab" class="testimonial-pics">
                 <p><i>   "Being a part of BVICAM, Delhi has been an incredible journey. The emphasis on research and project-based learning has honed my analytical skills ."</i></p>
                <img src="https://i.postimg.cc/3xQK8g7V/p1.png" id="0" alt="img-4" class="active">
                <h6>Aashish Kumar Saw</h6>
               <p>MCA(2023-2025)</p>
              </div></div>
            </div>
          </div>
        </div>
      </div>
      <div id="controls">
        <label for="frame1"></label>
        <label for="frame2"></label>
        <label for="frame3"></label>
        <label for="frame4"></label>
      </div>
      <div id="bullets">
        <label for="frame1"></label>
        <label for="frame2"></label>
        <label for="frame3"></label>
        <label for="frame4"></label>
      </div>
    </div>
    
  </div>
  </div>
  </div>
  <div class="query text-center">
  <p>For admission puposes visit here</p>
  <div class="outer"><a href="admission.html">
  <button class="default-btn" type="submit">
  MORE ON ADMISSION
  </button></a>
  </div>
  </div>
  </div>
  </div>
  </div>

<div class="health-care-area">
<div class="container">
<div class="section-title">
<h1><b>HEARTFELT MESSAGES</b></h1>
</div>
<div class="row justify-content-center">
  <div class="col-lg-3 col-md-6 col-sm-12" data-aos="fade-up" data-aos-duration="1200" data-aos-delay="400" data-aos-once="true">
    <div class="single-health-care-card">
      <div class="courses-img">
        <a href="founder.html"><img src="assets/images/courses/courses-1.jpg" alt="Image" height="300px" width="300px"></a>
      </div>
      <div class="courses-content">
          <h2>FROM</h2></a>
        <a href="founder.html" class="read-more-btn"><H2>FOUNDER</H2></i></a>
      </div>
    </div>
  </div>

  <div class="col-lg-3 col-md-6 col-sm-12" data-aos="fade-up" data-aos-duration="1200" data-aos-delay="400" data-aos-once="true">
    <div class="single-health-care-card">
      <div class="courses-img">
        <a href="chancellor.html"><img src="assets/images/courses/courses-2.jpg" alt="Image" height="300px" width="300px"></a>
      </div>
      <div class="courses-content">
        <h2>FROM</h2></a>
      <a href="chancellor.html" class="read-more-btn"><h2>CHANCELLOR</h2></i></a>
      </div>
    </div>
  </div>

  <div class="col-lg-3 col-md-6 col-sm-12" data-aos="fade-up" data-aos-duration="1200" data-aos-delay="400" data-aos-once="true">
    <div class="single-health-care-card">
      <div class="courses-img">
        <a href="secretary.html"><img src="assets/images/courses/courses-3.jpg" alt="Image" height="300px" width="300px"></a>
      </div>
      <div class="courses-content">   
        <h2>FROM</h2></a>
      <a href="secretary.html" class="read-more-btn"><h2>SECRETARY</h2></i></a>
      </div>
    </div>
  </div>

  <div class="col-lg-3 col-md-6 col-sm-12" data-aos="fade-up" data-aos-duration="1200" data-aos-delay="400" data-aos-once="true">
    <div class="single-health-care-card">
      <div class="courses-img">
        <a href="Director.html"><img src="assets/images/courses/courses-4.png" alt="Image" height="300px" width="300px"></a>
      </div>
      <div class="courses-content">
        <h2>FROM</h2></a>
      <a href="Director.html" class="read-more-btn"><h2>DIRECTOR</h2></i></a>
      </div>
    </div>
  </div>



</div></div>

<div include-html="footer.html" id="footer"></div>
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script>
    $(function() {
      $('#footer').load('footer.html');
    });
  </script>

<script>

  $(document).ready(function() {
  
    var streamers = ["ESL_SC2", "OgamingSC2", "cretetion", "freecodecamp", "storbeck", "habathcx", "RobotCaleb", "noobs2ninjas", "brunofin", "comster404"];
    var dataArray = [];
    var template = document.getElementById('streamer-data-template').content;
    var statusFilter = 'all';
  
    getJsonArray();
  
    function getJsonArray(){
  
      $.each(streamers,function(i, user){
  
        var channelRequestUrl = 'https://wind-bow.gomix.me/twitch-api/channels/' + user + '/';
        var streamRequestUrl = 'https://wind-bow.gomix.me/twitch-api/streams/' + user + '/';
  
        $.when(
          $.ajax({
            type:'GET',
            dataType: 'jsonp',
            url: channelRequestUrl,
            success: function(result){
              //console.log('user data request successful');
            }
          }),
          $.ajax({
            type:'GET',
            dataType: 'jsonp',
            url: streamRequestUrl,
            success: function(result){
              //console.log('stream data request successful');
            }
          })).done(function(channelData, streamData){
            // console.log('user: ' + userData[0].name + 
            // 						'\n logo: ' + userData[0].logo +
            // 						'\n stream ' + streamData[0].stream);
            dataArray.push({
              name:user,
              logo:channelData[0].logo,
              stream:streamData[0].stream,
              status:channelData[0].status,
              url:channelData[0].url
            });
  
            if(dataArray[i] != undefined && dataArray[i] != null){
              addStream(dataArray[i]);
            }
        });
  
      }); //end of $.each()
    } //end of getJsonArray()
  
    $(document).on('click', '#all-filter', function(){
      $("#choice-box").css("left", '0');
      $("#choice-box p").html("ALL");
      statusFilter = 'all';
      filterStreams(statusFilter, '');
    });
  
    $(document).on('click', '#online-filter', function(){
      $("#choice-box").css("left", '33.4%');
      $("#choice-box p").html("TECH-WEBINAR");
      statusFilter = 'online';
      filterStreams(statusFilter, '');
      //addStream(dataArray[0]);
    });
  
    $(document).on('click', '#offline-filter', function(){
      $("#choice-box").css("left", '66.7%');
      $("#choice-box p").html("MEDIA-WEBINAR");
      statusFilter = 'offline';
      filterStreams(statusFilter, '');
    });
  
    $(document).on('click', '#search-icon', function(){
      searchInput = $('#search-bar').val();
      filterStreams(statusFilter, searchInput);
    });
  
    $(document).keypress(function(event){
      if(event.which === 13){
        event.preventDefault();
       $('#search-icon').click();
       //pressing enter functions as as click on search btn
      }
  });
  
    function filterStreams(filter, searchInput){
  
      $('#player-list').html("");
  
      switch(filter) {
        case 'online':
          $.each(dataArray, function(i, element){
            if(element.stream != null){
              if(searchInput == '' || searchInput == element.name){
                addStream(element);
              }
            }
          });
          break;
  
        case 'offline':
          $.each(dataArray, function(i, element){
            if(element.stream == null){
              if(searchInput == '' || searchInput == element.name){
                addStream(element);
              }
            }	
          });
          break;
  
        case 'all':
          $.each(dataArray, function(i, element){
            if(searchInput == '' || searchInput == element.name){
              addStream(element);
            }
          });
          break;
  
      }
  
    }
  
    function addStream(streamData){
  
      clonedTemplate = template.cloneNode(true);
  
      if(streamData.status == 404){
  
        $(clonedTemplate).find('a').attr('href', "#");
        $(clonedTemplate).find('img').attr('src', "#");
        $(clonedTemplate).find('.player-name').html(streamData.name);
        $(clonedTemplate).find('i').addClass('fa-exclamation');
        $(clonedTemplate).find('.stream-data').html("Channel not found.");
  
      }else{
        $(clonedTemplate).find('a').attr('href', streamData.url);
        $(clonedTemplate).find('img').attr('src', streamData.logo);
        $(clonedTemplate).find('.player-name').html(streamData.name);
        if(streamData.stream != null){
          $(clonedTemplate).find('i').addClass('fa-check');
          $(clonedTemplate).find('.stream-data').html(streamData.status);
        } else {
          $(clonedTemplate).find('i').addClass('fa-times');
        }
      }
  
      document.getElementById('player-list').appendChild(clonedTemplate);
    }
  
  
  }); //end of $(document).ready();
  
  
  
  </script>
  
  
  
  <script data-cfasync="false" src="../../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js">
  </script>
  <script src="assets/js/jquery.min.js"></script>
  <script src="assets/js/bootstrap.bundle.min.js"></script>
  <script src="assets/js/jquery.meanmenu.js"></script>
  <script src="assets/js/owl.carousel.min.js"></script>
  <script src="assets/js/carousel-thumbs.min.js"></script>
  <script src="assets/js/jquery.magnific-popup.js"></script>
  <script src="assets/js/aos.js"></script>
  <script src="assets/js/odometer.min.js"></script>
  <script src="assets/js/appear.min.js"></script>
  <script src="assets/js/form-validator.min.js"></script>
  <script src="assets/js/contact-form-script.js"></script>
  <script src="assets/js/ajaxchimp.min.js"></script>
  <script src="assets/js/custom.js"></script>
  
  </body>
  </html>
 

