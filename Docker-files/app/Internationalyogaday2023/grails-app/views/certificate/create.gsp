<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'certificate.label', default: 'Certificate')}" />
		<title>Yoga Certificate</title>
	  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
	
	<style>
	.center-div {
    display: flex;
    justify-content: center;
  }
	</style>
	</head>
	<body>


 <div class="center-div">
 <img src="../images/yogaheader.png" class="img-fluid" alt="Responsive Image" style="border-radius:3px;width:100%;"  />
</div>

  <div class="text-center">

    <h1 class="display-5 fw-bold " style="color:rgb(249, 78, 5);margin-top: 50px;">Generate Your Certificate</h1>
  
  </div>

  <div class="container card shadow-lg p-3 mb-5 bg-body-tertiary rounded" style="border:2px solid orangered;margin-top:50px;border-radius: 10px;">
    <h4 style="display: flex;align-items: center;justify-content: center;color: orangered;text-transform: uppercase;">Yoga Participation  Form</h4><br/>
     <!-- Example split danger button -->
	
	
		<%--<a href="#create-certificate" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		--%><div class="nav" role="navigation">
			<%--<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
			</ul>
		--%></div>
		<div id="create-certificate" class="content scaffold-create" role="main"><%--
			<h1><g:message code="default.create.label" args="[entityName]" /></h1>
			--%><%--
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			
--%><g:hasErrors bean="${certificateInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${certificateInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			
			
			<g:form url="[resource:certificateInstance, action:'save']" >
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton  name="create" class="save" value="${message(code: 'default.button.Generate Certificate.label', default: 'Generate Certificate')}"button type="submit" class="btn btn-dark" style="background-color: orangered;font-size: large;font-weight:bold;display: flex;margin: auto;" />
				</fieldset>
			</g:form>
		
		</div>
		
		</div>
			<div style="margin-bottom: 250px;">

</div>

<div class="container">
  
  <footer class="py-3 my-4 nav justify-content-center border-top ">
   
    <h6 class="developed" >Developed-By: <a href="https://hiideals.com/" target="blank" >Hi-Ideals</a></h6>
  </footer>
 
</div>

 <script>
    function validateInput() {
      var input = document.getElementById("numberInput").value;
      var errorText = document.getElementById("errorText");

      // Remove non-digit characters
      var cleanInput = input.replace(/\D/g, "");

      // Update the input field with the cleaned value
      document.getElementById("numberInput").value = cleanInput;

      // Display error message if the input is empty or exceeds 10 numbers
      if (cleanInput.length === 0) {
        errorText.textContent = "";
      } else if (cleanInput.length > 10) {
        errorText.textContent = "Maximum 10 numbers allowed.";
      } else {
        errorText.textContent = "";
      }
    }
  </script>

	</body>
</html>