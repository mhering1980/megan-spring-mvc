<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Volunteer Time Tracker</title>
		<link rel="stylesheet" href='<spring:url value="/css/menu.css" />' />
		<link rel="stylesheet" href='<spring:url value="/css/main.css" />' />

		<script src='<spring:url value="/js/function_showAjaxResultInMainElement.js" />'></script>
	</head>
	<body style="padding:0; margin-top:0; margin-left:auto; margin-right:auto; box-sizing: border-box; margin-bottom:0;">
		<header>
			<h2>Rotary Botanical Gardens</h2>
			<h3>Volunteer Time Tracker</h3>
		</header>
		
		<div style="display:grid; grid: auto / 33% 67%;">
			<div id="menu">
				<div class="tabs">
					<label class="tab-selected">Volunteer</label>						
					<label>Admin</label>
				</div>
				<div class="tabs-content">
					<div class="tab-content-selected">
							<h4>Enter your hours here</h4>
						<input type="button" value="Add Hours" onclick="showAjaxResultInMainElement(''/* Insert relative path to your module here */)"/>
							<h4>Be able to see, search<br>or edit your hours</h4>
						<input type="button" value="View/Search/Edit" onclick="showAjaxResultInMainElement(''/* Insert relative path to your module here */)"/>
							<h4>Change your password here</h4>
						<input type="button" value="Change Password" onclick="showAjaxResultInMainElement(''/* Insert relative path to your module here */)"/>
							<h4>Logout from session</h4>
						<input type="button" value="Logout" onclick="showAjaxResultInMainElement(''/* Insert relative path to your module here */)"/>
					</div>
					<div>
						<input type="button" value="Search by User" onclick="showAjaxResultInMainElement(''/* Insert relative path to your module here */)"/>
						<input type="button" value="Add Volunteer" onclick="showAjaxResultInMainElement(''/* Insert relative path to your module here */)"/>
						<input type="button" value="Add/Edit Activity" onclick="showAjaxResultInMainElement(''/* Insert relative path to your module here */)"/>
						<input type="button" value="Reset Password" onclick="showAjaxResultInMainElement(''/* Insert relative path to your module here */)"/>
						<input type="button" value="Volunteer Hours Report" onclick="showAjaxResultInMainElement(''/* Insert relative path to your module here */)"/>
					</div>
				</div>
				<script>
				   function addTabFunctionality(){
					   document.querySelectorAll(".tabs > label").forEach(
						   (tab)=>{
							   tab.onclick = 
							   ()=> {
								   //*** HTML Element Variables ***
								   //******************************
								   var tabs = tab.parentElement;
								   var tabsContent = tab.parentElement.nextElementSibling;
								   
								   //*** End If No Tabs And/Or Tab-Content Exist ***
								   //***********************************************
								   if(tabs.childElementCount == 0){ return; }
								   if(tabsContent.childElementCount == 0) { return; }
								   
								   //*** Update Selected-Tab and Tab-Content Shown ***
								   //*************************************************
								   //*** loop variables ***
								   var tabElement = tabs.firstElementChild;
								   var index = 0;
								   var caseEncounteredFoundClickedTab = false;
								   var caseEncounteredFoundAlreadySelectedTab = false;
								   while(true)
								   {
										//case: end of array reached; inform user and terminate function
										if(index === tabs.childElementCount){
											console.log("flag:error");
											console.group()
											console.error("ERROR: No tab was selected in: ");
											console.error(tabs);
											console.groupEnd();
											return;
										}
										
										//case: found already selected tab found;
										if(!caseEncounteredFoundAlreadySelectedTab
										   && tabElement.classList.contains("tab-selected"))
										{
											tabElement.classList.remove("tab-selected");
											tabsContent.children[index].classList.remove("tab-content-selected");
											caseEncounteredFoundAlreadySelectedTab = true;
										}
										
										//case: found clicked tab;
										if(!caseEncounteredFoundClickedTab
										   && tab.isEqualNode(tabElement))
										{
											tab.classList.add("tab-selected");
											tabsContent.children[index].classList.add("tab-content-selected");
											caseEncounteredFoundClickedTab = true;
										}
										
										// default case: found neither clicked-tab or already selected-tab && both cases encountered
										if(caseEncounteredFoundClickedTab && caseEncounteredFoundAlreadySelectedTab)
										{
											return;
										}
										
										tabElement = tabElement.nextElementSibling;
										index++;
								   }
							   }
						   }
					   );
				   }
				   addTabFunctionality();
				</script>
			</div>
			<div id="main">
				<div style="position:absolute; z-index:-1; max-width:50%; padding:1em;">
				<h2>Main</h2><br>
				Modules are brought into template via
 XMLHTTP Requests. When you press a button on the side-bar, such a request is made.<br><br>
When your ready to make your module XMLHttp requestable, look for lines like this:<br><strong>&#x3C;input type=&#x22;button&#x22; value=&#x22;Add Hours&#x22; onclick=&#x22;showAjaxResultInMainElement(&#x27;&#x27;/* Insert relative path to your module here */)&#x22;/&#x3E;</strong><br><br>You'll only have to edit of the "onclick" attribute for the appropriate button (input element of type "button"). The placeholder material there is self describing about what should be done.<br><br>By default, clicking a button in the side-bar will cause this element to be swaped via an XMLHTTP request with this HTML document's self. After which, if you use "inspect" on this element to view it's contents, you'll might see some discrepancies between the requested document and the implemented document (how browser implemented loaded document). This should not pose much of a problem in terms of functionality. However, the relocation of the requested to the inside of this element might break some of the CSS and JavaScript due to broken references. If the requested content came wraped in "&#x3C;html&#x3E;", "&#x3C;head&#x3E;", "&#x3C;body&#x3E;" tags, though, you should remove those from the document you wanted to retrieve.
				</div>
			</div>
		</div>
		
		<footer>
			<h3>Enter footer here</h3>
		</footer>
	
</body></html>