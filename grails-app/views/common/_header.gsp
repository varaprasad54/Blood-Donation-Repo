<%@ page contentType="text/html;charset=UTF8" %>
<html>
<head>
    <title>Donate Blood Save Life</title>
    <! ########## CSS Files ########## >
    <! Screen CSS  for Avia Slider>
    %{--<link rel="stylesheet" href="./css/style.css" type="text/css" media="screen"/>--}%
    %{--<link rel="stylesheet" href="${resource(dir: 'css', file: 'style.css')}" type="text/css">--}%
    <! lightbox CSS >
    <link rel="stylesheet" href="/js/prettyPhoto/css/prettyPhoto.css" type="text/css" media="screen"/>

    %{--<link type="text/css" href="./menu.css" rel="stylesheet"/>--}%
    <link rel="stylesheet" href="${resource(dir: '.', file: 'menu.css')}" type="text/css">

    <! ########## end css ########## >


    <! JAVASCRIPT GOES HERE >
    <script type='text/javascript' src='/js/jquery.js'></script>

    <script type="text/javascript" src="/js/menu.js"></script>

    <script src="/js/prettyPhoto/js/jquery.prettyPhoto.js" type="text/javascript"></script>

    <!this file includes the aviaslider: >
    <script type='text/javascript' src='/js/jquery.aviaSlider.js'></script>

    <!this file includes the activation call for the avia slider. You should edit here: >
    <script type='text/javascript' src='/js/custom.js'></script>
    <style type="text/css">
    * {
        margin: 0;
        padding: 0;
    }

    div#menu {
        margin: 0px 0 0 0px;
        position: absolute;
    }

    </style>
</head>

<body>
<div class='wrapper_fullwidth'>

    <div id="menu">
        <ul class="menu">
            <li><a href="${createLink(uri: '/')}"><span>Home</span></a></li>
            <li><a href="#" class="parent"><span>Eligibility for Donation</span></a>

                <div><ul>
                    <li><a href="#"><span>Who can give Blood</span></a></li>
                    <li><a href="#"><span>Who can't give Blood</span></a></li>
                </ul>
                </div></li>
            <li><a href="#" class="parent"><span>About Blood</span></a>

                <div><ul>
                    <li><a href="#"><span>Components of Blood</span></a></li>
                    <li><a href="#"><span>Blood Group basics</span></a></li>
                </ul>
                </div>
            </li>
            <li><a href="#" class="parent"><span>Blood Donation Facts</span></a>

                %{--<div><ul>
                    <li><a href="#" class="parent"><span>Sub Item 1</span></a>

                        <div><ul>
                            <li><a href="#" class="parent"><span>Sub Item 1.1</span></a>

                                <div><ul>
                                    <li><a href="#"><span>Sub Item 1.1.1</span></a></li>
                                    <li><a href="#"><span>Sub Item 1.1.2</span></a></li>
                                </ul></div>
                            </li>
                            <li><a href="#"><span>Sub Item 1.2</span></a></li>
                            <li><a href="#"><span>Sub Item 1.3</span></a></li>
                            <li><a href="#"><span>Sub Item 1.4</span></a></li>
                            <li><a href="#"><span>Sub Item 1.5</span></a></li>
                            <li><a href="#"><span>Sub Item 1.6</span></a></li>
                            <li><a href="#" class="parent"><span>Sub Item 1.7</span></a>

                                <div><ul>
                                    <li><a href="#"><span>Sub Item 1.7.1</span></a></li>
                                    <li><a href="#"><span>Sub Item 1.7.2</span></a></li>
                                </ul></div>
                            </li>
                        </ul></div>
                    </li>
                    <li><a href="#"><span>Sub Item 2</span></a></li>
                    <li><a href="#"><span>Sub Item 3</span></a></li>
                </ul></div>--}%
            </li>
           %{-- <li><a href="#" class="parent"><span>Product Info</span></a>

                <div><ul>
                    <li><a href="#" class="parent"><span>Sub Item 1</span></a>

                        <div><ul>
                            <li><a href="#"><span>Sub Item 1.1</span></a></li>
                            <li><a href="#"><span>Sub Item 1.2</span></a></li>
                        </ul></div>
                    </li>
                    <li><a href="#" class="parent"><span>Sub Item 2</span></a>

                        <div><ul>
                            <li><a href="#"><span>Sub Item 2.1</span></a></li>
                            <li><a href="#"><span>Sub Item 2.2</span></a></li>
                        </ul></div>
                    </li>
                    <li><a href="#"><span>Sub Item 3</span></a></li>

                </ul></div>
            </li>--}%

            <li class="last"><a href="#"><span>Feedback</span></a></li>
        </ul>
    </div>
</div>
<br><br>
</body>
</html>
