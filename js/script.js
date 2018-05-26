var myHistoryOverride = new HistoryButtonOverride(function()
{
    console.log("Back Button Pressed");
    return true;
},
function()
{
    console.log("Forward Button Pressed");
    return true;
});

function getPage(pageName,target){
	setTimeout(function() {
		if (window.XMLHttpRequest) {
	       	var i = new XMLHttpRequest();
	   	}
	   	else {
	       	var i = new ActiveXObject("Microsoft.XMLHTTP");
	   	}

		i.onreadystatechange = function(){
			if(this.readyState == 4 && this.status == 200){
				document.getElementById(target).innerHTML = this.responseText;
			}
		};
		i.open("POST",pageName, true);
		i.send();
	}, 1000);
}

function showDetail(newsID){
	newsIDNew="newsCard"+newsID;
	setTimeout(function() {
		if (window.XMLHttpRequest) {
	       	var i = new XMLHttpRequest();
	   	}
	   	else {
	       	var i = new ActiveXObject("Microsoft.XMLHTTP");
	   	}

		i.onreadystatechange = function(){
			if(this.readyState == 4 && this.status == 200){
				document.getElementById("display").innerHTML = this.responseText;
			}
		};
		i.open("POST","desc.php?&newsID="+newsID, true);
		i.send();
	}, 0000);
}