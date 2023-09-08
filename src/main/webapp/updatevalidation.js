function updateval()
{

 
    var upupspn=document.getElementsByClassName("uperbox");
    var upcustemail=document.getElementById("upcusemail");
    var upcusrmobno=document.getElementById("upcusmobno");
    var upcusacno=document.getElementById("upcusacno");

    
//email
    if(upcustemail.value=="")
    {
        upupspn[0].innerHTML="Enter the email";
        return false;
    }
    else
    {
        upupspn[0].innerHTML="";
    }


//account number
    if(upcusacno.value=="")
    {
        upupspn[1].innerHTML="Enter the Account Number";
        return false;
    }
    else
    {
        upupspn[1].innerHTML="";

    }

// mob no
    expmob=/^[6-9]{1}[0-9]{9}$/;
    if(upcusrmobno.value=="")
    {
        upupspn[2].innerHTML="Enter the customer mobile number";
        return false;
    }
    else if(expmob.test(upcusrmobno.value)==false)
    {
        upupspn[2].innerHTML="Enter valid mobile number";
        return false;

    }
    else
    {
        upupspn[4].innerHTML="";
    }
   

}