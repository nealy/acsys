<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Dashboard</title>

    <!-- Bootstrap -->
    <link href="/includes/css/bootstrap.min.css" rel="stylesheet">
    <link href="/css/custom.css" rel="stylesheet">
    <link href="/includes/DataTables-1.10.2/examples/resources/bootstrap/3/dataTables.bootstrap.css"  rel="stylesheet">


    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="/includes/js/html5shiv.min.js"></script>
    <script src="/includes/js/respond.min.js"></script>

    <![endif]-->

    <!-- jQuery necessary for Bootstrap's JavaScript plugins) -->
    <script src="/includes/js/jquery.min.js"></script>
    <script src="/includes/DataTables-1.10.2/media/js/jquery.dataTables.js"></script>
    <script src="/includes/DataTables-1.10.2/examples/resources/bootstrap/3/dataTables.bootstrap.js"></script>
    <script>
        $(document).ready(function() {
            var table = $('#board-list').DataTable({
            	bLengthChange: false
            });
            var table2 = $('#amount-list').DataTable({
                "bFilter":   false,
                "bLengthChange":   false,
                "bPaginate":   false,
                "bInfo":     false
            });
        });
    </script>
</head>
<body>
<div class="navbar navbar-inverse navbar-fixed-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Accounting System</a>
        </div>
        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav navbar-right">
                <li class="active"><a href="home">Home</a></li>
                <li><a href="grouping">Manage Grouping</a></li>
                <li><a href="account/logout">Log Out</a></li>
            </ul>
            <div class="navbar-form navbar-right">
                <button id="new-bill-btn" class="form-control btn btn-default">New Bill</button>
            </div>
        </div>
    </div>
</div>
<div class="container-fluid">
    <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
            <div class="input-group">
                <span class="input-group-addon">Grouping</span>
                <select id="group-by" class="form-control" name="grouping">
                    <option value="All">All</option>
                    <option value="A"> A</option>
                    <option value="B"> B</option>
                    <option value="C"> C</option>
                </select>
            </div>
            <table class="table" id="amount-list">
                <thead>
                    <tr>
                        <th>User</th>
                        <th>Amount</th>
                    </tr>
                </thead>
                <tbody>
                    <tr class="">
                        <td>Michael</td>
                        <td>68.9</td>
                    </tr>
                    <tr class="">
                        <td>Frank</td>
                        <td>51.1</td>
                    </tr>
                    <tr class="">
                        <td>Norbert</td>
                        <td>50.8</td>
                    </tr>
                    <tr class="">
                        <td>Wisdom</td>
                        <td>17.5</td>
                    </tr>
                    <tr class="">
                        <td>Quinn</td>
                        <td>12.5</td>
                    </tr>
                    <tr class="">
                        <td>Rony</td>
                        <td>2.4</td>
                    </tr>
                    <tr class="">
                        <td>Ray</td>
                        <td>-6.0</td>
                    </tr>
                    <tr class="">
                        <td>Bob</td>
                        <td>-6.2</td>
                    </tr>
                    <tr class="">
                        <td>Ben</td>
                        <td>-10.6</td>
                    </tr>
                    <tr class="">
                        <td>Harry</td>
                        <td>-12.2</td>
                    </tr>
                    <tr class="">
                        <td>Yee</td>
                        <td>-12.5</td>
                    </tr>
                    <tr class="">
                        <td>Mandy</td>
                        <td>-15.0</td>
                    </tr>
                    <tr class="">
                        <td>Johnson</td>
                        <td>-15.0</td>
                    </tr>
                    <tr class="">
                        <td>Andy</td>
                        <td>-16.1</td>
                    </tr>
                    <tr class="">
                        <td>Jackie</td>
                        <td>-16.6</td>
                    </tr>
                    <tr class="">
                        <td>Claude</td>
                        <td>-18.7</td>
                    </tr>
                    <tr class="">
                        <td>Zeke</td>
                        <td>-21.9</td>
                    </tr>
                    <tr class="">
                        <td>Jeffrey</td>
                        <td>-21.9</td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="col-sm-9 col-md-10 col-sm-offset-3 col-md-offset-2 main">
            <div class="sub-header clearfix">
                <h2>Bill List</h2>
            </div>
            <div class="table-responsive">
                <table class="table table-striped" id="board-list">
                    <thead>
                        <tr>
                            <th>Date</th>
                            <th>Payer</th>
                            <th>Attendant</th>
                            <th>Place</th>
                            <th>Amount</th>
                            <th>Writer's IP</th>
                            <th>Operation</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>2014-06-12</td>
                            <td><a href="#">Frank</a></td>
                            <td><a href="#">Harry</a> <a href="#">Wisdom</a> <a href="#">Claude</a> <a href="#">Ben</a> <a
                                href="#">Norbert</a></td>
                            <td>å®¢å®¶</td>
                            <td>90.0</td>
                            <td>10.172.97.162</td>
                            <td><a href="#">edit</a></td>
                        </tr>
                        <tr>
                            <td>2014-06-11</td>
                            <td><a href="#">Wisdom</a></td>
                            <td><a href="#">Frank</a> <a href="#">Claude</a> <a href="#">Ben</a> <a href="#">Norbert</a></td>
                            <td>é£Ÿå ‚</td>
                            <td>75.0</td>
                            <td>10.172.97.112</td>
                            <td><a href="#">edit</a></td>
                        </tr>
                        <tr>
                            <td>2014-06-10</td>
                            <td><a href="#">Norbert</a></td>
                            <td><a href="#">Harry</a> <a href="#">Wisdom</a> <a href="#">Claude</a> <a href="#">Ben</a> <a
                                href="#">Frank</a></td>
                            <td>èŽ†ç”°å�¤é�¢</td>
                            <td>90.0</td>
                            <td>10.172.94.132</td>
                            <td><a href="#">edit</a></td>
                        </tr>
                        <tr>
                            <td>2014-06-09</td>
                            <td><a href="#">Claude</a></td>
                            <td><a href="#">Frank</a><a href="#">Harry</a> <a href="#">Ben</a> <a href="#">Wisdom</a></td>
                            <td>è¥¿åŒ—æ‹‰é�¢</td>
                            <td>75.0</td>
                            <td>10.104.80.38</td>
                            <td><a href="#">edit</a></td>
                        </tr>
                        <tr>
                            <td>2014-06-05</td>
                            <td><a href="#">Ben</a></td>
                            <td><a href="#">Harry</a> <a href="#">Wisdom</a> <a href="#">Claude</a> <a href="#">Harry</a> <a
                                href="#">Norbert</a></td>
                            <td>æ–‡è�”</td>
                            <td>90.0</td>
                            <td>10.172.97.28</td>
                            <td><a href="#">edit</a></td>
                        </tr>
                        <tr>
                            <td>2014-05-28</td>
                            <td><a href="#">Wisdom</a></td>
                            <td><a href="#">Harry</a><a href="#">Claude</a> <a href="#">Ben</a> <a href="#">Zeke</a></td>
                            <td>ç›–æµ‡é¥­</td>
                            <td>75.0</td>
                            <td>10.172.97.35</td>
                            <td><a href="#">edit</a></td>
                        </tr>
                        <tr>
                            <td>2014-05-04</td>
                            <td><a href="#">Zeke</a></td>
                            <td><a href="#">Andy</a> <a href="#">Wisdom</a> <a href="#">Ben</a></td>
                            <td>é¦™æ¸¯ç«™</td>
                            <td>55.0</td>
                            <td>10.172.92.37</td>
                            <td><a href="#">edit</a></td>
                        </tr>
                        <tr>
                            <td>2014-04-30</td>
                            <td><a href="#">Frank</a></td>
                            <td><a href="#">Jeffery</a> <a href="#">Harry</a> <a href="#">Norbert</a> <a href="#">Wisdom</a> <a href="#">Andy</a></td>
                            <td>æ¹–å¤´äºº</td>
                            <td>90.0</td>
                            <td>10.172.97.162</td>
                            <td><a href="#">edit</a></td>
                        </tr>
                        <tr>
                            <td>2014-04-29</td>
                            <td><a href="#">Andy</a></td>
                            <td><a href="#">Frank</a> <a href="#">Wisdom</a> <a href="#">Zeke</a></td>
                            <td>å¿«é¤�</td>
                            <td>80.0</td>
                            <td>10.172.80.110</td>
                            <td><a href="#">edit</a></td>
                        </tr>
                        <tr>
                            <td>2014-04-28</td>
                            <td><a href="#">Harry</a></td>
                            <td><a href="#">Frank</a> <a href="#">Jeffery</a> <a href="#">Harry</a> <a href="#">Norbert</a> <a href="#">Wisdom</a> <a href="#">Andy</a> <a href="#">Zeke</a></td>
                            <td>å¤§å¤§é¥ºå­�é¦†</td>
                            <td>90.0</td>
                            <td>10.172.97.162</td>
                            <td><a href="#">edit</a></td>
                        </tr>
                        <tr>
                            <td>2014-06-12</td>
                            <td><a href="#">Frank2</a></td>
                            <td><a href="#">Harry</a> <a href="#">Wisdom</a> <a href="#">Claude</a> <a href="#">Ben</a> <a
                                href="#">Norbert</a></td>
                            <td>å®¢å®¶</td>
                            <td>90.0</td>
                            <td>10.172.97.162</td>
                            <td><a href="#">edit</a></td>
                        </tr>
                        <tr>
                            <td>2014-06-11</td>
                            <td><a href="#">Wisdom</a></td>
                            <td><a href="#">Frank</a> <a href="#">Claude</a> <a href="#">Ben</a> <a href="#">Norbert</a></td>
                            <td>é£Ÿå ‚</td>
                            <td>75.0</td>
                            <td>10.172.97.112</td>
                            <td><a href="#">edit</a></td>
                        </tr>
                        <tr>
                            <td>2014-06-10</td>
                            <td><a href="#">Norbert</a></td>
                            <td><a href="#">Harry</a> <a href="#">Wisdom</a> <a href="#">Claude</a> <a href="#">Ben</a> <a
                                href="#">Frank</a></td>
                            <td>èŽ†ç”°å�¤é�¢</td>
                            <td>90.0</td>
                            <td>10.172.94.132</td>
                            <td><a href="#">edit</a></td>
                        </tr>
                        <tr>
                            <td>2014-06-09</td>
                            <td><a href="#">Claude</a></td>
                            <td><a href="#">Frank</a><a href="#">Harry</a> <a href="#">Ben</a> <a href="#">Wisdom</a></td>
                            <td>è¥¿åŒ—æ‹‰é�¢</td>
                            <td>75.0</td>
                            <td>10.104.80.38</td>
                            <td><a href="#">edit</a></td>
                        </tr>
                        <tr>
                            <td>2014-06-05</td>
                            <td><a href="#">Ben</a></td>
                            <td><a href="#">Harry</a> <a href="#">Wisdom</a> <a href="#">Claude</a> <a href="#">Harry</a> <a
                                href="#">Norbert</a></td>
                            <td>æ–‡è�”</td>
                            <td>90.0</td>
                            <td>10.172.97.28</td>
                            <td><a href="#">edit</a></td>
                        </tr>
                        <tr>
                            <td>2014-05-28</td>
                            <td><a href="#">Wisdom</a></td>
                            <td><a href="#">Harry</a><a href="#">Claude</a> <a href="#">Ben</a> <a href="#">Zeke</a></td>
                            <td>ç›–æµ‡é¥­</td>
                            <td>75.0</td>
                            <td>10.172.97.35</td>
                            <td><a href="#">edit</a></td>
                        </tr>
                        <tr>
                            <td>2014-05-04</td>
                            <td><a href="#">Zeke</a></td>
                            <td><a href="#">Andy</a> <a href="#">Wisdom</a> <a href="#">Ben</a></td>
                            <td>é¦™æ¸¯ç«™</td>
                            <td>55.0</td>
                            <td>10.172.92.37</td>
                            <td><a href="#">edit</a></td>
                        </tr>
                        <tr>
                            <td>2014-04-30</td>
                            <td><a href="#">Frank</a></td>
                            <td><a href="#">Jeffery</a> <a href="#">Harry</a> <a href="#">Norbert</a> <a href="#">Wisdom</a> <a href="#">Andy</a></td>
                            <td>æ¹–å¤´äºº</td>
                            <td>90.0</td>
                            <td>10.172.97.162</td>
                            <td><a href="#">edit</a></td>
                        </tr>
                        <tr>
                            <td>2014-04-29</td>
                            <td><a href="#">Andy</a></td>
                            <td><a href="#">Frank</a> <a href="#">Wisdom</a> <a href="#">Zeke</a></td>
                            <td>å¿«é¤�</td>
                            <td>80.0</td>
                            <td>10.172.80.110</td>
                            <td><a href="#">edit</a></td>
                        </tr>
                        <tr>
                            <td>2014-04-28</td>
                            <td><a href="#">Harry</a></td>
                            <td><a href="#">Frank</a> <a href="#">Jeffery</a> <a href="#">Harry</a> <a href="#">Norbert</a> <a href="#">Wisdom</a> <a href="#">Andy</a> <a href="#">Zeke</a></td>
                            <td>å¤§å¤§é¥ºå­�é¦†</td>
                            <td>90.0</td>
                            <td>10.172.97.162</td>
                            <td><a href="#">edit</a></td>
                        </tr>
                        <tr>
                            <td>2014-06-12</td>
                            <td><a href="#">Frank3</a></td>
                            <td><a href="#">Harry</a> <a href="#">Wisdom</a> <a href="#">Claude</a> <a href="#">Ben</a> <a
                                href="#">Norbert</a></td>

                            <td>å®¢å®¶</td>
                            <td>90.0</td>
                            <td>10.172.97.162</td>
                            <td><a href="#">edit</a></td>
                        </tr>
                        <tr>
                            <td>2014-06-11</td>
                            <td><a href="#">Wisdom</a></td>
                            <td><a href="#">Frank</a> <a href="#">Claude</a> <a href="#">Ben</a> <a href="#">Norbert</a></td>
                            <td>é£Ÿå ‚</td>
                            <td>75.0</td>
                            <td>10.172.97.112</td>
                            <td><a href="#">edit</a></td>
                        </tr>
                        <tr>
                            <td>2014-06-10</td>
                            <td><a href="#">Norbert</a></td>
                            <td><a href="#">Harry</a> <a href="#">Wisdom</a> <a href="#">Claude</a> <a href="#">Ben</a> <a
                                href="#">Frank</a></td>
                            <td>èŽ†ç”°å�¤é�¢</td>
                            <td>90.0</td>
                            <td>10.172.94.132</td>
                            <td><a href="#">edit</a></td>
                        </tr>
                        <tr>
                            <td>2014-06-09</td>
                            <td><a href="#">Claude</a></td>
                            <td><a href="#">Frank</a><a href="#">Harry</a> <a href="#">Ben</a> <a href="#">Wisdom</a></td>
                            <td>è¥¿åŒ—æ‹‰é�¢</td>
                            <td>75.0</td>
                            <td>10.104.80.38</td>
                            <td><a href="#">edit</a></td>
                        </tr>
                        <tr>
                            <td>2014-06-05</td>
                            <td><a href="#">Ben</a></td>
                            <td><a href="#">Harry</a> <a href="#">Wisdom</a> <a href="#">Claude</a> <a href="#">Harry</a> <a
                                href="#">Norbert</a></td>
                            <td>æ–‡è�”</td>
                            <td>90.0</td>
                            <td>10.172.97.28</td>
                            <td><a href="#">edit</a></td>
                        </tr>
                        <tr>
                            <td>2014-05-28</td>
                            <td><a href="#">Wisdom</a></td>
                            <td><a href="#">Harry</a><a href="#">Claude</a> <a href="#">Ben</a> <a href="#">Zeke</a></td>
                            <td>ç›–æµ‡é¥­</td>
                            <td>75.0</td>
                            <td>10.172.97.35</td>
                            <td><a href="#">edit</a></td>
                        </tr>
                        <tr>
                            <td>2014-05-04</td>
                            <td><a href="#">Zeke</a></td>
                            <td><a href="#">Andy</a> <a href="#">Wisdom</a> <a href="#">Ben</a></td>
                            <td>é¦™æ¸¯ç«™</td>
                            <td>55.0</td>
                            <td>10.172.92.37</td>
                            <td><a href="#">edit</a></td>
                        </tr>
                        <tr>
                            <td>2014-04-30</td>
                            <td><a href="#">Frank</a></td>
                            <td><a href="#">Jeffery</a> <a href="#">Harry</a> <a href="#">Norbert</a> <a href="#">Wisdom</a> <a href="#">Andy</a></td>
                            <td>æ¹–å¤´äºº</td>
                            <td>90.0</td>
                            <td>10.172.97.162</td>
                            <td><a href="#">edit</a></td>
                        </tr>
                        <tr>
                            <td>2014-04-29</td>
                            <td><a href="#">Andy</a></td>
                            <td><a href="#">Frank</a> <a href="#">Wisdom</a> <a href="#">Zeke</a></td>
                            <td>å¿«é¤�</td>
                            <td>80.0</td>
                            <td>10.172.80.110</td>
                            <td><a href="#">edit</a></td>
                        </tr>
                        <tr>
                            <td>2014-04-28</td>
                            <td><a href="#">Harry</a></td>
                            <td><a href="#">Frank</a> <a href="#">Jeffery</a> <a href="#">Harry</a> <a href="#">Norbert</a> <a href="#">Wisdom</a> <a href="#">Andy</a> <a href="#">Zeke</a></td>
                            <td>å¤§å¤§é¥ºå­�é¦†</td>
                            <td>90.0</td>
                            <td>10.172.97.162</td>
                            <td><a href="#">edit</a></td>
                        </tr>
                        <tr>
                            <td>2014-06-12</td>
                            <td><a href="#">Frank4</a></td>
                            <td><a href="#">Harry</a> <a href="#">Wisdom</a> <a href="#">Claude</a> <a href="#">Ben</a> <a
                                href="#">Norbert</a></td>

                            <td>å®¢å®¶</td>
                            <td>90.0</td>
                            <td>10.172.97.162</td>
                            <td><a href="#">edit</a></td>
                        </tr>
                        <tr>
                            <td>2014-06-11</td>
                            <td><a href="#">Wisdom</a></td>
                            <td><a href="#">Frank</a> <a href="#">Claude</a> <a href="#">Ben</a> <a href="#">Norbert</a></td>
                            <td>é£Ÿå ‚</td>
                            <td>75.0</td>
                            <td>10.172.97.112</td>
                            <td><a href="#">edit</a></td>
                        </tr>
                        <tr>
                            <td>2014-06-10</td>
                            <td><a href="#">Norbert</a></td>
                            <td><a href="#">Harry</a> <a href="#">Wisdom</a> <a href="#">Claude</a> <a href="#">Ben</a> <a
                                href="#">Frank</a></td>
                            <td>èŽ†ç”°å�¤é�¢</td>
                            <td>90.0</td>
                            <td>10.172.94.132</td>
                            <td><a href="#">edit</a></td>
                        </tr>
                        <tr>
                            <td>2014-06-09</td>
                            <td><a href="#">Claude</a></td>
                            <td><a href="#">Frank</a><a href="#">Harry</a> <a href="#">Ben</a> <a href="#">Wisdom</a></td>
                            <td>è¥¿åŒ—æ‹‰é�¢</td>
                            <td>75.0</td>
                            <td>10.104.80.38</td>
                            <td><a href="#">edit</a></td>
                        </tr>
                        <tr>
                            <td>2014-06-05</td>
                            <td><a href="#">Ben</a></td>
                            <td><a href="#">Harry</a> <a href="#">Wisdom</a> <a href="#">Claude</a> <a href="#">Harry</a> <a
                                href="#">Norbert</a></td>
                            <td>æ–‡è�”</td>
                            <td>90.0</td>
                            <td>10.172.97.28</td>
                            <td><a href="#">edit</a></td>
                        </tr>
                        <tr>
                            <td>2014-05-28</td>
                            <td><a href="#">Wisdom</a></td>
                            <td><a href="#">Harry</a><a href="#">Claude</a> <a href="#">Ben</a> <a href="#">Zeke</a></td>
                            <td>ç›–æµ‡é¥­</td>
                            <td>75.0</td>
                            <td>10.172.97.35</td>
                            <td><a href="#">edit</a></td>
                        </tr>
                        <tr>
                            <td>2014-05-04</td>
                            <td><a href="#">Zeke</a></td>
                            <td><a href="#">Andy</a> <a href="#">Wisdom</a> <a href="#">Ben</a></td>
                            <td>é¦™æ¸¯ç«™</td>
                            <td>55.0</td>
                            <td>10.172.92.37</td>
                            <td><a href="#">edit</a></td>
                        </tr>
                        <tr>
                            <td>2014-04-30</td>
                            <td><a href="#">Frank</a></td>
                            <td><a href="#">Jeffery</a> <a href="#">Harry</a> <a href="#">Norbert</a> <a href="#">Wisdom</a> <a href="#">Andy</a></td>
                            <td>æ¹–å¤´äºº</td>
                            <td>90.0</td>
                            <td>10.172.97.162</td>
                            <td><a href="#">edit</a></td>
                        </tr>
                        <tr>
                            <td>2014-04-29</td>
                            <td><a href="#">Andy</a></td>
                            <td><a href="#">Frank</a> <a href="#">Wisdom</a> <a href="#">Zeke</a></td>
                            <td>å¿«é¤�</td>
                            <td>80.0</td>
                            <td>10.172.80.110</td>
                            <td><a href="#">edit</a></td>
                        </tr>
                        <tr>
                            <td>2014-04-28</td>
                            <td><a href="#">Harry</a></td>
                            <td><a href="#">Frank</a> <a href="#">Jeffery</a> <a href="#">Harry</a> <a href="#">Norbert</a> <a href="#">Wisdom</a> <a href="#">Andy</a> <a href="#">Zeke</a></td>
                            <td>å¤§å¤§é¥ºå­�é¦†</td>
                            <td>90.0</td>
                            <td>10.172.97.162</td>
                            <td><a href="#">edit</a></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="/includes/js/bootstrap.min.js"></script>
<script src="/js/common.js"></script>
<script>
    (function($){
        $("#new-bill-btn").click(function(){
            window.location.href="bill"
        });
    }(jQuery));
</script>
</body>
</html>