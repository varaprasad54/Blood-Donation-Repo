<%--
  Created by IntelliJ IDEA.
  User: varapras1
  Date: 10/19/13
  Time: 12:50 PM
  To change this template use File | Settings | File Templates.
--%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<g:render template="header"/>
<html>
<head>
    <link type="text/css" href="css/login.css" rel="stylesheet" />


</head>
<body>
<div class="left_wrapper">


    <ul class='aviaslider' id="frontpage-slider">
        <li><a href="images/slides/banner1.jpg" title="" ><img src="images/slides/banner1.jpg" alt="" /></a></li>
        <li><a href="images/slides/banner2.gif" title="" ><img src="images/slides/banner2.gif" alt="" /></a></li>
    </ul>
    <div id='login' class="right_wrapper">
        <div class='inner'>
            <div class='fheader'><g:message code="springSecurity.login.header"/></div>

            <g:if test='${flash.message}'>
                <div class='login_message'>${flash.message}</div>
            </g:if>

            <g:form method='POST' id='loginForm' class='cssform' autocomplete='off' url="[action:'auth',controller:'login']">
                <p>
                    <label for='username'><g:message code="springSecurity.login.username.label"/>:</label>
                    <input type='text' class='text_' name='j_username' id='username'/>
                </p>

                <p>
                    <label for='password'><g:message code="springSecurity.login.password.label"/>:</label>
                    <input type='password' class='text_' name='j_password' id='password'/>
                </p>

                <p id="remember_me_holder">
                    <input type='checkbox' class='chk' name='${rememberMeParameter}' id='remember_me'
                           <g:if test='${hasCookie}'>checked='checked'</g:if>/>
                    <label for='remember_me'><g:message code="springSecurity.login.remember.me.label"/></label>
                </p>

                <p>
                    <input type='submit' id="submit" value='${message(code: "springSecurity.login.button")}'/>
                </p>
            </g:form>
        </div>
    </div>
</div>

<div class='wrapper_fullwidth'>

    <div class="center" id="bottom">
    &copy; Copyright <a href="#"> BloodDonation</a>
    </div>

</div>
</body>
</html>