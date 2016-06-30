1. google what is a jquery
2. find a couple resources
3. test at each new concept
4. reach out to cohort if stuck
5. good luck

W3 schools is good, but what exactly is going on with the $(document)?

http://www.tutorialspoint.com/jquery/jquery_tutorial.pdf

The best strategy is to work with this a lot and have a good set of google skills.  there seems to be an endless supply of good actions out there you can use to code less.


<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script> 
$(document).ready(function(){
    $("button").click(function(){
        $("div").animate({
            height: 'toggle'
        });
    });
});
</script> 
</head>
<body>

<p>Click the button multiple times to toggle the animation.</p>

<button>Start Animation</button>

<p>By default, all HTML elements have a static position, and cannot be moved. To manipulate the position, remember to first set the CSS position property of the element to relative, fixed, or absolute!</p>

<div style="background:#98bf21;height:100px;width:100px;position:absolute;"></div>

</body>
</html>
