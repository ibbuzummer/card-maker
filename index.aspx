<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="E_CardMaker.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>E-Card Maker</title>
    <script src="js/jquery.js"></script>
    <script src="js/kinetic-v3.9.3.js"></script>
    <script src="js/valentine.js"></script>
    <link href="css/layout.css" rel="stylesheet" />
    <link href="css/menu.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <script type="text/javascript">
			$(document).ready(function() {
				$("#spinner").bind("ajaxSend", function() {
					$(this).show();
				}).bind("ajaxStop", function() {
					$(this).hide();
				}).bind("ajaxError", function() {
					$(this).hide();
				});

				$("#button").click(function() {
					$("#editor").slideToggle("slow");
				});
				/*	$("#button").click(function() {
				 if ($(this).val() == "Hide") {
				 $(this).val("Show");
				 $("#container").animate({
				 width : '100%'
				 });
				 $("#editor").animate({
				 width : '0px'
				 });
				 } else {
				 $(this).val("Hide");
				 $("#container").animate({
				 width : '100%'
				 });
				 $("#editor").animate({
				 width : '20%'
				 });
				 }
				 });*/

			});
		</script>
		
			<script type="text/javascript">
				$(document).ready(function() {
					$(document).mousemove(function() {
						$("#submit").removeAttr("disabled", "disabled");
					});
					$(document).on('touchend', function() {
						$("#submit").removeAttr("disabled", "disabled");
					});
				});
				
			
			</script>
	<%--<script type="text/javascript">
	$(function() { 
    $("btnSave").click(function() { 
        html2canvas($("#container"), {
            onrendered: function(canvas) {
                theCanvas = canvas;
                document.body.appendChild(canvas);
                // Convert and download as image 
                Canvas2Image.saveAsPNG(canvas); 
                $("#imgout").append(canvas);
               
            }
        });
    });
}); 
	</script>--%>
   

        <script type="text/javascript">
function Print() {
    var PrintGrid = document.getElementById("container");
    PrintGrid.border = 0;
    var PrintGridWindow = window.open('', 'Print Your Card', 'left=100,top=100,width=1000,height=1000,tollbar=0,scrollbars=1,status=0,resizable=1');
    PrintGridWindow.document.write(PrintGrid.outerHTML);
    PrintGridWindow.document.close();
    PrintGridWindow.focus();
    PrintGridWindow.print();
    PrintGridWindow.close();

    function getImage() {
        var ctx = document.getElementById('container').getContext('2d');
        var img = new Image();
        img.src = src;
        img.onload = function () { ctx.drawImage(this.src, this.style.left, this.style.top); }
    }
}

    </script>
</head>
<%--<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>--%>
    <body>

		<!--nav-->
			<div id="sticker">
			<center>
			<h1>Stickers</h1>
			<ul id="img">
				<li>
					<a href="#"><img src="images/heart.png" id="i1" alt="heart" width="106" height="118" /></a>
					<a href="#"><img src="images/balloon.png" id="i2" alt="balloon" width="106" height="118" /></a>
				</li>
				<li>
					<a href="#"><img src="images/caterpillar3.png" id="i14" alt="caterpilla" width="106" height="118" /></a>
					<a href="#"><img src="images/Bears_1.png" id="i3" alt="Bear" width="106" height="118" /></a>
				</li>
				<li>
					<a href="#"><img src="images/Bears_2.png" id="i4" alt="Bear" width="106" height="118" /></a>
					<a href="#"><img src="images/Bears_3.png" id="i5" alt="Bear" width="106" height="118" /></a>
				</li>
				<li>
					<a href="#"><img src="images/Bears_4.png" id="i6" alt="Bear" width="106" height="118" /></a>
					<a href="#"><img src="images/cat1.png" id="i7" alt="cat" width="106" height="118" /></a>
				</li>
				<li>
					<a href="#"><img src="images/cat2.png" id="i8" alt="cat" width="106" height="118" /></a>
					<a href="#"><img src="images/cat4.png" id="i10" alt="cat" width="106" height="118" /></a>
				</li>
				<li>
					<a href="#"><img src="images/squirrels.png" id="i11" alt="squirrels" width="106" height="118" /></a>
				</li>

			</ul>
			</center>
             </div>
		<div id="content">
			<p id="textcount" style="position:absolute; left: 0px; visibility:hidden;font-size:30pt;"></p>
			
				<div id="controls">
				<input type="button" id="button" value="Add Text"/>
				<input type="submit" id="preview" value="Preview"/>
				<input type="button" id="btnSave" value="Save" />&nbsp;

				<input type="file" name="img" size="5" id="uploadimage" />
				<button id='addImg' value="Upload" >
					Upload</button>
			</div>
			

			<br>
			<br>
			<br>

			<p id="textcount" style="position:absolute; left: 0px; visibility:hidden;font-size:30pt;"></p>
			<div id="container" style=""></div>
<div id="imgout" style=""></div>
			<br>
 				
		<div id="editor" >
				<ul id="text" style=" margin-right:10px;">
					<h4>Add Text</h4>
					<div id="spinner" class="spinner" style="display:none;margin-left:80px;margin-bottom:20px;">
						Image Uploading<img src="images/ajax.gif" alt="loading">
					</div>
					<div id="container2" style="width:140px;"></div>
					<li>
						<label>Text: </label>
						<input type="text" id="texts" placeholder="Add Text Here"/>
					</li>
					<li>
						<label>Font Family: </label>
						<select id="fontfam">
							<option>Calibri</option>
							<option>Arial</option>
							<option>Verdana</option>
							<option>Impact</option>
							<option>Serif</option>
							<option>Monospace</option>
							<option>Helvetica</option>
							<option>Tahoma</option>
							<option>Gadget</option>
						</select>
					</li>
					<li>
						<label>Font Colour: </label>
						<select id="colour">
							<option>Black</option>
							<option>Red</option>
							<option>Blue</option>
							<option>Green</option>
							<option>White</option>
							<option>Yellow</option>
							<option>Pink</option>
							<option>Gray</option>
							<option>Purple</option>
							<option>Silver</option>
							<option>Gold</option>
							<option>Orange</option>
						</select>
					</li>
					<li>
						<label>Text Stroke Colour</label>
						<select id="textstroke">
							<option>transparent</option>
							<option>White</option>
							<option>Black</option>
							<option>Red</option>
							<option>Blue</option>
							<option>Green</option>
							<option>Yellow</option>
							<option>Pink</option>
							<option>Gray</option>
							<option>Purple</option>
							<option>Silver</option>
							<option>Gold</option>
							<option>Orange</option>
						</select>
					</li>
					<li>
						<label>&nbsp;</label>
						<input type="submit" id="textsubmit" value="Add Text"/>
					</li>
				</ul>
			</div>
		<br> 

			
			<p class="clearing" ></p>
		</div>	
	
		</div>
		</div>

		<!--container-->

		<script>
		    $("#texts").keyup(function () {
		        var value = $(this).val();
		        $("p#textcount").text(value);
		        var fontid = $('#fontfam').val();
		        $("p#textcount").css("font-family", fontid);
		        var color = $('#colour').val();
		        $("p#textcount").css("color", color);
		    }).keyup();

		    $("#colour").change(function () {
		        var value = $('texts').val();
		        $("p#textcount").text(value);
		        var fontid = $('#fontfam').val();
		        $("p#textcount").css("font-family", fontid);
		        var color = $('#colour').val();
		        $("p#textcount").css("color", color);
		    }).keyup();

		    $("#fontfam").change(function () {
		        var value = $('texts').val();
		        $("p#textcount").text(value);
		        var fontid = $('#fontfam').val();
		        $("p#textcount").css("font-family", fontid);
		        var color = $('#colour').val();
		        $("p#textcount").css("color", color);
		    }).keyup();

		    $("#colorsubmit").change(function () {
		        document.getElementById("container").style.backgroundColor = "lightblue";
		    }).keyup();

		</script>
		
		<div id="footer">
		<footer>
   <center>
		<p>
		Copyright © <a href="http://bkbiet.ac.in">BKBIET, Pilani</a> 2015. All Rights Reserved
		</p>
          </center>
		</footer>
		</div>
	</body>
</html>
