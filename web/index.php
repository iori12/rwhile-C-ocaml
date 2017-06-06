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
  <h1>R-WHILE Playground</h1>

<form action="execute.php" method="post">
<h3>R-WHILE code</h3>
<textarea name="prog" rows="20" cols="100">
<?php
if ($example == 1) {
	$filename = "reverse.rwhile";
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
} else {
    $data = "reverse.val";
}
$con = file_get_contents("examples/$data");
echo($con);
?>
</textarea>
<h3>Options</h3>
<input type="checkbox" name="invert" value="1">Inversion
<input type="checkbox" name="p2d" value="1">Program2data
<input type="checkbox" name="exp" value="1">Expand macros
<h3>Execute</h3>
<input type="submit" value="Execute">
</form>

<h2>Sample programs and data</h2>
<ul>
 <li> <a href="index.php?example=1">reverse</a>
</ul>

<h2>Source code</h2>
<ul>
 <li> <a href="https://github.com/tetsuo-jp/rwhile-C-ocaml/tree/w_procedure">source program</a>
</ul>

  </body>
</html>
