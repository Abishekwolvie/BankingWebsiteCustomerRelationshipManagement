function customerregvalidation()
{

 
    var spn=document.getElementsByClassName("cserbox");
    var custemail=document.getElementById("cusemail");
    var custname=document.getElementById("cusname");
    var custactype=document.getElementById("cusactype");
    var custaccountbalance=document.getElementById("cusaccountbalance");
    var cusrmobno=document.getElementById("cusmobno");
    var dob=document.getElementById("cusdob");

    








//email
    if(custemail.value=="")
    {
        spn[0].innerHTML="Enter the email";
        return false;
    }
    else
    {
        spn[0].innerHTML="";
    }

//name
    if(custname.value=="")
    {
        spn[1].innerHTML="Enter the name";
        return false;
    }
    else
    {
        spn[1].innerHTML=""
    }

//actype
    var act=custactype.selectedIndex;
    if(act==0)
    {
        spn[2].innerHTML="Select the account type";
        return false;
    }
    else
    {
        spn[2].innerHTML="";
    }

// ac balance
    if(custaccountbalance.value=="")
    {
        spn[3].innerHTML="Enter the account balance";
        return false;
    }
    else
    {
        spn[3].innerHTML="";
    }

// mob no
    expmob=/^[6-9]{1}[0-9]{9}$/;
    if(cusrmobno.value=="")
    {
        spn[4].innerHTML="Enter the customer mobile number";
        return false;
    }
    else if(expmob.test(cusrmobno.value)==false)
    {
        spn[4].innerHTML="Enter valid mobile number";
        return false;

    }
    else
    {
        spn[4].innerHTML="";
    }

//date
    if(dob.value=="")
    {
        spn[5].innerHTML="Enter the date of birth";
        return false;
    }
    else
    {
        spn[5].innerHTML="";

    }





    

}