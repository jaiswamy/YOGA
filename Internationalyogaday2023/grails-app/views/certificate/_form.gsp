<%@ page import="com.hiideals.form.Certificate" %>

        <div class="row m-4">
        <div class="form-group col-md-4 fieldcontain ${hasErrors(bean: certificateInstance, field: 'firstName', 'error')} ">
          <label style="font-size: 20px;" for="firstName">Full Name</label>
          <input type="text" class="form-control" maxlength="30" name="firstName" value="${certificateInstance?.firstName}"  style="border:1px solid black;" oninput="this.value = this.value.toUpperCase()"  id="firstName" placeholder="First name" required >
        </div>
        <div class="form-group  col-md-4">
          <label style="font-size: 20px;" for="lastName" style="font-size: 20px;">Phone Number</label>
          <input type="text" class="form-control"    name="phoneNo" value="${certificateInstance?.phoneNo}" style="border:1px solid black;" id="numberInput" oninput="validateInput()" maxlength="10" placeholder="Phone Number"  required>
        </div>
        <div class="form-group  col-md-4">
            <label style="font-size: 20px;" for="lastName">Gender</label><br/>
              <select class="form-select"  name="gender" value="${certificateInstance?.gender}" style="border:1px solid black;" aria-label="Default select example">
  <option selected>Select</option>
  <option value="Male">Male</option>
  <option value="Female">Female</option>
</select>
     </div>
   
        <div class="form-group col-md-4">
          <label style="font-size: 20px;" for="firstName">Date Of Birth</label>
          <input type="date" class="form-control" name="dob" value="${certificateInstance?.dob}" style="border:1px solid black;" id="dob" placeholder="Date Of Birth" >
        </div>
      
        <div class="form-group col-md-4">
            <label style="font-size: 20px;" for="lastName">Email Address</label>
            <input type="email" class="form-control" name="email" value="${certificateInstance?.email}" style="border:1px solid black;" id="email" placeholder="Email" >
          </div>
 
       
      </div>
    
   
 
    
    




