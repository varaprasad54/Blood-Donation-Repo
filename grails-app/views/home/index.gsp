<%--
  Created by IntelliJ IDEA.
  User: varapras1
  Date: 10/19/13
  Time: 12:50 PM
  To change this template use File | Settings | File Templates.
--%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="siteLayout"/>
</head>

<body>
<div id="site_content">
    <ul id="images">
        <li><a href="http://facebook.com/meetblooddonor"><img src="images/banner1.jpg" width="600" height="300" alt=""/></a></li>
        <li><a href="${createLink(controller: 'home',action: 'login')}"><img src="images/banner2.gif" width="600" height="300" alt=""/></a></li>
        <li><img src="images/3.jpg" width="600" height="300" alt=""/></li>
        <li><img src="images/4.jpg" width="600" height="300" alt=""/></li>
        <li><img src="images/5.jpg" width="600" height="300" alt=""/></li>
        <li><img src="images/6.jpg" width="600" height="300" alt=""/></li>
    </ul>

    <div id="sidebar_container">
        <div class="sidebar">
            <h3>Latest News</h3>
            <h4>New Website Launched</h4>
            <h5>January 1st, 2012</h5>

            <p>2012 sees the redesign of our website. Take a look around and let us know what you think.<br/><a
                    href="#">Read more</a></p>
            <h4>20% Discount</h4>
            <h5>March 1st, 2012</h5>

            <p>We are offering a 20% discount to all new customers.<br/><a href="#">Read more</a></p>
        </div>
    </div>

    <div class="content">
        <h1>Welcome to the Blood Donation Community</h1>

        <p>Have you at anytime witnessed a relative of yours or a close friend searching frantically for a blood donor,
        when blood banks say out of stock, the donors in mind are out of reach and the time keeps ticking?
        </p>

        <p>
            Have you witnessed loss of life for the only reason that a donor was not available at the most needed hour? Is it something that we
            as a society can do nothing to prevent? This thought laid me to start this Project.
        </p>

    </div>
</div>

</body>
</html>
