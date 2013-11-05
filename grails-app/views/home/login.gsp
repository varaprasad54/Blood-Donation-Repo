<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta content="siteLayout" name="layout"/>
    <link href="${resource(dir: 'css', file: 'login.css')}" rel="stylesheet" type="text/css"/>
    <link href='http://fonts.googleapis.com/css?family=Droid+Sans:400,700' rel='stylesheet' type='text/css'/>
</head>

<body>

        <!-- Box Start-->
        <div id="box_bg">

            <g:form name="loginForm" action="auth" controller="login">
                <div id="content">
                    <h1>Sign In</h1>

                    <!-- Social Buttons -->
                    <div class="social">
                        With social network:<br/>

                        <div class="twitter"><a href="#" class="btn_1">Login with Twitter</a></div>

                        <div class="fb"><a href="#" class="btn_2">Login with Facebook</a></div>
                    </div>

                    <!-- Login Fields -->
                    <div id="login">Registered Account:<br/>
                        <input type="text" onblur="if (this.value == '')this.value = 'Username';" name="username"
                               onfocus="if (this.value == 'Username')this.value = '';" value="Username"
                               class="login user"/>
                        <input type='text' name='password' value='Password' name="password"
                               onfocus="if (this.value == '' || this.value == 'Password') {
                                   this.value = '';
                                   this.type = 'password'
                               }" onblur="if (this.value == '') {
                            this.type = 'text';
                            this.value = this.defaultValue
                        }" class="login password"/>
                    </div>

                    <!-- Green Button -->
                    <div class="button green"><a href="#">Sign In</a></div>

                    <!-- Checkbox -->
                    <div class="checkbox">
                        <li>
                            <fieldset>
                                <![if !IE | (gte IE 8)]><legend id="title2" class="desc"></legend><![endif]>
                            <!--[if lt IE 8]><label id="title2" class="desc"></label><![endif]-->
                                <div>
                                    <span>
                                        <input id="Field" name="Field" type="checkbox" class="field checkbox"
                                               value="First Choice"
                                               tabindex="4" onchange="handleInput(this);"/>
                                        <label class="choice" for="Field">Keep me signed in</label>
                                    </span>
                                </div>
                            </fieldset>
                        </li>
                    </div>

                </div>
            </g:form>
        %{--</div>--}%

        <!-- Text Under Box -->
        <div id="bottom_text">
            Don't have an account? <a
                href="${createLink(action: 'create', controller: 'bloodDonationUser')}">Sign Up</a>%{--<br/>
    Remind <a href="#">Password</a>--}%
        </div>
    </div>

</body>
</html>
