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
/*(function () {
    current = window.location.pathname.split('/')[1];
     var a = document.getElementsByTagName("a");
    for (var i = 1; i < a.length; i++) {
        var b = a[i];
       // console.log(a[i]);
        temp = b.href.toString().split('/')[3];
        console.log(b.class);    
        console.log(temp)
        if (current == temp) {
            b.Class = "selected";
        }
        a[i].class ="";
  }
})();*/