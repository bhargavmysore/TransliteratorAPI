$(document).ready(function(){
                $('ul.tabs').tabs();
            });

function startTrans(){
      var requestStrings=new Array();
      var currRequest='';

      var baseurl="http://localhost:8080/Transliterator/Transliterate/";
      var res=document.getElementById("destText");
      res.innerHTML="";
      //res.style.font="20px kannada sangam MN,serif";
      var inputVals = document.getElementById("srcText").value;
      var words = inputVals.split(" ");
      
      var srcLangList = document.getElementById('srcList').getElementsByTagName("a");
      var destLangList = document.getElementById('destList').getElementsByTagName("a");
     
      for(var i=0; i < srcLangList.length; i++){
          if(srcLangList[i].className.toString().includes("active")){
                switch(i){
                    case 0: baseurl+="hindi/";
                            break;
                    case 1: baseurl+="kannada/";
                            break;
                    case 2: baseurl+="telugu/";
                            break;
                    case 3: baseurl+="malayalam/";
                            break;
                }
          }
      }
      
      for(var i=0; i < destLangList.length; i++){
          if(destLangList[i].className.toString().includes("active")){
                switch(i){
                    case 0: baseurl+="hindi/";
                            break;
                    case 1: baseurl+="kannada/";
                            break;
                    case 2: baseurl+="telugu/";
                            break;
                    case 3: baseurl+="malayalam/";
                            break;
                }
          }
      }
      console.log(baseurl);
      for (var i = 0; i < words.length; i++) {

        var currentWord = words[i];
        currRequest='';

        for (var j = 0; j < currentWord.length; j++) {

          currRequest+=currentWord.charCodeAt(j).toString(16);

        }

        requestStrings.push(currRequest);

      }


      // now since we have the set of requests we will do a AJAX Request for all
      var finalurl=baseurl+requestStrings.shift();
      var xhp = new XMLHttpRequest();
      xhp.onreadystatechange=function(){
              if (xhp.readyState == 4 && xhp.status == 200) {
                // once the AJAX Request is done we add it to the vlaue of resulttext

                var resJSON=xhp.responseText;
                //console.log(resJSON);
                try{
                    var resArray=JSON.parse(resJSON);
                }
                catch(e){
                    document.getElementById("err").style.visibility = "visible" ;
                }
                for (var i = 0; i < resArray.length; i++) {
                  res.innerHTML+=String.fromCharCode(parseInt(resArray[i],16));
                }
                res.innerHTML+=" ";

                if(requestStrings.length!=0){
                  finalurl=baseurl+requestStrings.shift();
                  xhp.open("GET",finalurl,true);
                  xhp.send();
                }
        }
      };
      xhp.open("GET",finalurl,true);
      xhp.send();
    }
