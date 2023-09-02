function loginval()
{
    var email=document.getElementById("usremail");
    var cnfuserpassword=document.getElementById("cnfusrpass");
    
    var username=document.getElementById("usrname");
    var userpassword=document.getElementById("usrpass");

    var sp=document.getElementsByClassName("erbox");
  
//email
    if(email.value=="")
    {
        sp[0].innerHTML="Enter the email";
        return false;
    }
    else
    {
        sp[0].innerHTML="";
        
    }
  
//username
    if(username.value==""){

        sp[1].innerHTML="Enter the username"
        return false;
    }
    else
    {
        sp[1].innerHTML="";
    }

//password

    if(userpassword.value==""){
        sp[2].innerHTML="Enter the password";
        return false;
    }
    else
    {
        sp[2].innerHTML="";
    }

//confirm password

    if(cnfuserpassword.value==""){
        sp[3].innerHTML="Enter the password";
        return false;
    }
    else
    {
        sp[3].innerHTML="";
    }

//confim password and password check

    if(userpassword.value!=cnfuserpassword.value)
    {
        sp[3].innerHTML="Password and confirm password should match";
        console.log(userpassword.value);
        console.log(cnfuserpassword.value);
        return false;
    }
    else
    {
        sp[3].innerHTML="";
    }


}