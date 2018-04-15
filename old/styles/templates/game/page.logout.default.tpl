{block name="title" prepend}{$LNG.lm_logout}{/block}
{block name="content"}
<div class="container">
	<table id="table1">
		<tr>
			<th>{$LNG.lo_title}</th>
		</tr>
	
		<tr>
			<td>{$LNG.lo_logout}</td>
		</tr>
	</table>
	
	<table id="table1">
		<tr>
			<th>{$LNG.lo_redirect}</th>
		</tr>
		
		<tr>
			<td>{$LNG.lo_notify}<br><a href="/index.php">{$LNG.lo_continue}</a></td>
		</tr>
	</table>
</div>

<style type="text/css">
  div.container {
    width:98%; 
    margin:2%;
  }
  table#table1 {
    text-align:center; 
    margin-left:auto; 
    margin-right:auto; 
    width: 800px;
    height: 80px;
  }
  tr,td {
  	text-align:center;
  }
</style>

{/block}

{block name="script" append}
<script type="text/javascript">
    var second = 5;
	function Countdown(){
		if(second == 0)
			return;
			
		second--;
		$('#seconds').text(second);
	}
	window.setTimeout("window.location.href='./index.php'", 5000);
	window.setInterval("Countdown()", 1000);
</script>
{/block}