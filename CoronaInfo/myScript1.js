/* Set the width of the sidebar to 250px and the left margin of the page content to 250px */
var isopen = false;
function openNav() {
    document.getElementById("links-Sidebar").style.width = "250px";
    isopen = true;   
}

/* Set the width of the sidebar to 0 and the left margin of the page content to 0 */
function closeNav() {
    if (!isopen){
        document.getElementById("links-Sidebar").style.width = "0";        
    }
   isopen = false; 
   // document.getElementById("main").style.marginRight = "0";
}