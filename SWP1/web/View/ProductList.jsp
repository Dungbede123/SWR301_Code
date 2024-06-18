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
    body {
    font-family: Arial, sans-serif;
    background-color: #f9f9f9;
    margin: 0;
    padding: 0;
}

.container {
    display: flex;
    width: 100%;
    max-width: 1200px;
    margin: 0 auto;
    padding: 20px;
    box-sizing: border-box;
}

.sidebar {
    width: 250px;
    padding: 20px;
    background-color: #fff;
    border-right: 1px solid #ddd;
}

.filter-section1 {
    margin-bottom: 20px;
}

.filter-section1 h3 {
    margin: 0 0 10px 0;
    font-size: 16px;
    color: #333;
}

.filter-section1 ul {
    list-style: none;
    padding: 0;
    margin: 0;
}

.filter-section1 ul li {
    margin-bottom: 5px;
}

.filter-section1 label {
    color: #333;
}

.filter-section1 input[type="range"] {
    width: 100%;
}

.filter-section1 .price-range {
    display: flex;
    justify-content: space-between;
    margin-top: 10px;
}

button {
    display: inline-block;
    padding: 10px 20px;
    margin-top: 10px;
    background-color: #007bff;
    color: #fff;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

button:hover {
    background-color: #0056b3;
}

.popular-products {
    margin-top: 20px;
}

.popular-products .product {
    display: flex;
    align-items: center;
    margin-bottom: 10px;
}

.product-image {
    width: 50px;
    height: 50px;
    background-color: #e0e0e0;
    margin-right: 10px;
}

.product-info p {
    margin: 0;
    color: #333;
}

.rating {
    color: #ffcc00;
}

.main-content {
    flex: 1;
    padding: 20px;
    background-color: #fff;
}

.toolbar {
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-bottom: 20px;
}

.view-toggle {
    background-color: #007bff;
    color: #fff;
    border: none;
    padding: 10px;
    cursor: pointer;
    border-radius: 5px;
}

.view-toggle:hover {
    background-color: #0056b3;
}

.product-grid {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 20px;
}

.product-card {
    background-color: #fff;
    border: 1px solid #ddd;
    padding: 20px;
    text-align: center;
}

.product-card .product-image {
    width: 100px;
    height: 100px;
    background-color: #e0e0e0;
    margin: 0 auto 10px auto;
}

.pagination {
    display: flex;
    justify-content: center;
    align-items: center;
    margin-top: 20px;
}

.pagination span {
    display: inline-block;
    padding: 5px 10px;
    margin: 0 5px;
    border: 1px solid #ddd;
    cursor: pointer;
}

.pagination span:hover {
    background-color: #007bff;
    color: #fff;
}

.pagination button {
    padding: 5px 10px;
    border: 1px solid #ddd;
    background-color: #007bff;
    color: #fff;
    cursor: pointer;
}

.pagination button:hover {
    background-color: #0056b3;
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
                    <ul class="sidebar-menu">
                    <li>
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
                    <li class="active">
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
                            <i class="fa fa-dashboard"></i><span>Product select</span>
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
            </section>
            <!-- /.sidebar -->
        </aside>

        <!-- Right side column. Contains the navbar and content of the page -->
        <aside class="right-side">
            <!-- Content Header (Page header) -->


            <!-- Main content -->
       <div class="container">
        <aside class="sidebar">
            <div class="filter-section1">
                <h3>Thương hiệu</h3>
                <ul>
                    <li><label><input type="checkbox"> Thương hiệu 1</label></li>
                    <li><label><input type="checkbox"> Thương hiệu 2</label></li>
                    <li><label><input type="checkbox"> Thương hiệu 3</label></li>
                    <li><label><input type="checkbox"> Thương hiệu 4</label></li>
                    <li><label><input type="checkbox"> Thương hiệu 5</label></li>
                    <li><label><input type="checkbox"> Thương hiệu 6</label></li>
                </ul>
            </div>

            <div class="filter-section1">
                <h3>Giá</h3>
                <input type="range" min="0" max="100" value="50">
                <div class="price-range">
                    <span>0.00đ</span>
                    <span>100.00đ</span>
                </div>
                <button>lọc</button>
            </div>

            <div class="filter-section1">
                <h3>Kích cỡ</h3>
                <ul>
                    <li><label><input type="checkbox"> S</label></li>
                    <li><label><input type="checkbox"> M</label></li>
                    <li><label><input type="checkbox"> L</label></li>
                    <li><label><input type="checkbox"> XL</label></li>
                </ul>
            </div>

            <div class="filter-section1">
                <h3>Màu sắc</h3>
                <ul>
                    <li><label><input type="radio" name="color"> Đen</label></li>
                    <li><label><input type="radio" name="color"> Cam</label></li>
                    <li><label><input type="radio" name="color"> Xanh nước biển</label></li>
                    <li><label><input type="radio" name="color"> Vàng</label></li>
                    <li><label><input type="radio" name="color"> Xanh lá cây</label></li>
                    <li><label><input type="radio" name="color"> Hồng</label></li>
                </ul>
            </div>

            <button>Lọc sản phẩm</button>
            <button>Xóa bộ lọc</button>

            <div class="popular-products">
                <h3>Sản phẩm phổ biến</h3>
                <div class="product">
                    <div class="product-image"></div>
                    <div class="product-info">
                        <p>Tên sản phẩm</p>
                        <p>00.00đ</p>
                        <div class="rating">★★★★★</div>
                    </div>
                </div>
                <div class="product">
                    <div class="product-image"></div>
                    <div class="product-info">
                        <p>Tên sản phẩm</p>
                        <p>00.00đ</p>
                        <div class="rating">★★★★★</div>
                    </div>
                </div>
                <div class="product">
                    <div class="product-image"></div>
                    <div class="product-info">
                        <p>Tên sản phẩm</p>
                        <p>00.00đ</p>
                        <div class="rating">★★★★★</div>
                    </div>
                </div>
            </div>
        </aside>

        <main class="main-content">
            <div class="toolbar">
                <select>
                    <option value="name-asc">Tên, A tới Z</option>
                    <option value="name-desc">Tên, Z tới A</option>
                    <option value="price-asc">Giá, thấp tới cao</option>
                    <option value="price-desc">Giá, cao tới thấp</option>
                </select>
            </div>

            <div class="product-grid">
                <div class="product-card">
                    <div class="product-image"></div>
                    <div class="product-info">
                        <p>Tên sản phẩm</p>
                        <p>00.00đ</p>
                    </div>
                </div>
                <!-- Repeat product-card as needed -->
                <div class="product-card">
                    <div class="product-image"></div>
                    <div class="product-info">
                        <p>Tên sản phẩm</p>
                        <p>00.00đ</p>
                    </div>
                </div>
                <div class="product-card">
                    <div class="product-image"></div>
                    <div class="product-info">
                        <p>Tên sản phẩm</p>
                        <p>00.00đ</p>
                    </div>
                </div>
                <div class="product-card">
                    <div class="product-image"></div>
                    <div class="product-info">
                        <p>Tên sản phẩm</p>
                        <p>00.00đ</p>
                    </div>
                </div>
                <div class="product-card">
                    <div class="product-image"></div>
                    <div class="product-info">
                        <p>Tên sản phẩm</p>
                        <p>00.00đ</p>
                    </div>
                </div>
                <div class="product-card">
                    <div class="product-image"></div>
                    <div class="product-info">
                        <p>Tên sản phẩm</p>
                        <p>00.00đ</p>
                    </div>
                </div>
                <div class="product-card">
                    <div class="product-image"></div>
                    <div class="product-info">
                        <p>Tên sản phẩm</p>
                        <p>00.00đ</p>
                    </div>
                </div>
                <div class="product-card">
                    <div class="product-image"></div>
                    <div class="product-info">
                        <p>Tên sản phẩm</p>
                        <p>00.00đ</p>
                    </div>
                </div>
                <div class="product-card">
                    <div class="product-image"></div>
                    <div class="product-info">
                        <p>Tên sản phẩm</p>
                        <p>00.00đ</p>
                    </div>
                </div>
                <!-- Add more product cards similarly -->
            </div>

            <div class="pagination">
                <span>1</span>
                <span>2</span>
                <span>3</span>
                <span>4</span>
                <button>Trang sau</button>
            </div>
        </main>
    </div>

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

