function validate()                                    
{ 
    var name = document.getElementById("uname");               
    var email = document.getElementById("umail");     
    var what =  document.getElementById("usel");  
    var password = document.getElementById("upass");    
   
    if (name.value.trim() == "")                                  
    {   
        name.style.border ="solid 3px 5px";
        document.getElementById("label1").style.visibility="visible";
        window.alert("Please enter your name"); 
        name.focus(); 
        return false; 
    } 

    else if (email.value.trim() == "")                                   
    { 
        email.style.border ="solid 3px 5px";
        document.getElementById("label2").style.visibility="visible";
        alert("Please enter a valid e-mail address."); 
        email.focus(); 
        return false; 
    } 

    else if (password.value.trim() == "")                        
    { 
        password.style.border ="solid 3px 5px";
        document.getElementById("label3").style.visibility="visible";
        window.alert("Please enter your password"); 
        password.focus();
        return false; 
    } 
    
    else if (password.value.trim().length<10 )                        
    { 
        password.style.border ="solid 3px 5px";
        document.getElementById("label3").style.visibility="visible";
        window.alert("password too short"); 
        password.focus(); 
        return false; 
    } 
   
    else if (what.selectedIndex < 1)                  
    { 
        what.style.border ="solid 3px 5px";
        document.getElementById("label4").style.visibility="visible";
        alert("Please enter your plan"); 
        what.focus(); 
        return false; 
    } 

  
    else {
    alert("Thanks for filling the form");
    return true; 
    }
}



function myFunction() {
  var x = document.getElementById("upass");
  if (x.type === "password") {
    x.type = "text";
  } else {
    x.type = "password";
  }
}