<!DOCTYPE html>
<html>
    <head>
        <title>Mobilization</title>
            <meta charset=utf-8>
            <meta name="viewport" content="width=device-width,initial-scale=1">
            <!---Fontawesome--->
            <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
            <!---Bootstrap5----->
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
            <!---custom style---->
          <link rel="stylesheet" href=".../css/style.css">
    </head>
    <nav class="navbar navbar-default navbar-fixed-top">
    <div class="container">
      <div class="navbar-header">
      <a class="navbar-brand" href="<?php echo base_url()?>Main/dashboard_ddu"> Home</a>  
           
           
      </div>
    </nav>
<body>
<!-- /*******************
*@function name:addcourse_target
*@function:adding course target view page
*@Author:kavya B
*@date:05/03/2021
*******************/ -->

 <form action="<?php echo base_url()?>Main/insertcourse_target" method="post">
    <center>
        <div class="form-outline">
            <div class="container w-25 py-5">

            <label class="form-label" for="form1">Course name</label>
            <input type="text" id="form1" name="cname" required pattern="[a-zA-Z]+" class="form-control" placeholder="Course">

            <label class="form-label" for="typeNumber">Target</label>
                    <input type="number" id="typeNumber" name="ctarget" placeholder="Course Target" class="form-control" >

            <label class="form-label" for="select">Project name</label>

                    <select class="form-select" id="select "aria-label="Default select example" name="project">
                        <?php 
            if($n->num_rows()>0)
            {
                foreach($n->result() as $row)
                    {
            ?>

                            
                            <option value="<?php echo $row->pid;?>"><?php echo $row->pname?></option>
                        

                 <?php
                }
            }
            ?>           
                        </select>


                <div class="py-3">        
                <input  type="submit" value="Submit" class="btn btn-primary">
                <a href="<?php echo base_url()?>Main/dashboard_ddu">Home</a>
                 </div>
            </div>
         </div></center>
            
        </form>


</body>

<!---Jquery--->
<script
  src="https://code.jquery.com/jquery-3.5.1.js"integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
  crossorigin="anonymous">
</script>

<!---Popper---->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous">
</script>

<!---Custom Js-->
<script src="js/script.js">

</script>
</html>
