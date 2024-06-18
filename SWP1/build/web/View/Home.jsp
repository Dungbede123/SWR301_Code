<%-- 
    Document   : basic
    Created on : Jun 14, 2024, 12:21:37 AM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Director | Dashboard</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <meta name="description" content="Developed By M Abdur Rokib Promy">
    <meta name="keywords" content="Admin, Bootstrap 3, Template, Theme, Responsive">
    <!-- bootstrap 3.0.2 -->
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- font Awesome -->
    <link href="${pageContext.request.contextPath}/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- Ionicons -->
    <link href="${pageContext.request.contextPath}/css/ionicons.min.css" rel="stylesheet" type="text/css" />
    <link href='http://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
    <!-- Theme style -->
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" />
    <style>
/*    body { font-family: Arial, sans-serif; margin: 0; background: #fff; }*/
    header { background: #000; color: #fff; padding: 10px 20px; display: flex; justify-content: space-between; align-items: center; }
    header input { flex-grow: 1; margin: 0 20px; padding: 8px; }
    header button { padding: 8px 16px; background-color: #007BFF; border: none; color: white; cursor: pointer; }
    header .cart-button { background-color: #FFA500; }
    main { padding: 20px; }
    h2 { margin-top: 0; color: #333; }
    .products { display: flex; flex-wrap: wrap; justify-content: space-between; }
    .product { border: 1px solid #ccc; padding: 10px; width: calc(25% - 10px); box-sizing: border-box; margin-bottom: 20px; text-align: center; }
    .product img { width: 100px; height: 100px; background: #eee; margin-bottom: 10px; }
    .product p { margin: 10px 0; }
    .add-to-cart { background-color: #FF4500; border: none; color: white; padding: 10px; width: 100%; cursor: pointer; }
    footer { text-align: center; padding: 10px 0; background: #000; color: #fff; }
</style>
       <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            border-bottom: 1px solid #ddd;
            padding: 12px;
            text-align: left;
        }

        th {
            background-color: #f4f4f4;
        }

        .action-buttons a {
            padding: 6px 12px;
            text-decoration: none;
            color: white;
            background-color: #007BFF;
            border-radius: 5px;
        }

        .action-buttons a:hover {
            background-color: #0056b3;
        }

        .pagination {
            display: flex;
            justify-content: center;
            list-style: none;
            padding: 20px;
        }

        .pagination li {
            padding: 5px 10px;
            border: 1px solid #ddd;
            margin: 0 5px;
            cursor: pointer;
        }

        .pagination li.active {
            background-color: #007BFF;
            color: white;
        }
        .button-container {
    display: flex; /* Sử dụng flexbox để bố trí các nút cạnh nhau */
    justify-content: space-around; /* Căn chỉnh khoảng cách xung quanh các nút */
}

.add-to-cart {
    padding: 10px 20px; /* Đặt kích thước của nút */
    margin: 5px; /* Đặt khoảng cách giữa các nút */
    background-color: #007BFF; /* Màu nền cho nút */
    color: white; /* Màu chữ */
    border: none; /* Bỏ viền nút */
    cursor: pointer; /* Hiển thị con trỏ khi di chuột qua nút */
    transition: background-color 0.3s; /* Hiệu ứng chuyển màu khi hover */
}

.add-to-cart:hover {
    background-color: #0056b3; /* Màu nền khi hover */
}

    </style>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
</head>
<body class="skin-black">
    <!-- header logo: style can be found in header.less -->
    <header class="header">
        <a href="index.html" class="logo">
            <!-- Add the class icon to your logo image or logo icon to add the margining -->
            Director
        </a>
        <!-- Header Navbar: style can be found in header.less -->
        <nav class="navbar navbar-static-top" role="navigation">
            <!-- Sidebar toggle button-->
            <a href="#" class="navbar-btn sidebar-toggle" data-toggle="offcanvas" role="button">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </a>
            <div class="navbar-right">
                <ul class="nav navbar-nav">
                    <!-- Messages: style can be found in dropdown.less-->
                    <li class="dropdown messages-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-envelope"></i>
                            <span class="label label-success">4</span>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="header">You have 4 messages</li>
                            <li>
                                <!-- inner menu: contains the actual data -->
                                <ul class="menu">
                                    <li><!-- start message -->
                                        <a href="#">
                                            <div class="pull-left">
                                                <img src="img/avatar3.png" class="img-circle" alt="User Image"/>
                                            </div>
                                            <h4>
                                                Support Team
                                                <small><i class="fa fa-clock-o"></i> 5 mins</small>
                                            </h4>
                                            <p>Why not buy a new awesome theme?</p>
                                        </a>
                                    </li><!-- end message -->
                                    <li>
                                        <a href="#">
                                            <div class="pull-left">
                                                <img src="img/avatar2.png" class="img-circle" alt="user image"/>
                                            </div>
                                            <h4>
                                                Director Design Team
                                                <small><i class="fa fa-clock-o"></i> 2 hours</small>
                                            </h4>
                                            <p>Why not buy a new awesome theme?</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="pull-left">
                                                <img src="img/avatar.png" class="img-circle" alt="user image"/>
                                            </div>
                                            <h4>
                                                Developers
                                                <small><i class="fa fa-clock-o"></i> Today</small>
                                            </h4>
                                            <p>Why not buy a new awesome theme?</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="pull-left">
                                                <img src="img/avatar2.png" class="img-circle" alt="user image"/>
                                            </div>
                                            <h4>
                                                Sales Department
                                                <small><i class="fa fa-clock-o"></i> Yesterday</small>
                                            </h4>
                                            <p>Why not buy a new awesome theme?</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="pull-left">
                                                <img src="img/avatar.png" class="img-circle" alt="user image"/>
                                            </div>
                                            <h4>
                                                Reviewers
                                                <small><i class="fa fa-clock-o"></i> 2 days</small>
                                            </h4>
                                            <p>Why not buy a new awesome theme?</p>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="footer"><a href="#">See All Messages</a></li>
                        </ul>
                    </li>
                    <li class="dropdown tasks-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-tasks"></i>
                            <span class="label label-danger">9</span>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="header">You have 9 tasks</li>
                            <li>
                                <!-- inner menu: contains the actual data -->
                                <ul class="menu">
                                    <li><!-- Task item -->
                                        <a href="#">
                                            <h3>
                                                Design some buttons
                                                <small class="pull-right">20%</small>
                                            </h3>
                                            <div class="progress progress-striped xs">
                                                <div class="progress-bar progress-bar-success" style="width: 20%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                                                    <span class="sr-only">20% Complete</span>
                                                </div>
                                            </div>
                                        </a>
                                    </li><!-- end task item -->
                                    <li><!-- Task item -->
                                        <a href="#">
                                            <h3>
                                                Create a nice theme
                                                <small class="pull-right">40%</small>
                                            </h3>
                                            <div class="progress progress-striped xs">
                                                <div class="progress-bar progress-bar-danger" style="width: 40%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                                                    <span class="sr-only">40% Complete</span>
                                                </div>
                                            </div>
                                        </a>
                                    </li><!-- end task item -->
                                    <li><!-- Task item -->
                                        <a href="#">
                                            <h3>
                                                Some task I need to do
                                                <small class="pull-right">60%</small>
                                            </h3>
                                            <div class="progress progress-striped xs">
                                                <div class="progress-bar progress-bar-info" style="width: 60%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                                                    <span class="sr-only">60% Complete</span>
                                                </div>
                                            </div>
                                        </a>
                                    </li><!-- end task item -->
                                    <li><!-- Task item -->
                                        <a href="#">
                                            <h3>
                                                Make beautiful transitions
                                                <small class="pull-right">80%</small>
                                            </h3>
                                            <div class="progress progress-striped xs">
                                                <div class="progress-bar progress-bar-warning" style="width: 80%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                                                    <span class="sr-only">80% Complete</span>
                                                </div>
                                            </div>
                                        </a>
                                    </li><!-- end task item -->
                                </ul>
                            </li>
                            <li class="footer">
                                <a href="#">View all tasks</a>
                            </li>

                        </ul>
                    </li>
                    <!-- User Account: style can be found in dropdown.less -->
                    <li class="dropdown user user-menu">

                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-user"></i>
                            <span>Jane Doe <i class="caret"></i></span>
                        </a>
                        <ul class="dropdown-menu dropdown-custom dropdown-menu-right">
                            <li class="dropdown-header text-center">Account</li>

                            <li>
                                <a href="#">
                                    <i class="fa fa-clock-o fa-fw pull-right"></i>
                                    <span class="badge badge-success pull-right">10</span> Updates</a>
                                <a href="#">
                                    <i class="fa fa-envelope-o fa-fw pull-right"></i>
                                    <span class="badge badge-danger pull-right">5</span> Messages</a>
                                <a href="#"><i class="fa fa-magnet fa-fw pull-right"></i>
                                    <span class="badge badge-info pull-right">3</span> Subscriptions</a>
                                <a href="#"><i class="fa fa-question fa-fw pull-right"></i> <span class=
                                                                                                  "badge pull-right">11</span> FAQ</a>
                            </li>

                            <li class="divider"></li>

                            <li>
                                <a href="#">
                                    <i class="fa fa-user fa-fw pull-right"></i>
                                    Profile
                                </a>
                                <a data-toggle="modal" href="#modal-user-settings">
                                    <i class="fa fa-cog fa-fw pull-right"></i>
                                    Settings
                                </a>
                            </li>

                            <li class="divider"></li>

                            <li>
                                <a href="#"><i class="fa fa-ban fa-fw pull-right"></i> Logout</a>
                            </li>
                        </ul>

                    </li>
                </ul>
            </div>
        </nav>
    </header>
    <div class="wrapper row-offcanvas row-offcanvas-left">
        <!-- Left side column. contains the logo and sidebar -->
        <aside class="left-side sidebar-offcanvas">
            <!-- sidebar: style can be found in sidebar.less -->
            <section class="sidebar">
                <!-- Sidebar user panel -->
                <div class="user-panel">
                    <div class="pull-left image">
                        <img src="img/avatar3.png" class="img-circle" alt="User Image" />
                    </div>
                    <div class="pull-left info">
                        <p>Hello, Jane</p>

                        <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
                    </div>
                </div>
                <!-- search form -->
                <form action="#" method="get" class="sidebar-form">
                    <div class="input-group">
                        <input type="text" name="q" class="form-control" placeholder="Search..."/>
                        <span class="input-group-btn">
                            <button type='submit' name='seach' id='search-btn' class="btn btn-flat"><i class="fa fa-search"></i></button>
                        </span>
                    </div>
                </form>
                <!-- /.search form -->
                <!-- sidebar menu: : style can be found in sidebar.less -->
                 <ul class="sidebar-menu">
                     <li class="active">
                        <a href="Home.jsp">
                            <i class="fa fa-dashboard"></i> <span>Home</span>
                        </a>
                    </li>
                    <li >
                        <a href="DashBoard.jsp">
                            <i class="fa fa-dashboard"></i> <span>Dash board</span>
                        </a>
                    </li>
                    <li>
                        <a href="Resgiter.jsp">
                            <i class="fa fa-dashboard"></i> <span>Resgiter</span>
                        </a>
                    </li>
                     <li>
                        <a href="Login.jsp">
                            <i class="fa fa-dashboard"></i> <span>Login</span>
                        </a>
                    </li>
                    <li>
                        <a href="ChanePass.jsp">
                            <i class="fa fa-dashboard"></i> <span>Change Pass Word</span>
                        </a>
                    </li>
                    <li>
                        <a href="ViewProfile.jsp">
                            <i class="fa fa-dashboard"></i> <span>View Profile</span>
                        </a>
                    </li>
                     <li >
                        <a href="AccountDetails.jsp">
                            <i class="fa fa-dashboard"></i> <span>Account Details</span>
                        </a>
                    </li>
                     <li>
                        <a href="ProductList.jsp">
                            <i class="fa fa-dashboard"></i> <span>Product List</span>
                        </a>
                    </li>
                    <li>
                        <a href="ProductDetatails.jsp">
                            <i class="fa fa-dashboard"></i><span>Product Details</span>
                        </a>
                    </li>
                    <li>
                        <a href="ProductSelect.jsp">
                            <i class="fa fa-dashboard"></i><span>Product Select</span>
                        </a>
                    </li>
                    <li>
                        <a href="ShoppingCart.jsp">
                            <i class="fa fa-dashboard"></i> <span>Shopping Cart</span>
                        </a>
                    </li>
                     <li>
                        <a href="MyProductList.jsp">
                            <i class="fa fa-dashboard"></i> <span>My Product List</span>
                        </a>
                    </li>
                    <li>
                        <a href="MyProductDetails.jsp">
                            <i class="fa fa-gavel"></i> <span>My product details</span>
                        </a>
                    </li>

                    <li >
                        <a href="MakeOderRequest.jsp">
                            <i class="fa fa-globe"></i> <span>Make order request</span>
                        </a>
                    </li>

                    <li>
                        <a href="MyRequestOrderList.jsp">
                            <i class="fa fa-glass"></i> <span>My Request Order List</span>
                        </a>
                    </li>
                     <li>
                        <a href="MyRequestOrderDetail.jsp">
                            <i class="fa fa-glass"></i> <span>My Request Order Detail</span>
                        </a>
                    </li>
                     <li>
                        <a href="pay.jsp">
                            <i class="fa fa-glass"></i> <span>PAYMENT</span>
                        </a>
                    </li>
                     <li >
                        <a href="AccounManager.jsp">
                            <i class="fa fa-glass"></i> <span>Account Manager</span>
                        </a>
                    </li>
                     <li>
                        <a href="AddAccount.jsp">
                            <i class="fa fa-glass"></i> <span>Add Account</span>
                        </a>
                    </li>
                     <li>
                        <a href="oderlist.jsp">
                            <i class="fa fa-glass"></i> <span>Order list </span>
                        </a>
                    </li>
                     <li>
                        <a href="oderdetails.jsp">
                            <i class="fa fa-glass"></i> <span>Order Details </span>
                        </a>
                    </li>
                    
                   

                </ul>
            </section>
            <!-- /.sidebar -->
        </aside>

        <!-- Right side column. Contains the navbar and content of the page -->
        <aside class="right-side">
            <!-- Content Header (Page header) -->
       <header>
    <div>G1</div>
    <input type="text" placeholder="Search Product here...">
    <button>Search</button>
    <button class="cart-button">Cart</button>
    <a href="#" style="color: white; margin-left: 20px;">Register/Sign In</a>
    
</header>
<main>
    
    <h2>Best selling products</h2>   
    <div class="products">
        
          <div class="product">
            <img src="data:image/jpeg;base64,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" alt="Product Image">
            <p>ProductName</p>
            <p>$100s</p>
            <div class="button-container">
    <button class="add-to-cart">Buy</button>
    <button class="add-to-cart">Add To Cart</button>
</div>
        </div>
          <div class="product">
            <img src="data:image/jpeg;base64,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" alt="Product Image">
            <p>ProductName</p>
            <p>$100s</p>
            <div class="button-container">
    <button class="add-to-cart">Buy</button>
    <button class="add-to-cart">Add To Cart</button>
</div>
        </div>
         <div class="product">
            <img src="data:image/jpeg;base64,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" alt="Product Image">
            <p>ProductName</p>
            <p>$100s</p>
            <div class="button-container">
    <button class="add-to-cart">Buy</button>
    <button class="add-to-cart">Add To Cart</button>
</div>
        </div>
         <div class="product">
            <img src="data:image/jpeg;base64,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" alt="Product Image">
            <p>ProductName</p>
            <p>$100s</p>
            <div class="button-container">
    <button class="add-to-cart">Buy</button>
    <button class="add-to-cart">Add To Cart</button>
</div>
        </div>
        
        
        <!-- Repeat for each product -->
    </div>
    <h2>Product List</h2>
    <div class="products">
       <div class="product">
            <img src="data:image/jpeg;base64,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" alt="Product Image">
            <p>ProductName</p>
            <p>$100s</p>
            <div class="button-container">
    <button class="add-to-cart">Buy</button>
    <button class="add-to-cart">Add To Cart</button>
</div>
        </div>
          <div class="product">
            <img src="data:image/jpeg;base64,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" alt="Product Image">
            <p>ProductName</p>
            <p>$100s</p>
            <div class="button-container">
    <button class="add-to-cart">Buy</button>
    <button class="add-to-cart">Add To Cart</button>
</div>
        </div>
          <div class="product">
            <img src="data:image/jpeg;base64,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" alt="Product Image">
            <p>ProductName</p>
            <p>$100s</p>
            <div class="button-container">
    <button class="add-to-cart">Buy</button>
    <button class="add-to-cart">Add To Cart</button>
</div>
        </div>
          <div class="product">
            <img src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMSEhISEhIVFRUXEhUWFxgXFxUVFRUXFxUXFxUVFRUYHSggGBolGxUVITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OGhAQGi0fHx0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0rLS0tLS0tLS0tNy03LS03Ny0rK//AABEIAOEA4QMBIgACEQEDEQH/xAAbAAACAwEBAQAAAAAAAAAAAAADBAACBQEGB//EADkQAAEDAgMFBwMDBAEFAQAAAAEAAhEDIQQxQQUSUWFxBhOBkaGx8CLB0RQy4UJScvFiM5Kys8IV/8QAGgEAAwEBAQEAAAAAAAAAAAAAAAECAwQFBv/EACERAAICAwEAAgMBAAAAAAAAAAABAhEDEiExQVEEEyJh/9oADAMBAAIRAxEAPwBeqEsU5UalnhZGoIFSoF0BR4sgAShUUVoDLxFUhy0dn1ChVqQOith3QVmwo9Z2ffmFu4UwvK7FqxU6r0dF53xwTiRL02MOTK0EpSTLF1o5puw9BXx4lhQmuhF395pCsz1b6ZlBy5VoAyVWnYlcxeMZTaS9waIOZjRF0VRjVLPPVbtbatKlRmo8NEDM3PQL5ntjtQ4vPdRGUn3C8/jMY+oZe4vMRc6clySmjqWJyR7XavbanDe7BcRrkM8lgYrtVXqCN/dF8hGekrzxYTGiZZTAWbys2jhSOYqvUqkucS48SUA0nboM3yTLnOtGX3BhDq03ZDOL8BA97rLY2UKE3VSwDeuRr+Eu3GTZN/o3OEcwhfoQwgZ2nx+SnfB0HwtLekmwGq0G1hO63KEoXCAB/VP4n0R6BCzaKQe82vzyHkt3Y1G0lrY/ugkjpJACxaS9TsKgNxrgCTefpkeq0xrpEnSHe/p/3VPNv4UTm9V5f9p/C6ummYWzzdQJWoE7VCUqBS/BC5UC5UXGpIAZChVqguqKwB1UqJlOvQiFnJDRq7OfG6V7Ci6QCvB0an0r12zKhdSbGcJImSN1lY2WrSuAVk4Jsi6021QByhdiktUccw0oGM2jToMLqjgBHmvObV7ZUaW81svdlb9uWpXzntD2kqYhwL3CAIDRYBTLKkjTHik/T1G1e3Ylwo05EmHO9DHBeXxe1Klc71V5deQP6RPALLwr5H1JkuEQRGi5J5ZM7YYYotVbOa5TptF519NVWREDii06ci45rHY21LBjSZB0P3VjTA8APYK1CiP6f7t0jxugvZdt4zPgkUlQyGfPJXZSz5fcpeTBI4W62suDFEOAj9wcPECylloYp07+BPrZUNAHePABo5ki59VxuKG+2f6gAOk5ojat3DnbkP5S6HBR1ECTloPLQIbqcNFotlrfRO1XCylODJVJk6gmOIA459Oq9nsIVO7adLRYnxs4cV4vEPjPivW9jtuAUxSc+CHGBpErowrpzZnSPRTU+MrfldTP61vFRdlL7OX9n+HkqgSdQJ6sEpVCwfhsJVAhgo9VAUoCVENFQlYEQKjCjoblEgRzZ7SCZXq9iV4ELyIrbpTox5YCWm+ikdWe2G1WUgd9wFp5njAXkO0Xa19UGmyQzXi6PtyWW+u6oZcZPskq1OCeaHlpalRwL1gHV+JzSVdpJCZNMyAValTAOU/7WTkbahsFTEAz/tGrUYBOYsuUWRp/rRFr3BbyKhuy0hSjdwC0GRn19lmGQZ52WhiLtHGQLeSRSR3DvbLyDcuno4ANHuEVzQYOuXDU/hBDIMCPqd6C/wBlfEOsIzMnyhFjAsdundPD1zHhYrm8CTOYbYzmOI55q0b0idL8SYz9SoMLAk9ANAPkoJqyVB9QHKR0K7WZBLukKxJj6THEjOOX5VG/UCc4yGvDzQOgbq8Fs5x+T+EXu9UCmwExlpOtuCdDRAA0+XQ3QhF7bqMsbGITD6JzQwLZJqVEuJP1D/7z6qKu5yUT2ZGi+j2tVKPCdqBKVhZdRzITqBLlNVUq8JDRwFCc5K4lz2nkgCuVP7KNFjY/3iq+6U74qrqyTyIf62FqNE3KHJJv4KxowLroCzlOzWOOjlN+ij58VfCj6ieHwq9VmXVZNmtGa98gzouYWdeKPWoyTbMxKrhbXOWXmmTQ7Spk3/4259ECs4ndPgUyx0XGXwJSuw75jKD56JFFHNGqO90X+ZBBPA6fAj1WTTn5OX2QwRyif29Xeswi4h8gDU0/c29Ers4jdAzuT6lNCmSRHyMgk3Qwb2d2GtZ9TvpBnidEXGRMEl3HQTwCtuQTfIGXHic4HFCMmNBpF4GpPE/lAAhJtxM+KeottA3R7oQptzgnmT9grUSZs1S2NIDiG5CASfngisaYzyF1WvIMyOiHSq87JXwVBtPl0J4Ri/XRAcZk800wopCirKiewqPbvSlZNvStVegeehSqlnpmrqlqqGNBaDGvBa5IYzZRbJbcJinUgp+nXDguTLF3aOvFNVTPKvtmEt35mCD5L0WLaBfdCTZSnhOmlvFZp/Zo0cwzC8Scp1RjQg8PmaYo092yrV1gx1UuXTRR4Z++RUMeXumKT9EGpTIdIPzqrObkf9dENkoJiqVs5480jTcBNplHr1z+4eqWBn9tuH8KkwZd0gkTncdOa6+wB5KNBMEjIeiMG2y11+ZJt0KgT2jQRkU6xn0jzQKTJstFjJAWUpGkYmFghuuM5An3K1MOMzoAl8TTh86GfSP5WhgWW80SkhKNsX7gXJ639uZVe5ESQSZ4kCOi2e5BEx4nRJ4rEU6cl7vAXJUqVl6JCraJOsfNAuVK+6IbdZ2J2s9zmtawta4wLwT1IW83CbrL+SqXPQirfDF7txzMq3dABM1HQUB6ExOII1CbBQkxGgV2sghDe2+pE5IM2U7xdRt0cFEWFM9m5LVUySlqi9M81CdTVLVckzU1S9XJNjQAlEoPgoLlGlZMtOhjEgEyg02gxZE3wbLuHbcQufIqR143YQUoGdgkW4gPaZEHWMuvQ+K067oFrHnceSz6wLfqaxoBmY/b5aFYRNmAw7ptIPU2PSFR7HNMFWaIgjitJtEPE5Ik6CMbMqnnHH4EN+HM6Dlz5JuphC0yOX+0ZzLyRohSHoIUqXGeB/ICc7qRI8fyumnr8CJSySlJjSOYajuz8tyTbWC2iEx1vmStSKybs1ikCxGHLvQ+qeotAF1C6BK8bt7tAXONOm6Lw48FcIOfCZyjDp6Ham1N1jy1r3NbAcWiQCcgTkMl4qvt7feIEAkZ3P8ACXqV3CadKqdx8bwLiGkiblG2N2ffVeJ/bOfHpyXbHHDGunFPJPI+G/sGj39YVI+imIbzOpXpMdiIsM/ZDpsbSYGUxkLwknMeT1z48lyTlvI64LSNACZJ19kRjZ6q7sOW8ZUaECBVBeyqAiVTySjcQ3egymJsZsorfqqXPyUQFnqXJeoUeolqhXpnkoWqJaoj1ClqhTGAeqBys8oLnJUOwhcmsBWBsDf3WPjMTutJ5I/ZMOe0uLszZYZl/Jvgf9GxinjLWNGlx89EJ5huQjWY9BxXMSH75sSMsx6SjUqpiIA8ifFcVnfRnug5N87FM7OqxZNOwk3jP5lCW/SOaZAUyaaHGLTHqtAEc0q+llPFPNpmEviARosVLpvKKYm6lJHGT7WVt2BJUec0ni8XpnHBbq2YypBw9Fovuso4rgq/qHcU/wBbJWRI2doYkd26+hXhdk4PvKrmuBgzfxWtiyH/AEmROR5qmz3ubY6LXGnBOjLI92bWF7PU2wS1p6iU9UrBrd1oi2eXklu9LmgTbOyoMMG3hZNt+mipeBu8BFpnX+FVrRmJn5qqMnUfdGYRGZ6JUOyPIiAZ6oWWUI5PAR91O6J0QgEqzrJGnRnIT7Badam0H6vqPD+kdeKo9xPIcBYKlKhNWLfpjy81EayircWh6h7kq8o7ylqpXonkoXqJZ5TDylKrkxgahWbjcaGW1U2jtINsLlea2hXc+8wglyGsZizUMDivZ7GoClTAFrL51hGHeH1ZGTyHFfQ6bpYLrm/I8Ov8X2zRmREiZlWo0Rx9llMe7imqTSdZXA0eijXbWp6mfEIOJ2lSpiXOA8c+i85t3B1gN+mN4jQ3I5gZLyGJbWqWcx5M8DPmtMeBS62RPNKPiPoGM7T06Ltx9N4dMQRBnxTrMfTrUy5tiDcGJHkvn9HY1au5rqjnkm7t+SZ5HXRb3/57qDhDoBbDh/cVU8ONePoseeb9Q3ia2cLPe5WxL8kpUfwThGiJzsvVdAQaNeTBKMcM92VknW2VUFwZI8FoqM6Zr4fDGeITrsCMwg7CrFzZIgWHlmn69QMEmVhOTujeMeFKdMBNANOYWbXxjgWgNLp8h1TOGo1CZcIHiVEky4tDops+QuNoiwAOfILocG5Qeige9xvA5AKCwn6MC58s1VwHNXAJzcfA/ZdeAP5lFjUUZLhLj9PkrNpTnCPiTfNCYFW3B0X7lqivvKKdmOh6o5K1Ci1HJV7l7J8+DquWVtLGBjSZ0TuJqQvIbarF790GwTASxFeTKUFQkotRsJdhukxGhRhts5ufsF7DAVy6mMl4UOXpOzlcFu7qD5hZZlaOj8eVM9FSFld1sifAIuGIiMkYs0kBeY309VLgtTxLtPyqvrG516D4E6KRIAt7KPptBuQTwEBv8oUkDjYhTxNSdPRUxjnPc0c7+S0Th+P2t5K1PC/VPjKbkg0Z5zaOGIaTzjzTGy9nttNzxK3sXhQ5pCza+ynZ3kBUslkvFTGH0WgGBded2RWq1XvFQR9RgRkAtmjVO79WYsfPNXwTGurNI4Enori+MJR2dmjhsKGiI0RXUmgS4W5o7mZIeJAIIiZzyWF9NKSM59Rv9DZKIwEt+qI4THspvAWaR4Lk8bptkFWYhg/YB4yjMe7UjyVG3ygeSNTpcZPkkNehGMgSTc8AuAf8iiOaSjUaRIUNmiViT6E/6QnYPqtptKBdBeAo3ZtojI/TFcWr3YUS3YtTNeUrVdCHW2g2YFzwCzsfjHZbpHgvfc0j5pR6D2jigLSsPumkkk6phtFzza6cwWxXEy4E9MlDn9GtRXpnfo6Z4nojUezW/k0heqbspw3dwACbyts0ha2ihuRm39I+fjsq4EC8Jyl2eFBwcakHgYuvaQsPa2wW1jvEkFF86Wk/RjDU2lsgpotB0SOxsMaMsItotoUpFguDKqkexhe0RWmII+eqM6jJyHldEFOEWmzVc5ukANDdFrJKtUfMMb48FsPE5pZ43chdNAzuBwxDRvm6O+kEuwwZdJPXJFqYsI+eBwz9oYFjgdDxC87stjsPWdLi4OFidNYXpazpkrA20DFs5XRjfKObIvo2+/J10Q6tQASZWRgXVIAvktGnSJzScUgU7BYWlx1kpmm3RFbRjRWdTSbHQI04TVBswuUxNjmmaTVDLiixCbpNEJZlG8o7XxZZSN4EqpZxTDyl3BQVZTfXVN0KIoLMjYWxtxocRJ5p3HUmRcBadVwaIGcLMds/ecHPcTGi9CNyds+NgsmWVors7ZjGjeITlVzWgmAAEXdQazd4EFdCdHoRw0jwO3O2ry4soAAAkbxuT0WTQ7W4ppBLwRwhMdpOzT6TnVGDeYTMDNvhwXm4XQqaE1Xh9V7P7dbiW8Haha5C+b9hnOFcxMbq+jtcsMnGbQVgaiZwxJAhBcFMLUgwuXKrR2YJU+mgCiBUYURq4z0SrglqjU4hPYmmTJCQaqvoTKdbThX7tOyNTBfg3aErjNnnMrdLFTugrUjNwM+nho0Rm0oTe4uOaix1QoTCtZX3F1lDgiwo4ynKaZThWoUkZyzlI0iirVV6iizLAvKE9yO9tkq4KkhNld5RVlcVUT0zMP2mw9SqWh1xqcvBblOoDcL4cHL0uwO1j6MNqS5nqF67xJLh4OKoKkfT5VC1KbN2nTrNDmOBHzNOFyxlw6YqwNSmCsjH9nKFUy5gnlZbTyhkqVNoeqM7ZuyaVAQxse6dVnFDlJyb9HSRZKV+Vkd70vVqx19kh2PYTEWh2enE8082pK8ZU2gd+QbDX+7+Ft7M2gXATHzUrLJj+TqxZr4be+FAZSpqjiiMesGjoUhhWCD3oU71TQwrghwoaiqXp2MhCoV0yommQ0c3EWm2EMOXTUQwSGAuEpbvVO8U0WHK4qb6pvooVhHlK1kUvVXISBsWURYHBdVGdnxzauzn0KhY/wADxHFJr6p2o2O3EU/+Qu08F8uxNJ1Nxa4EEZr2YS2PElHUY2ZtF9B4cw9RoV9J2Ft+nXaIMOGYOa+UbyvRxLmODmEgjIhE8ewQyUfbd5CevDbD7ZZNrf8Ad+V62jjWvEtcCOS5nja9OqM0xreQnvVXVVR1QASfBTqOzrnR1WZtPE7rSPP8JqtWABJNz8ledx1feJ4KoxJkytJxdlYcTkBxWxgnWHMemYHU5nwWfTp5A5C7hx4N8SrYfFEvnQT66lElwIOjfwtUzB6p2nXPmsxjiBPEx89EyKi5ZRO2EjRDkQJD9SqvxRyCz1NVKjRD7wrlySoPgIhrJNFbDIeoXpI11O+RqLYZ71cdVCUNVUNROiXIbNRQPSffBWbVCdC2H99V3kt3oVxUQ0OwocrSk3VNVRtaDBSoLHpUQN5dQFHXOXne0WwWVxMQ8Cx/K3t5UqFdsZNPh5zSaPj2OwbqTyx4uPUcQlivpPaXY4rMt+4Xafsvn2MwT6ZhzSOenmuyE9jklGhcFaOz8a+k0va4i+60aTmTHIe6zUzirEN/tEeJu73jwV0K6PU4LtQ8uaxzQZaCXC0CJcT0C0sP2hpVQTcBokzoNJPNeJadylP9VQ7o/wAGm/mYHgiV3blPuxnvfVzcLkdBYeah40Ups9fU2k187rgUtMXi/tzWfsWiAwE6+q0aEFwB1MnoLn0WEo0zVOwzyAwAm5+o9NB5e6DRBPBrfU+K7XfJLjNzlwCXuSNdFDLR6TB1BDQNAPUT+EwAsajiYe6MgD9gtmi4OhYTR1QlZyLq2q65iG8woosMKhC4X80E1lwVAlqPYI191bvkuXIb3I1FYw+ugPrlAJXWq6JbCCoVdlU6oJKiAsdpPRd82S1Pmr7ylodjJfoq1MkAPui7yVFWd7zmuKm6uopBbG1Ry6ouj5OP4F6+S8p2o/a7oooujEYZDxjcx1HuiYj97v8AI+6ii6DFjlXPC/4t/wDYUHE//VT/AMlFEBH09JhP2t/wajYT/qn/AAd7Lqi5Mnp0QI/Jcw/7h1HuoopiUFo5v6H3C2tnZKKLKXhti9HnIWIy8FFFmjoFSuKKJiIVxyiiBFBkuBRRAiNXV1RADIXHa9fuoohDRKOfzgjFRRS/SgaiiiAP/9k=" alt="Product Image">
            <p>ProductName</p>
            <p>$100s</p>
            <div class="button-container">
    <button class="add-to-cart">Buy</button>
    <button class="add-to-cart">Add To Cart</button>
</div>
        </div>
          <div class="product">
            <img src="data:image/jpeg;base64,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" alt="Product Image">
            <p>ProductName</p>
            <p>$100s</p>
            <div class="button-container">
    <button class="add-to-cart">Buy</button>
    <button class="add-to-cart">Add To Cart</button>
</div>
        </div>
          <div class="product">
            <img src="data:image/jpeg;base64,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" alt="Product Image">
            <p>ProductName</p>
            <p>$100s</p>
            <div class="button-container">
    <button class="add-to-cart">Buy</button>
    <button class="add-to-cart">Add To Cart</button>
</div>
        </div>
         <div class="product">
            <img src="data:image/jpeg;base64,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" alt="Product Image">
            <p>ProductName</p>
            <p>$100s</p>
            <div class="button-container">
    <button class="add-to-cart">Buy</button>
    <button class="add-to-cart">Add To Cart</button>
</div>
        </div>
         <div class="product">
            <img src="data:image/jpeg;base64,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" alt="Product Image">
            <p>ProductName</p>
            <p>$100s</p>
            <div class="button-container">
    <button class="add-to-cart">Buy</button>
    <button class="add-to-cart">Add To Cart</button>
</div>

        </div>
    </div>
</main>
<footer>
    G1 Store
</footer>

        </aside><!-- /.right-side -->

    </div><!-- ./wrapper -->
    <!-- jQuery 2.0.2 -->
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.min.js" type="text/javascript"></script>
    <!-- Bootstrap -->
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js" type="text/javascript"></script>
    <!-- Director App -->
    <script src="${pageContext.request.contextPath}/js/Director/app.js" type="text/javascript"></script>
</body>
</html>
