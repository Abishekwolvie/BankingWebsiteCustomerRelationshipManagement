function loginval()
{
    
    var username=document.getElementById("lusrname");
    var userpassword=document.getElementById("lusrpass");

    var sp=document.getElementsByClassName("lerbox");
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