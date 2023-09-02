function loginval()
{
    
    var username=document.getElementById("usrname");
    var userpassword=document.getElementById("usrpass");

    var sp=document.getElementsByClassName("erbox");
    //username

    if(username.value==""){

        sp[0].innerHTML="Enter the username"
        return false;
    }
    else
    {
        sp[0].innerHTML="";
    }

    //password

    if(userpassword.value==""){
        sp[1].innerHTML="Enter the password";
        return false;
    }
    else
    {
        sp[1].innerHTML="";
    }


}