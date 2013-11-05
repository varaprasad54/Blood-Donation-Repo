<%--
  Created by IntelliJ IDEA.
  User: varapras1
  Date: 10/29/13
  Time: 6:48 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta content="siteLayout" name="layout"/>
</head>

<body>
<div id="site_content">

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
        <h1>Please fill the below details:</h1>

        <form id="contact" action="" method="post">
            <div class="form_settings">
                <p><span>Name</span><input class="" type="text" name="your_name"/></p>
                <p><span>Email Address</span><input class="contact" type="text" name="your_email"/></p>

                <p><span>Message</span><textarea class="contact textarea" rows="5" cols="50"
                                                 name="your_message"></textarea></p>

                <p style="line-height: 1.7em;">To help prevent spam, please enter the answer to this question:</p>

                <p><span> 3+ 5= ?</span><input type="text"
                                                                                              name="user_answer"/><input
                        type="hidden" name="answer" /></p>

                <p style="padding-top: 15px"><span>&nbsp;</span><input class="submit" type="submit"
                                                                       name="contact_submitted" value="send"/></p>
            </div>
        </form>

    </div>
</div>
</body>
</html>