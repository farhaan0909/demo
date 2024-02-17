<!DOCTYPE html>
<html>
<head>
<% String unm1; %>
<% HttpSession hs=request.getSession(false);
	unm1 =(String)hs.getAttribute("unm");
	
	if(unm1==null){
		response.sendRedirect("../login.jsp");
	}
%>
<!-- link header section -->
<jsp:include page="header.jsp"/>
<!-- end link header section -->
 
<!-- slider section -->
    <section class=" slider_section position-relative">
        <div class="carousel-inner">
          <div class="carousel-item active">
            <div class="container">
              <div class="row">
                <div class="col-md-4">
                  <div class="img-box">
                    <img src="images/Admin2.jpg" alt="">
                  </div>
                </div> 
  			 <div class="col-md-8">
          	  <div class="detail-box">                 
           	   <div class="container layout_padding2">
      		    <div class="form_contaier">
      		     <h2>
         		   User Query's
         		 </h2><br>
      			 <form action="../Aquery" method="post">
        		   <div class="form-group">
			             <label for="id">Id
			              <input type="number" class="form-control" name="qid" id="qid" value="<%=(Integer)request.getAttribute("qid")%>" required="required">
			             </label>			              
			             <label for="">Query number
			                <input type="text" class="form-control" name="qno" id="qno" value="<%=(String)request.getAttribute("qno")%>" readonly="readonly">
			             </label>
			        </div>
			        <div class="form-group">
			             <label for="">Name
			                <input type="text" class="form-control" name="nm" id="nm" value="<%=(String)request.getAttribute("nm")%>" readonly="readonly">
			             </label>
			             <label for="">Phone Number
			                <input type="text" class="form-control" name="mob" id="mob" value="<%=(String)request.getAttribute("mob")%>" readonly="readonly">
			             </label>
			        </div>
			        <div class="form-group ">
			             <label for="">Query
			                <input type="text" class="form-control" name="qt" id="qt" value="<%=(String)request.getAttribute("qt")%>" readonly="readonly">
			             </label>
			             <label for="">Message
			                <input type="text" class="form-control" name="qw" id="qw" value="<%=(String)request.getAttribute("qw")%>" readonly="readonly">
			             </label>
			        </div>
			        <div class="form-group">
			              <button type="submit" >Send</button>
			              <button type="submit" value="pre">Previous</button>
			              <button type="submit" value="next">Next</button>
			        </div> 
			    </form>        			 
           	   </div>
              </div>
             </div>
            </div>
           </div>
          </div>
        <a class="carousel-control-prev" href="" role="button" data-slide="prev">
          <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="" role="button" data-slide="next">
          <span class="sr-only">Next</span>
        </a>
   </div>
  </div>
 </section>
<!-- end slider section -->
 
<!--link footer section -->
 <jsp:include page="footer.jsp"/>
<!--end link footer section -->
</html>
           			 
           			 
           			 
           			 
           			 
                    
			           
			           
			           
			           
			           
			           