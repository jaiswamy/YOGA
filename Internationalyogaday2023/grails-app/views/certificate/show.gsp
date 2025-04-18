<!DOCTYPE html>
<html>
<head>
  <meta name="layout" content="main">
  <title>Yoga Certificate</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
  
  <style>
    .bg-image {
      background-image: url(images/new.png);
      width: 100%;
      height: 1800px;
      background-repeat: no-repeat;
      background-position: center;
      background-size: cover;
     
    }

    .usernamed {
      position: absolute;
      top: 840px;
      font-size: 45px !important;
      text-transform: uppercase !important;
      left: 50%;
      transform: translateX(-50%);
    }
    .pbutton{
    display: flex;
    justify-content: center;
    align-items: center;
    height: 10vh;
    margin-top:200px; 
    }
    

    @media (max-width: 768px) {
      /* Adjust the positioning and font size for smaller screens */
      .usernamed {
        position: absolute;
        top: 320px;
        left: 50%;
        transform: translateX(-50%);
        font-size: 20px !important;
        text-transform: uppercase !important;
      }
     
    }

    @media (max-width: 480px) {
      /* Further adjustments for even smaller screens PRINT PREIVIEW PERFECT*/ 
      .usernamed {
        position: absolute;
        top: 330px;
        left: 50%;
        transform: translateX(-50%);
        font-size: 15px !important;
        font-weight:bold !important;
        text-transform: uppercase !important;
      }
     
      .pbutton{
        display:flex;
        text-align:center;
        justify-content:center;
      }
    }

    @media (max-width: 768px) {
      .bg-image {
        height: 670px; /* Adjust the height as needed */
      }
    }
    
    
  </style>

    
     <script>
    function downloadCertificate() {
      var canvas = document.createElement("canvas");
      var mmToPx = 3.7795275591; // 1mm = 3.7795275591px
      var a4Width = 210 * mmToPx;
      var a4Height = 297 * mmToPx;
      canvas.width = a4Width;
      canvas.height = a4Height;

      var ctx = canvas.getContext("2d");
      
      var bgImage = new Image();
      bgImage.onload = function() {
        var imageAspectRatio = bgImage.width / bgImage.height;
        var canvasAspectRatio = a4Width / a4Height;
        var renderableWidth, renderableHeight, xStart, yStart;

        // Determine the renderable dimensions and position within the canvas
        if (imageAspectRatio < canvasAspectRatio) {
          renderableHeight = a4Height;
          renderableWidth = bgImage.width * (renderableHeight / bgImage.height);
          xStart = (a4Width - renderableWidth) / 2;
          yStart = 0;
        } else if (imageAspectRatio > canvasAspectRatio) {
          renderableWidth = a4Width;
          renderableHeight = bgImage.height * (renderableWidth / bgImage.width);
          xStart = 0;
          yStart = (a4Height - renderableHeight) / 2;
        } else {
          renderableHeight = a4Height;
          renderableWidth = a4Width;
          xStart = 0;
          yStart = 0;
        }
        
        ctx.drawImage(bgImage, xStart, yStart, renderableWidth, renderableHeight);
       
        var marginTop = 0; // Set the desired margin top value
        
        var username = "${certificateInstance?.firstName}";
        ctx.fillStyle = "black";
        ctx.font = "bold 20px Arial";
        ctx.textAlign = "center";
        ctx.textBaseline = "middle";
        ctx.fillText(username, a4Width / 2, (a4Height / 2) - marginTop);
        // Download the image
        var link = document.createElement('a');
        link.href = canvas.toDataURL();
        link.download = 'certificate.jpg';
        link.click();

      };
      bgImage.src = "images/new.png";
    }

  </script>
  	<style>
	.center-div {
    display: flex;
    justify-content: center;
  }
	</style>
  </head>
<body>
<div class="center-div">
 <img src="./images/yogaheader.png" class="img-fluid" alt="Responsive Image" style="border-radius:3px;width:100%;"  />
</div>
<div style="display:none;">
   <img src="./images/new.png" class="img-fluid" alt="Responsive Image" style="width:100%;height:800px;">   
    <p class="usernamed">
      ${certificateInstance?.firstName} 
    </p> 
  </div>
  
  
  <div class="pbutton">
  
     <g:link controller="Certificate" action="thankyou"><button onclick="downloadCertificate()" type="button" class="btn btn-danger btn-lg px-4 gap-3" style="background-color:orangered;border:2px solid black;font-weight: bold;">Download Certificate</button></g:link> 
   
  </div>
  
  	<div style="margin-bottom: 150px;">

</div>


  <div class="container">
  
  <footer class="py-3 my-4 nav justify-content-center border-top ">
   
    <h6 class="developed" >Developed-By: <a href="https://hiideals.com/" target="blank" >Hi-Ideals</a></h6>
  </footer>
 
</div>




  </body>
</html>