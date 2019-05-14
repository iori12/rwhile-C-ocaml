<?php
$example = filter_input(INPUT_GET, "example", FILTER_VALIDATE_INT);

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
} else if ($example == 24) {
	$filename = "increment4.rwhile";
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
} elseif ($example == 120) {
    $filename = "bennett.rwhile";
} elseif ($example == 200) {
    $filename = "tree-to-inorder-preorder.txt";
} elseif ($example == 201) {
    $filename = "tree-to-inorder-preorder-iterative.rwhile.txt";
} else {
	$filename = "reverse.rwhile";
}

if ($example == 1) {
    $data = "reverse.val";
} elseif (11 <= $example && $example <= 23) {
    $data = "nil_nil_nil.val";
} elseif ($example == 101 || $example == 103) {
    $data = "ab_and_c.val";
} elseif ($example == 102 || $example == 104) {
    $data = "nil_and_c.val";
} elseif ($example == 111 || $example == 113) {
    $data = "abc.val";
} elseif ($example == 112 || $example == 114) {
    $data = "c.val";
} elseif ($example == 120) {
    $data = "seven.val";
} elseif ($example == 200 || $example == 201) {
    $data = "tree-to-inorder-preorder-01.val";
} else {
    $data = "reverse.val";
}

?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>R-WHILE Playground</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Write and run R-WHILE programs in your browser">

    <link href="static/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="static/css/main.css">
    <link href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" rel="stylesheet">
  </head>

  <body style="padding-top:50px">
    <script src="static/js/jquery-3.3.1.slim.min.js"></script>
    <script src="static/js/bootstrap.bundle.min.js"></script>
    <script src="static/js/ace/ace.js" charset="utf-8"></script>
    <script src="static/js/main.js"></script>

    <nav class="navbar navbar-expand-lg fixed-top navbar-dark bg-dark">
      <a class="navbar-brand" href="#">R-WHILE PLAYGROUND</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="ナビゲーション切り替え">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav mr-auto">
        <li class="nav-item">
          <form name ="input_form" action="execute.php" method="post" onsubmit="get_javascript_variable()">
              <input type="hidden" name="prog" value="">
              <input type="hidden" name="data" value="">
              <input type="hidden" name="invert" value="">
              <input type="hidden" name="p2d" value="">
              <input type="hidden" name="exp" value="">
              <button type="submit" class="square_btn"><i class="fas fa-step-forward"></i>Execute</button>
          </form>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="example" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Sample</a>
          <div class="dropdown-menu" aria-labelledby="example">
            <a class="dropdown-item" href="index.php?example=200">Conversion of a binary tree to its inorder and preorder traversals (recursive version)</a>
            <a class="dropdown-item" href="index.php?example=201">Conversion of a binary tree to its inorder and postorder traversals (iterative version)</a>
            <a class="dropdown-item" href="index.php?example=0">reverse</a>
            <a class="dropdown-item" href="index.php?example=1">swap</a>
            <!--<a class="dropdown-item" href="index.php?example=2">translation from a tree to its preorder and inorder traversal (piorder)</a>-->
            <a class="dropdown-item" href="index.php?example=3">self-interpretation of an identity function</a>
            <a class="dropdown-item" href="index.php?example=4">self-interpretation of reverse</a>
            <a class="dropdown-item" href="index.php?example=5">self-interpretation of piorder</a>
            <a class="dropdown-item" href="index.php?example=6">self-interpretation of self-interpretation of reverse (This will probably time out in this playground.)</a>
            <a class="dropdown-item" href="index.php?example=7">Infinite loop (in *both* directions)</a>
            <a class="dropdown-item" href="index.php?example=8">Enumeration of trees</a>
            <a class="dropdown-item" href="index.php?example=21">Increment 1</a>
            <a class="dropdown-item" href="index.php?example=22">Increment 2</a>
            <a class="dropdown-item" href="index.php?example=23">Increment 3</a>
            <a class="dropdown-item" href="index.php?example=24">Increment 4</a>
            <a class="dropdown-item" href="index.php?example=11">Decrement 1</a>
            <a class="dropdown-item" href="index.php?example=12">Decrement 2</a>
            <a class="dropdown-item" href="index.php?example=13">Decrement 3</a>
            <a class="dropdown-item" href="index.php?example=14">Decrement 4</a>
            <a class="dropdown-item" href="index.php?example=15">Decrement 5</a>
            <a class="dropdown-item" href="index.php?example=1">reverse</a>
            <a class="dropdown-item" href="index.php?example=30">move a value by reversible assignments</a>
            <a class="dropdown-item" href="index.php?example=101">Call snoc 1</a>
            <a class="dropdown-item" href="index.php?example=102">Call snoc 2</a>
            <a class="dropdown-item" href="index.php?example=103">forward: inverse uncall snoc 1</a>
            <a class="dropdown-item" href="index.php?example=104">forward: inverse uncall snoc 2</a>
            <a class="dropdown-item" href="index.php?example=111">backward: uncall snoc 1</a>
            <a class="dropdown-item" href="index.php?example=112">backward: uncall snoc 2</a>
            <a class="dropdown-item" href="index.php?example=113">backward: inverse call snoc 1</a>
            <a class="dropdown-item" href="index.php?example=114">backward: inverse call snoc 2</a>
            <a class="dropdown-item" href="index.php?example=120">call-copy-uncall scheme</a>
          </div>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#option" data-toggle="modal">Options  <i class="fas fa-cogs"></i></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#about" data-toggle="modal">About</a>
        </li>
        </ul>
        <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link" href="#"><i class="fab fa-github my-icon"></i></a>
        </li>
<!--
        <li>
          <img src="static/css/ty.png" class="button" onclick="goClick()" width="35pv" height="40pv">
        </li>
-->
      </ul>
      </div>
    </nav>

    <div class="modal fade" id="option" tabindex="-1" role="dialog" aria-labelledby="option" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h3 class="modal-title" id="exampleModalLabel">Options</h3>
          </div>
          <div class="modal-body">
            <div class="custom-control custom-checkbox mb-3">
              <input type="checkbox" class="custom-control-input" id="customCheck1" name="invert" value="1">
              <label class="custom-control-label" for="customCheck1">Inversion</label>
            </div>
            <div class="custom-control custom-checkbox mb-3">
              <input type="checkbox" class="custom-control-input" id="customCheck2" name="p2d" value="1">
              <label class="custom-control-label" for="customCheck2">Program2data</label>
            </div>
            <div class="custom-control custom-checkbox mb-3">
              <input type="checkbox" class="custom-control-input" id="customCheck3" name="exp" value="1">
              <label class="custom-control-label" for="customCheck3">Expand macros</label>
            </div>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-brand" data-dismiss="modal">close</button>
          </div>
        </div>
      </div>
    </div>

    <div class="modal fade" id="about" tabindex="-1" role="dialog" aria-labelledby="about" aria-hidden="true">
      <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h3 class="modal-title" id="exampleModalLabel">About the R-WHILE Playground</h3>
          </div>
          <div class="modal-body">
            <p>The Playground lets you try out the R-WHILE programming language in your browser without having to install anything. When you click "Execute" the program is sent to the server where it is executed and the result is returned.
                The R-WHILE Playground has been created by students of Yokoyama lab.</p>
            <h3>Usage</h3>
            <p>You can load example programs by clicking on the <b>Sample</b> dropdown in the menu and selecting an example which will then be loaded into the text area.</p>
            <p>The code in the text area can be run by pressing the <b>Execute</b> button in the menu and the result will appear.</p>
            <p>If you wish to see the inversion of the program currently written in the text area, press the <b>Option</b> button. The inverted program will then show up in the result window.</p>
            <p>If the program fails, the error will be show in red in the result window. The error will explain you what went wrong and in which line, and give you useful information about the program state, for example it prints the variable store when the error occured.</p>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-brand" data-dismiss="modal">close</button>
          </div>
        </div>
      </div>
  </div>


  <div class="py-3">
    <div class="container-fluid">
        <div class="form-group row">
          <div class="col-lg-7">
            <div class="col-md-12 col-sm-12 codeSide" id="programinput">
            <h3>R-WHILE code</h3>
            <?php
            $con = file_get_contents("examples/$filename");
            ?>
            <input id="rwhile-code" type="hidden" value="<?php echo $con; ?>">
            <div id="code" style="height: 75vh; width: 100%"></div>
            <script>
              var editor1 = ace.edit("code");
              var js_var = $('#rwhile-code').val();
              editor1.getSession().setUseWrapMode(true);
              editor1.getSession().setMode("ace/mode/c_cpp");
              editor1.setFontSize(14);
              editor1.setTheme("ace/theme/tommorow");
              editor1.setValue(js_var,-1);
              var value1;
              function get_value1_variable(){
                value1 = editor1.getValue();
              }
            </script>
            </div>
            </div>
            <div class="col-lg-5">
            <div class="col-md-12 col-sm-12 codeSide" id="codeinput">
            <h3>Input data</h3>
            <?php
            $con = file_get_contents("examples/$data");
            ?>
            <input id="input-data" type="hidden" value=" <?php echo $con; ?> ">
            <div id="data" style="height: 50vh; width: 100%"></div>
            <script>
              var js_var = $('#input-data').val();
              var editor2 = ace.edit("data");
              editor2.setFontSize(14);
              editor2.setTheme("ace/theme/tommorow");
              editor2.getSession().setMode("ace/mode/c_cpp");
              editor2.getSession().setUseWrapMode(true);
              editor2.setValue(js_var,-1)
              var value2;
              function get_value2_variable(){
                value2 = editor2.getValue();
              }
            </script>
            </div>
            </div>
        </div>
      </div>
    </div>
  </body>
</html>
