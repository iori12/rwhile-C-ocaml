<?php
$example = filter_input(INPUT_GET, "example", FILTER_VALIDATE_INT);
?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>R-WHILE (w/ procedures) Playground</title>
  </head>

  <body>
  <h1>R-WHILE (w/ procedures) Playground</h1>

<p> <font color="red"><a href="../rwhile-wprocedure-playground-170620">The old version available on July 20, 2017</a> has errors.</font>

<form action="execute.php" method="post">
<h3>R-WHILE code</h3>
<textarea name="prog" rows="20" cols="100">
<?php
if ($example == 1) {
	$filename = "reverse.rwhile";
} else if ($example == 11) {
	$filename = "decrement1.rwhile";
} else if ($example == 12) {
	$filename = "decrement2.rwhile";
} else if ($example == 13) {
	$filename = "decrement3.rwhile";
} else if ($example == 14) {
	$filename = "decrement4.rwhile";
} else if ($example == 15) {
	$filename = "decrement5.rwhile";
} else if ($example == 21) {
	$filename = "increment1.rwhile";
} else if ($example == 22) {
	$filename = "increment2.rwhile";
} else if ($example == 23) {
	$filename = "increment3.rwhile";
} else if ($example == 30) {
	$filename = "move.rwhile";
} else if ($example == 101 || $example == 102) {
	$filename = "snoc_docall.rwhile";
} else if ($example == 103 || $example == 104) {
	$filename = "snoc_doinvuncall.rwhile";
} else if ($example == 111 || $example == 112) {
	$filename = "unsnoc_douncall.rwhile";
} else if ($example == 113 || $example == 114) {
	$filename = "unsnoc_doinvcall.rwhile";
} else {
	$filename = "reverse.rwhile";
}
$con = file_get_contents("examples/$filename");
echo($con);
 ?>
</textarea>
<h3>Input data</h3>
<textarea name="data" rows="10" cols="100">
<?php
if ($example == 1) {
    $data = "reverse.val";
} if (11 <= $example && $example <= 23) {
    $data = "nil_nil_nil.val";
} if ($example == 101 || $example == 103) {
    $data = "ab_and_c.val";
} if ($example == 102 || $example == 104) {
    $data = "nil_and_c.val";
} if ($example == 111 || $example == 113) {
    $data = "abc.val";
} if ($example == 112 || $example == 114) {
    $data = "c.val";
} else {
    $data = "reverse.val";
}
$con = file_get_contents("examples/$data");
echo($con);
?>
</textarea>

<!-- 
<h3>Options</h3>
<input type="checkbox" name="invert" value="1">Inversion
<input type="checkbox" name="p2d" value="1">Program2data
<input type="checkbox" name="exp" value="1">Expand macros
-->

<h3>Execute</h3>
<input type="submit" value="Execute">
</form>

<h2>Sample programs and data</h2>
<ul>
 <li> <a href="index.php?example=21">increment 1</a>
<!--
 <li> <a href="index.php?example=22">increment 2</a>
 <li> <a href="index.php?example=23">increment 3</a>
 <li> <a href="index.php?example=11">decrement 1</a>
 <li> <a href="index.php?example=12">decrement 2</a>
 <li> <a href="index.php?example=13">decrement 3</a>
 <li> <a href="index.php?example=14">decrement 4</a>
 <li> <a href="index.php?example=15">decrement 5</a>
 -->
 <li> <a href="index.php?example=1">reverse</a>
 <li> <a href="index.php?example=30">move a value by reversible assignments</a>
 <li> forward: call snoc <a href="index.php?example=101">1</a>, <a href="index.php?example=102">2</a>
 <li> forward: inverse uncall snoc <a href="index.php?example=103">1</a>, <a href="index.php?example=104">2</a>
 <li> backward: uncall snoc <a href="index.php?example=111">1</a>, <a href="index.php?example=112">2</a>
 <li> backward: inverse call snoc <a href="index.php?example=113">1</a>, <a href="index.php?example=114">2</a>
</ul>

<h2>Source code</h2>
<ul>
 <li> <a href="https://github.com/tetsuo-jp/rwhile-C-ocaml/tree/w_procedure">source program</a>
</ul>

  </body>
</html>
