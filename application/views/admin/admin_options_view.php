<html>
    <head>
        <title>Admin Panel</title>
        <style>
            body {
                background-image: -webkit-linear-gradient(rgb(231,231,231), #fff 100%);
                background-image: -moz-linear-gradient(rgb(231,231,231), #fff 100%);
                background-image: -o-linear-gradient(rgb(231,231,231), #fff 100%);
                background-image: -ms-linear-gradient(rgb(231,231,231), #fff 100%);
                background-attachment:fixed;
                margin:0;
                padding:0;
                border:0;			/* This removes the border around the viewport in old versions of IE */
                width:100%;
                min-width:600px;		/* Minimum width of layout - remove line if not required */
                /* The min-width property does not work in old versions of Internet Explorer */
                font-family:segoe ui;
                font-size:90%;

                /*quick fix need to remove eventually*/
                overflow-x: hidden;
            }
            form{
                margin-left: 200px;
            }
            table{
                margin-left: 200px;
                margin-bottom: 35px;
            }
            td{
                padding-left: 20px;
            }
            #admin-nav{
                background-color: #333;
                border: 1px solid #000;
                float:left;
                height:100%;
                list-style-type: none;
                margin-top: 0;
                position: fixed;
                top:0;
            }
            #admin-nav li a{
                background-image:  -webkit-linear-gradient(top,rgb(48, 48, 48) 0%, rgb(38, 38, 38) 100%);
                background-image:  -moz-linear-gradient(top,rgb(48, 48, 48) 0%, rgb(38, 38, 38) 100%);
                background-image:  -ms-linear-gradient(top,rgb(48, 48, 48) 0%, rgb(38, 38, 38) 100%);
                background-image:  -o-linear-gradient(top,rgb(48, 48, 48) 0%, rgb(38, 38, 38) 100%);
                border: 1px solid rgb(20,20,20);
                border-radius: 2px;
                box-shadow: rgba(255, 255, 255, 0.059) 0px 1px 0px 0px, rgba(255, 255, 255, 0.028) 1px 1px 0px 0px, rgba(0, 0, 0, 0.02) -1px -1px 0px 0px, rgba(255, 255, 255, 0.048) 1px 1px 0px 0px inset;
                box-sizing: border-box;
                -moz-box-sizing: border-box;
                color: #ddd;
                display: block;
                font-size:17px;
                margin-bottom: 4px;
                margin-left: 2px;
                margin-right:2px;
                margin-top: 4px;
                padding-bottom: 3px;
                padding-left:20px;
                padding-right:20px;
                padding-top:3px;
                text-align: center;
                text-decoration: none;
                text-shadow: rgba(0, 0, 0, 0.498039) 0px -1px 0px;
                vertical-align: middle;
            }
            #admin-nav li a:hover{
                background-image:  -webkit-linear-gradient(top,rgb(52, 52, 52) 0%, rgb(45, 45, 45) 100%);
                background-image:  -moz-linear-gradient(top,rgb(48, 48, 48) 0%, rgb(38, 38, 38) 100%);
                background-image:  -ms-linear-gradient(top,rgb(48, 48, 48) 0%, rgb(38, 38, 38) 100%);
                background-image:  -o-linear-gradient(top,rgb(48, 48, 48) 0%, rgb(38, 38, 38) 100%);
                color:#fff;
            }
        </style>
    </head>
    <body>
        <?php print $navigation; ?>
        <form method="get" action="<?php print base_url('admin/action'); ?>">
            <label>Youtube Username</label>
            <input type="hidden" name="do" value="add" />
            <input type="text" name="username" />
            <button type="submit">Add Author</button>
        </form>
        <table>
            <thead>
            <th>Youtube Username</th>
            <th>View</th>
            <th>Delete</th>
            <th>Email</th>
        </thead>
        <?php foreach ($resultSet as $yt): ?>
            <tr>
                <td><?php print $yt->yt_username; ?></td>
                <td><a href="<?php print base_url('admin/channel/view') . '?author=' . $yt->yt_username; ?>">View</a></td>
                <td><a href="<?php print base_url('admin/action') . '?do=' . 'delete' . '&username=' . $yt->yt_username; ?>">Delete</a></td>
            </tr>
        <?php endforeach; ?>
    </table>
</body>
</html>