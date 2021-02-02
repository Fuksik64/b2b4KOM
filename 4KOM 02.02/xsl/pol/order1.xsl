<?xml version="1.0" encoding="UTF-8"?>
<iaixsl:stylesheet xmlns:php="http://php.net/xsl" xmlns:iaixsl="http://www.w3.org/1999/XSL/Transform" xmlns:iaielement="http://iai-system.com/ddd" xmlns:fb="http://www.facebook.com/2008/fbml" version="1.0" exclude-result-prefixes="php iaielement fb"><iaixsl:output indent="no" method="html" doctype-system="about:legacy-compat" version="1.0" encoding="UTF-8"/><iaixsl:strip-space elements="table tr td img"/><iaixsl:decimal-format name="yen" NaN="" grouping-separator="," decimal-separator="."/><iaixsl:template match="shop"><!--Typ strony (envelope, 107421.1)-->
            <iaixsl:variable name="meta_langcode_iso639">pl</iaixsl:variable>
            <iaixsl:variable name="html5_layout">1</iaixsl:variable>
            <iaixsl:variable name="asyncJS"></iaixsl:variable>
            <iaixsl:variable name="themeColor">#0E1116</iaixsl:variable>
            <iaixsl:if test="(action/set_render/item/@name = 'popup') or not(action/set_render/item)">
                <iaixsl:text disable-output-escaping="yes">&lt;html lang="</iaixsl:text><iaixsl:value-of select="/shop/language/option[@selected = 'true']/@name"/><iaixsl:text disable-output-escaping="yes">"</iaixsl:text><iaixsl:if test="(/shop/page/@type = 'prepaid' and /shop/page/prepaid/details/@msg = 'order') or /shop/page/@type = 'order-nonstandardized' or /shop/page/@type = 'order1' or /shop/page/@type = 'order2' or /shop/page/@type = 'pickup-sites' or /shop/page/@type = 'place-order'"><iaixsl:text disable-output-escaping="yes"> class="order_process"</iaixsl:text></iaixsl:if><iaixsl:text disable-output-escaping="yes"> &gt;</iaixsl:text>
                <iaixsl:if test="$meta_langcode_iso639"><iaixsl:attribute name="lang"><iaixsl:value-of select="$meta_langcode_iso639"/></iaixsl:attribute></iaixsl:if>
                <head>
                    <iaixsl:text disable-output-escaping="yes">&lt;meta name='viewport' content='user-scalable=no, initial-scale = 1.0, maximum-scale = 1.0, width=device-width'/&gt; </iaixsl:text>
                    <iaixsl:variable name="meta_breadcrumb">
                        <iaixsl:if test="(page/@type='search') or (page/@type='navigation') or (page/@type='projector')">
                            <iaixsl:choose>
                                <iaixsl:when test="page/@type='navigation'">
                                    <iaixsl:for-each select="bc/item"><iaixsl:value-of select="@title"/> | </iaixsl:for-each>
                                </iaixsl:when>
                                <iaixsl:otherwise>
                                    <iaixsl:for-each select="bc/item[not(position() = last())]"><iaixsl:value-of select="@title"/> | </iaixsl:for-each>
                                </iaixsl:otherwise>
                            </iaixsl:choose>
                            
                        </iaixsl:if>
                    </iaixsl:variable>
                    <iaixsl:variable name="meta_breadcrumb_full">
                        <iaixsl:if test="(page/@type='search') or (page/@type='navigation') or (page/@type='projector')">
                            <iaixsl:for-each select="bc/item"><iaixsl:value-of select="@title"/> | </iaixsl:for-each>
                            
                        </iaixsl:if>
                    </iaixsl:variable>
                    <iaixsl:variable name="meta_subcategories">
                        <iaixsl:if test="((page/@type='search') or (page/@type='navigation') or (page/@type='projector')) and (/shop/navigation/current/@ni)">
                            <iaixsl:for-each select="navigation/descendant-or-self::item[@ni=/shop/navigation/current/@ni]/item"><iaixsl:value-of select="@name"/>, </iaixsl:for-each>
                        </iaixsl:if>
                    </iaixsl:variable>
                    <iaixsl:variable name="meta_variable_emulate_ie">IE=edge</iaixsl:variable>
                    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
                    <iaixsl:if test="$meta_variable_emulate_ie">
                        <meta http-equiv="X-UA-Compatible"><iaixsl:attribute name="content"><iaixsl:value-of select="$meta_variable_emulate_ie"/></iaixsl:attribute></meta>
                    </iaixsl:if>
                    <iaixsl:choose>
                        <iaixsl:when test="page/@search_title">
                            <title><iaixsl:value-of select="page/@search_title" disable-output-escaping="yes"/></title>
                        </iaixsl:when>
                        <iaixsl:when test="page/@projector_title">
                            <title><iaixsl:value-of select="page/@projector_title" disable-output-escaping="yes"/> | <iaixsl:value-of select="$meta_breadcrumb_full" disable-output-escaping="yes"/><iaixsl:value-of select="page/@title" disable-output-escaping="yes"/></title>
                        </iaixsl:when>
                        <iaixsl:otherwise>
                            <title><iaixsl:value-of select="$meta_breadcrumb" disable-output-escaping="yes"/><iaixsl:value-of select="page/@title" disable-output-escaping="yes"/><iaixsl:if test="page/@title2"> | <iaixsl:value-of select="page/@title2" disable-output-escaping="yes"/></iaixsl:if></title>
                        </iaixsl:otherwise>
                    </iaixsl:choose>
                    <iaixsl:choose>
                        <iaixsl:when test="page/@search_keywords">
                            <meta name="keywords"><iaixsl:attribute name="content"><iaixsl:value-of select="page/@search_keywords"/></iaixsl:attribute></meta>
                        </iaixsl:when>
                        <iaixsl:when test="page/@projector_keywords">
                            <meta name="keywords"><iaixsl:attribute name="content"><iaixsl:value-of select="page/@projector_keywords"/> | <iaixsl:value-of select="$meta_breadcrumb_full"/><iaixsl:value-of select="$meta_subcategories"/><iaixsl:value-of select="page/@keywords"/></iaixsl:attribute></meta>
                        </iaixsl:when>
                        <iaixsl:when test="not(page/@keywords='')">
                            <meta name="keywords">
                                <iaixsl:attribute name="content">
                                    <iaixsl:value-of select="$meta_breadcrumb_full"/>
                                    <iaixsl:value-of select="$meta_subcategories"/>
                                    <iaixsl:choose>
                                        <iaixsl:when test="not(page/@keywords='') ">
                                            <iaixsl:value-of select="page/@keywords"/>
                                        </iaixsl:when>
                                        <iaixsl:otherwise>
                                            
                                        </iaixsl:otherwise>
                                    </iaixsl:choose>
                                </iaixsl:attribute>
                            </meta>
                        </iaixsl:when>
                        <iaixsl:otherwise>
                        </iaixsl:otherwise>
                    </iaixsl:choose>
                    <iaixsl:choose>
                        <iaixsl:when test="page/@search_description">
                            <meta name="description"><iaixsl:attribute name="content"><iaixsl:value-of select="page/@search_description"/></iaixsl:attribute></meta>
                        </iaixsl:when>
                        <iaixsl:when test="page/@projector_description">
                            <meta name="description"><iaixsl:attribute name="content"><iaixsl:value-of select="page/@projector_description"/> | <iaixsl:value-of select="$meta_breadcrumb_full"/><iaixsl:value-of select="$meta_subcategories"/><iaixsl:value-of select="page/@description"/></iaixsl:attribute></meta>
                        </iaixsl:when>
                        <iaixsl:otherwise>
                            <meta name="description"><iaixsl:attribute name="content"><iaixsl:value-of select="$meta_breadcrumb"/><iaixsl:value-of select="$meta_subcategories"/><iaixsl:value-of select="page/@description"/></iaixsl:attribute></meta>
                        </iaixsl:otherwise>
                    </iaixsl:choose>
                    
                    <link rel="shortcut icon" href="/gfx/pol/favicon.ico" />
                    <iaixsl:choose>
                        <iaixsl:when test="/shop/mask/@scheme_color">
                            <meta name="theme-color"><iaixsl:attribute name="content"><iaixsl:value-of select="/shop/mask/@scheme_color"/></iaixsl:attribute></meta>
                            <meta name="msapplication-navbutton-color"><iaixsl:attribute name="content"><iaixsl:value-of select="/shop/mask/@scheme_color"/></iaixsl:attribute></meta>
                            <meta name="apple-mobile-web-app-status-bar-style"><iaixsl:attribute name="content"><iaixsl:value-of select="/shop/mask/@scheme_color"/></iaixsl:attribute></meta>
                        </iaixsl:when>
                        <iaixsl:when test="$themeColor">
                            <meta name="theme-color"><iaixsl:attribute name="content"><iaixsl:value-of select="$themeColor"/></iaixsl:attribute></meta>
                            <meta name="msapplication-navbutton-color"><iaixsl:attribute name="content"><iaixsl:value-of select="$themeColor"/></iaixsl:attribute></meta>
                            <meta name="apple-mobile-web-app-status-bar-style"><iaixsl:attribute name="content"><iaixsl:value-of select="$themeColor"/></iaixsl:attribute></meta>
                        </iaixsl:when>
                    </iaixsl:choose>
                    <iaixsl:choose>
                        <iaixsl:when test="$asyncJS">
                            <iaixsl:choose>
                                <iaixsl:when test="/shop/@preview > 0">
                                    <link rel="stylesheet" type="text/css"><iaixsl:attribute name="href">/gfx/<iaixsl:value-of select="language/@id"/>/<iaixsl:value-of select="/shop/@preview"/>/style.css</iaixsl:attribute></link>
                                </iaixsl:when>
                                <iaixsl:otherwise>
                                    <link rel="stylesheet" type="text/css"><iaixsl:attribute name="href">/gfx/<iaixsl:value-of select="language/@id"/>/style.css.gzip?r=1598273396</iaixsl:attribute></link>
                                </iaixsl:otherwise>
                            </iaixsl:choose>
                        </iaixsl:when>
                        <iaixsl:otherwise>
                            <iaixsl:choose>
                                <iaixsl:when test="/shop/@preview > 0">
                                    <link rel="stylesheet" type="text/css"><iaixsl:attribute name="href">/gfx/<iaixsl:value-of select="language/@id"/>/<iaixsl:value-of select="/shop/@preview"/>/style.css</iaixsl:attribute></link>
                                </iaixsl:when>
                                <iaixsl:otherwise>
                                    <link rel="stylesheet" type="text/css"><iaixsl:attribute name="href">/gfx/<iaixsl:value-of select="language/@id"/>/style.css.gzip?r=1598273396</iaixsl:attribute></link>
                                </iaixsl:otherwise>
                            </iaixsl:choose>
                        </iaixsl:otherwise>
                    </iaixsl:choose>
                    <script>
                        var app_shop = {
                            urls: {
                                prefix: 'data="/gfx/'.replace('data="', '') + '<iaixsl:value-of select="language/@id"/>/'
                            },
                            vars: {},
                            txt: {},
                            fn: {},
                            fnrun: {},
                            files: []
                        };
                    </script>
                    <iaixsl:variable name="projector_script_bottom"></iaixsl:variable>
                    <iaixsl:if test="not(/shop/page/@type = 'main') and not(/shop/page/@type = 'search') and not(/shop/page/@type = 'place-order') and not(/shop/page/@type = 'noproduct') and not($projector_script_bottom and /shop/page/@type = 'projector')">
                        <iaixsl:choose>
                            <iaixsl:when test="/shop/@preview > 0">
                                <script><iaixsl:attribute name="src">/gfx/<iaixsl:value-of select="language/@id"/>/<iaixsl:value-of select="/shop/@preview"/>/shop.js</iaixsl:attribute></script>
                            </iaixsl:when>
                            <iaixsl:otherwise>
                                <script><iaixsl:attribute name="src">/gfx/<iaixsl:value-of select="language/@id"/>/shop.js.gzip?r=1598273396</iaixsl:attribute></script>
                            </iaixsl:otherwise>
                        </iaixsl:choose>
                    </iaixsl:if>
                    <iaixsl:text disable-output-escaping="yes"></iaixsl:text>
                    <iaixsl:variable name="meta_variable_expires">never</iaixsl:variable>
                    <iaixsl:variable name="meta_variable_distribution">global</iaixsl:variable>
                    <iaixsl:variable name="meta_variable_rating">general</iaixsl:variable>
                    <iaixsl:choose>
                        <iaixsl:when test="/shop/page/@meta_robots">
                            <meta name="robots">
                                <iaixsl:attribute name="content"><iaixsl:value-of select="/shop/page/@meta_robots"/></iaixsl:attribute>
                            </meta>
                        </iaixsl:when>
                        <iaixsl:otherwise>
                            <meta name="robots">
                                <iaixsl:attribute name="content">INDEX,FOLLOW</iaixsl:attribute>
                            </meta>
                        </iaixsl:otherwise>
                    </iaixsl:choose>
                    <iaixsl:if test="not($html5_layout)">
                        <iaixsl:if test="$meta_variable_expires">
                            <meta name="expires"><iaixsl:attribute name="content"><iaixsl:value-of select="$meta_variable_expires"/></iaixsl:attribute></meta>
                        </iaixsl:if>
                        <iaixsl:if test="$meta_variable_distribution">
                            <meta name="distribution"><iaixsl:attribute name="content"><iaixsl:value-of select="$meta_variable_distribution"/></iaixsl:attribute></meta>
                        </iaixsl:if>
                    </iaixsl:if>
                    <iaixsl:if test="$meta_variable_rating">
                        <meta name="rating"><iaixsl:attribute name="content"><iaixsl:value-of select="$meta_variable_rating"/></iaixsl:attribute></meta>
                    </iaixsl:if>
                    <iaixsl:if test="/shop/iai/@meta_author">
                        <meta name="Author">
                            <iaixsl:attribute name="content"><iaixsl:value-of select="/shop/iai/@meta_author"/></iaixsl:attribute>
                        </meta>
                    </iaixsl:if>
                    <iaixsl:if test="page/facebook_comments">
                        <meta property="fb:admins">
                            <iaixsl:attribute name="content"><iaixsl:value-of select="/shop/page/facebook_comments/@admin_id"/></iaixsl:attribute>
                        </meta>
                        <meta property="fb:app_id">
                            <iaixsl:attribute name="content"><iaixsl:value-of select="/shop/page/facebook_comments/@app_id"/></iaixsl:attribute>
                        </meta>
                    </iaixsl:if>
                    <iaixsl:value-of disable-output-escaping="yes" select="php:functionString('additionalContent', 'additional_meta_tags')"/>
                    
                    <iaixsl:if test="/shop/page/@type = 'main' and count(commercial_banner/link) > 0">
                        <style>
                            <iaixsl:if test="commercial_banner/link/image">
                                #main_banner1.skeleton li {
                                <iaixsl:for-each select="commercial_banner/link">
                                    <iaixsl:sort select="image/@height"/>
                                    <iaixsl:if test="position() = 1">
                                        padding-top: calc(<iaixsl:value-of select="image/@height"/>/<iaixsl:value-of select="image/@width"/>* 100%);
                                    </iaixsl:if>
                                </iaixsl:for-each>
                                }
                            </iaixsl:if>

                            <iaixsl:if test="commercial_banner/link/image_desktop">
                                #main_banner1.skeleton li > a {
                                <iaixsl:for-each select="commercial_banner/link">
                                    <iaixsl:sort select="image_desktop/@height"/>
                                    <iaixsl:if test="position() = 1">
                                        padding-top: calc(<iaixsl:value-of select="image_desktop/@height"/>/<iaixsl:value-of select="image_desktop/@width"/>* 100%);
                                    </iaixsl:if>
                                </iaixsl:for-each>
                                }
                                @media only screen and (max-width: 979px){#main_banner1.skeleton li > a {
                                <iaixsl:for-each select="commercial_banner/link">
                                    <iaixsl:sort select="image_tablet/@height"/>
                                    <iaixsl:if test="position() = 1">
                                        padding-top: calc(<iaixsl:value-of select="image_tablet/@height"/>/<iaixsl:value-of select="image_desktop/@width"/>* 100%);
                                    </iaixsl:if>
                                </iaixsl:for-each>
                                }}
                                @media only screen and (max-width: 757px){#main_banner1.skeleton li > a {
                                <iaixsl:for-each select="commercial_banner/link">
                                    <iaixsl:sort select="image_mobile/@height"/>
                                    <iaixsl:if test="position() = 1">
                                        padding-top: calc(<iaixsl:value-of select="image_mobile/@height"/>/<iaixsl:value-of select="image_mobile/@width"/>* 100%);
                                    </iaixsl:if>
                                </iaixsl:for-each>
                                }}
                            </iaixsl:if>
                        </style>
                    </iaixsl:if>
                <script src="/gfx/pol/order1.js.gzip?r=1598273396"></script></head>
                <iaixsl:variable name="meta_body_id"></iaixsl:variable>
                <iaixsl:text disable-output-escaping="yes">&lt;body</iaixsl:text><iaixsl:if test="action/set_render/item/@name = 'popup'"><iaixsl:text disable-output-escaping="yes"> class="popup" </iaixsl:text></iaixsl:if><iaixsl:text disable-output-escaping="yes">&gt;</iaixsl:text>

                <iaixsl:if test="$meta_body_id">
                    <iaixsl:attribute name="id"><iaixsl:value-of select="$meta_body_id"/></iaixsl:attribute>
                </iaixsl:if>
                <iaixsl:value-of disable-output-escaping="yes" select="php:functionString('additionalContent', 'additional_body_top_scripts')"/>
            </iaixsl:if>
            <iaixsl:variable name="valuepricedesc">Cena dla Ciebie</iaixsl:variable>
            <iaixsl:variable name="discountpricedesc">Przecena</iaixsl:variable>
            <iaixsl:variable name="promopricedesc">Promocja</iaixsl:variable>
            <iaixsl:variable name="detalpricedesc">Cena detaliczna</iaixsl:variable>
            <iaixsl:variable name="rebatepricedesc">Rabat</iaixsl:variable>
            <iaixsl:variable name="nettopricedesc">Cena netto</iaixsl:variable>
            <iaixsl:variable name="signbeforeprice">false</iaixsl:variable>
            <iaixsl:variable name="signbetweenpricecurrency">&#160;</iaixsl:variable>
            <iaixsl:variable name="showcomparelink">1</iaixsl:variable>

            <iaixsl:variable name="browser_supp_visible">true</iaixsl:variable>
            <iaixsl:if test="$browser_supp_visible">
                <script>
                    var script = document.createElement('script');
                    script.src = app_shop.urls.prefix + 'envelope.js';

                    document.getElementsByTagName('body')[0].insertBefore(script, document.getElementsByTagName('body')[0].firstChild);
                </script>
            </iaixsl:if>

            <!--Układ graficzny (layout, 107419.1)-->
            <div id="container">
                <iaixsl:attribute name="class"><iaixsl:value-of select="page/@type"/>_page <iaixsl:if test="/shop/page/login/@shop_registration = 'true'">registration_page </iaixsl:if>container</iaixsl:attribute>

                <iaixsl:if test="not(action/set_render/item) or (action/set_render/item/@name = 'head')">
                    <header>
                        <iaixsl:attribute name="class">row flex-nowrap flex-md-wrap<iaixsl:if test="count(commercial_banner/link) > 0"> commercial_banner</iaixsl:if></iaixsl:attribute>
                        <!--Javascript (menu_javascript, 107349.1)-->
            
            <script class="ajaxLoad">
                <iaixsl:if test="( page/@type = 'basketedit') or ( page/@type='login' and page/login/onceorder/@display='y') or ((page/@type = 'client-new') and not(page/client-data/@edit = 'true') and (page/client-data/@afterlogin = 'order')) or ( page/@type = 'order1') or ( page/@type = 'order-nonstandardized') or ( page/@type = 'pickup-sites') or ( page/@type = 'order2') or ( page/@type = 'client-save') or ( page/@type = 'prepaid') or ( page/@type = 'order-payment') or ( page/@type = 'order-newpayment') or ( page/@type = 'rma_products' ) or ( page/@type = 'return_products' ) or (page/@type = 'client-orders') or (page/@type = 'rma-add') or (page/@type = 'place-order')">
                   document.getElementsByTagName('html')[0].className += ' cop_site';
                </iaixsl:if>
                <iaixsl:if test="/shop/action_alert/@type">
                    document.getElementsByTagName('html')[0].className += " <iaixsl:value-of select="/shop/action_alert/@type"/>";
                </iaixsl:if>
                app_shop.vars.vat_registered = "<iaixsl:value-of select="/shop/contact/owner/@vat_registered"/>";
                app_shop.vars.currency_format = "<iaixsl:value-of select="/shop/currency/option[@selected='true']/@currency_format"/>";
                <iaixsl:if test="/shop/currency/option[@selected='true']/@currency_before_value">
                    app_shop.vars.currency_before_value = <iaixsl:value-of select="/shop/currency/option[@selected='true']/@currency_before_value"/>;
                </iaixsl:if>
                <iaixsl:if test="/shop/currency/option[@selected='true']/@currency_space">
                    app_shop.vars.currency_space = <iaixsl:value-of select="/shop/currency/option[@selected='true']/@currency_space"/>;
                </iaixsl:if>
                app_shop.vars.symbol = "<iaixsl:value-of select="/shop/currency/option[@selected='true']/@symbol"/>";
                app_shop.vars.id= "<iaixsl:value-of select="/shop/currency/option[@selected='true']/@id"/>";
                app_shop.vars.baseurl = "<iaixsl:value-of select="/shop/@baseurl"/>";
                app_shop.vars.sslurl= "<iaixsl:value-of select="/shop/@sslurl"/>";
                app_shop.vars.curr_url= "<iaixsl:value-of select="/shop/navigation/current/@curr_url"/>";
                <iaixsl:if test="/shop/basket/@login">
                    app_shop.vars.logged = 1;
                </iaixsl:if>

                var currency_decimal_separator = '<iaixsl:value-of select="/shop/currency/option[@selected='true']/@currency_decimal_separator"/>';
                var currency_grouping_separator = '<iaixsl:value-of select="/shop/currency/option[@selected='true']/@currency_grouping_separator"/>';

                <iaixsl:if test="/shop/form_data/upload_file/blacklist_extension/param">
                    app_shop.vars.blacklist_extension = [<iaixsl:for-each select="/shop/form_data/upload_file/blacklist_extension/param"><iaixsl:if test="not(position()=1)">,</iaixsl:if>"<iaixsl:value-of select="@type"/>"</iaixsl:for-each>];
                </iaixsl:if>
                <iaixsl:if test="/shop/form_data/upload_file/blacklist_mime/param">
                    app_shop.vars.blacklist_mime = [<iaixsl:for-each select="/shop/form_data/upload_file/blacklist_mime/param"><iaixsl:if test="not(position()=1)">,</iaixsl:if>"<iaixsl:value-of select="@type"/>"</iaixsl:for-each>];
                </iaixsl:if>
                <iaixsl:if test="/shop/contact/link/@url">
                    app_shop.urls.contact = "<iaixsl:value-of select="/shop/contact/link/@url"/>";
                </iaixsl:if>
            </script>
            <div id="viewType" style="display:none"/>
        <!--Buttony reklamowe (menu_buttons, 106536.1)-->
            <iaixsl:if test="count(commercial_button/link)"> 
                <div id="menu_buttons" >
                    <iaixsl:for-each select="commercial_button/link">
                        <div class="menu_button_wrapper">
                        <iaixsl:choose>
                            <iaixsl:when test="not(html)">
                                <iaixsl:choose>
                                    <iaixsl:when test="@href">
                                        <a target="_self">
                                        <iaixsl:if test="@target"><iaixsl:attribute name="target"><iaixsl:value-of select="@target"/></iaixsl:attribute></iaixsl:if>
                                            <iaixsl:attribute name="href"><iaixsl:value-of select="@href"/></iaixsl:attribute>
                                            <iaixsl:if test="text"><iaixsl:attribute name="title"><iaixsl:value-of select="text"/></iaixsl:attribute></iaixsl:if>
                                            <iaixsl:choose>
                                                <iaixsl:when test="image or image_desktop or image_tablet or image_mobile">
                                                    <img src="/gfx/pol/loader.gif?r=1598273396">
                                                        <iaixsl:attribute name="alt"><iaixsl:value-of select="text"/></iaixsl:attribute>
                                                        <iaixsl:attribute name="src"><iaixsl:value-of select="image/@src"/></iaixsl:attribute>
                                                        <iaixsl:if test="image_desktop or image_tablet or image_mobile">
                                                            <iaixsl:attribute name="class">rwd-src</iaixsl:attribute>
                                                        </iaixsl:if>

                                                        <iaixsl:if test="image/@src">
                                                            <iaixsl:attribute name="src"><iaixsl:value-of select="image/@src"/></iaixsl:attribute>
                                                        </iaixsl:if>

                                                        <iaixsl:if test="image_desktop/@src">
                                                            <iaixsl:attribute name="data-src_desktop"><iaixsl:value-of select="image_desktop/@src"/></iaixsl:attribute>
                                                        </iaixsl:if>

                                                        <iaixsl:if test="image_tablet/@src">
                                                            <iaixsl:attribute name="data-src_tablet"><iaixsl:value-of select="image_tablet/@src"/></iaixsl:attribute>
                                                        </iaixsl:if>

                                                        <iaixsl:if test="image_mobile/@src">
                                                            <iaixsl:attribute name="data-src_mobile"><iaixsl:value-of select="image_mobile/@src"/></iaixsl:attribute>
                                                        </iaixsl:if>
                                                    </img>
                                                </iaixsl:when>
                                                <iaixsl:otherwise>
                                                    <iaixsl:value-of disable-output-escaping="yes" select="text"/>      
                                                </iaixsl:otherwise>
                                            </iaixsl:choose>
                                        </a>
                                    </iaixsl:when>
                                    <iaixsl:otherwise>
                                        <iaixsl:choose>
                                            <iaixsl:when test="image or image_desktop or image_tablet or image_mobile">
                                                <img src="/gfx/pol/loader.gif?r=1598273396">
                                                    <iaixsl:attribute name="alt"><iaixsl:value-of select="text"/></iaixsl:attribute>
                                                    <iaixsl:attribute name="src"><iaixsl:value-of select="image/@src"/></iaixsl:attribute>
                                                    <iaixsl:if test="image_desktop or image_tablet or image_mobile">
                                                        <iaixsl:attribute name="class">rwd-src</iaixsl:attribute>
                                                    </iaixsl:if>

                                                    <iaixsl:if test="image/@src">
                                                        <iaixsl:attribute name="src"><iaixsl:value-of select="image/@src"/></iaixsl:attribute>
                                                    </iaixsl:if>

                                                    <iaixsl:if test="image_desktop/@src">
                                                        <iaixsl:attribute name="data-src_desktop"><iaixsl:value-of select="image_desktop/@src"/></iaixsl:attribute>
                                                    </iaixsl:if>

                                                    <iaixsl:if test="image_tablet/@src">
                                                        <iaixsl:attribute name="data-src_tablet"><iaixsl:value-of select="image_tablet/@src"/></iaixsl:attribute>
                                                    </iaixsl:if>

                                                    <iaixsl:if test="image_mobile/@src">
                                                        <iaixsl:attribute name="data-src_mobile"><iaixsl:value-of select="image_mobile/@src"/></iaixsl:attribute>
                                                    </iaixsl:if>
                                                </img>
                                            </iaixsl:when>
                                            <iaixsl:otherwise>
                                                <iaixsl:value-of disable-output-escaping="yes" select="text"/>      
                                            </iaixsl:otherwise>
                                        </iaixsl:choose>
                                </iaixsl:otherwise>
                                </iaixsl:choose>
                            </iaixsl:when>
                            <iaixsl:otherwise>
                                <iaixsl:value-of disable-output-escaping="yes" select="html"/>
                            </iaixsl:otherwise>
                        </iaixsl:choose>
                        </div>
                    </iaixsl:for-each>
                </div>
            </iaixsl:if>
        <!--Buttony sekcji 3 (menu_buttons3, 108143.1)-->
            <iaixsl:variable name="hidebuttons3COP"></iaixsl:variable>

            <iaixsl:if test="not($hidebuttons3COP) or ( $hidebuttons3COP and not(( page/@type = 'basketedit') or ( page/@type='login' and page/login/onceorder/@display='y') or ( ((page/@type = 'client-new') and not(page/client-data/@register='true') and not(page/client-data/@edit='true'))) or ( page/@type = 'order1') or ( page/@type = 'order-nonstandardized') or ( page/@type = 'pickup-sites') or ( page/@type = 'order2') or ( page/@type = 'client-save') or ( page/@type = 'prepaid') or ( page/@type = 'order-payment') or ( page/@type = 'order-newpayment')) ) ">
                <iaixsl:if test="count(commercial_button3/link)">
                    <div id="menu_buttons3" >
                        <iaixsl:for-each select="commercial_button3/link">
                            <div class="menu_button_wrapper">
                                <iaixsl:choose>
                                    <iaixsl:when test="not(html)">
                                        <iaixsl:choose>
                                            <iaixsl:when test="@href">
                                                <a target="_self">
                                                    <iaixsl:if test="@target"><iaixsl:attribute name="target"><iaixsl:value-of select="@target"/></iaixsl:attribute></iaixsl:if>
                                                    <iaixsl:attribute name="href"><iaixsl:value-of select="@href"/></iaixsl:attribute>
                                                    <iaixsl:if test="text"><iaixsl:attribute name="title"><iaixsl:value-of select="text"/></iaixsl:attribute></iaixsl:if>
                                                    <iaixsl:choose>
                                                        <iaixsl:when test="image or image_desktop or image_tablet or image_mobile">
                                                            <img src="/gfx/pol/loader.gif?r=1598273396">
                                                                <iaixsl:attribute name="alt"><iaixsl:value-of select="text"/></iaixsl:attribute>
                                                                <iaixsl:attribute name="src"><iaixsl:value-of select="image/@src"/></iaixsl:attribute>
                                                                <iaixsl:if test="image_desktop or image_tablet or image_mobile">
                                                                    <iaixsl:attribute name="class">rwd-src</iaixsl:attribute>
                                                                </iaixsl:if>

                                                                <iaixsl:if test="image/@src">
                                                                    <iaixsl:attribute name="src"><iaixsl:value-of select="image/@src"/></iaixsl:attribute>
                                                                </iaixsl:if>

                                                                <iaixsl:if test="image_desktop/@src">
                                                                    <iaixsl:attribute name="data-src_desktop"><iaixsl:value-of select="image_desktop/@src"/></iaixsl:attribute>
                                                                </iaixsl:if>

                                                                <iaixsl:if test="image_tablet/@src">
                                                                    <iaixsl:attribute name="data-src_tablet"><iaixsl:value-of select="image_tablet/@src"/></iaixsl:attribute>
                                                                </iaixsl:if>

                                                                <iaixsl:if test="image_mobile/@src">
                                                                    <iaixsl:attribute name="data-src_mobile"><iaixsl:value-of select="image_mobile/@src"/></iaixsl:attribute>
                                                                </iaixsl:if>
                                                            </img>
                                                        </iaixsl:when>
                                                        <iaixsl:otherwise>
                                                            <iaixsl:value-of disable-output-escaping="yes" select="text"/>
                                                        </iaixsl:otherwise>
                                                    </iaixsl:choose>
                                                </a>
                                            </iaixsl:when>
                                            <iaixsl:otherwise>

                                                <iaixsl:choose>
                                                    <iaixsl:when test="image or image_desktop or image_tablet or image_mobile">
                                                        <img src="/gfx/pol/loader.gif?r=1598273396">
                                                            <iaixsl:attribute name="alt"><iaixsl:value-of select="text"/></iaixsl:attribute>
                                                            <iaixsl:attribute name="src"><iaixsl:value-of select="image/@src"/></iaixsl:attribute>
                                                            <iaixsl:if test="image_desktop or image_tablet or image_mobile">
                                                                <iaixsl:attribute name="class">rwd-src</iaixsl:attribute>
                                                            </iaixsl:if>

                                                            <iaixsl:if test="image/@src">
                                                                <iaixsl:attribute name="src"><iaixsl:value-of select="image/@src"/></iaixsl:attribute>
                                                            </iaixsl:if>

                                                            <iaixsl:if test="image_desktop/@src">
                                                                <iaixsl:attribute name="data-src_desktop"><iaixsl:value-of select="image_desktop/@src"/></iaixsl:attribute>
                                                            </iaixsl:if>

                                                            <iaixsl:if test="image_tablet/@src">
                                                                <iaixsl:attribute name="data-src_tablet"><iaixsl:value-of select="image_tablet/@src"/></iaixsl:attribute>
                                                            </iaixsl:if>

                                                            <iaixsl:if test="image_mobile/@src">
                                                                <iaixsl:attribute name="data-src_mobile"><iaixsl:value-of select="image_mobile/@src"/></iaixsl:attribute>
                                                            </iaixsl:if>
                                                        </img>
                                                    </iaixsl:when>
                                                    <iaixsl:otherwise>
                                                        <iaixsl:value-of disable-output-escaping="yes" select="text"/>
                                                    </iaixsl:otherwise>
                                                </iaixsl:choose>

                                            </iaixsl:otherwise>
                                        </iaixsl:choose>
                                    </iaixsl:when>
                                    <iaixsl:otherwise>
                                        <iaixsl:value-of disable-output-escaping="yes" select="html"/>
                                    </iaixsl:otherwise>
                                </iaixsl:choose>
                            </div>
                        </iaixsl:for-each>

                    </div>
                </iaixsl:if>
            </iaixsl:if>
        <!--Ustawienia języka oraz walut (menu_settings, 111495.1)-->

            <div id="menu_settings" class="px-0">
                <div class="menu_settings_bar d-md-flex align-items-center container">

<div class="contact_top">
<a class="contact_link_top" href="/contact.php">Kontakt</a>
<iaixsl:if test="/shop/contact/contact_nodes/node[@type='phone']"><a><iaixsl:attribute name="href"><iaixsl:value-of select="/shop/contact/contact_nodes/node[@type='phone']/@link"/></iaixsl:attribute><iaixsl:value-of select="/shop/contact/contact_nodes/node[@type='phone']/@value"/></a></iaixsl:if><iaixsl:if test="/shop/contact/contact_nodes/node[@type='mail']"><span> lub </span><a><iaixsl:attribute name="href"><iaixsl:value-of select="/shop/contact/contact_nodes/node[@type='mail']/@link"/></iaixsl:attribute><iaixsl:value-of select="/shop/contact/contact_nodes/node[@type='mail']/@value"/></a></iaixsl:if>
</div>

                    <iaixsl:if test="(count(/shop/currency/option) > 1) or (count(/shop/language/option) > 1) or (count(/shop/countries/country) > 1)">
                        <div class="open_trigger">
                            <div class="menu_settings_wrapper">
                                <iaixsl:if test="/shop/language/option/@selected or /shop/currency/option/@selected">
                                    <div class="menu_settings_inline">
                                        <div class="menu_settings_header">
                                            Język i waluta: 
                                        </div>
                                        <div class="menu_settings_content">
                                            <span class="menu_settings_flag">
                                                <iaixsl:attribute name="class">menu_settings_flag flag flag_<iaixsl:value-of select="/shop/language/option[@selected='true']/@id"/></iaixsl:attribute>
                                            </span>
                                            <strong class="menu_settings_value">
                                                <span class="menu_settings_language"><iaixsl:value-of select="/shop/language/option[@selected='true']/@name"/></span>
                                                <span><iaixsl:text> | </iaixsl:text></span>
                                                <span class="menu_settings_currency"><iaixsl:value-of select="/shop/currency/option[@selected='true']/@symbol"/></span>
                                            </strong>
                                        </div>
                                    </div>
                                </iaixsl:if>
                                <iaixsl:if test="/shop/countries/country/@selected">
                                    <div class="menu_settings_inline">
                                        <div class="menu_settings_header">
                                            Dostawa do: 
                                        </div>
                                        <div class="menu_settings_content">
                                            <strong class="menu_settings_value">
                                                <iaixsl:value-of select="/shop/countries/country[@selected='true']/@name"/>
                                            </strong>
                                        </div>
                                    </div>
                                </iaixsl:if>
                            </div>
                            

                        </div>

                        <iaixsl:if test="(count(/shop/currency/option) > 1) or (count(/shop/language/option) > 1) or (count(/shop/countries/country) > 1)">
                            <form action="/settings.php" method="post">

                                <iaixsl:if test="/shop/action/settings/@url">
                                    <iaixsl:attribute name="action"><iaixsl:value-of select="/shop/action/settings/@url"/></iaixsl:attribute>
                                </iaixsl:if>

                                <ul class="bg_alter">
                                    
                                    <iaixsl:if test="count(/shop/language/option) > 1">
                                        <li>
                                            <div class="form-group">
                                                <label class="menu_settings_lang_label">Język</label>

                                                <iaixsl:for-each select="/shop/language/option">
                                                    <div class="radio">
                                                        <label>
                                                            <input type="radio" name="lang">
                                                                <iaixsl:if test="@selected='true'"><iaixsl:attribute name="checked">checked</iaixsl:attribute></iaixsl:if>
                                                                <iaixsl:attribute name="value"><iaixsl:value-of select="@id"/></iaixsl:attribute>
                                                            </input>
                                                            <span>
                                                                <iaixsl:attribute name="class">flag flag_<iaixsl:value-of select="@id"/></iaixsl:attribute>
                                                            </span>
                                                            <span><iaixsl:value-of select="@name"/></span>
                                                        </label>
                                                    </div>
                                                </iaixsl:for-each>
                                            </div>
                                        </li>
                                    </iaixsl:if>

                                    <iaixsl:if test="count(/shop/currency/option) > 1 or count(/shop/countries/country) > 1">
                                        <li>
                                            <iaixsl:if test="count(/shop/currency/option) > 1">
                                                <div class="form-group">
                                                    <label for="menu_settings_curr">Waluta</label>

                                                    <div class="select-after">
                                                        <select class="form-control" name="curr" id="menu_settings_curr">
                                                            <iaixsl:for-each select="/shop/currency/option">
                                                                <option>
                                                                    <iaixsl:attribute name="value"><iaixsl:value-of select="@id"/></iaixsl:attribute>
                                                                    <iaixsl:choose>
                                                                        <iaixsl:when test="@selected='true'">
                                                                            <iaixsl:attribute name="selected">selected</iaixsl:attribute>
                                                                            <iaixsl:value-of select="@symbol"/>
                                                                        </iaixsl:when>
                                                                        <iaixsl:otherwise>
                                                                            <iaixsl:value-of select="@symbol"/> (1 <iaixsl:value-of select="/shop/currency/option[@selected='true']/@symbol"/> = <iaixsl:value-of select="@rate"/>  <iaixsl:value-of select="@symbol"/>)
                                                                        </iaixsl:otherwise>
                                                                    </iaixsl:choose>
                                                                </option>
                                                            </iaixsl:for-each>
                                                        </select>
                                                    </div>
                                                </div>
                                            </iaixsl:if>
                                            <iaixsl:if test="count(/shop/countries/country) > 1">
                                                <div class="form-group">
                                                    <label for="menu_settings_country">Dostawa do</label>

                                                    <div class="select-after">
                                                        <select class="form-control" name="country" id="menu_settings_country">
                                                            <iaixsl:for-each select="/shop/countries/country">
                                                                <option>
                                                                    <iaixsl:if test="@selected='true'"><iaixsl:attribute name="selected">selected</iaixsl:attribute></iaixsl:if>
                                                                    <iaixsl:attribute name="value"><iaixsl:value-of select="@id"/></iaixsl:attribute>
                                                                    <iaixsl:value-of select="@name"/>
                                                                </option>
                                                            </iaixsl:for-each>
                                                        </select>
                                                    </div>
                                                </div>
                                            </iaixsl:if>
                                        </li>
                                    </iaixsl:if>
                                    <li class="buttons">
                                        <button class="btn --solid --large" type="submit">
                                            Zastosuj zmiany
                                        </button>
                                    </li>
                                </ul>
                            </form>
                        </iaixsl:if>
                    </iaixsl:if>

                </div>
            </div>
        <!--Górne menu (menu_top, 106526.1)-->

        <div id="logo" class="col-md-2 d-flex align-items-center">
            <iaixsl:if test="mask/top2/link/image/@src and (mask/top2/link/image/@width>1 or mask/top2/link/image/@height > 1)"><iaixsl:attribute name="data-bg"><iaixsl:value-of select="mask/top2/link/image/@src"/></iaixsl:attribute></iaixsl:if>
            <a>
                <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/mask/top/link/@href"/></iaixsl:attribute>
                <iaixsl:attribute name="target"><iaixsl:value-of select="/shop/mask/top/link/@target"/></iaixsl:attribute>
                <iaixsl:if test="/shop/mask/top/link/image/@src">
                    <img>
                        <iaixsl:attribute name="src"><iaixsl:value-of select="/shop/mask/top/link/image/@src"/></iaixsl:attribute>
                        <iaixsl:attribute name="alt"><iaixsl:value-of select="/shop/mask/top/link/description"/></iaixsl:attribute>
                        <iaixsl:attribute name="width"><iaixsl:value-of select="mask/top/link/image/@width"/></iaixsl:attribute>
                        <iaixsl:attribute name="height"><iaixsl:value-of select="mask/top/link/image/@height"/></iaixsl:attribute>
                    </img>
                </iaixsl:if>
            </a>
        </div>
        
        <iaixsl:if test="/shop/mask/@rwd_pc">
            <iaixsl:if test="/shop/mask/@rwd_tablet"></iaixsl:if>
            <iaixsl:if test="/shop/mask/@rwd_smartphone"></iaixsl:if>
        </iaixsl:if>

        <!--Menu - Drzewo 1 (menu_categories, 111470.1)-->
        <iaixsl:variable name="dlmenu_showall">+ Pokaż wszystkie</iaixsl:variable>
        <iaixsl:variable name="gfx_2lvl_show"></iaixsl:variable>
        <iaixsl:variable name="menu_categories_label"></iaixsl:variable>
        <iaixsl:variable name="current_item"><iaixsl:value-of select="/shop/navigation/current/@ni"/></iaixsl:variable>

        <nav id="menu_categories" class="px-0 wide">
            <iaixsl:if test="$menu_categories_label and not($menu_categories_label = '')">
                <h2 class="big_label">
                    <a href="/categories.php">
                        <iaixsl:attribute name="title"></iaixsl:attribute>
                        <iaixsl:value-of select="$menu_categories_label"/>
                    </a>
                </h2>
            </iaixsl:if>
            <button type="button" class="navbar-toggler">
                <i class="icon-reorder"/>
            </button>
            <div class="navbar-collapse" id="menu_navbar">
                <ul class="navbar-nav">
                    <iaixsl:for-each select="navigation/item">
                        <li class="nav-item">
                        <iaixsl:if test="( (@ni = $current_item) or (item/@ni = $current_item)  or (item/item/@ni = $current_item)  or (item/item/item/@ni = $current_item) )">
                            <iaixsl:attribute name="class">nav-item active</iaixsl:attribute>
                        </iaixsl:if>
                            <iaixsl:choose>
                                <iaixsl:when test="@link and @link != '##'">
                                    <iaixsl:text disable-output-escaping="yes">&lt;a  href="</iaixsl:text>
                                    <iaixsl:value-of select="@link"/><iaixsl:text disable-output-escaping="yes">" target="</iaixsl:text><iaixsl:value-of select="@target"/>
                                    <iaixsl:text disable-output-escaping="yes">" title="</iaixsl:text><iaixsl:value-of select="@name"/>
                                </iaixsl:when>
                                <iaixsl:otherwise>
                                    <iaixsl:text disable-output-escaping="yes">&lt;span</iaixsl:text>
                                    <iaixsl:text disable-output-escaping="yes"> title="</iaixsl:text>
                                    <iaixsl:value-of select="@name"/>
                                </iaixsl:otherwise>
                            </iaixsl:choose>
                            <iaixsl:text disable-output-escaping="yes">" class="nav-link</iaixsl:text>
                            <iaixsl:if test="(@ni = /shop/navigation/current/@ni) or (item//@ni = /shop/navigation/current/@ni)">
                                <iaixsl:text disable-output-escaping="yes"> active</iaixsl:text>
                            </iaixsl:if>
                            <iaixsl:if test="@reload and @reload = 'y'">
                                <iaixsl:text disable-output-escaping="yes"> noevent</iaixsl:text>
                            </iaixsl:if>
                            <iaixsl:if test="@gfx">
                                <iaixsl:text disable-output-escaping="yes"> nav-gfx</iaixsl:text>
                            </iaixsl:if>
                            <iaixsl:text disable-output-escaping="yes">" &gt;</iaixsl:text>

                                    <iaixsl:value-of disable-output-escaping="yes" select="@name"/>

                            <iaixsl:choose>
                                <iaixsl:when test="@link and @link != '##'">
                                    <iaixsl:text disable-output-escaping="yes">&lt;/a&gt;</iaixsl:text>
                                </iaixsl:when>
                                <iaixsl:otherwise>
                                    <iaixsl:text disable-output-escaping="yes">&lt;/span&gt;</iaixsl:text>
                                </iaixsl:otherwise>
                            </iaixsl:choose>
                            <iaixsl:if test="item">
                                <ul class="navbar-subnav">
                                    <iaixsl:for-each select="item">
                                        <li class="nav-item">
                                        <iaixsl:if test="( (@ni = $current_item) or (item/@ni = $current_item)  or (item/item/@ni = $current_item)  or (item/item/item/@ni = $current_item) )">
                                            <iaixsl:attribute name="class">nav-item active</iaixsl:attribute>
                                        </iaixsl:if>
                                            <a class="nav-link" href="##">
                                                <iaixsl:if test="@link">
                                                    <iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
                                                </iaixsl:if>

                                                <iaixsl:choose>
                                                    <iaixsl:when test="((@ni = /shop/navigation/current/@ni) or (item//@ni = /shop/navigation/current/@ni)) and ((@gfx or @gfx_active_type) and $gfx_2lvl_show)">
                                                        <iaixsl:attribute name="class">nav-link nav-gfx active</iaixsl:attribute>
                                                    </iaixsl:when>
                                                    <iaixsl:when test="(@ni = /shop/navigation/current/@ni) or (item//@ni = /shop/navigation/current/@ni)">
                                                        <iaixsl:attribute name="class">nav-link active</iaixsl:attribute>
                                                    </iaixsl:when>
                                                    <iaixsl:when test="(@gfx or @gfx_active_type) and $gfx_2lvl_show">
                                                        <iaixsl:attribute name="class">nav-link nav-gfx</iaixsl:attribute>
                                                    </iaixsl:when>
                                                </iaixsl:choose>

                                                <iaixsl:if test="@target">
                                                    <iaixsl:attribute name="target"><iaixsl:value-of select="@target"/></iaixsl:attribute>
                                                </iaixsl:if>
                                                <iaixsl:choose>
                                                    <iaixsl:when test="(@gfx or @gfx_active_type) and $gfx_2lvl_show">
                                                        <img class="gfx_lvl_2">
                                                            <iaixsl:attribute name="alt"><iaixsl:value-of disable-output-escaping="yes" select="@name"/></iaixsl:attribute>
                                                            <iaixsl:attribute name="title"><iaixsl:value-of disable-output-escaping="yes" select="@name"/></iaixsl:attribute>
                                                            <iaixsl:choose>
                                                                    <iaixsl:when test="@gfx_active_type = 'img_rwd'">
                                                                        <iaixsl:attribute name="class">rwd-src gfx_lvl_2</iaixsl:attribute>
                                                                        <iaixsl:if test="@gfx_active_desktop">
                                                                            <iaixsl:attribute name="data-src_desktop"><iaixsl:value-of select="@gfx_active_desktop"/></iaixsl:attribute>
                                                                        </iaixsl:if>
                                                                        <iaixsl:if test="@gfx_active_tablet">
                                                                            <iaixsl:attribute name="data-src_tablet"><iaixsl:value-of select="@gfx_active_tablet"/></iaixsl:attribute>
                                                                        </iaixsl:if>
                                                                        <iaixsl:if test="@gfx_active_mobile">
                                                                            <iaixsl:attribute name="data-src_mobile"><iaixsl:value-of select="@gfx_active_mobile"/></iaixsl:attribute>
                                                                        </iaixsl:if>
                                                                    </iaixsl:when>
                                                                    <iaixsl:otherwise>
                                                                        <iaixsl:choose>
                                                                            <iaixsl:when test="@gfx">
                                                                                <iaixsl:attribute name="src"><iaixsl:value-of select="@gfx"/></iaixsl:attribute>
                                                                            </iaixsl:when>
                                                                            <iaixsl:when test="@gfx_onmouseover">
                                                                                <iaixsl:attribute name="src"><iaixsl:value-of select="@gfx_onmouseover"/></iaixsl:attribute>
                                                                            </iaixsl:when>
                                                                            <iaixsl:otherwise>
                                                                                <iaixsl:attribute name="src"><iaixsl:value-of select="@gfx_active"/></iaixsl:attribute>
                                                                            </iaixsl:otherwise>
                                                                        </iaixsl:choose>
                                                                    </iaixsl:otherwise>
                                                                </iaixsl:choose>
                                                            </img>
                                                        <span class="gfx_lvl_2"><iaixsl:value-of disable-output-escaping="yes" select="@name"/></span>
                                                    </iaixsl:when>
                                                    <iaixsl:otherwise>
                                                        <iaixsl:value-of disable-output-escaping="yes" select="@name"/>
                                                    </iaixsl:otherwise>
                                                </iaixsl:choose>
                                            </a>
                                            <iaixsl:if test="item">
                                                <ul class="navbar-subsubnav">
                                                    <iaixsl:for-each select="item">
                                                        <li class="nav-item">
                                                        <iaixsl:if test="( (@ni = $current_item) or (item/@ni = $current_item)  or (item/item/@ni = $current_item)  or (item/item/item/@ni = $current_item) )">
                                                            <iaixsl:attribute name="class">nav-item active</iaixsl:attribute>
                                                        </iaixsl:if>
                                                            <a class="nav-link" href="##">
                                                                <iaixsl:if test="(@ni = /shop/navigation/current/@ni) or (item//@ni = /shop/navigation/current/@ni)">
                                                                    <iaixsl:attribute name="class">nav-link active</iaixsl:attribute>
                                                                </iaixsl:if>
                                                                <iaixsl:if test="@link">
                                                                    <iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
                                                                </iaixsl:if>
                                                                <iaixsl:if test="@target">
                                                                    <iaixsl:attribute name="target"><iaixsl:value-of select="@target"/></iaixsl:attribute>
                                                                </iaixsl:if>
                                                                <iaixsl:value-of disable-output-escaping="yes" select="@name"/>
                                                            </a>
                                                        </li>
                                                    </iaixsl:for-each>
                                                    <iaixsl:if test="(count(item) > 1) and @link and @display_all = 'y' and $dlmenu_showall">
                                                        <li class="nav-item display-all">
                                                            <a class="nav-link display-all">
                                                                <iaixsl:attribute name="href">
                                                                    <iaixsl:choose>
                                                                        <iaixsl:when test="@display_all_link">
                                                                            <iaixsl:value-of select="@display_all_link"/>
                                                                        </iaixsl:when>
                                                                        <iaixsl:otherwise>
                                                                            <iaixsl:value-of select="@link"/>
                                                                        </iaixsl:otherwise>
                                                                    </iaixsl:choose>
                                                                </iaixsl:attribute>
                                                                <iaixsl:value-of select="$dlmenu_showall"/>
                                                            </a>
                                                        </li>
                                                    </iaixsl:if>
                                                </ul>
                                            </iaixsl:if>
                                        </li>
                                    </iaixsl:for-each>
                                    <iaixsl:if test="(count(item) > 1) and @link and @display_all = 'y' and $dlmenu_showall">
                                        <li class="nav-item display-all">
                                            <a class="nav-link display-all">
                                                <iaixsl:attribute name="href">
                                                    <iaixsl:choose>
                                                        <iaixsl:when test="@display_all_link">
                                                            <iaixsl:value-of select="@display_all_link"/>
                                                        </iaixsl:when>
                                                        <iaixsl:otherwise>
                                                            <iaixsl:value-of select="@link"/>
                                                        </iaixsl:otherwise>
                                                    </iaixsl:choose>
                                                </iaixsl:attribute>
                                                <iaixsl:value-of select="$dlmenu_showall"/>
                                            </a>
                                        </li>
                                    </iaixsl:if>
                                </ul>
                            </iaixsl:if>
                        </li>
                    </iaixsl:for-each>
                </ul>

            </div>
        </nav>
        <!--Szybkie wyszukiwanie (menu_search, 106472.1)-->
	        <form action="/search.php" method="get" id="menu_search" >
	            <iaixsl:if test="/shop/action/search/@url"><iaixsl:attribute name="action"><iaixsl:value-of select="/shop/action/search/@url"/></iaixsl:attribute></iaixsl:if>

	            <label class="d-md-none"><i class="icon-search"/></label>
	            
            	<div>
		            <div class="form-group">
		                <input id="menu_search_text" type="text" name="text">
			                <iaixsl:attribute name="class">catcomplete</iaixsl:attribute>
			                <iaixsl:attribute name="placeholder">Wpisz szukaną frazę</iaixsl:attribute>
		                    
		                    <iaixsl:if test="/shop/page/search_params/text">
		                        <iaixsl:attribute name="placeholder"><iaixsl:value-of select="/shop/page/search_params/text/@value"/></iaixsl:attribute>
		                    </iaixsl:if>
			            </input>
		            </div>
		            <button type="submit" class="d-none">
		                <i class="icon-search2"></i>
		            </button>

		            <a href="/searching.php"><iaixsl:if test="/shop/action/searching/@url"><iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/searching/@url"/></iaixsl:attribute></iaixsl:if><iaixsl:attribute name="title"></iaixsl:attribute><i class="icon-remove d-md-none"></i></a>
	            </div>
	        </form>
        <!--Menu koszyka (menu_basket, 111473.1)-->

<div class="bask_search_top">

<div id="search_icon"><a href="##"><i class="icon-search2"></i></a></div>

<div id="account_icon"><a href="/login.php"><i class="icon-account"></i></a></div>

            <div id="menu_basket" >
                <a href="/basketedit.php?mode=1">
                    <iaixsl:if test="/shop/action/basket/@url">
                        <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/basket/@url"/>?mode=1</iaixsl:attribute>
                    </iaixsl:if>

                    <iaixsl:choose>
                        <iaixsl:when test="basket/@count > 0">
                                    <span class="basket_count">(<iaixsl:value-of select="basket/@count"/>)</span>
                        </iaixsl:when>
                        <iaixsl:otherwise>
                                    <span class="basket_count">(0)</span>
                        </iaixsl:otherwise>
                    </iaixsl:choose>
                    <strong><iaixsl:value-of disable-output-escaping="yes" select="basket/@cost_formatted"/>
                        <iaixsl:if test="@points_used > 0">
                            <small>
                                 + <iaixsl:value-of disable-output-escaping="yes" select="basket/@points_used"/>
                                 PKT
                            </small>
                        </iaixsl:if>
                    </strong>

                    <iaixsl:if test="basket/@count > 0">
                    <span class="badge badge-info"><iaixsl:value-of disable-output-escaping="yes" select="basket/@count"/></span>
                    </iaixsl:if> 
                </a>

                <iaixsl:if test="/shop/action/sites/@session_share_disabled">
                    <script>
                        app_shop.vars.session_share = "<iaixsl:value-of select="/shop/action/sites/@session_share"/>";
                        <iaixsl:if test="/shop/action/sites/site">
                        app_shop.vars.sites = [<iaixsl:for-each select="/shop/action/sites/site"><iaixsl:if test="not(position()=1)">,</iaixsl:if>"<iaixsl:value-of select="@url"/>"</iaixsl:for-each>];
                        </iaixsl:if>
                    </script>
                </iaixsl:if>

                <iaixsl:if test="/shop/page/@cache_html = 'true' ">
                    <script>
                        app_shop.vars.cache_html = true;
                    </script>
                </iaixsl:if>


                <iaixsl:if test="/shop/basket/product">
                  <iaixsl:if test="/shop/page/@cache_basketwishes"> </iaixsl:if>
                  <iaixsl:if test="/shop/page/@cache_basket"> </iaixsl:if>
                </iaixsl:if>

            </div>    

</div>
  
        
                    </header>
                </iaixsl:if>
                <div id="layout">
                    <iaixsl:attribute name="class">row clearfix</iaixsl:attribute>
                    <iaixsl:if test="not(action/set_render/item) or (action/set_render/item/@name = 'aside')">
                        <aside class="span3">
                            <iaixsl:choose>
                                <iaixsl:when test="page/@type = 'projector'">
                                     <iaixsl:attribute name="class">col-3</iaixsl:attribute>
                                </iaixsl:when>
                                <iaixsl:when test="page/@type = 'search'">
                                     <iaixsl:attribute name="class">col-3</iaixsl:attribute>
                                </iaixsl:when>
                                <iaixsl:when test="page/@type = 'main'">
                                     <iaixsl:attribute name="class">col-3</iaixsl:attribute>
                                </iaixsl:when>
                                <iaixsl:when test="page/@type = 'blog-item'">
                                      <iaixsl:attribute name="class">col-3</iaixsl:attribute>
                                </iaixsl:when>
																<iaixsl:when test="page/@type = 'blog-list'">
                                      <iaixsl:attribute name="class">col-3</iaixsl:attribute>
                                </iaixsl:when>
                                <iaixsl:otherwise>
                                      <iaixsl:attribute name="class">col-3</iaixsl:attribute>
                                </iaixsl:otherwise>
                            </iaixsl:choose>
                            <!--Dodatkowe linki (strefa 1) (menu_additional1, 106528.1)-->
            <iaixsl:variable name="SET_filters">#Filters</iaixsl:variable>
            <div class="setMobileGrid" data-item="#menu_navbar"/>
            <div class="setMobileGrid" data-item="#menu_navbar3">
				<iaixsl:if test="navigation/item">
					<iaixsl:attribute name="data-ismenu1">true</iaixsl:attribute>
				</iaixsl:if>
			</div>
            <div class="setMobileGrid" data-item="#menu_blog"/>
            <div class="login_menu_block d-lg-none" id="login_menu_block">
                <iaixsl:choose>
                    <iaixsl:when test="basket/@login">
                        <a class="your_account_link" href="/login.php">
                            <iaixsl:attribute name="title">
                                
                                
                            </iaixsl:attribute>
                            <i class="icon-cog"></i>  <span>Ustawienia konta</span>
                            
                        </a>
                        <a class="order_status_link" href="/order-open.php">
                            <iaixsl:attribute name="title">
                                
                                
                            </iaixsl:attribute>
                            <i class="icon-globe"></i>  <span>Sprawdź status zamówienia</span>
                            
                        </a>
                        <iaixsl:if test="(/shop/basket/@client_id_upc != '') ">
                            <a class="client_card_link" href="##">
                                <iaixsl:attribute name="href">
                                    <iaixsl:value-of disable-output-escaping="yes" select="action/login/@url"/>
                                </iaixsl:attribute>
                                 <i class="icon-barcode"></i>  <span>Karta stałego klienta</span>
                            </a>
                        </iaixsl:if>
                        <a class="rabates_link" href="/client-rebate.php">
                            <iaixsl:attribute name="title">
                                
                                
                            </iaixsl:attribute>
                            <span class='font_icon'>%</span> <span>Rabaty</span>
                            
                        </a>
                        <a class="logout_link" href="/login.php?operation=logout">
                            <iaixsl:attribute name="title">
                                
                                
                            </iaixsl:attribute>
                            <i class="icon-off" style='color: #CC0000;'></i>  <span>Wyloguj się</span>
                            
                        </a>
                        <iaixsl:if test="action/personalized_recommendations/@url">
                            <a class="recommendation_link">
                                <iaixsl:attribute name="href">
                                    <iaixsl:value-of disable-output-escaping="yes" select="action/personalized_recommendations/@url"/>
                                </iaixsl:attribute>

                                <i class="icon-thumbs-up" style='color: #0099D0;'></i> <span>Rekomendowane dla Ciebie</span>
                                
                            </a>
                        </iaixsl:if>
                    </iaixsl:when>
                    <iaixsl:otherwise>
                        <a class="sign_in_link" href="/login.php">
                            <iaixsl:attribute name="title">
                                
                                
                            </iaixsl:attribute>
                            <i class="icon-user"></i>  <span>Zaloguj się</span>
                            
                        </a>
                        <a class="registration_link" href="/client-new.php?register">
                            <iaixsl:attribute name="title">
                                
                                
                            </iaixsl:attribute>
                            <i class="icon-lock"></i>  Zarejestruj się
                            
                        </a>
                        <a class="order_status_link" href="/order-open.php">
                            <iaixsl:attribute name="title">
                                
                                
                            </iaixsl:attribute>
                            <i class="icon-globe"></i>  <span>Sprawdź status zamówienia</span>
                            
                        </a>
                    </iaixsl:otherwise>
                </iaixsl:choose>
            </div>
            <div class="setMobileGrid" data-item="#menu_contact"/>
            <div class="setMobileGrid" data-item="#menu_settings"/>
            <iaixsl:if test="$SET_filters and not($SET_filters = '')">
                <div class="setMobileGrid">
                  <iaixsl:attribute name="data-item"><iaixsl:value-of select="$SET_filters"/></iaixsl:attribute>
                </div>
            </iaixsl:if>
        
                        </aside>
                    </iaixsl:if>
                    

                    
                    <iaixsl:if test="not(action/set_render/item) or (action/set_render/item/@name = 'content')">
                        <div id="content" class="span9">
                            <iaixsl:choose>
                                <iaixsl:when test="page/@type = 'projector'">
                                     <iaixsl:attribute name="class">col-12</iaixsl:attribute>
                                </iaixsl:when>
                                <iaixsl:when test="page/@type = 'search'">
                                     <iaixsl:attribute name="class">col-12</iaixsl:attribute>
                                </iaixsl:when>
                                <iaixsl:when test="page/@type = 'main'">
                                     <iaixsl:attribute name="class">col-12</iaixsl:attribute>
                                </iaixsl:when>
                                <iaixsl:when test="page/@type = 'navigation'">
                                     <iaixsl:attribute name="class">col-12</iaixsl:attribute>
                                </iaixsl:when>
                                <iaixsl:when test="page/@type = 'blog-list'">
                                     <iaixsl:attribute name="class">col-md-9 col-12</iaixsl:attribute>
                                </iaixsl:when>
                                <iaixsl:when test="page/@type = 'blog-item'">
                                    <iaixsl:attribute name="class">col-md-9 col-12</iaixsl:attribute>
                                </iaixsl:when>
                                <iaixsl:otherwise>
                                      <iaixsl:attribute name="class">col-12</iaixsl:attribute>
                                </iaixsl:otherwise>
                            </iaixsl:choose>

                            <!--Lokalizator (projector_stepper, 106590.1)-->
        <iaixsl:variable name="searchResults_title"></iaixsl:variable>
        <iaixsl:variable name="breadcrumbs_label"></iaixsl:variable>
        <div class="breadcrumbs col-md-12">
            <div class="back_button">
                 <iaixsl:attribute name="class">back_button</iaixsl:attribute>
                <button id="back_button"><i class="icon-angle-left"></i> Wstecz</button>
            </div>
            <div class="list_wrapper">
                <ol>
                    <iaixsl:if test="$breadcrumbs_label">
                        <li>
                            <span><iaixsl:value-of select="$breadcrumbs_label"/></span>
                        </li>
                    </iaixsl:if>
                    <li class="bc-main">
                        <span><a href="/">Strona główna</a></span>
                    </li>
                    <iaixsl:choose>
                        <iaixsl:when test="page/@type = 'main'">
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'wishesedit'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Lista zakupowa</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'basketedit'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Koszyk</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'product-stocks'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Dostępność produktu w sklepach</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'blog-list'">
                            <iaixsl:choose>
                                <iaixsl:when test="page/navigation/bycategories/item[@current='active']">
                                    <li>
                                        <iaixsl:attribute name="class">bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                        <a href="/blog-list.php"> 
                                            <iaixsl:if test="/shop/action/blogList/@url">
                                                <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/blogList/@url"/></iaixsl:attribute>
                                            </iaixsl:if>
                                            Blog
                                        </a>
                                    </li>
                                    <li>
                                        <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                        <span><iaixsl:value-of select="page/navigation/bycategories/item[@current='active']/@value"/></span>
                                    </li>
                                </iaixsl:when>
                                <iaixsl:otherwise>
                                    <li>
                                        <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                        <span>Blog</span>
                                    </li>
                                </iaixsl:otherwise>
                            </iaixsl:choose>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'blog-item'">
                            <li>
                                <iaixsl:attribute name="class">bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <a href="/blog-list.php">
                                    <iaixsl:if test="/shop/action/blogList/@url">
                                        <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/blogList/@url"/></iaixsl:attribute>
                                    </iaixsl:if>
                                    Blog
                                </a>
                            </li>
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span><iaixsl:value-of select="page/blogitem/title/text()"/></span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'opinions-photos'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Opinie</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'opinions-shop'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Opinie o sklepie</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'categories-list'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Lista kategorii</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'order-payment'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Płatności</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'order-newpayment'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Płatności</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'order-wrappers'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Wybierz opakowanie</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'news'">
                            <iaixsl:choose>
                                <iaixsl:when test="/shop/page/news/title">
                                    <li>
                                        <iaixsl:attribute name="class">bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                        <a>
                                            <iaixsl:attribute name="href">/news.php</iaixsl:attribute>
                                            Aktualności
                                        </a>
                                    </li>
                                    <li>
                                        <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                        <span><iaixsl:value-of disable-output-escaping="yes" select="/shop/page/news/title"/></span>
                                    </li>
                                </iaixsl:when>
                                <iaixsl:otherwise>
                                    <li>
                                        <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                        <span>Aktualności</span>
                                    </li>
                                </iaixsl:otherwise>
                            </iaixsl:choose>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'client-rebates'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Twoje Rabaty</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'sitemap'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Mapa strony</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'client-save'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Logowanie</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="((page/@type = 'client-new') and not(page/client-data/@register='true') and not(page/client-data/@edit='true'))">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Rejestracja</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="((page/@type = 'client-new') and (page/client-data/@register='true'))">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Rejestracja</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="((page/@type = 'client-new') and (page/client-data/@edit='true'))">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Edycja danych</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'order-nonstandardized'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Zamówienie niestandardowe</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'pickup-sites'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Wybierz punkt odbioru</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'contact'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Kontakt</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'links'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Linki</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'login'">
                            <iaixsl:if test="page/login/response/@type = 'give login'">
                                <li>
                                    <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                    <span>Przypomnij hasło</span>
                                </li>
                            </iaixsl:if>
                            <iaixsl:if test="not(page/login/response/@type = 'give login')">
                                <iaixsl:choose>
                                    <iaixsl:when test="/shop/basket/@login">
                                        <li>
                                            <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                            <span>Twoje Konto</span>
                                        </li>
                                    </iaixsl:when>
                                    <iaixsl:when test="page/login/response/@type = 'no login'">
                                        <li>
                                            <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                            <span>Logowanie</span>
                                        </li>
                                    </iaixsl:when>
                                </iaixsl:choose>
                            </iaixsl:if>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'rma-add'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Dodaj reklamację</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'rma_products'">
                            <iaixsl:choose>
                                <iaixsl:when test="page/@display = 'confirmation'">
                                    <li>
                                        <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                        <span></span>
                                    </li>
                                </iaixsl:when>
                                <iaixsl:when test="page/@display = 'details'">
                                    <li>
                                        <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                        <span></span>
                                    </li>
                                </iaixsl:when>
                                <iaixsl:when test="page/@display = 'add'">
                                    <li>
                                        <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                        <span></span>
                                    </li>
                                </iaixsl:when>
                                <iaixsl:when test="page/@display = 'stock'">
                                    <li>
                                        <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                        <span></span>
                                    </li>
                                </iaixsl:when>
                            </iaixsl:choose>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'rma-list'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Lista reklamacji</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'stock'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Punkt odbioru</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'order1'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Dostawa i płatności</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'order2'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Potwierdzenie danych</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'prepaid'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Podsumowanie zamówienia</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'producers-list'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Producenci</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'searching'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Szukaj</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'text'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span><iaixsl:value-of select="page/text/@name"/></span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'return'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Uwaga</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'client-orders'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-login</iaixsl:attribute>
                                <a><iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/login/@url"/></iaixsl:attribute>Twoje Konto</a>  
                            </li>                            
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Twoje zamówienia</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'order-open'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Status zamówienia</span>
                            </li>
                        </iaixsl:when>
                        

                        <iaixsl:when test="page/@type = 'product-compare'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Porównywarka</span>
                            </li>
                        </iaixsl:when>

                        <iaixsl:when test="page/@type = 'products-bought'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Lista zakupionych</span>
                            </li>
                        </iaixsl:when>

                        <iaixsl:when test="page/@type = 'return_products'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Zwrot zamówienia</span>
                            </li>
                        </iaixsl:when>

                        <iaixsl:when test="page/@type = 'client-cards'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Karty stałego klienta</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'navigation' or page/@type = 'search'">
                            <iaixsl:choose>
                                <iaixsl:when test="bc/item">
                                    <iaixsl:for-each select="bc/item">
                                        <li>
                                            <iaixsl:attribute name="class">bc-item-<iaixsl:value-of select="position()"/></iaixsl:attribute>
                                            <iaixsl:if test="position() = last()">
                                                <iaixsl:attribute name="class">bc-active bc-item-<iaixsl:value-of select="position()"/></iaixsl:attribute>
                                            </iaixsl:if>
											<iaixsl:variable name="current_ni"><iaixsl:value-of select="@ni"/></iaixsl:variable>
                                            <iaixsl:choose>
                                                <iaixsl:when test="not(position() = last()) and (/shop/navigation/item[@ni = $current_ni]/@link or /shop/navigation/item/item[@ni = $current_ni]/@link or /shop/navigation/item/item/item[@ni = $current_ni]/@link)">
                                                    <a>
                                                        <iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
                                                        <iaixsl:value-of select="@title"/>
                                                    </a>
                                                </iaixsl:when>
                                                <iaixsl:otherwise>
                                                    <span>
                                                        <iaixsl:value-of select="@title"/>
                                                    </span>
                                                </iaixsl:otherwise>
                                            </iaixsl:choose>
                                        </li>
                                    </iaixsl:for-each>
                                </iaixsl:when>
                                <iaixsl:otherwise>
                                    <iaixsl:if test="$searchResults_title">
                                        <li>
                                            <span>
                                                <iaixsl:value-of select="$searchResults_title"/>
                                                <iaixsl:if test="page/search_params/text/@value and not(page/search_params/text/@value='')">
                                                    <iaixsl:value-of select="page/search_params/text/@value"/>
                                                </iaixsl:if>
                                            </span>
                                        </li>
                                    </iaixsl:if>
                                </iaixsl:otherwise>
                            </iaixsl:choose>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'projector'">
                            <iaixsl:for-each select="bc/item">
                                <li>
                                    <iaixsl:attribute name="class">category bc-item-<iaixsl:value-of select="position()"/></iaixsl:attribute>
                                    <iaixsl:if test="position() = last()">
                                        <iaixsl:attribute name="class">category bc-active bc-item-<iaixsl:value-of select="position()"/></iaixsl:attribute>
                                    </iaixsl:if>
									<iaixsl:variable name="current_ni"><iaixsl:value-of select="@ni"/></iaixsl:variable>
									<iaixsl:choose>
										<iaixsl:when test="/shop/navigation/item[@ni = $current_ni]/@link or /shop/navigation/item/item[@ni = $current_ni]/@link or /shop/navigation/item/item/item[@ni = $current_ni]/@link or /shop/navigation/item/item/item/item[@ni = $current_ni]/@link">
											<a>
                                        		<iaixsl:attribute name="class">category</iaixsl:attribute>
												<iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
												<iaixsl:value-of select="@title"/>
											</a>
										</iaixsl:when>
										<iaixsl:otherwise>
											<span>
                                        		<iaixsl:attribute name="class">category</iaixsl:attribute>
												<iaixsl:value-of select="@title"/>
											</span>
										</iaixsl:otherwise>
									</iaixsl:choose>
                                </li>
                            </iaixsl:for-each>
                            <li class="bc-active bc-product-name">
                                <span><iaixsl:value-of select="page/projector/product/name"/></span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'place-order'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Jendokrokowy proces zakupowy</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'rma-open'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Reklamacja bez logowania</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'returns-open'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Zwrot bez logowania</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'opinions-add'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Dodawanie opinii</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'noproduct'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Brak produktu</span>
                            </li>
                        </iaixsl:when>

                        
                        <iaixsl:otherwise>
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span><iaixsl:value-of select="page/@type"/></span>
                            </li>
                        </iaixsl:otherwise>
                    </iaixsl:choose>
                </ol>
                
            </div></div>
        <!--Postęp składania zamówienia (*mod) (menu_order_progress, 111069.1)-->
        
        <iaixsl:variable name="wholesalerPrice_order_progress">true</iaixsl:variable>
        <iaixsl:variable name="cop_global_label"></iaixsl:variable>

        <iaixsl:if test="not(/shop/page/client-data/@registerByExternalService = 'true')">
            <iaixsl:choose>
                
                <iaixsl:when test="page/@type = 'basketedit'">
                    <iaixsl:if test="$cop_global_label">
                        <span class="big_label cop_global_label">
                            <iaixsl:value-of select="$cop_global_label"/>
                        </span>
                    </iaixsl:if>

                    <section id="Progress" class="progress mb-3 py-1 py-md-0">
                        
                        <div class="progress__item --first --active --shopping-cart">
                            <div class="progress__icons">
                                <div class="progress__icon --mobile d-md-none">
                                    <span class="progress__step">
                                        <strong>1</strong>
                                        <span>/4</span>
                                    </span>
                                    <svg class="progress__svg">
                                        <circle class="progress__circle_back"/>
                                        <circle class="progress__circle"/>
                                    </svg>
                                </div>
                                <div class="progress__icon --desktop d-none d-md-flex">
                                    <span class="progress__fontello"/>
                                </div>
                            </div>
                            <div class="progress__text">
                                <strong class="progress__name">Koszyk</strong>
                                <span class="progress__description">Wartość koszyka: <iaixsl:choose><iaixsl:when test="(/shop/basket/@wholesaler = 'true') and not($wholesalerPrice_order_progress)"><iaixsl:value-of select="basket/@cost_net_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="basket/@cost_formatted"/></iaixsl:otherwise></iaixsl:choose></span>
                            </div>
                        </div>

                        <iaixsl:if test="not(basket/@login)">
                            
                            <div class="progress__item --second --file-text">
                                <div class="progress__icons">
                                    <div class="progress__icon --mobile d-md-none">
                                        <span class="progress__step">
                                            <strong>2</strong>
                                            <span>/4</span>
                                        </span>
                                        <svg class="progress__svg">
                                            <circle class="progress__circle_back"/>
                                            <circle class="progress__circle"/>
                                        </svg>
                                    </div>
                                    <div class="progress__icon --desktop d-none d-md-flex">
                                        <span class="progress__fontello"/>
                                    </div>
                                </div>
                                <div class="progress__text">
                                    <iaixsl:choose>
                                        <iaixsl:when test="navigation/@order_express_mode='true'">
                                            <strong class="progress__name">Twoje dane</strong>
                                            <span class="progress__description">Podaj dane do wysyłki</span>
                                        </iaixsl:when>
                                        <iaixsl:otherwise>
                                            <strong class="progress__name">Twoje dane</strong>
                                            <span class="progress__description">Zaloguj się lub podaj dane</span>
                                        </iaixsl:otherwise>
                                    </iaixsl:choose>
                                </div>
                            </div>
                            
                            <div class="progress__item --third --truck">
                                <div class="progress__icons">
                                    <div class="progress__icon --mobile d-md-none">
                                        <span class="progress__step">
                                            <strong>3</strong>
                                            <span>/4</span>
                                        </span>
                                        <svg class="progress__svg">
                                            <circle class="progress__circle_back"/>
                                            <circle class="progress__circle"/>
                                        </svg>
                                    </div>
                                    <div class="progress__icon --desktop d-none d-md-flex">
                                        <span class="progress__fontello"/>
                                    </div>
                                </div>
                                <div class="progress__text">
                                    <strong class="progress__name">Dostawa i płatności</strong>
                                    <span class="progress__description">Wybierz sposób dostawy i płatności</span>
                                </div>
                            </div>
                            
                            <div class="progress__item --fourth --comment">
                                <div class="progress__icons">
                                    <div class="progress__icon --mobile d-md-none">
                                        <span class="progress__step">
                                            <strong>4</strong>
                                            <span>/4</span>
                                        </span>
                                        <svg class="progress__svg">
                                            <circle class="progress__circle_back"/>
                                            <circle class="progress__circle"/>
                                        </svg>
                                    </div>
                                    <div class="progress__icon --desktop d-none d-md-flex">
                                        <span class="progress__fontello"/>
                                    </div>
                                </div>
                                <div class="progress__text">
                                    <strong class="progress__name">Weryfikacja danych</strong>
                                    <span class="progress__description">Sprawdź poprawność zamówienia przed jego złożeniem</span>
                                </div>
                            </div>
                        </iaixsl:if>
                        <iaixsl:if test="basket/@login">
                            
                            <div class="progress__item --second --truck">
                                <div class="progress__icons">
                                    <div class="progress__icon --mobile d-md-none">
                                        <span class="progress__step">
                                            <strong>2</strong>
                                            <span>/4</span>
                                        </span>
                                        <svg class="progress__svg">
                                            <circle class="progress__circle_back"/>
                                            <circle class="progress__circle"/>
                                        </svg>
                                    </div>
                                    <div class="progress__icon --desktop d-none d-md-flex">
                                        <span class="progress__fontello"/>
                                    </div>
                                </div>
                                <div class="progress__text">
                                    <strong class="progress__name">Dostawa i płatności</strong>
                                    <span class="progress__description">Wybierz sposób dostawy i płatności</span>
                                </div>
                            </div>
                            
                            <div class="progress__item --third --comment">
                                <div class="progress__icons">
                                    <div class="progress__icon --mobile d-md-none">
                                        <span class="progress__step">
                                            <strong>3</strong>
                                            <span>/4</span>
                                        </span>
                                        <svg class="progress__svg">
                                            <circle class="progress__circle_back"/>
                                            <circle class="progress__circle"/>
                                        </svg>
                                    </div>
                                    <div class="progress__icon --desktop d-none d-md-flex">
                                        <span class="progress__fontello"/>
                                    </div>
                                </div>
                                <div class="progress__text">
                                    <strong class="progress__name">Weryfikacja danych</strong>
                                    <span class="progress__description">Sprawdź poprawność zamówienia przed jego złożeniem</span>
                                </div>
                            </div>
                            
                            <div class="progress__item --fourth --ok">
                                <div class="progress__icons">
                                    <div class="progress__icon --mobile d-md-none">
                                        <span class="progress__step">
                                            <strong>4</strong>
                                            <span>/4</span>
                                        </span>
                                        <svg class="progress__svg">
                                            <circle class="progress__circle_back"/>
                                            <circle class="progress__circle"/>
                                        </svg>
                                    </div>
                                    <div class="progress__icon --desktop d-none d-md-flex">
                                        <span class="progress__fontello"/>
                                    </div>
                                </div>
                                <div class="progress__text">
                                    <strong class="progress__name">Złożenie zamówienia</strong>
                                    <span class="progress__description">Przyjęcie do realizacji</span>
                                </div>
                            </div>
                        </iaixsl:if>
                    </section>
                </iaixsl:when>
            </iaixsl:choose>
            <iaixsl:choose>
                
                <iaixsl:when test="page/@type='login' and page/login/onceorder/@display='y'">
                    <iaixsl:if test="$cop_global_label">
                        <span class="big_label cop_global_label">
                            <iaixsl:value-of select="$cop_global_label"/>
                        </span>
                    </iaixsl:if>

                    <section id="Progress" class="progress mb-3 py-1 py-md-0">
                        
                        <div class="progress__item --first --shopping-cart">
                            <div class="progress__icons">
                                <div class="progress__icon --mobile d-md-none">
                                    <span class="progress__step">
                                        <strong>1</strong>
                                        <span>/4</span>
                                    </span>
                                    <svg class="progress__svg">
                                        <circle class="progress__circle_back"/>
                                        <circle class="progress__circle"/>
                                    </svg>
                                </div>
                                <div class="progress__icon --desktop d-none d-md-flex">
                                    <span class="progress__fontello"/>
                                </div>
                            </div>
                            <div class="progress__text">
                                <strong class="progress__name">Koszyk</strong>
                                <span class="progress__description">Wartość koszyka: <iaixsl:choose><iaixsl:when test="(/shop/basket/@wholesaler = 'true') and not($wholesalerPrice_order_progress)"><iaixsl:value-of select="basket/@cost_net_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="basket/@cost_formatted"/></iaixsl:otherwise></iaixsl:choose></span>
                            </div>
                        </div>
                        
                        <div class="progress__item --second --active --file-text">
                            <div class="progress__icons">
                                <div class="progress__icon --mobile d-md-none">
                                    <span class="progress__step">
                                        <strong>2</strong>
                                        <span>/4</span>
                                    </span>
                                    <svg class="progress__svg">
                                        <circle class="progress__circle_back"/>
                                        <circle class="progress__circle"/>
                                    </svg>
                                </div>
                                <div class="progress__icon --desktop d-none d-md-flex">
                                    <span class="progress__fontello"/>
                                </div>
                            </div>
                            <div class="progress__text">
                                <strong class="progress__name">Twoje dane</strong>
                                <span class="progress__description">Zaloguj się lub podaj dane</span>
                            </div>
                        </div>
                        
                        <div class="progress__item --third --truck">
                            <div class="progress__icons">
                                <div class="progress__icon --mobile d-md-none">
                                    <span class="progress__step">
                                        <strong>3</strong>
                                        <span>/4</span>
                                    </span>
                                    <svg class="progress__svg">
                                        <circle class="progress__circle_back"/>
                                        <circle class="progress__circle"/>
                                    </svg>
                                </div>
                                <div class="progress__icon --desktop d-none d-md-flex">
                                    <span class="progress__fontello"/>
                                </div>
                            </div>
                            <div class="progress__text">
                                <strong class="progress__name">Dostawa i płatności</strong>
                                <span class="progress__description">Wybierz sposób dostawy i płatności</span>
                            </div>
                        </div>
                        
                        <div class="progress__item --fourth --comment">
                            <div class="progress__icons">
                                <div class="progress__icon --mobile d-md-none">
                                    <span class="progress__step">
                                        <strong>4</strong>
                                        <span>/4</span>
                                    </span>
                                    <svg class="progress__svg">
                                        <circle class="progress__circle_back"/>
                                        <circle class="progress__circle"/>
                                    </svg>
                                </div>
                                <div class="progress__icon --desktop d-none d-md-flex">
                                    <span class="progress__fontello"/>
                                </div>
                            </div>
                            <div class="progress__text">
                                <strong class="progress__name">Weryfikacja danych</strong>
                                <span class="progress__description">Sprawdź poprawność zamówienia przed jego złożeniem</span>
                            </div>
                        </div>
                    </section>
                </iaixsl:when>
            </iaixsl:choose>
            <iaixsl:choose>
                
                <iaixsl:when test="((page/@type = 'client-new') and not(page/client-data/@edit = 'true') and (page/client-data/@afterlogin = 'order'))">
                    <iaixsl:if test="$cop_global_label">
                        <span class="big_label cop_global_label">
                            <iaixsl:value-of select="$cop_global_label"/>
                        </span>
                    </iaixsl:if>

                    <section id="Progress" class="progress mb-3 py-1 py-md-0">
                        
                        <div class="progress__item --first --shopping-cart">
                            <div class="progress__icons">
                                <div class="progress__icon --mobile d-md-none">
                                    <span class="progress__step">
                                        <strong>1</strong>
                                        <span>/4</span>
                                    </span>
                                    <svg class="progress__svg">
                                        <circle class="progress__circle_back"/>
                                        <circle class="progress__circle"/>
                                    </svg>
                                </div>
                                <div class="progress__icon --desktop d-none d-md-flex">
                                    <span class="progress__fontello"/>
                                </div>
                            </div>
                            <div class="progress__text">
                                <strong class="progress__name">Koszyk</strong>
                                <span class="progress__description">Wartość koszyka: <iaixsl:choose><iaixsl:when test="(/shop/basket/@wholesaler = 'true') and not($wholesalerPrice_order_progress)"><iaixsl:value-of select="basket/@cost_net_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="basket/@cost_formatted"/></iaixsl:otherwise></iaixsl:choose></span>
                            </div>
                        </div>
                        
                        <div class="progress__item --second --active --file-text">
                            <div class="progress__icons">
                                <div class="progress__icon --mobile d-md-none">
                                    <span class="progress__step">
                                        <strong>2</strong>
                                        <span>/4</span>
                                    </span>
                                    <svg class="progress__svg">
                                        <circle class="progress__circle_back"/>
                                        <circle class="progress__circle"/>
                                    </svg>
                                </div>
                                <div class="progress__icon --desktop d-none d-md-flex">
                                    <span class="progress__fontello"/>
                                </div>
                            </div>
                            <div class="progress__text">
                                <strong class="progress__name">Twoje dane</strong>
                                <span class="progress__description">Podaj dane do wysyłki</span>
                            </div>
                        </div>
                        
                        <div class="progress__item --third --truck">
                            <div class="progress__icons">
                                <div class="progress__icon --mobile d-md-none">
                                    <span class="progress__step">
                                        <strong>3</strong>
                                        <span>/4</span>
                                    </span>
                                    <svg class="progress__svg">
                                        <circle class="progress__circle_back"/>
                                        <circle class="progress__circle"/>
                                    </svg>
                                </div>
                                <div class="progress__icon --desktop d-none d-md-flex">
                                    <span class="progress__fontello"/>
                                </div>
                            </div>
                            <div class="progress__text">
                                <strong class="progress__name">Dostawa i płatności</strong>
                                <span class="progress__description">Wybierz sposób dostawy i płatności</span>
                            </div>
                        </div>
                        
                        <div class="progress__item --fourth --comment">
                            <div class="progress__icons">
                                <div class="progress__icon --mobile d-md-none">
                                    <span class="progress__step">
                                        <strong>4</strong>
                                        <span>/4</span>
                                    </span>
                                    <svg class="progress__svg">
                                        <circle class="progress__circle_back"/>
                                        <circle class="progress__circle"/>
                                    </svg>
                                </div>
                                <div class="progress__icon --desktop d-none d-md-flex">
                                    <span class="progress__fontello"/>
                                </div>
                            </div>
                            <div class="progress__text">
                                <strong class="progress__name">Weryfikacja danych</strong>
                                <span class="progress__description">Sprawdź poprawność zamówienia przed jego złożeniem</span>
                            </div>
                        </div>
                    </section>
                </iaixsl:when>
            </iaixsl:choose>
            <iaixsl:choose>
                
                <iaixsl:when test="page/@type = 'order1'">
                    <iaixsl:if test="$cop_global_label">
                        <span class="big_label cop_global_label">
                            <iaixsl:value-of select="$cop_global_label"/>
                        </span>
                    </iaixsl:if>

                    <section id="Progress" class="progress mb-3 py-1 py-md-0">
                        
                        <div class="progress__item --first --shopping-cart">
                            <div class="progress__icons">
                                <div class="progress__icon --mobile d-md-none">
                                    <span class="progress__step">
                                        <strong>1</strong>
                                        <span>/4</span>
                                    </span>
                                    <svg class="progress__svg">
                                        <circle class="progress__circle_back"/>
                                        <circle class="progress__circle"/>
                                    </svg>
                                </div>
                                <div class="progress__icon --desktop d-none d-md-flex">
                                    <span class="progress__fontello"/>
                                </div>
                            </div>
                            <div class="progress__text">
                                <strong class="progress__name">Koszyk</strong>
                                <span class="progress__description">Wartość koszyka: <iaixsl:choose><iaixsl:when test="(/shop/basket/@wholesaler = 'true') and not($wholesalerPrice_order_progress)"><iaixsl:value-of select="basket/@cost_net_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="basket/@cost_formatted"/></iaixsl:otherwise></iaixsl:choose></span>
                            </div>
                        </div>
                        
                        <div class="progress__item --second --active --truck">
                            <div class="progress__icons">
                                <div class="progress__icon --mobile d-md-none">
                                    <span class="progress__step">
                                        <strong>2</strong>
                                        <span>/4</span>
                                    </span>
                                    <svg class="progress__svg">
                                        <circle class="progress__circle_back"/>
                                        <circle class="progress__circle"/>
                                    </svg>
                                </div>
                                <div class="progress__icon --desktop d-none d-md-flex">
                                    <span class="progress__fontello"/>
                                </div>
                            </div>
                            <div class="progress__text">
                                <strong class="progress__name">Dostawa i płatności</strong>
                                <span class="progress__description">Wybierz sposób dostawy i płatności</span>
                            </div>
                        </div>
                        
                        <div class="progress__item --third --comment">
                            <div class="progress__icons">
                                <div class="progress__icon --mobile d-md-none">
                                    <span class="progress__step">
                                        <strong>3</strong>
                                        <span>/4</span>
                                    </span>
                                    <svg class="progress__svg">
                                        <circle class="progress__circle_back"/>
                                        <circle class="progress__circle"/>
                                    </svg>
                                </div>
                                <div class="progress__icon --desktop d-none d-md-flex">
                                    <span class="progress__fontello"/>
                                </div>
                            </div>
                            <div class="progress__text">
                                <strong class="progress__name">Weryfikacja danych</strong>
                                <span class="progress__description">Sprawdź poprawność zamówienia przed jego złożeniem</span>
                            </div>
                        </div>

                        <iaixsl:choose>
                            <iaixsl:when test="not(basket/@login) and not(navigation/@order_express_mode='true')">
                                
                                <div class="progress__item --fourth --file-text">
                                    <div class="progress__icons">
                                        <div class="progress__icon --mobile d-md-none">
                                            <span class="progress__step">
                                                <strong>4</strong>
                                                <span>/4</span>
                                            </span>
                                            <svg class="progress__svg">
                                                <circle class="progress__circle_back"/>
                                                <circle class="progress__circle"/>
                                            </svg>
                                        </div>
                                        <div class="progress__icon --desktop d-none d-md-flex">
                                            <span class="progress__fontello"/>
                                        </div>
                                    </div>
                                    <div class="progress__text">
                                        <strong class="progress__name">Zapisanie danych</strong>
                                        <span class="progress__description">Zapamiętanie klienta</span>
                                    </div>
                                </div>
                            </iaixsl:when>
                            <iaixsl:otherwise>
                                
                                <div class="progress__item --fourth --ok">
                                    <div class="progress__icons">
                                        <div class="progress__icon --mobile d-md-none">
                                            <span class="progress__step">
                                                <strong>4</strong>
                                                <span>/4</span>
                                            </span>
                                            <svg class="progress__svg">
                                                <circle class="progress__circle_back"/>
                                                <circle class="progress__circle"/>
                                            </svg>
                                        </div>
                                        <div class="progress__icon --desktop d-none d-md-flex">
                                            <span class="progress__fontello"/>
                                        </div>
                                    </div>
                                    <div class="progress__text">
                                        <strong class="progress__name">Złożenie zamówienia</strong>
                                        <span class="progress__description">Przyjęcie do realizacji</span>
                                    </div>
                                </div>
                            </iaixsl:otherwise>
                        </iaixsl:choose>
                    </section>
                </iaixsl:when>
            </iaixsl:choose>
            <iaixsl:choose>
                
                <iaixsl:when test="page/@type = 'order-nonstandardized'">
                    <iaixsl:if test="$cop_global_label">
                        <span class="big_label cop_global_label">
                            <iaixsl:value-of select="$cop_global_label"/>
                        </span>
                    </iaixsl:if>

                    <section id="Progress" class="progress mb-3 py-1 py-md-0">
                        
                        <div class="progress__item --first --shopping-cart">
                            <div class="progress__icons">
                                <div class="progress__icon --mobile d-md-none">
                                    <span class="progress__step">
                                        <strong>1</strong>
                                        <span>/4</span>
                                    </span>
                                    <svg class="progress__svg">
                                        <circle class="progress__circle_back"/>
                                        <circle class="progress__circle"/>
                                    </svg>
                                </div>
                                <div class="progress__icon --desktop d-none d-md-flex">
                                    <span class="progress__fontello"/>
                                </div>
                            </div>
                            <div class="progress__text">
                                <strong class="progress__name">Koszyk</strong>
                                <span class="progress__description">Wartość koszyka: <iaixsl:choose><iaixsl:when test="(/shop/basket/@wholesaler = 'true') and not($wholesalerPrice_order_progress)"><iaixsl:value-of select="basket/@cost_net_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="basket/@cost_formatted"/></iaixsl:otherwise></iaixsl:choose></span>
                            </div>
                        </div>
                        
                        <div class="progress__item --second --active --truck">
                            <div class="progress__icons">
                                <div class="progress__icon --mobile d-md-none">
                                    <span class="progress__step">
                                        <strong>2</strong>
                                        <span>/4</span>
                                    </span>
                                    <svg class="progress__svg">
                                        <circle class="progress__circle_back"/>
                                        <circle class="progress__circle"/>
                                    </svg>
                                </div>
                                <div class="progress__icon --desktop d-none d-md-flex">
                                    <span class="progress__fontello"/>
                                </div>
                            </div>
                            <div class="progress__text">
                                <strong class="progress__name">Dostawa i płatności</strong>
                                <span class="progress__description">Zamówienie niestandardowe</span>
                            </div>
                        </div>
                        
                        <div class="progress__item --third --comment">
                            <div class="progress__icons">
                                <div class="progress__icon --mobile d-md-none">
                                    <span class="progress__step">
                                        <strong>3</strong>
                                        <span>/4</span>
                                    </span>
                                    <svg class="progress__svg">
                                        <circle class="progress__circle_back"/>
                                        <circle class="progress__circle"/>
                                    </svg>
                                </div>
                                <div class="progress__icon --desktop d-none d-md-flex">
                                    <span class="progress__fontello"/>
                                </div>
                            </div>
                            <div class="progress__text">
                                <strong class="progress__name">Weryfikacja danych</strong>
                                <span class="progress__description">Sprawdź poprawność zamówienia przed jego złożeniem</span>
                            </div>
                        </div>

                        <iaixsl:choose>
                            <iaixsl:when test="not(basket/@login) and not(navigation/@order_express_mode='true')">
                                
                                <div class="progress__item --fourth --file-text">
                                    <div class="progress__icons">
                                        <div class="progress__icon --mobile d-md-none">
                                            <span class="progress__step">
                                                <strong>4</strong>
                                                <span>/4</span>
                                            </span>
                                            <svg class="progress__svg">
                                                <circle class="progress__circle_back"/>
                                                <circle class="progress__circle"/>
                                            </svg>
                                        </div>
                                        <div class="progress__icon --desktop d-none d-md-flex">
                                            <span class="progress__fontello"/>
                                        </div>
                                    </div>
                                    <div class="progress__text">
                                        <strong class="progress__name">Zapisanie danych</strong>
                                        <span class="progress__description">Zapamiętanie klienta</span>
                                    </div>
                                </div>
                            </iaixsl:when>
                            <iaixsl:otherwise>
                                
                                <div class="progress__item --fourth --ok">
                                    <div class="progress__icons">
                                        <div class="progress__icon --mobile d-md-none">
                                            <span class="progress__step">
                                                <strong>4</strong>
                                                <span>/4</span>
                                            </span>
                                            <svg class="progress__svg">
                                                <circle class="progress__circle_back"/>
                                                <circle class="progress__circle"/>
                                            </svg>
                                        </div>
                                        <div class="progress__icon --desktop d-none d-md-flex">
                                            <span class="progress__fontello"/>
                                        </div>
                                    </div>
                                    <div class="progress__text">
                                        <strong class="progress__name">Złożenie zamówienia</strong>
                                        <span class="progress__description">Przyjęcie do realizacji</span>
                                    </div>
                                </div>
                            </iaixsl:otherwise>
                        </iaixsl:choose>
                    </section>
                </iaixsl:when>
            </iaixsl:choose>
            <iaixsl:choose>
                
                <iaixsl:when test="page/@type = 'pickup-sites'">
                    <iaixsl:if test="$cop_global_label">
                        <span class="big_label cop_global_label">
                            <iaixsl:value-of select="$cop_global_label"/>
                        </span>
                    </iaixsl:if>

                    <section id="Progress" class="progress mb-3 py-1 py-md-0">
                        
                        <div class="progress__item --first --shopping-cart">
                            <div class="progress__icons">
                                <div class="progress__icon --mobile d-md-none">
                                    <span class="progress__step">
                                        <strong>1</strong>
                                        <span>/4</span>
                                    </span>
                                    <svg class="progress__svg">
                                        <circle class="progress__circle_back"/>
                                        <circle class="progress__circle"/>
                                    </svg>
                                </div>
                                <div class="progress__icon --desktop d-none d-md-flex">
                                    <span class="progress__fontello"/>
                                </div>
                            </div>
                            <div class="progress__text">
                                <strong class="progress__name">Koszyk</strong>
                                <span class="progress__description">Wartość koszyka: <iaixsl:choose><iaixsl:when test="(/shop/basket/@wholesaler = 'true') and not($wholesalerPrice_order_progress)"><iaixsl:value-of select="basket/@cost_net_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="basket/@cost_formatted"/></iaixsl:otherwise></iaixsl:choose></span>
                            </div>
                        </div>
                        
                        <div class="progress__item --second --active --truck">
                            <div class="progress__icons">
                                <div class="progress__icon --mobile d-md-none">
                                    <span class="progress__step">
                                        <strong>2</strong>
                                        <span>/4</span>
                                    </span>
                                    <svg class="progress__svg">
                                        <circle class="progress__circle_back"/>
                                        <circle class="progress__circle"/>
                                    </svg>
                                </div>
                                <div class="progress__icon --desktop d-none d-md-flex">
                                    <span class="progress__fontello"/>
                                </div>
                            </div>
                            <div class="progress__text">
                                <strong class="progress__name">Dostawa i płatności</strong>
                                <span class="progress__description">Wybierz punkt odbioru</span>
                            </div>
                        </div>
                        
                        <div class="progress__item --third --comment">
                            <div class="progress__icons">
                                <div class="progress__icon --mobile d-md-none">
                                    <span class="progress__step">
                                        <strong>3</strong>
                                        <span>/4</span>
                                    </span>
                                    <svg class="progress__svg">
                                        <circle class="progress__circle_back"/>
                                        <circle class="progress__circle"/>
                                    </svg>
                                </div>
                                <div class="progress__icon --desktop d-none d-md-flex">
                                    <span class="progress__fontello"/>
                                </div>
                            </div>
                            <div class="progress__text">
                                <strong class="progress__name">Weryfikacja danych</strong>
                                <span class="progress__description">Sprawdź poprawność zamówienia przed jego złożeniem</span>
                            </div>
                        </div>

                        <iaixsl:choose>
                            <iaixsl:when test="not(basket/@login) and not(navigation/@order_express_mode='true')">
                                
                                <div class="progress__item --fourth --file-text">
                                    <div class="progress__icons">
                                        <div class="progress__icon --mobile d-md-none">
                                            <span class="progress__step">
                                                <strong>4</strong>
                                                <span>/4</span>
                                            </span>
                                            <svg class="progress__svg">
                                                <circle class="progress__circle_back"/>
                                                <circle class="progress__circle"/>
                                            </svg>
                                        </div>
                                        <div class="progress__icon --desktop d-none d-md-flex">
                                            <span class="progress__fontello"/>
                                        </div>
                                    </div>
                                    <div class="progress__text">
                                        <strong class="progress__name">Zapisanie danych</strong>
                                        <span class="progress__description">Zapamiętanie klienta</span>
                                    </div>
                                </div>
                            </iaixsl:when>
                            <iaixsl:otherwise>
                                
                                <div class="progress__item --fourth --ok">
                                    <div class="progress__icons">
                                        <div class="progress__icon --mobile d-md-none">
                                            <span class="progress__step">
                                                <strong>4</strong>
                                                <span>/4</span>
                                            </span>
                                            <svg class="progress__svg">
                                                <circle class="progress__circle_back"/>
                                                <circle class="progress__circle"/>
                                            </svg>
                                        </div>
                                        <div class="progress__icon --desktop d-none d-md-flex">
                                            <span class="progress__fontello"/>
                                        </div>
                                    </div>
                                    <div class="progress__text">
                                        <strong class="progress__name">Złożenie zamówienia</strong>
                                        <span class="progress__description">Przyjęcie do realizacji</span>
                                    </div>
                                </div>
                            </iaixsl:otherwise>
                        </iaixsl:choose>
                    </section>
                </iaixsl:when>
            </iaixsl:choose>
            <iaixsl:choose>
                
                <iaixsl:when test="page/@type = 'order2'">
                    <iaixsl:if test="$cop_global_label">
                        <span class="big_label cop_global_label">
                            <iaixsl:value-of select="$cop_global_label"/>
                        </span>
                    </iaixsl:if>

                    <section id="Progress" class="progress mb-3 py-1 py-md-0">
                        
                        <div class="progress__item --first --shopping-cart">
                            <div class="progress__icons">
                                <div class="progress__icon --mobile d-md-none">
                                    <span class="progress__step">
                                        <strong>1</strong>
                                        <span>/4</span>
                                    </span>
                                    <svg class="progress__svg">
                                        <circle class="progress__circle_back"/>
                                        <circle class="progress__circle"/>
                                    </svg>
                                </div>
                                <div class="progress__icon --desktop d-none d-md-flex">
                                    <span class="progress__fontello"/>
                                </div>
                            </div>
                            <div class="progress__text">
                                <strong class="progress__name">Koszyk</strong>
                                <span class="progress__description">Wartość koszyka: <iaixsl:choose><iaixsl:when test="(/shop/basket/@wholesaler = 'true') and not($wholesalerPrice_order_progress)"><iaixsl:value-of select="basket/@cost_net_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="basket/@cost_formatted"/></iaixsl:otherwise></iaixsl:choose></span>
                            </div>
                        </div>
                        
                        <div class="progress__item --second --truck">
                            <div class="progress__icons">
                                <div class="progress__icon --mobile d-md-none">
                                    <span class="progress__step">
                                        <strong>2</strong>
                                        <span>/4</span>
                                    </span>
                                    <svg class="progress__svg">
                                        <circle class="progress__circle_back"/>
                                        <circle class="progress__circle"/>
                                    </svg>
                                </div>
                                <div class="progress__icon --desktop d-none d-md-flex">
                                    <span class="progress__fontello"/>
                                </div>
                            </div>
                            <div class="progress__text">
                                <strong class="progress__name">Dostawa i płatności</strong>
                                <span class="progress__description">Wybierz sposób dostawy i płatności</span>
                            </div>
                        </div>
                        
                        <div class="progress__item --third --active --comment">
                            <div class="progress__icons">
                                <div class="progress__icon --mobile d-md-none">
                                    <span class="progress__step">
                                        <strong>3</strong>
                                        <span>/4</span>
                                    </span>
                                    <svg class="progress__svg">
                                        <circle class="progress__circle_back"/>
                                        <circle class="progress__circle"/>
                                    </svg>
                                </div>
                                <div class="progress__icon --desktop d-none d-md-flex">
                                    <span class="progress__fontello"/>
                                </div>
                            </div>
                            <div class="progress__text">
                                <strong class="progress__name">Weryfikacja danych</strong>
                                <span class="progress__description">Sprawdź poprawność zamówienia przed jego złożeniem</span>
                            </div>
                        </div>

                        <iaixsl:choose>
                            <iaixsl:when test="not(basket/@login) and not(navigation/@order_express_mode='true')">
                                
                                <div class="progress__item --fourth --file-text">
                                    <div class="progress__icons">
                                        <div class="progress__icon --mobile d-md-none">
                                            <span class="progress__step">
                                                <strong>4</strong>
                                                <span>/4</span>
                                            </span>
                                            <svg class="progress__svg">
                                                <circle class="progress__circle_back"/>
                                                <circle class="progress__circle"/>
                                            </svg>
                                        </div>
                                        <div class="progress__icon --desktop d-none d-md-flex">
                                            <span class="progress__fontello"/>
                                        </div>
                                    </div>
                                    <div class="progress__text">
                                        <strong class="progress__name">Zapisanie danych</strong>
                                        <span class="progress__description">Zapamiętanie klienta</span>
                                    </div>
                                </div>
                            </iaixsl:when>
                            <iaixsl:otherwise>
                                
                                <div class="progress__item --fourth --ok">
                                    <div class="progress__icons">
                                        <div class="progress__icon --mobile d-md-none">
                                            <span class="progress__step">
                                                <strong>4</strong>
                                                <span>/4</span>
                                            </span>
                                            <svg class="progress__svg">
                                                <circle class="progress__circle_back"/>
                                                <circle class="progress__circle"/>
                                            </svg>
                                        </div>
                                        <div class="progress__icon --desktop d-none d-md-flex">
                                            <span class="progress__fontello"/>
                                        </div>
                                    </div>
                                    <div class="progress__text">
                                        <strong class="progress__name">Złożenie zamówienia</strong>
                                        <span class="progress__description">Przyjęcie do realizacji</span>
                                    </div>
                                </div>
                            </iaixsl:otherwise>
                        </iaixsl:choose>
                    </section>
                </iaixsl:when>
            </iaixsl:choose>
            <iaixsl:choose>
                
                <iaixsl:when test="page/@type = 'client-save'">
                    <iaixsl:if test="$cop_global_label">
                        <span class="big_label cop_global_label">
                            <iaixsl:value-of select="$cop_global_label"/>
                        </span>
                    </iaixsl:if>

                    <section id="Progress" class="progress mb-3 py-1 py-md-0">
                        
                        <div class="progress__item --first --shopping-cart">
                            <div class="progress__icons">
                                <div class="progress__icon --mobile d-md-none">
                                    <span class="progress__step">
                                        <strong>1</strong>
                                        <span>/4</span>
                                    </span>
                                    <svg class="progress__svg">
                                        <circle class="progress__circle_back"/>
                                        <circle class="progress__circle"/>
                                    </svg>
                                </div>
                                <div class="progress__icon --desktop d-none d-md-flex">
                                    <span class="progress__fontello"/>
                                </div>
                            </div>
                            <div class="progress__text">
                                <strong class="progress__name">Koszyk</strong>
                                <span class="progress__description">Wartość koszyka: <iaixsl:choose><iaixsl:when test="(/shop/basket/@wholesaler = 'true') and not($wholesalerPrice_order_progress)"><iaixsl:value-of select="basket/@cost_net_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="basket/@cost_formatted"/></iaixsl:otherwise></iaixsl:choose></span>
                            </div>
                        </div>
                        
                        <div class="progress__item --second --comment">
                            <div class="progress__icons">
                                <div class="progress__icon --mobile d-md-none">
                                    <span class="progress__step">
                                        <strong>2</strong>
                                        <span>/4</span>
                                    </span>
                                    <svg class="progress__svg">
                                        <circle class="progress__circle_back"/>
                                        <circle class="progress__circle"/>
                                    </svg>
                                </div>
                                <div class="progress__icon --desktop d-none d-md-flex">
                                    <span class="progress__fontello"/>
                                </div>
                            </div>
                            <div class="progress__text">
                                <strong class="progress__name">Weryfikacja danych</strong>
                                <span class="progress__description">Sprawdź poprawność zamówienia przed jego złożeniem</span>
                            </div>
                        </div>
                        
                        <div class="progress__item --third --active --file-text">
                            <div class="progress__icons">
                                <div class="progress__icon --mobile d-md-none">
                                    <span class="progress__step">
                                        <strong>3</strong>
                                        <span>/4</span>
                                    </span>
                                    <svg class="progress__svg">
                                        <circle class="progress__circle_back"/>
                                        <circle class="progress__circle"/>
                                    </svg>
                                </div>
                                <div class="progress__icon --desktop d-none d-md-flex">
                                    <span class="progress__fontello"/>
                                </div>
                            </div>
                            <div class="progress__text">
                                <strong class="progress__name">Zapisanie danych</strong>
                                <span class="progress__description">Zapamiętanie klienta</span>
                            </div>
                        </div>
                        
                        <div class="progress__item --fourth --ok">
                            <div class="progress__icons">
                                <div class="progress__icon --mobile d-md-none">
                                    <span class="progress__step">
                                        <strong>4</strong>
                                        <span>/4</span>
                                    </span>
                                    <svg class="progress__svg">
                                        <circle class="progress__circle_back"/>
                                        <circle class="progress__circle"/>
                                    </svg>
                                </div>
                                <div class="progress__icon --desktop d-none d-md-flex">
                                    <span class="progress__fontello"/>
                                </div>
                            </div>
                            <div class="progress__text">
                                <strong class="progress__name">Złożenie zamówienia</strong>
                                <span class="progress__description">Przyjęcie do realizacji</span>
                            </div>
                        </div>
                    </section>
                </iaixsl:when>
            </iaixsl:choose>
            <iaixsl:choose>
                
                <iaixsl:when test="page/@type = 'prepaid' and page/prepaid/details/@msg = 'order'">
                    <iaixsl:if test="$cop_global_label">
                        <span class="big_label cop_global_label">
                            <iaixsl:value-of select="$cop_global_label"/>
                        </span>
                    </iaixsl:if>

                    <section id="Progress" class="progress mb-3 py-1 py-md-0">
                        
                        <div class="progress__item --first --shopping-cart">
                            <div class="progress__icons">
                                <div class="progress__icon --mobile d-md-none">
                                    <span class="progress__step">
                                        <strong>1</strong>
                                        <span>/4</span>
                                    </span>
                                    <svg class="progress__svg">
                                        <circle class="progress__circle_back"/>
                                        <circle class="progress__circle"/>
                                    </svg>
                                </div>
                                <div class="progress__icon --desktop d-none d-md-flex">
                                    <span class="progress__fontello"/>
                                </div>
                            </div>
                            <div class="progress__text">
                                <strong class="progress__name">Koszyk</strong>
                                <span class="progress__description">Wartość koszyka: <iaixsl:choose><iaixsl:when test="(/shop/basket/@wholesaler = 'true') and not($wholesalerPrice_order_progress)"><iaixsl:value-of select="basket/@cost_net_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="basket/@cost_formatted"/></iaixsl:otherwise></iaixsl:choose></span>
                            </div>
                        </div>
                        
                        <div class="progress__item --second --truck">
                            <div class="progress__icons">
                                <div class="progress__icon --mobile d-md-none">
                                    <span class="progress__step">
                                        <strong>2</strong>
                                        <span>/4</span>
                                    </span>
                                    <svg class="progress__svg">
                                        <circle class="progress__circle_back"/>
                                        <circle class="progress__circle"/>
                                    </svg>
                                </div>
                                <div class="progress__icon --desktop d-none d-md-flex">
                                    <span class="progress__fontello"/>
                                </div>
                            </div>
                            <div class="progress__text">
                                <strong class="progress__name">Dostawa i płatności</strong>
                                <span class="progress__description">Wybierz sposób dostawy i płatności</span>
                            </div>
                        </div>
                        
                        <div class="progress__item --third --comment">
                            <div class="progress__icons">
                                <div class="progress__icon --mobile d-md-none">
                                    <span class="progress__step">
                                        <strong>3</strong>
                                        <span>/4</span>
                                    </span>
                                    <svg class="progress__svg">
                                        <circle class="progress__circle_back"/>
                                        <circle class="progress__circle"/>
                                    </svg>
                                </div>
                                <div class="progress__icon --desktop d-none d-md-flex">
                                    <span class="progress__fontello"/>
                                </div>
                            </div>
                            <div class="progress__text">
                                <strong class="progress__name">Weryfikacja danych</strong>
                                <span class="progress__description">Sprawdź poprawność zamówienia przed jego złożeniem</span>
                            </div>
                        </div>
                        
                        <div class="progress__item --fourth --active --ok">
                            <div class="progress__icons">
                                <div class="progress__icon --mobile d-md-none">
                                    <span class="progress__step">
                                        <strong>4</strong>
                                        <span>/4</span>
                                    </span>
                                    <svg class="progress__svg">
                                        <circle class="progress__circle_back"/>
                                        <circle class="progress__circle"/>
                                    </svg>
                                </div>
                                <div class="progress__icon --desktop d-none d-md-flex">
                                    <span class="progress__fontello"/>
                                </div>
                            </div>
                            <div class="progress__text">
                                <strong class="progress__name">Zamówienie złożone</strong>
                                <span class="progress__description">Status zamówienia: 
                                    <iaixsl:choose>
                                        <iaixsl:when test="(page/prepaid/details/@wykonane = 'n')">przyjęte</iaixsl:when>
                                        <iaixsl:when test="(page/prepaid/details/@wykonane = 't')">wysłane</iaixsl:when>
                                        <iaixsl:when test="(page/prepaid/details/@wykonane = 'i')">odrzucone</iaixsl:when>
                                        <iaixsl:when test="(page/prepaid/details/@wykonane = 's')">anulowane</iaixsl:when>
                                        <iaixsl:when test="(page/prepaid/details/@wykonane = 'o')">realizowane</iaixsl:when>
                                        <iaixsl:when test="(page/prepaid/details/@wykonane = 'p')">gotowe</iaixsl:when>
                                        <iaixsl:when test="(page/prepaid/details/@wykonane = 'h')">wstrzymane</iaixsl:when>
                                        <iaixsl:when test="(page/prepaid/details/@wykonane = 'w')">oczekujemy na wpłatę</iaixsl:when>
                                        <iaixsl:when test="(page/prepaid/details/@wykonane = 'd')">oczekujemy na dostawę</iaixsl:when>
                                        <iaixsl:when test="(page/prepaid/details/@wykonane = 'z')">zwrot</iaixsl:when>
                                        <iaixsl:when test="(page/prepaid/details/@wykonane = 'k')">anulowane</iaixsl:when>
                                        <iaixsl:when test="(page/prepaid/details/@wykonane = 'r')">reklamacja</iaixsl:when>
                                        <iaixsl:when test="(page/prepaid/details/@wykonane = 'j')">połączone</iaixsl:when>
                                        <iaixsl:when test="(page/prepaid/details/@wykonane = 'l')">zgubione</iaixsl:when>
                                        <iaixsl:when test="(page/prepaid/details/@wykonane = 'a')">realizowane</iaixsl:when>
                                        <iaixsl:when test="(page/prepaid/details/@wykonane = 'b')">pakowane</iaixsl:when>
                                    </iaixsl:choose>
                                </span>
                            </div>
                        </div>
                    </section>
                </iaixsl:when>
            </iaixsl:choose>
            <iaixsl:choose>
                
                <iaixsl:when test="(page/@type = 'order-payment') or (page/@type = 'order-newpayment')">
                    <iaixsl:if test="$cop_global_label">
                        <span class="big_label cop_global_label">
                            <iaixsl:value-of select="$cop_global_label"/>
                        </span>
                    </iaixsl:if>

                    <section id="Progress" class="progress mb-3 py-1 py-md-0">
                        
                        <div class="progress__item --first --shopping-cart">
                            <div class="progress__icons">
                                <div class="progress__icon --mobile d-md-none">
                                    <span class="progress__step">
                                        <strong>1</strong>
                                        <span>/4</span>
                                    </span>
                                    <svg class="progress__svg">
                                        <circle class="progress__circle_back"/>
                                        <circle class="progress__circle"/>
                                    </svg>
                                </div>
                                <div class="progress__icon --desktop d-none d-md-flex">
                                    <span class="progress__fontello"/>
                                </div>
                            </div>
                            <div class="progress__text">
                                <strong class="progress__name">Koszyk</strong>
                                <span class="progress__description">Wartość koszyka: <iaixsl:choose><iaixsl:when test="(/shop/basket/@wholesaler = 'true') and not($wholesalerPrice_order_progress)"><iaixsl:value-of select="basket/@cost_net_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="basket/@cost_formatted"/></iaixsl:otherwise></iaixsl:choose></span>
                            </div>
                        </div>
                        
                        <div class="progress__item --second --truck">
                            <div class="progress__icons">
                                <div class="progress__icon --mobile d-md-none">
                                    <span class="progress__step">
                                        <strong>2</strong>
                                        <span>/4</span>
                                    </span>
                                    <svg class="progress__svg">
                                        <circle class="progress__circle_back"/>
                                        <circle class="progress__circle"/>
                                    </svg>
                                </div>
                                <div class="progress__icon --desktop d-none d-md-flex">
                                    <span class="progress__fontello"/>
                                </div>
                            </div>
                            <div class="progress__text">
                                <strong class="progress__name">Dostawa i płatności</strong>
                                <span class="progress__description">Wybierz sposób dostawy i płatności</span>
                            </div>
                        </div>
                        
                        <div class="progress__item --third --comment">
                            <div class="progress__icons">
                                <div class="progress__icon --mobile d-md-none">
                                    <span class="progress__step">
                                        <strong>3</strong>
                                        <span>/4</span>
                                    </span>
                                    <svg class="progress__svg">
                                        <circle class="progress__circle_back"/>
                                        <circle class="progress__circle"/>
                                    </svg>
                                </div>
                                <div class="progress__icon --desktop d-none d-md-flex">
                                    <span class="progress__fontello"/>
                                </div>
                            </div>
                            <div class="progress__text">
                                <strong class="progress__name">Weryfikacja danych</strong>
                                <span class="progress__description">Sprawdź poprawność zamówienia przed jego złożeniem</span>
                            </div>
                        </div>
                        
                        <div class="progress__item --fourth --active --ok">
                            <div class="progress__icons">
                                <div class="progress__icon --mobile d-md-none">
                                    <span class="progress__step">
                                        <strong>4</strong>
                                        <span>/4</span>
                                    </span>
                                    <svg class="progress__svg">
                                        <circle class="progress__circle_back"/>
                                        <circle class="progress__circle"/>
                                    </svg>
                                </div>
                                <div class="progress__icon --desktop d-none d-md-flex">
                                    <span class="progress__fontello"/>
                                </div>
                            </div>
                            <div class="progress__text">
                                <strong class="progress__name">Zamówienie złożone</strong>
                                <span class="progress__description">Status zamówienia: oczekujemy na wpłatę</span>
                            </div>
                        </div>
                    </section>
                </iaixsl:when>
            </iaixsl:choose>
        </iaixsl:if>
    <!--Błędy i informacje w projektorze (menu_messages, 106608.1)-->

        <iaixsl:variable name="rebates_code_used">Podany kod rabatowy został już wykorzystany.</iaixsl:variable>

        <iaixsl:variable name="change_success">Zmiany zostały zapisane.</iaixsl:variable>

        <iaixsl:variable name="change_success_despite_no_change">Formularz został zapisany, ale żadne dane nie zostały przez Ciebie zmienione. </iaixsl:variable>


        <iaixsl:if test="count(/shop/page/communicates/warning)">

            <div class="menu_messages_warning" id="menu_messages_warning">


            <iaixsl:choose>
                <iaixsl:when test="/shop/page/communicates/communicate/@messageType = 'message'">
                    <iaixsl:attribute name="class">menu_messages_message</iaixsl:attribute>
                </iaixsl:when>
                <iaixsl:when test="/shop/page/communicates/communicate/@messageType = 'warning'">
                    <iaixsl:attribute name="class">menu_messages_warning</iaixsl:attribute>
                </iaixsl:when>
                <iaixsl:when test="/shop/page/communicates/communicate/@messageType = 'error'">
                    <iaixsl:attribute name="class">menu_messages_error</iaixsl:attribute>
                </iaixsl:when>
                <iaixsl:when test="/shop/page/communicates/communicate/@messageType = 'success'">
                    <iaixsl:attribute name="class">menu_messages_success</iaixsl:attribute>
                </iaixsl:when>
                <iaixsl:otherwise/>
            </iaixsl:choose>


                <div class="menu_messages_warning_sub">
                    <iaixsl:for-each select="/shop/page/communicates/warning">
                        <p><iaixsl:choose>


                                <iaixsl:when test="@type='file_upload_invalid_type'">Nie można wgrać pliku <span class="invalidFileName"><iaixsl:value-of select="@value"/></span>, ponieważ załączanie plików tego typu jest niedozwolone.</iaixsl:when>
                                <iaixsl:when test="@type='file_upload_invalid_extension'">Nie można wgrać pliku <span class="invalidFileName"><iaixsl:value-of select="@value"/></span>, ponieważ załączanie plików tego typu jest niedozwolone.</iaixsl:when>
                                <iaixsl:when test="@type='file_upload_size_exceeded'">Nie można wgrać pliku <span class="invalidFileName"><iaixsl:value-of select="@value"/></span>, ponieważ przekracza maksymalny dozwolony rozmiar 10 MB.</iaixsl:when>
                                <iaixsl:when test="@type='file_uploaded_remove_fail'">Wystąpił bład podczas wgrywania pliku <span class="invalidFileName"><iaixsl:value-of select="@value"/></span>.</iaixsl:when>


                                <iaixsl:when test="@type='rebates_code_expired'">Termin ważności podanego kodu rabatowego już upłynął i jest on nieaktywny.</iaixsl:when>
                                <iaixsl:when test="@type='rebates_code_notbegun'">Podany kod rabatowy nie jest jeszcze aktywny. Ta promocja jeszcze się nie rozpoczęła.</iaixsl:when>

                               <iaixsl:when test="@type='order_minimal_wholesale_blocked'">Minimalna wartość zakupów hurtowych wynosi: <iaixsl:if test="$signbeforeprice = 'true'">
                                            <iaixsl:value-of select="/shop/currency/@name"/>
                                            <iaixsl:value-of select="$signbetweenpricecurrency"/>
                                        </iaixsl:if>
                                        <iaixsl:value-of select="@value"/>
                                        <iaixsl:if test="$signbeforeprice = 'false'">
                                            <iaixsl:value-of select="$signbetweenpricecurrency"/>
                                            <iaixsl:value-of select="/shop/currency/@name"/>
                                        </iaixsl:if>
                                </iaixsl:when>

                            <iaixsl:when test="@type='order_minimal_wholesale_changed'">Mimo, że jesteś hurtownikiem, widzisz w podsumowaniu zamówienia ceny detaliczne. Wynika to z tego, że minimalna wartość dla zamówienia hurtowego nie została osiągnięta. Składając zamówienie w oparciu o aktualny koszyk złożysz zamówienie detaliczne.</iaixsl:when>




                                <iaixsl:when test="@type='openid_invalid_authorization'">Błąd autoryzacji.</iaixsl:when>
                                <iaixsl:when test="@type='suggest_sent'">Zaproszenie do odwiedzenia sklepu zostało wysłane do <iaixsl:value-of select="@value"/>.</iaixsl:when>
                                <iaixsl:when test="@type='search_to_many_products'">Znaleziono zbyt wiele produktów. Skorzystaj z wyszukiwarki aby zawęzić wyniki wyszukiwania.</iaixsl:when>
                                <iaixsl:when test="@type='search_products_not_found'">Szukany produkt nie został znaleziony. Skorzystaj z <a href="/searching.php" title="Kliknij, aby przejść do wyszukiwarki zaawansowanej">wyszukiwarki</a>.</iaixsl:when>
                                <iaixsl:when test="@type='search_text_to_short'">Podany tekst jest zbyt krótki. Spróbuj podać dłuższy tekst lub skorzystaj z wyszukiwarki.</iaixsl:when>
                                <iaixsl:when test="@type='login taken'">Podany login został już zarejestrowany przez innego klienta. Wybierz proszę inną nazwę lub zmodyfikuj tą dodając np. cyfry.</iaixsl:when>
                                <iaixsl:when test="@type='account_not_added'">Wystąpiły błędy i konto klienta nie zostało dodane - spróbuj ponownie później</iaixsl:when>
                                <iaixsl:when test="@type='exists such account'">Konto o podobnych danych już istnieje w naszym sklepie. Jeżeli zakładałeś wcześniej konto w naszym sklepie a nie pamiętasz hasła, skorzystaj z <a href="/password-recover.php">przypominania hasła</a></iaixsl:when>
                                <iaixsl:when test="@type='deliv_addr_not_deleted'">Wskazany adres dostawy nie może być usuniety.</iaixsl:when>
                                <iaixsl:when test="@type='deliv_addr_not_selected'">Wskazany adres dostawy nie może zostać adresem domyślnym.</iaixsl:when>
                                <iaixsl:when test="@type='no login'">Nie podałeś loginu.</iaixsl:when>
                                <iaixsl:when test="@type='incorect login'">Wybrany login jest niepoprawny. Poprawny login musi składać się z maksymalnie 20 znaków takich jak mogą zawierać adresy e-mail</iaixsl:when>
                                <iaixsl:when test="@type='no password'">Nie podałeś hasła.</iaixsl:when>
                                <iaixsl:when test="@type='password to short'">Poprawne hasło musi składać się przynajmniej z 6 znaków i nie więcej niż 15 znaków.</iaixsl:when>


                                <iaixsl:when test="@type='password_to_long'">Poprawne hasło musi składać się przynajmniej z 6 znaków i nie więcej niż 15 znaków.</iaixsl:when>


                                <iaixsl:when test="@type='login equals password'">Poprawne hasło musi być różne od loginu.</iaixsl:when>
                                <iaixsl:when test="@type='not equal passwords'">Hasło i potwierdzenie hasła są różne.</iaixsl:when>
                                <iaixsl:when test="@type='no firstname'">Podane imię jest za krótkie.</iaixsl:when>
                                <iaixsl:when test="@type='no name'">Brakuje imienia lub nazwiska.</iaixsl:when>
                                <iaixsl:when test="@type='birth_date'">Data urodzenia zawiera nieprawidłowe wartości lub zapisana jest w nieprawidłowym formacie.</iaixsl:when>
                                <iaixsl:when test="@type='incorect email'">Adres e-mail jest błędny.</iaixsl:when>
                                <iaixsl:when test="@type='incorect nip'">Wpisując NIP użyj formatu PLXXXXXXXXXX dla NIP EU lub XXXXXXXXXX dla NIP polskiego.</iaixsl:when>

                                <iaixsl:when test="@type='no firmname'">Nazwa firmy nie została podana prawidłowo.</iaixsl:when>

                                <iaixsl:when test="@type='incorrect region'">Podany region jest błędny.</iaixsl:when>
                                <iaixsl:when test="@type='no city'">Podane miasto jest błędne.</iaixsl:when>
                                <iaixsl:when test="@type='no street'">Podany adres jest błędny.</iaixsl:when>

                               <iaixsl:when test="@type='no_street_number'">Podany adres jest błędny.</iaixsl:when>


                                <iaixsl:when test="@type='incorect phone'">Podany telefon jest błędny.</iaixsl:when>
                                <iaixsl:when test="@type='incorect spare phone'">Podany telefon zapasowy jest błędny.</iaixsl:when>
                                <iaixsl:when test="@type='incorect zipcode'">Niepoprawny kod pocztowy.</iaixsl:when>
                                <iaixsl:when test="@type='double_address_error'">Jeżeli adres dostawy ma być taki sam jak adres kupującego zaznacz odpowiednią opcję.</iaixsl:when>
                                <iaixsl:when test="@type='no delivery firstname'">Podane imię odbiorcy jest za krótkie.</iaixsl:when>
                                <iaixsl:when test="@type='no delivery lastname'">Podane nazwisko odbiorcy jest za krótkie.</iaixsl:when>
                                <iaixsl:when test="@type='no delivery city'">Podane miasto odbiorcy jest błędne.</iaixsl:when>
                                <iaixsl:when test="@type='no delivery street'">Podany adres odbiorcy jest błędny.</iaixsl:when>
                                <iaixsl:when test="@type='incorect delivery region'">Podany region odbiorcy jest błędny.</iaixsl:when>
                                <iaixsl:when test="@type='incorect delivery zipcode'">Niepoprawny kod pocztowy odbiorcy.</iaixsl:when>
                                <iaixsl:when test="@type='order_newpayment_hhtransfer_error'">Wystąpiły błędy płatności punktami.</iaixsl:when>
                                <iaixsl:when test="@type='order_newpayment_voucher_error'">Wystąpiły błędy płatności bonem.
                                    <iaixsl:if test="@value='v1'">W tym sklepie, ten bon jest nieważny.</iaixsl:if>
                                    <iaixsl:if test="@value='v2'">Numer bonu jest niepoprawny. Nie istnieje bon o takim identyfikatorze. Spróbuj wpisać identyfikator ponownie, upewniając się, że jest on poprawny.</iaixsl:if>
                                    <iaixsl:if test="@value='v3'">Ten bon jest zablokowany.</iaixsl:if>
                                    <iaixsl:if test="@value='v4'">Ten bon został już wykorzystany.</iaixsl:if>
                                    <iaixsl:if test="@value='v5'">Ten bon jest już nieważny - termin ważności minął.</iaixsl:if>
                                    <iaixsl:if test="@value='v7'">Bon o podanym identyfikatorze nie istnieje. Spróbuj wpisać identyfikator ponownie.</iaixsl:if>
                                    <iaixsl:if test="@value='v8'">Nie podano identyfikatora bonu.</iaixsl:if>
                                </iaixsl:when>
                                <iaixsl:when test="@type='order_newpayment_incorrect_paymentid'">Wystąpiły błędy - wybierz inną formę płatności.</iaixsl:when>
                                <iaixsl:when test="@type='order_newpayment_error'">Wystąpiły błędy płatności. Spróbuj ponownie opłacić zamówenie za chwilę.</iaixsl:when>
                                <iaixsl:when test="@type='order_newpayment_points_error'">Nie masz wystarczającej ilości punktów lojalnościowych aby opłacić to zamówienie- wybierz inną formę płatności.</iaixsl:when>

                                <iaixsl:when test="@type='filter_products_not_found'">Nie znaleziono produktów o zadanych kryteriach filtrowania. Zmień parametry filtrów.</iaixsl:when>
                                <iaixsl:when test="@type='questionnaire_error'">Wystąpił nieznany błąd. Ankieta nie została wysłana.</iaixsl:when>
                                <iaixsl:when test="@type='questionnaire_sent'">Ankieta została wysłana. Dziękujemy!</iaixsl:when>

                                <iaixsl:when test="@type='orderopen_not_found'">Podane przez Ciebie dane są nieprawidłowe. Postaraj się odszukać telefon lub e-mail który podałeś przy składaniu zamówienia lub sprawdź czy podawany identyfikator zamówienia jest poprawny. Jeżeli mimo kilku prób nie możesz otworzyć zamówienia poprzez tą stronę, prosimy o <a href="/contact.php">kontakt</a>.</iaixsl:when>

                                <iaixsl:when test="@type='order_nonstandard_inactive'">Przepraszamy, ale nie przewidzieliśmy kosztów dostawy dla Twojego zamówienia. Chcielibyśmy je jednak przyjąć. Dlatego prosimy Ciebie o kontakt z <a href="/contact.php">obsługą naszego sklepu</a> w celu ustalenia możliwości przyjęcia i realizacji zamówienia.</iaixsl:when>
                                <iaixsl:when test="@type='order_nonstandard_inactive_worth'">Przepraszamy, ale nie przewidzieliśmy możliwości składania zamówienia z taką wartością zamówienia. Chcielibyśmy je jednak przyjąć. Dlatego prosimy Ciebie o kontakt z <a href="/contact.php">obsługą naszego sklepu</a> w celu ustalenia możliwości przyjęcia i realizacji zamówienia.</iaixsl:when>
                                <iaixsl:when test="@type='order_nonstandard_inactive_weight'">Przepraszamy, ale nie przewidzieliśmy możliwości składania zamówienia z taką wagą zamówienia. Chcielibyśmy je jednak przyjąć. Dlatego prosimy Ciebie o kontakt z <a href="/contact.php">obsługą naszego sklepu</a> w celu ustalenia możliwości przyjęcia i realizacji zamówienia.</iaixsl:when>
                                

                                <iaixsl:when test="@type='no-auction-info'">
                                    Brak informacji o aukcji.
                                </iaixsl:when>
                                <iaixsl:when test="@type='no-auction-account'">
                                    Brak informacji o koncie.
                                </iaixsl:when>
                                <iaixsl:when test="@type='no-allegro-item'">
                                    Brak informacji o przedmiocie aukcji.
                                </iaixsl:when>
                                <iaixsl:when test="@type='no-buyer-info'">
                                    Brak informacji o kupującym.
                                </iaixsl:when>
                                <iaixsl:when test="@type='no-seller-info'">
                                    Brak informacji o sprzedającym.
                                </iaixsl:when>
                                <iaixsl:when test="@type='no-shipping'">
                                    Brak informacji o dostępnych przesyłkach.
                                </iaixsl:when>
                                <iaixsl:when test="@type='no-order'">
                                    Brak informacji o zamówieniu.
                                </iaixsl:when>
                                <iaixsl:when test="@type='less_del'">
                                    Usunięcie wszystkich sztuk nie jest możliwe. Zamówienie musi zawierać minimum tyle sztuk produktów ile zakupiłeś na aukcji. 
                                </iaixsl:when>
                                <iaixsl:when test="@type='cant_del'">
                                    Nie można usunąć produktów z zamówienia, gdyż ich ilość jest równa wylicytowanej.
                                </iaixsl:when>
                                <iaixsl:when test="@type='rebates_code_ok'">
                                    Podano poprawny kod rabatowy.
                                </iaixsl:when>
                                <iaixsl:when test="@type='rebates_code_undefined'">
                                    Podany kod rabatowy nie istnieje.
                                </iaixsl:when>

                                <iaixsl:when test="@type='rebates_code_used' and $rebates_code_used">
                                     <iaixsl:value-of select="$rebates_code_used"/>
                                </iaixsl:when>

                                <iaixsl:when test="@type='rebates_code_begins'">
                                    Promocja dla tego kodu rabatowego jeszcze się nie rozpoczeła.
                                </iaixsl:when>
                                <iaixsl:when test="@type='rebates_code_expires'">
                                    Promocja dla tego kodu rabatowego już się skończyła.
                                </iaixsl:when>
                                <iaixsl:when test="@type='membershipcard_undefined'">
                                    Podany numer karty jest nieprawidłowy. Spróbuj ponownie lub <a href="/contact.php">skontaktuj się z obsługą sklepu</a>.
                                </iaixsl:when>
                                <iaixsl:when test="@type='membershipcard_expires'">
                                    Termin ważności karty upłynął.
                                </iaixsl:when>
                                <iaixsl:when test="@type='membershipcard_blocked'">
                                    Ta karta została zablokowana. <a href="/contact.php">Skontaktuj się z obsługą sklepu</a>.
                                </iaixsl:when>
                                <iaixsl:when test="@type='membershipcard_ok'">
                                    Karta została aktywowana.
                                </iaixsl:when>
                                <iaixsl:when test="@type='client_wholesale_application_error'">
                                    Wystąpił błąd przy próbie rejestracji zgłoszenia.
                                </iaixsl:when>
                                <iaixsl:when test="@type='client_wholesale_registered'">
                                    Twoje konto zostało zarejestrowane jako hurtowe. Nie możesz złożyć kolejnego zgłoszenia.
                                </iaixsl:when>
                                <iaixsl:when test="@type='ordered_empty'">
                                    Twoja lista zakupionych produktów jest pusta.
                                </iaixsl:when>

                                <iaixsl:when test="@type='shipping_error'">
                                    Nie wysyłamy do twojego kraju.
                                </iaixsl:when>
                                <iaixsl:when test="@type='basket_empty'">
                                    Twój koszyk jest pusty.
                                </iaixsl:when>
                                <iaixsl:when test="@type='order_minimum'">
                                    Za mała wartość zamówienia.
                                    <iaixsl:if test="@value>0">
                                        Minimalna wartość zamówienia to 
                                        <iaixsl:if test="$signbeforeprice = 'true'">
                                            <iaixsl:value-of select="/shop/currency/@name"/>
                                            <iaixsl:value-of select="$signbetweenpricecurrency"/>
                                        </iaixsl:if>
                                        <iaixsl:value-of select="@value"/>
                                        <iaixsl:if test="$signbeforeprice = 'false'">
                                            <iaixsl:value-of select="$signbetweenpricecurrency"/>
                                            <iaixsl:value-of select="/shop/currency/@name"/>
                                        </iaixsl:if>

                                        
                                    </iaixsl:if>
                                </iaixsl:when>
                                <iaixsl:when test="@type='order_tomuch'">
                                    Wartość zamówienia jest zbyt duża.
                                    <iaixsl:if test="@value>0">
                                        Maksymalna wartość zamówienia to                <iaixsl:if test="$signbeforeprice = 'true'">
                                            <iaixsl:value-of select="/shop/currency/@name"/>
                                            <iaixsl:value-of select="$signbetweenpricecurrency"/>
                                        </iaixsl:if>
                                        <iaixsl:value-of select="@value"/>
                                        <iaixsl:if test="$signbeforeprice = 'false'">
                                            <iaixsl:value-of select="$signbetweenpricecurrency"/>
                                            <iaixsl:value-of select="/shop/currency/@name"/>
                                        </iaixsl:if>
                                    </iaixsl:if>
                                </iaixsl:when>
                                <iaixsl:when test="@type='requiredPhoneAndEmail'">
                                    Wybrana opcja dostawy wymaga podania numeru telefonu oraz adresu e-mail. Aby uzupełnić te informacje skorzystaj z 
                                    <a>
                                        <iaixsl:attribute name="href"><iaixsl:value-of select="@value"/></iaixsl:attribute>
                                        <iaixsl:attribute name="title">Kliknij, aby przejść do edycji danych i uzupełnić niezbędne informacje.</iaixsl:attribute>
                                        formularza edycji danych klienta
                                    </a>
                                    .
                                </iaixsl:when>
                                <iaixsl:when test="@type='noPickupSites'">
                                    Ten rodzaj dostawy nie jest aktualnie dostępny. Prosimy o 
                                    <a>
                                        <iaixsl:attribute name="href"><iaixsl:value-of select="@value"/></iaixsl:attribute>
                                        <iaixsl:attribute name="title">Kliknij, aby wrócić do wyboru formy dostawy.</iaixsl:attribute>
                                        wybranie innej formy dostawy lub sposobu płatności.
                                    </a>
                                    .
                                </iaixsl:when>
                                <iaixsl:when test="@type='noPickupStocks'">
                                    Odbiór osobisty zamówienia jest w tej chwili niemożliwy. Prosimy o 
                                    <a>
                                        <iaixsl:attribute name="href"><iaixsl:value-of select="@value"/></iaixsl:attribute>
                                        <iaixsl:attribute name="title">Kliknij, aby wrócić do wyboru formy dostawy.</iaixsl:attribute>
                                        wybranie innej formy dostawy lub sposobu płatności.
                                    </a>
                                    .
                                </iaixsl:when>

                                <iaixsl:when test="@type='rma_edit_error'">Wystąpił błąd podczas edycji reklamacji.</iaixsl:when>

                                <iaixsl:when test="@type='onlyHttps'">Dokonać płatności kartą kredytową można tylko przy użyciu szyfrowanego połączenia. Sprawdź czy adres sklepu poprzedzony jest protokołem HTTPS lub skontaktuj się z obsługą sklepu.</iaixsl:when>

                                <iaixsl:when test="@type='login_unavailable'">Nie można połączyć z podanym kontem z innego serwisu, ponieważ podane konto jest już połączone z innym kontem klienta w naszym sklepie. Możesz wylogować się z tego konta klienta i zalogować ponownie danymi z serwisu zewnętrznego<iaixsl:value-of select="@value"/>.</iaixsl:when>

                                <iaixsl:otherwise>
                                    <iaixsl:value-of disable-output-escaping="yes" select="description"/>
                                </iaixsl:otherwise>

                        </iaixsl:choose></p>
                    </iaixsl:for-each>
            </div></div>
        </iaixsl:if>


        <iaixsl:if test="count(/shop/page/communicates/message) and not(/shop/page/communicates/message/@type = 'login_connect')">
            <div class="menu_messages_message" id="menu_messages_warning">


            <iaixsl:choose>
                <iaixsl:when test="/shop/page/communicates/communicate/@messageType = 'message'">
                    <iaixsl:attribute name="class">menu_messages_message</iaixsl:attribute>
                </iaixsl:when>
                <iaixsl:when test="/shop/page/communicates/communicate/@messageType = 'warning'">
                    <iaixsl:attribute name="class">menu_messages_warning</iaixsl:attribute>
                </iaixsl:when>
                <iaixsl:when test="/shop/page/communicates/communicate/@messageType = 'error'">
                    <iaixsl:attribute name="class">menu_messages_error</iaixsl:attribute>
                </iaixsl:when>
                <iaixsl:when test="/shop/page/communicates/communicate/@messageType = 'success'">
                    <iaixsl:attribute name="class">menu_messages_success</iaixsl:attribute>
                </iaixsl:when>
                <iaixsl:otherwise/>
            </iaixsl:choose>


                <div class="menu_messages_message_sub">
                    <iaixsl:for-each select="/shop/page/communicates/message">
                        <p><iaixsl:choose>
                                <iaixsl:when test="@type='change_success' and $change_success">
                                     <iaixsl:value-of select="$change_success"/>
                                </iaixsl:when>
                                <iaixsl:when test="@type='change_success_despite_no_change' and $change_success_despite_no_change">
                                     <iaixsl:value-of select="$change_success_despite_no_change"/>
                                </iaixsl:when>

                                <iaixsl:when test="@type='affiliate_not_active'">Nie jesteś zalogowany lub sklep nie posiada aktywnego programu partnerskiego.</iaixsl:when>
                                <iaixsl:when test="@type='deliv_addr_deleted'">Wskazany adres dostawy został usunięty.</iaixsl:when>
                                <iaixsl:when test="@type='affiliate_off'">Nie masz aktywowanego programu partnerskiego. Jeżeli chcesz aktywować taką możliwość musisz skontaktować się z obsługą sklepu.</iaixsl:when>
                                <iaixsl:when test="@type='affiliate_blocked'">Twój program partnerski został zablokowany.</iaixsl:when>
                                <iaixsl:when test="@type='deliv_addr_selected'">Wskazany adres dostawy został ustawiony jako domyślny.</iaixsl:when>
                                <iaixsl:when test="@type='rebates_code_ok'">Podano poprawny kod rabatowy.</iaixsl:when>
                                <iaixsl:when test="@type='client_wholesale_application_added'">Zgłoszenie zostało zarejestrowane.</iaixsl:when>
                                <iaixsl:when test="@type='login_connected'">Pomyślnie połączono konto w sklepie z kontem w serwisie <iaixsl:value-of select="@value"/>.</iaixsl:when>
                                <iaixsl:when test="@type='login_disconnected'">Konto zostało rozłączone z <iaixsl:value-of select="@value"/>.</iaixsl:when>
                                <iaixsl:when test="@type='login_unavailable'">Nie można połączyć z podanym kontem z innego serwisu, ponieważ podane konto jest już połączone z innym kontem klienta w naszym sklepie. Możesz wylogować się z tego konta klienta i zalogować ponownie danymi z serwisu zewnętrznego<iaixsl:value-of select="@value"/>.</iaixsl:when>
                                <iaixsl:when test="@type='openid_login_canceled'">Logowanie anulowane.</iaixsl:when>
                                <iaixsl:when test="@type='client_wholesale_application_changed'">Zgłoszenie zostało zmienione.</iaixsl:when>
                                <iaixsl:when test="@type='wisheslist_empty'">Twoja lista zakupowa jest pusta.</iaixsl:when>
                                <iaixsl:when test="@type='products_requests_empty'">Twoja lista poszukiwanych produktów jest pusta.</iaixsl:when>
                                <iaixsl:when test="@type='products_requests_added'">Zgłoszenie poszukiwanego produktu zostało zarejestrowane. Otrzymasz odpowiedź e-mailem czy jest możliwe poszerzenie oferty o ten produkt.</iaixsl:when>
                                <iaixsl:when test="@type='products_requests_removed'">Zgłoszenie poszukiwanego produktu zostało usunięte.</iaixsl:when>
                                <iaixsl:when test="@type='rma_add'">Reklamacja została dodana.</iaixsl:when>
                                <iaixsl:when test="@type='return_add'">Zgłoszenie zwrotu zostało dodane.</iaixsl:when>
                                <iaixsl:when test="@type='return_edit'">Zmiany w zwrocie zostały zapisane</iaixsl:when>
                                <iaixsl:when test="@type='rma_edit'">Zmiany w reklamacji zostały zapisane.</iaixsl:when>
                                <iaixsl:when test="@type='order_nonstandard_reason'">Przepraszamy, ale nie zdefiniowaliśmy standardowego kosztu dostawy dla Twojego zamówienia. Możesz kontynuować składanie zamówienia, jednak nie zostanie w tej chwili podany wiążący nas koszt dostawy. Zostanie on ustalony indywidualnie przez naszą obsługę po przyjęciu zamówienia, po czym skontaktujemy się z Tobą w celu jego potwierdzenia. Jeżeli takie rozwiązanie nie odpowiada Ci, <a href="/contact.php">skontaktuj się z nami</a> w celu uzyskania bardziej szczegółowych informacji na temat kosztu dostawy lub możliwości złożenia zamówienia indywidualnie.</iaixsl:when>
                                <iaixsl:when test="@type='order_nonstandard_reason_worth'">Przepraszamy, ale nie zdefiniowaliśmy standardowego kosztu dostawy dla takiej wartości zamówienia. Możesz kontynuować składanie zamówienia, jednak nie zostanie w tej chwili podany wiążący nas koszt dostawy. Zostanie on ustalony indywidualnie przez naszą obsługę po przyjęciu zamówienia, po czym skontaktujemy się z Tobą w celu jego potwierdzenia. Jeżeli takie rozwiązanie nie odpowiada Ci, <a href="/contact.php">skontaktuj się z nami</a> w celu uzyskania bardziej szczegółowych informacji na temat kosztu dostawy lub możliwości złożenia zamówienia indywidualnie.</iaixsl:when>
                                <iaixsl:when test="@type='order_nonstandard_reason_weight'">Przepraszamy, ale nie zdefiniowaliśmy standardowego kosztu dostawy dla takiej wagi zamówienia. Możesz kontynuować składanie zamówienia, jednak nie zostanie w tej chwili podany wiążący nas koszt dostawy. Zostanie on ustalony indywidualnie przez naszą obsługę po przyjęciu zamówienia, po czym skontaktujemy się z Tobą w celu jego potwierdzenia. Jeżeli takie rozwiązanie nie odpowiada Ci, <a href="/contact.php">skontaktuj się z nami</a> w celu uzyskania bardziej szczegółowych informacji na temat kosztu dostawy lub możliwości złożenia zamówienia indywidualnie.</iaixsl:when>
                                <iaixsl:when test="@type='mailing_addsuccess'">Adres e-mail został dodany do listy mailingowej.</iaixsl:when>
                                <iaixsl:when test="@type='mailing_removesuccess'">Adres e-mail został usunięty z listy mailingowej.</iaixsl:when>
                                <iaixsl:when test="@type = 'mailing_nosuchemail'">Nie znaleźliśmy podanego przez Ciebie adresu e-mail w naszej bazie mailingowej.</iaixsl:when>
                                <iaixsl:when test="@type = 'mailing_sendingconfirm'">Na podany adres e-mail wysłany został list z potwierdzeniem zmian w naszej liście mailingowej. Odbierz pocztę i podążaj za wskazówkami zawartymi w wiadomości.</iaixsl:when>
                                <iaixsl:otherwise>
                                        <iaixsl:value-of disable-output-escaping="yes" select="description"/>
                                </iaixsl:otherwise>
                        </iaixsl:choose></p>
                    </iaixsl:for-each>
            </div></div>
        </iaixsl:if>


        <iaixsl:if test="/shop/order_edit/@order_number">
            <div class="menu_messages_message" id="menu_messages_warning">
                <div class="menu_messages_message_sub">
                    <p>
                        Edytujesz zamówienie numer <iaixsl:value-of select="/shop/order_edit/@order_number"/>. Dokonaj zmian w zamówieniu bądź 
                        <a>
                            <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/order_edit/@cancel_lik"/></iaixsl:attribute>
                            wróć do szczegółów zamówienia</a>.
                    </p>
                </div>
            </div>
        </iaixsl:if>


         <iaixsl:if test="/shop/return_edit/@return_id">
            <div class="menu_messages_message" id="menu_messages_warning">
                <div class="menu_messages_message_sub">
                    <p>
                        Edytujesz zwrot numer <iaixsl:value-of select="/shop/return_edit/@return_id"/>. Dokonaj zmian w zwrocie bądź wróć do 
                        <a>
                            <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/return_edit/@cancel_link"/></iaixsl:attribute>
                             szczegółów zwrotu</a>.
                    </p>
                </div>
            </div>
        </iaixsl:if>

        <!--CMS na stronie Order1 (order1_cms, 55417.1)-->
    <iaixsl:if test="page/order1/text/body">
        <div class="n55417">
            <div class="n55417_sub">
              <iaixsl:attribute name="class">n55417_sub cm</iaixsl:attribute>
                    <iaixsl:value-of disable-output-escaping="yes" select="page/order1/text/body"/>
                </div>
       
        </div>
   </iaixsl:if>
   <!--Wybór sposobu dostawy i płatności (order1, 110227.1)-->
        <iaixsl:variable name="giftcard_enable">Karta podarunkowa</iaixsl:variable>
        <iaixsl:variable name="txt_60826_advance_a">Wymagana zaliczka:</iaixsl:variable>
        <iaixsl:variable name="wholesalerPrice2">true</iaixsl:variable>
        <iaixsl:variable name="txt_68313_nz"> na zamówienie</iaixsl:variable>
        <iaixsl:variable name="txt_68313_zp">Wybiorę później</iaixsl:variable>
        <iaixsl:variable name="payments_in_row">7</iaixsl:variable>
        <iaixsl:variable name="txt_68638_rpoz">Jeśli opłacisz zamówienia przez </iaixsl:variable>
        <iaixsl:variable name="txt_68638_mxprice">true</iaixsl:variable>
        <iaixsl:variable name="hours_68638"> godz. </iaixsl:variable>
        <iaixsl:variable name="immediately_txt">Zamówienie będzie gotowe do odbioru natychmiast po przyjęciu zamówienia</iaixsl:variable>

        
        <script class="ajaxLoad">

            <iaixsl:choose>
                <iaixsl:when test="/shop/page/order1/additional/advance/@cash_on_delivery='true' and /shop/page/order1/additional/advance/@prepaid='false'">
                    var advance_type = 'dvp';
                </iaixsl:when>
                <iaixsl:when test="/shop/page/order1/additional/advance/@cash_on_delivery='false' and /shop/page/order1/additional/advance/@prepaid='true'">
                    var advance_type = 'prepaid';
                </iaixsl:when>
                <iaixsl:otherwise>
                    var advance_type = 'default';
                </iaixsl:otherwise>
            </iaixsl:choose>

            var advVal_prepaid = '<iaixsl:value-of select="/shop/page/order1/additional/advance/@value"/>';
            var advVal_dvp = '<iaixsl:value-of select="/shop/page/order1/additional/advance/@value_cod"/>';
            var advVal_mode = '<iaixsl:value-of select="/shop/page/order1/additional/first_payment/@mode"/>';

            var currency_format = '<iaixsl:value-of select="/shop/currency/option[@selected='true']/@currency_format"/>';
            var currency_before_value = <iaixsl:value-of select="/shop/currency/option[@selected='true']/@currency_before_value"/>;
            var currency_space = '<iaixsl:value-of select="/shop/currency/option[@selected='true']/@currency_space"/>';
            var currency_decimal_separator = '<iaixsl:value-of select="/shop/currency/option[@selected='true']/@currency_decimal_separator"/>';
            var currency_grouping_separator = '<iaixsl:value-of select="/shop/currency/option[@selected='true']/@currency_grouping_separator"/>';
            var symbol = '<iaixsl:value-of select="/shop/currency/option[@selected='true']/@symbol"/>';

            var order1_txt_dzien = ' dzień ';
            var order1_txt_dni = ' dni ';
            var order1_txt_godz = ' godz. ';
            var order1_txt_godz2 = '<iaixsl:value-of select="$hours_68638"/>';
            var order1_txt_min = ' min ';
            var order1_txt_do24 = ' 24h. ';
            var saldo_balance_value = '<iaixsl:value-of select="page/order1/balance/@currency_value"/>';
            var limit_balance_value = '<iaixsl:value-of select="page/order1/balance/@currency_limit"/>';

            var limit_mode = 'n'
            <iaixsl:if test="not(page/order1/balance/@allowChoosePaymentType = 'y')">
                limit_mode = '<iaixsl:value-of select="page/order1/balance/@tradeCredit"/>';
            </iaixsl:if>

            var payments_in_row = '<iaixsl:value-of select="$payments_in_row"/>';


            var saldo_payform_hide = false;
            var saldo_limit_flag = false;






            
            <iaixsl:if test="page/order1/balance/@active='y' and (page/order1/balance/@currency_value > /shop/basket/@total)">
                saldo_payform_hide = true;
            </iaixsl:if>
            <iaixsl:if test="page/order1/balance/@limit > 0">
                saldo_limit_flag = true;
            </iaixsl:if>


            var shipping_time = '<iaixsl:value-of select="/shop/basket/shipping_time/@days"/>';
            app_shop.vars.Order1 = {}

        </script>



        

        <iaixsl:if test="page/order1/order_calendar">

            <script class="ajaxLoad">
                
                app_shop.vars.Order1.calendar = {};
                app_shop.vars.Order1.calendar.D1 = <iaixsl:value-of select="page/order1/order_calendar/@date_d"/>;
                app_shop.vars.Order1.calendar.M1 = <iaixsl:value-of select="page/order1/order_calendar/@date_m"/>;
                app_shop.vars.Order1.calendar.Y1 = <iaixsl:value-of select="page/order1/order_calendar/@date_y"/>;
                app_shop.vars.Order1.calendar.Mindate = new Date(<iaixsl:value-of select="page/order1/order_calendar/@date_y"/>,<iaixsl:value-of select="page/order1/order_calendar/@date_m"/>-1,<iaixsl:value-of select="page/order1/order_calendar/@date_d"/>);
                app_shop.vars.Order1.calendar.Seldate = new Date(<iaixsl:value-of select="page/order1/order_calendar/@select_y"/>,<iaixsl:value-of select="page/order1/order_calendar/@select_m"/>-1,<iaixsl:value-of select="page/order1/order_calendar/@select_d"/>);
        var Holidays = {};
                <iaixsl:for-each select="page/order1/order_calendar/holiday">
                    Holidays["<iaixsl:value-of select="@date_d"/>_<iaixsl:value-of select="@date_m"/>_<iaixsl:value-of select="@date_y"/>"] = 1;
                </iaixsl:for-each>
        app_shop.vars.Order1.calendar.holi = 0;
                <iaixsl:if test="page/order1/order_calendar/holiday">
                app_shop.vars.Order1.calendar.holi = 1;
                </iaixsl:if>
        


            </script>
        </iaixsl:if>
        

        <script class="ajaxLoad">
            var only_virtual = '<iaixsl:value-of select="page/order1/@only-virtual"/>';
        </script>

        <form method="post" class="order1_form" onsubmit="return Order1.checkForm();">
            <iaixsl:attribute name="action"><iaixsl:value-of select="page/order1/formaction"/>
                <iaixsl:if test="(page/order1/formaction = 'order2.php')">?preview=true</iaixsl:if>
            </iaixsl:attribute>

            <div class="order1_label">

                <iaixsl:attribute name="class">big_label order1_label</iaixsl:attribute>

                <iaixsl:choose>

                    <iaixsl:when test="page/order1/balance/@active='y'">
                        <iaixsl:attribute name="class">big_label order1_label order1_balance</iaixsl:attribute>
                        <span class="order1_label">Saldo</span>

                    </iaixsl:when>

                    <iaixsl:otherwise>
                        <span class="order1_label">Wybierz sposób dostawy</span>
                    </iaixsl:otherwise>
                </iaixsl:choose>
            </div>

            

            
            <iaixsl:if test="page/order1/balance/@active='y'">
                <table id="order1_balance">
                    <tr>
                        <th>




                            <iaixsl:choose>
                                <iaixsl:when test="page/order1/balance/@limit = 0">
                                    Dostępne środki
                                </iaixsl:when>
                                <iaixsl:otherwise>
                                    Dostępny limit
                                </iaixsl:otherwise>
                            </iaixsl:choose>

                        </th>
                        <th>
                            Wartość produktów
                        </th>
                        <th>
                            Dodatkowe opłaty
                        </th>
                        <th>
                            Brakująca kwota
                        </th>
                    </tr>
                    <tr>
                        <td>
                            <iaixsl:value-of select="page/order1/balance/@currency_value"/><span class="order1_delitem_price_currency"><iaixsl:value-of select="/shop/currency/@name"/></span>
                        </td>
                        <td id="balance_products_worth">
                            -
                        </td>
                        <td id="balance_prepaid_cost">
                            -
                        </td>
                        <td id="balance_total_to_pay">
                            -
                        </td>
                    </tr>
                </table>

            </iaixsl:if>

            <iaixsl:if test="page/order1/balance/@onlyPrepaid='n' and page/order1/balance/@limit != 0">
                <div class="order1_balance_info">
                    Niestety, zamówienie przekracza dostępny limit, skontaktuj się z obsługą w celu uregulowania wcześniejszych zobowiązań bądź wybierz jedną z poniższych form opłacenia zamówienia.
                </div>
            </iaixsl:if>


            
            <div id="order1_delivery">
                <iaixsl:if test="count(page/order1/shipping/delivery) = 0">
                    <iaixsl:attribute name="style">display:none;</iaixsl:attribute>
                </iaixsl:if>

                <div id="order1_mobile_switcher" class="d-sm-none">
                    <iaixsl:if test="count(page/order1/shipping/delivery[@type = 'prepaid']) > 0">
                        <a href="#order1_prepaid">
                            <iaixsl:if test="(page/order1/shipping/delivery[@type = 'prepaid' and @checked = 'true']) or (not(page/order1/shipping/delivery[@type = 'prepaid' and @checked = 'true']) and not(page/order1/shipping/delivery[@type = 'dvp' and @checked = 'true']))">
                                <iaixsl:attribute name="class">active</iaixsl:attribute>
                            </iaixsl:if>
                            <span class="d-block d-sm-inline">Płatność</span> przed wysyłką
                        </a>
                    </iaixsl:if>
                    <iaixsl:if test="count(page/order1/shipping/delivery[@type = 'dvp']) > 0">
                        <a href="#order1_dvp">
                            <iaixsl:if test="(page/order1/shipping/delivery[@type = 'dvp' and @checked = 'true'])">
                                <iaixsl:attribute name="class">active</iaixsl:attribute>
                            </iaixsl:if>
                            <span class="d-block d-sm-inline">Płatność</span> przy odbiorze
                        </a>
                    </iaixsl:if>

                </div>



                <iaixsl:if test="count(page/order1/shipping/delivery[@type = 'prepaid']) > 0">

                    <div id="order1_prepaid" class="order1_shippings inactive_shippings">

                        <iaixsl:if test="(page/order1/shipping/delivery[@type = 'prepaid' and @checked = 'true'] or (/shop/page/order1/balance/@active='y' and /shop/page/order1/balance/@onlyPrepaid='y'))">
                            <iaixsl:attribute name="class">order1_shippings

                                <iaixsl:if test="(page/order1/shipping/delivery[@type = 'prepaid' and @checked = 'true']) or (not(page/order1/shipping/delivery[@type = 'prepaid' and @checked = 'true']) and not(page/order1/shipping/delivery[@type = 'dvp' and @checked = 'true']))">
                                     active
                                </iaixsl:if>

                            </iaixsl:attribute>
                        </iaixsl:if>

                        <iaixsl:if test="page/order1/balance/@allowChoosePaymentType = 'y'">
                            <input type="radio" name="chosenPayment" value="tradeCredit" checked="checked" style="display:none;"/>
                            <input type="radio" name="chosenPayment" value="prepaid" style="display:none;"/>
                        </iaixsl:if>

                        <div id="order1_prepaid_label" class="order1_delivery_label">
                            <div class="order1_big_checkbox" onclick="Order1.chooseDeliveryMethod($(this))">
                                <iaixsl:if test="(page/order1/shipping/delivery[@type = 'prepaid' and @checked = 'true'] or (/shop/page/order1/balance/@active='y' and /shop/page/order1/balance/@onlyPrepaid='y'))">
                                    <iaixsl:attribute name="class">order1_big_checkbox checked</iaixsl:attribute>
                                </iaixsl:if>

                            </div>

                            <iaixsl:choose>
                                <iaixsl:when test="page/order1/balance/@active='y'">
                                    <span class="order1_delivery_title">
                                        <iaixsl:if test="(page/order1/shipping/delivery[@type = 'prepaid' and @checked = 'true'] or (/shop/page/order1/balance/@active='y' and /shop/page/order1/balance/@onlyPrepaid='y'))">
                                            <iaixsl:attribute name="class">order1_delivery_title active_title</iaixsl:attribute>
                                        </iaixsl:if>
                                        <iaixsl:choose>
                                            <iaixsl:when test="page/order1/balance/@limit = 0 and page/order1/balance/@onlyPrepaid='n'">
                                                Wykorzystaj dostępne środki i dopłać resztę przed wysyłką 
                                            </iaixsl:when>
                                            <iaixsl:when test="(page/order1/balance/@limit = 0 and page/order1/balance/@onlyPrepaid='y') or (page/order1/balance/@limit != 0 and page/order1/balance/@onlyPrepaid='y' and page/order1/balance/@tradeCredit='n')">
                                                Wykorzystaj dostępne środki i wybierz sposób dostawy 
                                            </iaixsl:when>
                                            <iaixsl:when test="page/order1/balance/@limit != 0 and page/order1/balance/@onlyPrepaid='n'">
                                                <span class="d-block d-sm-inline">Płatność</span> przed wysyłką
                                            </iaixsl:when>
                                            <iaixsl:when test="page/order1/balance/@limit != 0 and page/order1/balance/@onlyPrepaid='y' and page/order1/balance/@tradeCredit='y'">
                                                Płatność kredytem kupieckim
                                            </iaixsl:when>

                                        </iaixsl:choose>
                                    </span>
                                </iaixsl:when>
                                <iaixsl:otherwise>
                                    <span class="order1_delivery_title"><iaixsl:if test="(page/order1/shipping/delivery[@type = 'prepaid' and @checked = 'true'] or (/shop/page/order1/balance/@active='y' and /shop/page/order1/balance/@onlyPrepaid='y'))">
                                        <iaixsl:attribute name="class">order1_delivery_title active_title</iaixsl:attribute>
                                    </iaixsl:if>
                                        <iaixsl:choose>
                                            <iaixsl:when test="page/order1/balance/@limit != 0 and page/order1/balance/@tradeCredit='y' and page/order1/balance/@active='n' and not(page/order1/balance/@allowChoosePaymentType='y')">
                                                Płatność kredytem kupieckim
                                            </iaixsl:when>
                                            <iaixsl:otherwise>
                                                Płatność przed wysyłką
                                            </iaixsl:otherwise>
                                        </iaixsl:choose></span>
                                </iaixsl:otherwise>
                            </iaixsl:choose>
                        </div>


                        <div id="order1_prepaid_legend" class="order1_delivery_legend">
                            <span class="order1_legend_courier_name">Nazwa kuriera</span>
                            <span class="order1_legend_courier_time">Sam transport zajmie </span>
                            <iaixsl:if test="not(/shop/page/order1/shipping/@hide_cost='true')">
                                <span class="order1_legend_courier_price">Koszt</span>
                            </iaixsl:if>
                        </div>
                        <iaixsl:for-each select="page/order1/shipping/delivery[@type = 'prepaid']">
                            
                            <div class="order1_delitem">
                                <iaixsl:if test="@sameday='true'">
                                    <iaixsl:attribute name="data-sameday">true</iaixsl:attribute>
                                </iaixsl:if>
                                <iaixsl:attribute name="onclick">Order1.working_days([<iaixsl:for-each select="working_days/item"><iaixsl:if test="position() != 1">,</iaixsl:if><iaixsl:value-of select="translate(.,'7','0')"/></iaixsl:for-each>]);Order1.chooseDelivery($(this));Order1.showFields('<iaixsl:value-of select="@id"/>','<iaixsl:choose><iaixsl:when test="@sameday = 'true'">n</iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="@calendar"/></iaixsl:otherwise></iaixsl:choose>','<iaixsl:value-of select="@deliverytime"/>','1','<iaixsl:value-of select="@time"/>','<iaixsl:choose><iaixsl:when test="@id = '0-1'"><iaixsl:value-of select="/shop/page/order1/stocks/stock[@selected = 'selected']/@pickup_days"/>#<iaixsl:value-of select="/shop/page/order1/stocks/stock[@selected = 'selected']/@pickup_hours"/>#<iaixsl:value-of select="/shop/page/order1/stocks/stock[@selected = 'selected']/@pickup_minutes"/>#<iaixsl:choose><iaixsl:when test="@today='true'">0</iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="@week_day"/></iaixsl:otherwise></iaixsl:choose>#<iaixsl:value-of select="@week_amount"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="@time_days"/>#<iaixsl:value-of select="@time_hours"/>#<iaixsl:value-of select="@time_minutes"/>#<iaixsl:choose><iaixsl:when test="@today='true'">0</iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="@week_day"/></iaixsl:otherwise></iaixsl:choose>#<iaixsl:value-of select="@week_amount"/></iaixsl:otherwise></iaixsl:choose>');</iaixsl:attribute>
                                <iaixsl:attribute name="id">delivery_<iaixsl:value-of select="@id"/></iaixsl:attribute>
                                <iaixsl:attribute name="title">
                                    <iaixsl:choose>
                                        <iaixsl:when test="@minworthreached = 'false'">Nie możesz wybrać tej metody dostawy</iaixsl:when>
                                        
                                    </iaixsl:choose>
                                </iaixsl:attribute>
                                <iaixsl:if test="@checked = 'true'">
                                    <iaixsl:attribute name="class">order1_delitem o1selected</iaixsl:attribute>
                                </iaixsl:if>
                                <iaixsl:if test="@minworthreached = 'false'">
                                    <iaixsl:attribute name="class">order1_delitem o1disabled</iaixsl:attribute>
                                    <iaixsl:attribute name="onclick"></iaixsl:attribute>
                                </iaixsl:if>
                                <div class="order1_delitem_sub">
                                    <span class="order1_delitem_radio" style="display:none;">
                                        <input type="radio" name="shipping" class="order1_delitem_radio">
                                            <iaixsl:attribute name="value"><iaixsl:value-of select="@id"/></iaixsl:attribute>
                                            <iaixsl:if test="@checked = 'true'"><iaixsl:attribute name="checked">checked</iaixsl:attribute></iaixsl:if>
                                            <iaixsl:if test="@minworthreached = 'false'"><iaixsl:attribute name="disabled">disabled</iaixsl:attribute></iaixsl:if>
                                            <iaixsl:attribute name="title"><iaixsl:value-of select="@comment"/></iaixsl:attribute>
                                        </input>
                                    </span>
                                    <div class="order1_delitem_header">
                                        <iaixsl:choose>
                                            <iaixsl:when test="@id = '93-1'">
                                                <img class="order1_delitem_icon" src="/gfx/pol/online_delivery.png?r=1598273396">
                                                    <iaixsl:attribute name="alt"><iaixsl:value-of select="@name"/></iaixsl:attribute>
                                                    <iaixsl:attribute name="title"><iaixsl:value-of select="@name"/></iaixsl:attribute>
                                                </img>
                                            </iaixsl:when>
                                            <iaixsl:otherwise>
                                                <iaixsl:if test="@icon">
                                                    <img class="order1_delitem_icon"><iaixsl:attribute name="src"><iaixsl:value-of select="@icon"/></iaixsl:attribute><iaixsl:attribute name="alt"><iaixsl:value-of select="@name"/></iaixsl:attribute><iaixsl:attribute name="title"><iaixsl:value-of select="@name"/></iaixsl:attribute></img>
                                                </iaixsl:if>
                                            </iaixsl:otherwise>
                                        </iaixsl:choose>
                                        <span class="order1_delitem_name">
                                            <iaixsl:value-of select="@name"/>

                                            <iaixsl:if test="not(@sameday='true')">
                                                <div class="order1_delitem_time">
                                                    <iaixsl:if test="@minworthreached = 'false'">
                                                        <span class="order1_delitem_time inactive_time">
                                                            Forma dostawy dostępna od 
                                                            <iaixsl:value-of select="@minworth_formatted"/>

                                                        </span>
                                                    </iaixsl:if>
                                                    <iaixsl:if test="@minworthreached = 'true'">
                                                        <span class="order1_delitem_time">
                                                            <iaixsl:choose>
                                                                <iaixsl:when test="@id = '0-1'">
                                                                    <iaixsl:choose>
                                                                        <iaixsl:when test="count(/shop/page/order1/stocks/stock) > 0">
                                                                            <iaixsl:for-each select="/shop/page/order1/stocks/stock[@selected = 'selected']">



                                                                                <iaixsl:choose>
                                                                                    <iaixsl:when test="@undefinded_time = 'true'">
                                                                                        Nieznany
                                                                                    </iaixsl:when>
                                                                                    <iaixsl:otherwise>

                                                                                        <iaixsl:choose>
                                                                                            <iaixsl:when test="$immediately_txt and (@pickup_days = 0) and (@pickup_hours = 0) and (@pickup_minutes = 0)">
                                                                                                <iaixsl:value-of select="$immediately_txt"/>
                                                                                            </iaixsl:when>
                                                                                            <iaixsl:otherwise>

                                                                                                Przygotowanie do odbioru osobistego zajmie 

                                                                                                <iaixsl:if test="@pickup_days > 0">
                                                                                                    <iaixsl:value-of select="@pickup_days"/>
                                                                                                    <iaixsl:choose>
                                                                                                        <iaixsl:when test="@pickup_days ='1'">
                                                                                                             dzień 
                                                                                                        </iaixsl:when>
                                                                                                        <iaixsl:otherwise>
                                                                                                             dni 
                                                                                                        </iaixsl:otherwise>
                                                                                                    </iaixsl:choose>
                                                                                                </iaixsl:if>


                                                                                                <iaixsl:choose>
                                                                                                    <iaixsl:when test="$hours_68638">
                                                                                                        <iaixsl:if test="@pickup_hours > 0">
                                                                                                            <iaixsl:value-of select="@pickup_hours"/>
                                                                                                            <iaixsl:choose>
                                                                                                                <iaixsl:when test="@pickup_hours > 1">
                                                                                                                    <iaixsl:value-of select="$hours_68638"/>
                                                                                                                </iaixsl:when>
                                                                                                                <iaixsl:otherwise>
                                                                                                                     godz. 
                                                                                                                </iaixsl:otherwise>
                                                                                                            </iaixsl:choose>
                                                                                                        </iaixsl:if>
                                                                                                    </iaixsl:when>
                                                                                                    <iaixsl:otherwise>
                                                                                                        <iaixsl:if test="@pickup_hours > 0">
                                                                                                            <iaixsl:value-of select="@pickup_hours"/>
                                                                                                             godz. 
                                                                                                        </iaixsl:if>
                                                                                                    </iaixsl:otherwise>
                                                                                                </iaixsl:choose>


                                                                                                <iaixsl:if test="@pickup_minutes > 0">
                                                                                                    <iaixsl:value-of select="@pickup_minutes"/>
                                                                                                     min 
                                                                                                </iaixsl:if>

                                                                                            </iaixsl:otherwise>
                                                                                        </iaixsl:choose>

                                                                                    </iaixsl:otherwise>
                                                                                </iaixsl:choose>




                                                                            </iaixsl:for-each>
                                                                        </iaixsl:when>
                                                                        <iaixsl:otherwise>
                                                                            Sam transport zajmie Nieznany
                                                                        </iaixsl:otherwise>
                                                                    </iaixsl:choose>
                                                                </iaixsl:when>
                                                                <iaixsl:otherwise>
                                                                    Sam transport zajmie 

                                                                    



                                                                    <iaixsl:choose>
                                                                        <iaixsl:when test="(@deliverytime_days = 0) and (@deliverytime_hours = 0) and (@deliverytime_minutes = 0)">
                                                                             do 24h
                                                                        </iaixsl:when>

                                                                        <iaixsl:otherwise>
                                                                            <iaixsl:if test="@deliverytime_days > 0">
                                                                                <iaixsl:value-of select="@deliverytime_days"/>
                                                                                <iaixsl:choose>
                                                                                    <iaixsl:when test="@deliverytime_days ='1'">
                                                                                         dzień 
                                                                                    </iaixsl:when>
                                                                                    <iaixsl:otherwise>
                                                                                         dni 
                                                                                    </iaixsl:otherwise>
                                                                                </iaixsl:choose>
                                                                            </iaixsl:if>

                                                                            <iaixsl:choose>
                                                                                <iaixsl:when test="$hours_68638">
                                                                                    <iaixsl:if test="@deliverytime_hours > 0">
                                                                                        <iaixsl:value-of select="@deliverytime_hours"/>
                                                                                        <iaixsl:choose>
                                                                                            <iaixsl:when test="@deliverytime_hours > 1">
                                                                                                <iaixsl:value-of select="$hours_68638"/>
                                                                                            </iaixsl:when>
                                                                                            <iaixsl:otherwise>
                                                                                                 godz. 
                                                                                            </iaixsl:otherwise>
                                                                                        </iaixsl:choose>
                                                                                    </iaixsl:if>
                                                                                </iaixsl:when>
                                                                                <iaixsl:otherwise>
                                                                                    <iaixsl:if test="@deliverytime_hours > 0">
                                                                                        <iaixsl:value-of select="@deliverytime_hours"/>
                                                                                         godz. 
                                                                                    </iaixsl:if>
                                                                                </iaixsl:otherwise>
                                                                            </iaixsl:choose>

                                                                            <iaixsl:if test="@deliverytime_minutes > 0">
                                                                                <iaixsl:value-of select="@deliverytime_minutes"/>
                                                                                 min 
                                                                            </iaixsl:if>

                                                                        </iaixsl:otherwise>
                                                                    </iaixsl:choose>



                                                                </iaixsl:otherwise>
                                                            </iaixsl:choose>
                                                        </span>
                                                    </iaixsl:if>
                                                </div>
                                            </iaixsl:if>
                                            <div class="order1_delitem_comment" style="display:none;"><iaixsl:attribute name="id">delivery_<iaixsl:value-of select="@id"/></iaixsl:attribute></div>
                                        </span>

                                    </div>

                                    <iaixsl:if test="not(/shop/page/order1/shipping/@hide_cost='true')">
                                        <div class="order1_delitem_pricebox">

                                            <iaixsl:choose>
                                                <iaixsl:when test="@points_enabled = 'false'">
                                                    <label class="order1_delitem_price">
                                                        <input type="checkbox" name="" value="" checked="checked">
                                                            <iaixsl:if test="@minworthreached = 'false'"><iaixsl:attribute name="disabled">disabled</iaixsl:attribute></iaixsl:if>
                                                        </input>
                                                        <iaixsl:value-of select="@cost_formatted"/>
                                                    </label>
                                                    <label class="order1_delitem_price_point_disabled showTip_order1">
                                                        <iaixsl:attribute name="title">Nie masz wystarczającej ilości punktów.</iaixsl:attribute>
                                                        <input class="showTip_order1" type="checkbox" disabled="disabled">
                                                            <iaixsl:attribute name="title">Nie masz wystarczającej ilości punktów.</iaixsl:attribute>
                                                        </input>

                                                        <iaixsl:value-of select="@points_cost"/> pkt.
                                                    </label>
                                                </iaixsl:when>
                                                <iaixsl:when test="@points_enabled = 'true'">

                                                    <label class="order1_delitem_price">
                                                        <input type="checkbox" name="" value="" checked="checked">
                                                            <iaixsl:if test="@minworthreached = 'false'"><iaixsl:attribute name="disabled">disabled</iaixsl:attribute></iaixsl:if>
                                                        </input>
                                                        <iaixsl:value-of select="@cost_formatted"/>
                                                    </label>
                                                    <label class="order1_delitem_price_point">
                                                        <input type="checkbox" name="" value="">
                                                            <iaixsl:if test="@minworthreached = 'false'"><iaixsl:attribute name="disabled">disabled</iaixsl:attribute></iaixsl:if>
                                                        </input>
                                                        <iaixsl:value-of select="@points_cost"/> pkt.
                                                    </label>
                                                </iaixsl:when>

                                                <iaixsl:otherwise>
                                                    <span class="order1_delitem_pricetitle"></span>

                                                    

                                                    <iaixsl:if test="@beforerebate_formatted and $txt_68638_mxprice">
                                                        <del class="order1_delitem_price_oldprice">
                                                            <iaixsl:value-of select="@beforerebate_formatted"/>
                                                        </del>
                                                    </iaixsl:if>

                                                    <span class="order1_delitem_price">
                                                        <iaixsl:choose>
                                                            <iaixsl:when test="@minworthreached = 'false'">
                                                                x
                                                            </iaixsl:when>
                                                            <iaixsl:when test="@cost > 0">
                                                                <iaixsl:if test="@limitfree > 0"><iaixsl:attribute name="title">Od <iaixsl:value-of select="@limitfree_formatted"/> gratis</iaixsl:attribute></iaixsl:if>
                                                                <iaixsl:value-of select="@cost_formatted"/>
                                                            </iaixsl:when>
                                                            <iaixsl:otherwise>
                                                                Gratis!
                                                            </iaixsl:otherwise>
                                                        </iaixsl:choose>
                                                    </span>
                                                </iaixsl:otherwise>
                                            </iaixsl:choose>
                                        </div>
                                    </iaixsl:if>




                                </div>
                            </div>
                        </iaixsl:for-each>
                        
                        <span class="order1_delivery_description"></span>

                        

                        <div id="order1_calendar_info" class="order1_dvp_time_pick">
                            <iaixsl:if test="/shop/basket/delay_time/@unknown_delivery_time = 'true'">
                                <iaixsl:attribute name="style">display:none;</iaixsl:attribute>
                            </iaixsl:if>
                            
                            
                            <div class="order1_delivery_time_pick_txt_1">
                                <span class="order1_delivery_time_pick">Przesyłka będzie u Ciebie w ciągu <span class="order1_delivery_time_pick_value"/><div class="order1_delivery_time_pick_hour"/></span>
                            </div>
                            <div class="order1_delivery_time_pick_txt_2" style="display:none;">
                                <span class="order1_delivery_time_pick">Przesyłka będzie dostarczona w dniu <span class="order1_delivery_time_pick_value"/><div class="order1_delivery_time_pick_hour"/></span>
                            </div>
                            <div class="order1_delivery_time_pick_txt_3" style="display:none;">
                                <span class="order1_delivery_time_pick">Odbierz zamówienie za <span class="order1_delivery_time_pick_value"/><div class="order1_delivery_time_pick_hour"/></span>
                            </div>
                            <div class="order1_delivery_time_pick_auto" style="display:none;">
                                <span class="order1_delivery_time_pick"><span/><span class="order1_delivery_time_pick_value"/><span class="order1_delivery_time_pick_de"/><div class="order1_delivery_time_pick_hour"/></span>
                            </div>


                            <div class="order1_time_pick_button"><a class="btn runTopLayerOrder" href="#runToplayerOrder">
                                Wybierz inny dzień dostawy</a></div>
                        </div>


                        
                        <div class="order1_comment_background">
                            <div class="order1_comment_text" id="order1_prepaid_comment_text">

                            </div>
                        </div>
                    </div>

                    


                </iaixsl:if>

                <iaixsl:if test="count(page/order1/shipping/delivery[@type = 'dvp']) > 0">

                    <div id="order1_dvp" class="order1_shippings inactive_shippings">
                        <iaixsl:if test="not(/shop/page/order1/balance/@active='y' and /shop/page/order1/balance/@onlyPrepaid='y')">
                            <iaixsl:if test="page/order1/shipping/delivery[(@type = 'dvp') and (@checked = 'true')]">
                                <iaixsl:attribute name="class">
                                    order1_shippings
                                    <iaixsl:if test="(page/order1/shipping/delivery[@type = 'dvp' and @checked = 'true'])">
                                         active
                                    </iaixsl:if>
                                </iaixsl:attribute>
                            </iaixsl:if>
                        </iaixsl:if>
                        <iaixsl:if test="/shop/page/order1/balance/@active='y' and /shop/page/order1/balance/@onlyPrepaid='y'">
                            <iaixsl:attribute name="class">order1_shippings balance_disabled</iaixsl:attribute>
                        </iaixsl:if>
                        <div id="order1_dvp_label" class="order1_delivery_label">
                            <div class="order1_big_checkbox">
                                <iaixsl:if test="not(/shop/page/order1/balance/@active='y' and /shop/page/order1/balance/@onlyPrepaid='y')">
                                    <iaixsl:attribute name="onclick">Order1.chooseDeliveryMethod($(this))</iaixsl:attribute>
                                </iaixsl:if>

                                <iaixsl:if test="page/order1/shipping/delivery[@type = 'dvp' and @checked = 'true'] and not(/shop/page/order1/balance/@active='y' and /shop/page/order1/balance/@onlyPrepaid='y')">
                                    <iaixsl:attribute name="class">order1_big_checkbox checked</iaixsl:attribute>
                                </iaixsl:if>

                            </div>



                            <iaixsl:choose>
                                <iaixsl:when test="page/order1/balance/@active='y'">
                                    <span class="order1_delivery_title">
                                        <iaixsl:if test="page/order1/shipping/delivery[@type = 'dvp' and @checked = 'true'] and not(/shop/page/order1/balance/@active='y' and /shop/page/order1/balance/@onlyPrepaid='y')">
                                            <iaixsl:attribute name="class">order1_delivery_title active_title</iaixsl:attribute>
                                        </iaixsl:if>
                                        <iaixsl:choose>
                                            <iaixsl:when test="page/order1/balance/@limit = 0 and page/order1/balance/@onlyPrepaid='n'">
                                                Wykorzystaj dostępne środki i dopłać resztę przy odbiorze
                                            </iaixsl:when>
                                            <iaixsl:when test="(page/order1/balance/@limit = 0 and page/order1/balance/@onlyPrepaid='y') or (page/order1/balance/@limit != 0 and page/order1/balance/@onlyPrepaid='y' and page/order1/balance/@tradeCredit='n')">
                                                Wykorzystaj dostępne środki i dopłać resztę przy odbiorze 
                                            </iaixsl:when>
                                            <iaixsl:when test="page/order1/balance/@limit != 0 and page/order1/balance/@onlyPrepaid='n'">
                                                <span class="d-block d-sm-inline">Płatność</span> przy odbiorze
                                            </iaixsl:when>
                                            <iaixsl:when test="page/order1/balance/@limit != 0 and page/order1/balance/@onlyPrepaid='y' and page/order1/balance/@tradeCredit='y'">
                                                Wykorzystaj dostępny limit kredytowy i dopłać resztę przy odbiorze
                                            </iaixsl:when>
                                        </iaixsl:choose>
                                    </span>
                                </iaixsl:when>
                                <iaixsl:otherwise>
                                    <span class="order1_delivery_title" id="order1_title_left">
                                        <iaixsl:if test="page/order1/shipping/delivery[@type = 'dvp' and @checked = 'true'] and not(/shop/page/order1/balance/@active='y' and /shop/page/order1/balance/@onlyPrepaid='y')">
                                            <iaixsl:attribute name="class">order1_delivery_title active_title</iaixsl:attribute>
                                        </iaixsl:if>Płatność przy odbiorze</span>
                                </iaixsl:otherwise>
                            </iaixsl:choose>





                        </div>
                        <div id="order1_dvp_legend" class="order1_delivery_legend">

                            <span class="order1_legend_courier_name">Nazwa kuriera</span>
                            <span class="order1_legend_courier_time">Sam transport zajmie </span>
                            <iaixsl:if test="not(/shop/page/order1/shipping/@hide_cost='true')">
                                <span class="order1_legend_courier_price">Koszt</span>
                            </iaixsl:if>
                        </div>
                        <iaixsl:for-each select="page/order1/shipping/delivery[@type = 'dvp']">
                            
                            <div class="order1_delitem">
                                <iaixsl:if test="@sameday='true'">
                                    <iaixsl:attribute name="data-sameday">true</iaixsl:attribute>
                                </iaixsl:if>
                                <iaixsl:if test="not(/shop/page/order1/balance/@active='y' and /shop/page/order1/balance/@onlyPrepaid='y')">       
                                    <iaixsl:attribute name="onclick">Order1.working_days([<iaixsl:for-each select="working_days/item"><iaixsl:if test="position() != 1">,</iaixsl:if><iaixsl:value-of select="translate(.,'7','0')"/></iaixsl:for-each>]);Order1.chooseDelivery($(this));Order1.showFields('<iaixsl:value-of select="@id"/>','<iaixsl:choose><iaixsl:when test="@sameday = 'true'">n</iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="@calendar"/></iaixsl:otherwise></iaixsl:choose>','<iaixsl:value-of select="@deliverytime"/>', <iaixsl:choose><iaixsl:when test="((@type = 'dvp') and (/shop/page/order1/additional/advance/@cash_on_delivery='true')) or ((@type = 'prepaid') and (/shop/page/order1/additional/advance/@prepaid='true'))">'1','</iaixsl:when><iaixsl:otherwise>'0','</iaixsl:otherwise></iaixsl:choose><iaixsl:value-of select="@time"/>','<iaixsl:choose><iaixsl:when test="@id = '0-0' or @id = '0-1'"><iaixsl:value-of select="/shop/page/order1/stocks/stock[@selected = 'selected']/@pickup_days"/>#<iaixsl:value-of select="/shop/page/order1/stocks/stock[@selected = 'selected']/@pickup_hours"/>#<iaixsl:value-of select="/shop/page/order1/stocks/stock[@selected = 'selected']/@pickup_minutes"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="@time_days"/>#<iaixsl:value-of select="@time_hours"/>#<iaixsl:value-of select="@time_minutes"/>#<iaixsl:choose><iaixsl:when test="@today='true'">0</iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="@week_day"/></iaixsl:otherwise></iaixsl:choose>#<iaixsl:value-of select="@week_amount"/></iaixsl:otherwise></iaixsl:choose>');</iaixsl:attribute>
                                </iaixsl:if>
                                <iaixsl:attribute name="id">delivery_<iaixsl:value-of select="@id"/></iaixsl:attribute>
                                <iaixsl:attribute name="title">
                                    <iaixsl:choose>
                                        <iaixsl:when test="(@minworthreached = 'false') or (/shop/page/order1/balance/@active='y' and /shop/page/order1/balance/@onlyPrepaid='y')">Nie możesz wybrać tej metody dostawy</iaixsl:when>
                                        
                                    </iaixsl:choose>
                                </iaixsl:attribute>
                                <iaixsl:if test="not(/shop/page/order1/balance/@active='y' and /shop/page/order1/balance/@onlyPrepaid='y')">       
                                    <iaixsl:if test="@checked = 'true'">
                                        <iaixsl:attribute name="class">order1_delitem o1selected</iaixsl:attribute>
                                    </iaixsl:if>
                                </iaixsl:if>
                                <iaixsl:if test="(@minworthreached = 'false') or (/shop/page/order1/balance/@active='y' and /shop/page/order1/balance/@onlyPrepaid='y')">
                                    <iaixsl:attribute name="class">order1_delitem o1disabled</iaixsl:attribute>
                                    <iaixsl:attribute name="onclick"></iaixsl:attribute>
                                </iaixsl:if>

                                <div class="order1_delitem_sub">
                                    <span class="order1_delitem_radio" style="display:none;">
                                        <input type="radio" name="shipping" class="order1_delitem_radio">
                                            <iaixsl:attribute name="value"><iaixsl:value-of select="@id"/></iaixsl:attribute>
                                            <iaixsl:if test="not(/shop/page/order1/balance/@active='y' and /shop/page/order1/balance/@onlyPrepaid='y')">
                                                <iaixsl:if test="@checked = 'true'"><iaixsl:attribute name="checked">checked</iaixsl:attribute></iaixsl:if>
                                            </iaixsl:if>

                                            <iaixsl:if test="(@minworthreached = 'false') or (/shop/page/order1/balance/@active='y' and /shop/page/order1/balance/@onlyPrepaid='y')"><iaixsl:attribute name="disabled">disabled</iaixsl:attribute></iaixsl:if>
                                            <iaixsl:attribute name="title"><iaixsl:value-of select="@comment"/></iaixsl:attribute>
                                        </input>
                                    </span>
                                    <div class="order1_delitem_header">
                                        <iaixsl:if test="@icon">
                                            <img class="order1_delitem_icon"><iaixsl:attribute name="src"><iaixsl:value-of select="@icon"/></iaixsl:attribute><iaixsl:attribute name="alt"><iaixsl:value-of select="@name"/></iaixsl:attribute><iaixsl:attribute name="title"><iaixsl:value-of select="@name"/></iaixsl:attribute></img>
                                        </iaixsl:if>
                                        <span class="order1_delitem_name">
                                            <iaixsl:value-of select="@name"/>

                                            <iaixsl:if test="not(@sameday='true')">
                                                <div class="order1_delitem_time">
                                                    <iaixsl:if test="@minworthreached = 'false'">
                                                        <span class="order1_delitem_time inactive_time">
                                                            Forma dostawy dostępna od 
                                                            <iaixsl:value-of select="@minworth_formatted"/>

                                                        </span>
                                                    </iaixsl:if>
                                                    <iaixsl:if test="@minworthreached = 'true'">
                                                        <span class="order1_delitem_time">
                                                            <iaixsl:choose>
                                                                <iaixsl:when test="@id = '0-0' or @id = '0-1'">
                                                                    <iaixsl:choose>
                                                                        <iaixsl:when test="count(/shop/page/order1/stocks/stock) > 0">
                                                                            <iaixsl:for-each select="/shop/page/order1/stocks/stock[@selected = 'selected']">



                                                                                <iaixsl:choose>
                                                                                    <iaixsl:when test="@undefinded_time = 'true'">
                                                                                        Nieznany
                                                                                    </iaixsl:when>
                                                                                    <iaixsl:otherwise>


                                                                                        <iaixsl:choose>
                                                                                            <iaixsl:when test="$immediately_txt and (@pickup_days = 0) and (@pickup_hours = 0) and (@pickup_minutes = 0)">
                                                                                                <iaixsl:value-of select="$immediately_txt"/>
                                                                                            </iaixsl:when>
                                                                                            <iaixsl:otherwise>
                                                                                                Przygotowanie do odbioru osobistego zajmie 

                                                                                                <iaixsl:if test="@pickup_days > 0">
                                                                                                    <iaixsl:value-of select="@pickup_days"/>
                                                                                                    <iaixsl:choose>
                                                                                                        <iaixsl:when test="@pickup_days ='1'">
                                                                                                             dzień 
                                                                                                        </iaixsl:when>
                                                                                                        <iaixsl:otherwise>
                                                                                                             dni 
                                                                                                        </iaixsl:otherwise>
                                                                                                    </iaixsl:choose>
                                                                                                </iaixsl:if>


                                                                                                <iaixsl:choose>
                                                                                                    <iaixsl:when test="$hours_68638">
                                                                                                        <iaixsl:if test="@pickup_hours > 0">
                                                                                                            <iaixsl:value-of select="@pickup_hours"/>
                                                                                                            <iaixsl:choose>
                                                                                                                <iaixsl:when test="@pickup_hours > 1">
                                                                                                                    <iaixsl:value-of select="$hours_68638"/>
                                                                                                                </iaixsl:when>
                                                                                                                <iaixsl:otherwise>
                                                                                                                     godz. 
                                                                                                                </iaixsl:otherwise>
                                                                                                            </iaixsl:choose>
                                                                                                        </iaixsl:if>
                                                                                                    </iaixsl:when>
                                                                                                    <iaixsl:otherwise>
                                                                                                        <iaixsl:if test="@pickup_hours > 0">
                                                                                                            <iaixsl:value-of select="@pickup_hours"/>
                                                                                                             godz. 
                                                                                                        </iaixsl:if>
                                                                                                    </iaixsl:otherwise>
                                                                                                </iaixsl:choose>


                                                                                                <iaixsl:if test="@pickup_minutes > 0">
                                                                                                    <iaixsl:value-of select="@pickup_minutes"/>
                                                                                                     min 
                                                                                                </iaixsl:if>

                                                                                            </iaixsl:otherwise>
                                                                                        </iaixsl:choose>

                                                                                    </iaixsl:otherwise>
                                                                                </iaixsl:choose>




                                                                            </iaixsl:for-each>
                                                                        </iaixsl:when>
                                                                        <iaixsl:otherwise>
                                                                            Sam transport zajmie Nieznany
                                                                        </iaixsl:otherwise>
                                                                    </iaixsl:choose>
                                                                </iaixsl:when>
                                                                <iaixsl:otherwise>
                                                                    Sam transport zajmie 

                                                                    



                                                                    <iaixsl:choose>
                                                                        <iaixsl:when test="(@deliverytime_days = 0) and (@deliverytime_hours = 0) and (@deliverytime_minutes = 0)">
                                                                             do 24h
                                                                        </iaixsl:when>

                                                                        <iaixsl:otherwise>
                                                                            <iaixsl:if test="@deliverytime_days > 0">
                                                                                <iaixsl:value-of select="@deliverytime_days"/>
                                                                                <iaixsl:choose>
                                                                                    <iaixsl:when test="@deliverytime_days ='1'">
                                                                                         dzień 
                                                                                    </iaixsl:when>
                                                                                    <iaixsl:otherwise>
                                                                                         dni 
                                                                                    </iaixsl:otherwise>
                                                                                </iaixsl:choose>
                                                                            </iaixsl:if>

                                                                            <iaixsl:choose>
                                                                                <iaixsl:when test="$hours_68638">
                                                                                    <iaixsl:if test="@deliverytime_hours > 0">
                                                                                        <iaixsl:value-of select="@deliverytime_hours"/>
                                                                                        <iaixsl:choose>
                                                                                            <iaixsl:when test="@deliverytime_hours > 1">
                                                                                                <iaixsl:value-of select="$hours_68638"/>
                                                                                            </iaixsl:when>
                                                                                            <iaixsl:otherwise>
                                                                                                 godz. 
                                                                                            </iaixsl:otherwise>
                                                                                        </iaixsl:choose>
                                                                                    </iaixsl:if>
                                                                                </iaixsl:when>
                                                                                <iaixsl:otherwise>
                                                                                    <iaixsl:if test="@deliverytime_hours > 0">
                                                                                        <iaixsl:value-of select="@deliverytime_hours"/>
                                                                                         godz. 
                                                                                    </iaixsl:if>
                                                                                </iaixsl:otherwise>
                                                                            </iaixsl:choose>




                                                                            <iaixsl:if test="@deliverytime_minutes > 0">
                                                                                <iaixsl:value-of select="@deliverytime_minutes"/>
                                                                                 min 
                                                                            </iaixsl:if>

                                                                        </iaixsl:otherwise>
                                                                    </iaixsl:choose>



                                                                </iaixsl:otherwise>
                                                            </iaixsl:choose>
                                                        </span>
                                                    </iaixsl:if>
                                                </div>
                                            </iaixsl:if>
                                            <div class="order1_delitem_comment" style="display:none;"><iaixsl:attribute name="id">delivery_<iaixsl:value-of select="@id"/></iaixsl:attribute></div>

                                        </span>



                                    </div>
                                    <iaixsl:if test="not(/shop/page/order1/shipping/@hide_cost='true')">
                                        <div class="order1_delitem_pricebox">

                                            <iaixsl:choose>
                                                <iaixsl:when test="@points_enabled = 'false'">
                                                    <label class="order1_delitem_price">
                                                        <input type="checkbox" name="" value="" checked="checked"/>
                                                        <iaixsl:value-of select="@cost_formatted"/>
                                                    </label>
                                                    <label class="order1_delitem_price_point_disabled showTip_order1">
                                                        <iaixsl:attribute name="title">Nie masz wystarczającej ilości punktów.</iaixsl:attribute>
                                                        <input class="showTip_order1" type="checkbox" disabled="disabled">
                                                            <iaixsl:attribute name="title">Nie masz wystarczającej ilości punktów.</iaixsl:attribute>
                                                        </input>
                                                        <iaixsl:value-of select="@points_cost"/> pkt.
                                                    </label>
                                                </iaixsl:when>
                                                <iaixsl:when test="@points_enabled = 'true'">

                                                    <label class="order1_delitem_price">
                                                        <input type="checkbox" name="" value="" checked="checked"/>
                                                        <iaixsl:value-of select="@cost_formatted"/>
                                                    </label>
                                                    <label class="order1_delitem_price_point">
                                                        <input type="checkbox" name="" value=""/>
                                                        <iaixsl:value-of select="@points_cost"/> pkt.
                                                    </label>
                                                </iaixsl:when>

                                                <iaixsl:otherwise>
                                                    <span class="order1_delitem_pricetitle"></span>

                                                    

                                                    <iaixsl:if test="@beforerebate_formatted and $txt_68638_mxprice">
                                                        <del class="order1_delitem_price_oldprice">
                                                            <iaixsl:value-of select="@beforerebate_formatted"/>
                                                        </del>
                                                    </iaixsl:if>

                                                    <span class="order1_delitem_price">
                                                        <iaixsl:choose>
                                                            <iaixsl:when test="@minworthreached = 'false'">
                                                                x
                                                            </iaixsl:when>
                                                            <iaixsl:when test="@cost > 0">
                                                                <iaixsl:if test="@limitfree > 0"><iaixsl:attribute name="title">Od <iaixsl:value-of select="@limitfree_formatted"/> gratis</iaixsl:attribute></iaixsl:if>
                                                                <iaixsl:value-of select="@cost_formatted"/>
                                                            </iaixsl:when>
                                                            <iaixsl:otherwise>
                                                                Gratis!
                                                            </iaixsl:otherwise>
                                                        </iaixsl:choose>
                                                    </span>
                                                </iaixsl:otherwise>
                                            </iaixsl:choose>

                                        </div>
                                    </iaixsl:if>




                                </div>
                            </div>
                        </iaixsl:for-each>
                        
                        <span class="order1_delivery_description"></span>


                        

                        <div id="order1_dvp_calendar_info" class="order1_dvp_time_pick">
                            <iaixsl:if test="/shop/basket/delay_time/@unknown_delivery_time = 'true'">
                                <iaixsl:attribute name="style">display:none;</iaixsl:attribute>
                            </iaixsl:if>
                            <iaixsl:if test="not(/shop/page/order1/balance/@active='y' and /shop/page/order1/balance/@onlyPrepaid='y')">
                                <iaixsl:attribute name="style">display:none;</iaixsl:attribute>
                            </iaixsl:if>

                            <div class="order1_delivery_time_pick_txt_1">
                                <span class="order1_delivery_time_pick">Przesyłka będzie u Ciebie w ciągu <span class="order1_delivery_time_pick_value"/><div class="order1_delivery_time_pick_hour"/></span>
                            </div>
                            <div class="order1_delivery_time_pick_txt_2" style="display:none;">
                                <span class="order1_delivery_time_pick">Przesyłka będzie dostarczona w dniu <span class="order1_delivery_time_pick_value"/><div class="order1_delivery_time_pick_hour"/></span>
                            </div>
                            <div class="order1_delivery_time_pick_txt_3" style="display:none;">
                                <span class="order1_delivery_time_pick">Odbierz zamówienie za <span class="order1_delivery_time_pick_value"/><div class="order1_delivery_time_pick_hour"/></span>
                            </div>

                            <div class="order1_delivery_time_pick_auto" style="display:none;">
                                <span class="order1_delivery_time_pick"><span/><span class="order1_delivery_time_pick_value"/><div class="order1_delivery_time_pick_hour"/></span>
                            </div>


                            <div class="order1_time_pick_button"><a class="btn runTopLayerOrder" href="#runToplayerOrder">
                                Wybierz inny dzień dostawy</a></div>
                        </div>


                        
                        <div class="order1_comment_background">
                            <div class="order1_comment_text" id="order1_dvp_comment_text">

                            </div>
                        </div>
                    </div>
                </iaixsl:if>
            </div>
            


            
            <iaixsl:if test="/shop/page/order1/shipping/delivery/@sameday = 'true'">
                <div id="order1_calendar_wrapper" class="sameday_date_wrapper">
                    <iaixsl:attribute name="style">display:none;</iaixsl:attribute>

                    <a id="show_sameday_dates" href="#showSameday" class="btn --solid --medium">Wybierz preferowany termin dostawy</a>
                    <span>* wybór jest wymagany, aby przejść dalej </span>

                    <div id="sameday_date_sub"/>
                </div>
            </iaixsl:if>


            
            <div id="order1_calendar_wrapper">

                <iaixsl:attribute name="style">display:none;</iaixsl:attribute>

                <div id="order1_calendar_standard">
                    <iaixsl:attribute name="style">display:none;</iaixsl:attribute>
                    <div class="order1_label">
                        <iaixsl:attribute name="class">big_label order1_label</iaixsl:attribute>
                        <span class="order1_label">Wybierz preferowany dzień doręczenia
                        </span>
                    </div>

                    <div class="calendar_date_selects_wrapper">

                        <div class="order1_date" id="calendar_date_select_1" onclick="Order1.chooseDate($(this));">
                            <iaixsl:attribute name="title">Kliknij, aby wybrać dostawę tego dnia</iaixsl:attribute>
                            <div class="order1_date_sub">
                                <input name="calendar_select_date" type="radio" class="order1_radio" style="display:none;">
                                </input>
                                <span class="order1_date_day"/>
                                <span class="order1_date_month"/>
                            </div>
                        </div>

                        <div class="order1_date" id="calendar_date_select_2" onclick="Order1.chooseDate($(this));">
                            <iaixsl:attribute name="title">Kliknij, aby wybrać dostawę tego dnia</iaixsl:attribute>
                            <div class="order1_date_sub">
                                <input name="calendar_select_date" type="radio" class="order1_radio" style="display:none;">
                                </input>
                                <span class="order1_date_day"/>
                                <span class="order1_date_month"/>
                            </div>
                        </div>


                        <div class="order1_date" id="calendar_date_select_3" onclick="Order1.chooseDate($(this));">
                            <iaixsl:attribute name="title">Kliknij, aby wybrać dostawę tego dnia</iaixsl:attribute>
                            <div class="order1_date_sub">
                                <input name="calendar_select_date" type="radio" class="order1_radio" style="display:none;">
                                </input>
                                <span class="order1_date_day"/>
                                <span class="order1_date_month"/>

                            </div>
                        </div>

                        <div class="order1_date" id="calendar_date_select_4" onclick="Order1.chooseDate($(this));">
                            <iaixsl:attribute name="title">Kliknij, aby wybrać dostawę tego dnia</iaixsl:attribute>
                            <div class="order1_date_sub">
                                <input name="calendar_select_date" type="radio" class="order1_radio" style="display:none;">
                                </input>
                                <span class="order1_date_day"/>
                                <span class="order1_date_month"/>
                            </div>
                        </div>

                        <div class="order1_date" id="calendar_date_select_5" onclick="Order1.chooseDate($(this));">
                            <iaixsl:attribute name="title">Kliknij, aby wybrać dostawę tego dnia</iaixsl:attribute>
                            <div class="order1_date_sub">
                                <input name="calendar_select_date" type="radio" class="order1_radio" style="display:none;">
                                </input>
                                <span class="order1_date_day"/>
                                <span class="order1_date_month"/>
                            </div>
                        </div>

                        <div class="order1_date" id="calendar_date_select_6" onclick="Order1.chooseDate($(this));">
                            <iaixsl:attribute name="title">Kliknij, aby wybrać dostawę tego dnia</iaixsl:attribute>
                            <div class="order1_date_sub">
                                <input name="calendar_select_date" type="radio" class="order1_radio" style="display:none;">
                                </input>
                                <span class="order1_date_day"/>
                                <span class="order1_date_month"/>
                            </div>
                        </div>

                        <div class="order1_date" id="calendar_date_select_7" onclick="Order1.chooseDate($(this));">
                            <iaixsl:attribute name="title">Kliknij, aby wybrać dostawę tego dnia</iaixsl:attribute>
                            <div class="order1_date_sub">
                                <input name="calendar_select_date" type="radio" class="order1_radio" style="display:none;">
                                </input>
                                <span class="order1_date_day"/>
                                <span class="order1_date_month"/>


                            </div>
                        </div>


                        <div class="order1_date" id="calendar_date_select_8">
                            <iaixsl:attribute name="title">Kliknij, aby wybrać dostawę innego dnia</iaixsl:attribute>
                            <div class="order1_date_sub">
                                <span class="order1_date_calendartxt">Inny dzień</span>
                            </div>
                            <div id="order1_calbind"/>

                        </div>
                        <div class="clearBoth"/>
                    </div>

                </div>
                <iaixsl:if test="page/order1/deliverytime_own/@use = 'true'">
                    <div id="order1_calendar_deliveryown">
                        <iaixsl:attribute name="style">display:none;</iaixsl:attribute>
                        <div class="order1_label">
                            <iaixsl:attribute name="class">big_label order1_label</iaixsl:attribute>
                            <span class="order1_label">Wybierz preferowany dzień doręczenia
                            </span>
                        </div>
                        <iaixsl:for-each select="page/order1/deliverytime_own/date">
                            <div class="order1_date" onclick="Order1.chooseDate($(this));">
                                <iaixsl:if test="@selected = 'true'">
                                    <iaixsl:attribute name="class">order1_date o1selecteddate</iaixsl:attribute>
                                </iaixsl:if>
                                <iaixsl:if test="position() = 1">

                                    <iaixsl:attribute name="id">calendar_dateown_select</iaixsl:attribute>
                                </iaixsl:if>
                                <iaixsl:attribute name="title">Kliknij, aby wybrać dostawę tego dnia</iaixsl:attribute>
                                <div class="order1_date_sub">

                                    <input name="calendar_select_date" type="radio" class="order1_radio">
                                        <iaixsl:attribute name="value"><iaixsl:value-of select="@date"/></iaixsl:attribute>
                                        <iaixsl:if test="@selected = 'true'">
                                            <iaixsl:attribute name="checked">checked</iaixsl:attribute>
                                        </iaixsl:if>
                                    </input>

                                    <span class="order1_date_day"><iaixsl:value-of select="@day"/></span>
                                    <span class="order1_date_month">
                                        <iaixsl:choose>
                                            <iaixsl:when test="@month = 1">stycznia</iaixsl:when>
                                            <iaixsl:when test="@month = 2">lutego</iaixsl:when>
                                            <iaixsl:when test="@month = 3">marca</iaixsl:when>
                                            <iaixsl:when test="@month = 4">kwietnia</iaixsl:when>
                                            <iaixsl:when test="@month = 5">maja</iaixsl:when>
                                            <iaixsl:when test="@month = 6">czerwca</iaixsl:when>
                                            <iaixsl:when test="@month = 7">lipca</iaixsl:when>
                                            <iaixsl:when test="@month = 8">sierpnia</iaixsl:when>
                                            <iaixsl:when test="@month = 9">września</iaixsl:when>
                                            <iaixsl:when test="@month = 10">października</iaixsl:when>
                                            <iaixsl:when test="@month = 11">listopada</iaixsl:when>
                                            <iaixsl:when test="@month = 12">grudnia</iaixsl:when>
                                        </iaixsl:choose>
                                    </span>
                                </div>
                            </div>
                        </iaixsl:for-each>
                    </div>
                </iaixsl:if>

                <div id="calendar_select_hour_div"><span>Możesz również podać preferowany przedział godzin (np. 13.00 - 16.00)</span><input type="text" name="calendar_select_hour" class="order1_text" MAXLENGTH="50"/></div>

            </div>


            <input type="hidden" name="calendar_select_active" id="calendar_select_active" value="0"/>

            

            
            <div id="order1_payform" class="clearfix">
                <iaixsl:if test="(page/order1/shipping/delivery[@checked='true']/@type = 'dvp') and not(/shop/page/order1/additional/advance/@cash_on_delivery='true')">
                    <iaixsl:attribute name="style">display:none</iaixsl:attribute>
                </iaixsl:if>

                
                <iaixsl:if test="/shop/page/order1/additional/advance/@value">
                    <div id="advance_value">
                        Zamówienie, przed realizacją, wymaga opłacenia zaliczki. 
                        
                        Wybierz z listy poniżej sposób, w jaki opłacisz zaliczkę.
                    </div>
                </iaixsl:if>
                

                <div id="order1_payform_label_advance" class="order1_label">
                    <iaixsl:attribute name="class">big_label order1_label</iaixsl:attribute>
                    <iaixsl:attribute name="style">display:none</iaixsl:attribute>
                    <iaixsl:if test="(page/order1/shipping/delivery[@checked='true']/@type = 'dvp') and (/shop/page/order1/additional/advance/@cash_on_delivery='true')">
                        <iaixsl:attribute name="style">display:block</iaixsl:attribute>
                    </iaixsl:if>
                    <iaixsl:if test="(page/order1/shipping/delivery[@checked='true']/@type = 'prepaid') and (/shop/page/order1/additional/advance/@prepaid='true')">
                        <iaixsl:attribute name="style">display:block</iaixsl:attribute>
                    </iaixsl:if>
                    <span class="order1_label">
                        Wybierz sposób zapłaty zaliczki
                    </span>
                </div>

                <div id="order1_payform_label_order" class="order1_label">
                    <iaixsl:attribute name="class">big_label order1_label</iaixsl:attribute>
                    
                    <iaixsl:if test="/shop/page/order1/additional/advance">
                        <iaixsl:if test="not((page/order1/shipping/delivery[@checked='true']/@type = 'dvp') and (/shop/page/order1/additional/advance/@cash_on_delivery='false') and /shop/page/order1/prepaid_methods)">
                            <iaixsl:attribute name="style">display:none</iaixsl:attribute>
                        </iaixsl:if>
                        <iaixsl:if test="not((page/order1/shipping/delivery[@checked='true']/@type = 'prepaid') and (/shop/page/order1/additional/advance/@prepaid='false') and /shop/page/order1/prepaid_methods)">
                            <iaixsl:attribute name="style">display:none</iaixsl:attribute>
                        </iaixsl:if>
                    </iaixsl:if>
                    <span class="order1_label">
                        Wybierz sposób zapłaty
                    </span>
                </div>


                <div class="order1_payitems_wrapper mb-4">
                    <iaixsl:if test="not(/shop/page/order1/prepaid_methods)">
                        <iaixsl:attribute name="style">display: none;</iaixsl:attribute>
                    </iaixsl:if>

                    
                    <iaixsl:if test="/shop/page/order1/groupList/item">
                        <iaixsl:for-each select="/shop/page/order1/groupList/item">
                                    <iaixsl:variable name="groupID"><iaixsl:value-of select="@id"/></iaixsl:variable>

                                    <iaixsl:if test="/shop/page/order1/prepaid_methods/item[@group = $groupID]">

                                        <div class="payments_group">
                                            <iaixsl:if test="/shop/page/order1/prepaid_methods/item[@group = $groupID]/@checked = 'true'">
                                                <iaixsl:attribute name="class">payments_group group_open</iaixsl:attribute>
                                            </iaixsl:if>
                                            <iaixsl:attribute name="id"><iaixsl:value-of select="@id"/>_payment</iaixsl:attribute>

                                                <iaixsl:if test="@id = 'simple_transfer'">
                                                    <input value="110" type="radio" name="payform_id" class="hidden_input">
                                                        <iaixsl:if test="not(/shop/page/order1/balance/@active='y' and /shop/page/order1/balance/@onlyPrepaid='y')">
                                                            <iaixsl:if test="/shop/page/order1/prepaid_methods/item[@group = $groupID]/@checked = 'true'">
                                                                <iaixsl:attribute name="checked">checked</iaixsl:attribute>
                                                            </iaixsl:if>
                                                        </iaixsl:if>
                                                    </input>
                                                </iaixsl:if>

                                                <iaixsl:if test="@id = 'blik'">
                                                    <input value="177" type="radio" name="payform_id" class="hidden_input">
                                                        <iaixsl:if test="not(/shop/page/order1/balance/@active='y' and /shop/page/order1/balance/@onlyPrepaid='y')">
                                                            <iaixsl:if test="/shop/page/order1/prepaid_methods/item[@group = $groupID]/@checked = 'true'">
                                                                <iaixsl:attribute name="checked">checked</iaixsl:attribute>
                                                            </iaixsl:if>
                                                        </iaixsl:if>
                                                    </input>
                                                </iaixsl:if>

                                                <input type="radio" name="selected_group" class="selected_group">
                                                    <iaixsl:attribute name="id"><iaixsl:value-of select="@id"/>_input</iaixsl:attribute>
                                                    <iaixsl:if test="not(/shop/page/order1/balance/@active='y' and /shop/page/order1/balance/@onlyPrepaid='y')">
                                                        <iaixsl:if test="/shop/page/order1/prepaid_methods/item[@group = $groupID]/@checked = 'true'">
                                                            <iaixsl:attribute name="checked">checked</iaixsl:attribute>
                                                        </iaixsl:if>
                                                    </iaixsl:if>
                                                </input>

                                            <label class="payments_group_sub_content">
                                                
                                                <span class="prepaid_payment_group_name"><iaixsl:value-of select="@name"/></span>

                                                <span class="payments_sub_container">
                                                    <span class="payments_icon_container">
                                                        <iaixsl:choose>
                                                            <iaixsl:when test="@id = 'transfer'">
                                                                <img class="payment_icon" src="//:0">
                                                                    <iaixsl:attribute name="alt"><iaixsl:value-of select="@name"/></iaixsl:attribute>
                                                                </img>
                                                                <span class="payment_icon_primary"><svg id="Component_1_1" data-name="Component 1 – 1" xmlns="http://www.w3.org/2000/svg" width="25.768" height="33.552" viewBox="0 0 25.768 33.552"><path id="Path_12" data-name="Path 12" d="M25.768,20.77V0H0V20.771H9.446v.85a2.35,2.35,0,0,1-2.36,2.334H5.764v1.5H19.969v-1.5H18.647a2.35,2.35,0,0,1-2.36-2.334v-.85h9.481ZM24.256,1.5V14.383H1.512V1.5ZM1.512,15.878H24.256v3.4H1.512ZM15.58,23.955H10.153a3.782,3.782,0,0,0,.806-2.334v-.85h3.816v.85a3.782,3.782,0,0,0,.806,2.334Zm0,0" transform="translate(0 8.102)" fill="#333"/><g id="Rectangle_15" data-name="Rectangle 15" transform="translate(6.676)" fill="#fff" stroke="#333" stroke-width="1.5"><rect width="12.991" height="16.664" rx="2" stroke="none"/><rect x="0.75" y="0.75" width="11.491" height="15.164" rx="1.25" fill="none"/></g><line id="Line_3" data-name="Line 3" y2="15.787" transform="translate(10.852 0.439)" fill="none" stroke="#333" stroke-width="1.5"/><line id="Line_4" data-name="Line 4" y2="14.91" transform="translate(14.288 1.316)" fill="none" stroke="#333" stroke-width="1.5"/><line id="Line_10" data-name="Line 10" x2="17" transform="translate(4.499 15.987)" fill="none" stroke="#333" stroke-width="1.4"/></svg></span>
                                                            </iaixsl:when>
                                                            <iaixsl:when test="@id = 'blik'">
                                                                <img class="payment_icon" src="//:0">
                                                                    <iaixsl:attribute name="alt"><iaixsl:value-of select="@name"/></iaixsl:attribute>
                                                                </img>
                                                                <span class="payment_icon_primary"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="44.087" height="20.053" viewBox="0 0 44.087 20.053"><defs><pattern id="pattern" preserveAspectRatio="xMidYMid slice" width="100%" height="100%" viewBox="0 0 327 154"><image width="327" height="154" xlink:href="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxAPEhIPDxISDxAPFRAPDw8QEhIQEBAOFRIYFxURFRUYISkjGhsnGxUTLTQhJSkrLi4xGB85ODMsNyguLi0BCgoKDg0NGxAQGjUlHyU1Mzc3NzE3Kzc3Nzc0Nzc3NzcvNzU1NTU3KzcrOCs1Mjc3NzM1Nzc1Nzc3Ky04Ny0uLf/AABEIAJoBRwMBIgACEQEDEQH/xAAcAAACAgMBAQAAAAAAAAAAAAAABgcIAgMEBQH/xABMEAABAwIBBgkHCAkDAwUAAAABAAIDBBESBQchMVGRBhMlQXFyk7PSFzVUYXOBsggUIiMzQlKxFSQyYnSSobTBQ1WDgtHTFmOiwuH/xAAaAQEAAwEBAQAAAAAAAAAAAAAAAwQFBgEC/8QAIBEBAAIBBAIDAAAAAAAAAAAAAAIDAQQFEUESIRNxkf/aAAwDAQACEQMRAD8AmmvrYqeN8872xRRAukkcbNa0c5UF8LM+sznGPJkTY4xccfO3FI71tZezR039y+/KI4SvdNFkyM2jja2onAP7Urr4Gn1Bun/qGxQzZA9uzv5bOn5y0dEMI/8AqsfK9lv0kdjF4UjWRZA8+V7LfpI7GLwo8r2W/SR2MXhSNZFkDz5Xst+kjsYvCjyvZb9JHYxeFI1kWQPPley36SOxi8KPK9lv0kdjF4UjWRZA8+V7LfpI7GLwo8r2W/SR2MXhSNZFkDz5Xst+kjsYvCjyvZb9JHYxeFI1kWQPPley36SOxi8KPK9lv0kdjF4UjWRZA8+V7LfpI7GLwo8r2W/SR2MXhSNZFkDz5Xst+kjsYvCjyvZb9JHYxeFI1kWQPPley36SOxi8KPK9lv0kdjF4UjWRZA8+V7LfpI7GLwo8r2W/SR2MXhSNZFkDz5Xst+kjsYvCjyvZb9JHYxeFI1kWQPPley36SOxi8KPK9lv0kdjF4UjWRZA8+V7LfpI7GLwo8r2W/SR2MXhSNZFkDz5Xst+kjsYvCjyvZb9JHYxeFI1kWQPPley36SOxi8KPK9lv0kdjF4UjWRZA8+V7LfpI7GLwo8r2W/SR2MXhSNZFkDz5Xst+kjsYvCjyvZb9JHYxeFI1kWQPbM8GWxp+ctPTDER8KdeBmfMuc2HKsbQ1xDRVQNIw355GE6vW3coPsiyC70EzZGtexwex4DmOabtc0i4IPOLL4oc+TtwkfJHNk2QkiACenJ+7G51pGdAcQR1ihAhZ7TfLFTfmbAPdxTUiWT3nqHLFV0Qd01I9kGFkWWdkWQYWRZZ2RZBgV8uFNfybB9ZX9WD83qdUFH7hfbK62U/sZfZyfCVSpiD5ZfQ2+gaSdAA1krKyZuBtACXTuF8JwR+p1ruduIt71HbZiuGZZWNLp5ai7Fce3zJnBMuAdUOLb6eLZbEB+846ivVHBSltaz+tjOL/ALf0XtNatzWrMxfbPPPLr69r0tcePDn7JeVeB7mgvp3GQDSY3Wx2/dI0H+iVy3+mvpUwtakjh3ksRvbUMFhMS2TZxgFwfeL7itCmcs+pMXdNthVH5avWO8FSyNCzsrQZjvM1L1qn+4kU7CVbuF9V31H+fXzPP16bvmoKwWRZZhFkGFkWWdkWQYWRZZ2RZBgjQrN5i4mnJEN2gnjKjWAf9UqQOIZ+Fv8AKEFJEWVns+MTRkeoIaAcdNpAA/12KsgQYWRZZ2RZBhZFlnZFkGFkWWdkWQYWRZZ2RZBhZFlnZFkEl/J785v/AIeX42IX35Po5Td/Dy/E1CDzc9A5YquiDumpJsnnPMOV6rog7pqSbIMLIss7IsgwsiyzsiyCYvk3j6yu6sH5vU5qDvk4j6yu6sH5vU4oObKf2Mvs5PhKpXEFdTKf2Mvs5PhKpdCEGVk9cEh+rM60l/5ykiyY+BteGOdA/QJSHRn/ANy1i33gDd61BqYedfGGntN0atVjMu/Rwa1bWtQ1q2taqtVTr5SDWpdzggCmbfXxrMPThd/i6aGNUecPcrCaVsEZuyC+Mg6HSm19w0dJKvwhxhlbpdiOnljPfotNVnsyHmem61T/AHMirKxqs3mR8z03Wqv7mRfTkj2o/wA+vmefr03fNUgKP8+vmefr03fNQVlYFlZEYWdkGFkWWdkWQYWRZZ2RZBZTMV5oh9pU96VIKj/MX5oi9rU965SAgQM+fmeo69N37FWNgVnc+fmeo69N37FWWIICyLLOyLIMLIss7IsgwsiyzsiyDCyLLOyLIMLIss7Isgkf5P45Td/Dy/ExfVlmBHKbv4eX4mL4g8/PIOV6nog7pqSrJ4zxDlap6Ie6akvCg12RZbMKMKDXZFlswowoJe+ToPrK7qwfm9TeoS+TuPrK3qwfm9Tag5sp/Yy+zk+EqmFONCuflP7GX2cnwlVS4LcCco17Q6mpnujOqZ9ooj0Odr910HiWQWqUqPMflB32tRSw6tDTLM6+wjC0D3ErZVZja4D6qqpZDseJYRvAcgSMl8LZYRgmbxzRoa4HDIOk6nc3/wCr1/8A1zSgfZ1F9mCO1+nH/hcuXc3WVKIF8tMZIxcmSnPHtAHOQPpAe5KfFArzEcYX69y1MI+OJfr3Ms8NJpgY4G8Qw6C695CCNV/u8+rSluGJdIiCzwr1VtunbLynnlrwqy+ZLzPTdaq/uZFWzCrKZlByRTdaq/uZERHlR/n18zz9em75qkBR/n08zz+0pu+agrVENC2WRCNC9TIGRZa6eOlgwCWW4aZCWs0Ak3IBOobEHl2RZST5Fcrfio+2l/8AGjyK5W/FR9tL/wCNBG1kWXpZdyPLQzyUs+AywkNfxZLmXIBFiQDqI5lw4UFjsxnmmL2tT3zk/pAzG+aYva1PfOT+gQc+fmeo69N37FWiEaFZfPn5nqOvTd+xVrgGhB9siy2YV05MydLVSx08DS+WZ2CNg5zrJOwAAknmAKDisiykTyNZX2Uvbu8CPI1lfZS9u7wII7siycOEmbuuydCairdTMZcNAbMXSPcdTWNwi5/wClPCg12RZbMKMKDXZFlswowoJEzBjlJ38PL8TELPMMOUnfw8vxMQg8/PAOVqnoh7pqTMKds7w5VqeiHumpOwoNWFGFbcKMKDVhRhW3CjCgln5PQ+srerB+b1Nahf5Po+srerB+b1NCD44A6DpB0EHUQhoA0DQBoAGoBfUIBC+OcALkgAc50BfI5Gu0tIcNoIKDJJPDfNtR5TDpGgU1XY2nYND3cwlb94evX607IQVFy7kWegmfTVTMErNlyx7Tqex33mnauDCrO5xuB8eVaYsADaqEOfSynRaS32bj+B1gD7jrCrO6NzXOY8Fr2FzHtOtr2mxB94KDVhVkcy/mim61T/AHEirnhVjszQ5JputU/3EiB2SBn08zz+0pu+an9IGfTzPP7Sm75qCuFONCdM0o5VpemTu3JPphoTpmnHKtL0yd25BZZCEIKs51H8sVo/fZ3TUuWTFnTHLNb12d01eCGoLD5j/NMXtarvnJ+SFmQHJUXtarvnJ9QIOfPzPUdem79irdTjQrI58vM9R16bv2KuVKNCDMNvoAJJ0AAXJPMAOcqw2abgKMnRfOaho+eTgXB0/N4jpEQ/e/EfdzJazN8BMRblSrboGmjiPObfbuGzT9Ee/YpnQC5cp5QipYpKid4jiiaXve7QAB/n1etdLnAAkkADSSdAA2lVrzv8PzlSb5pSuPzGBx0jVUyg24z1sHNv2WDw+HnDObLFUZTdkEeJlLD+CO/7Tv33WF/cOZeKwLCmgsurCg1YUYVtwowoNWFGFbcKMKCQcxA5Sd7CX4mL4tmYscou9hL8TEIODO4OVanoh7pqTsKdM7I5UqeiHumpQwoNWFGFbcKMKDVhRhW3CjCglXMAPrKzqwfm9TMoczBj6ys6sP5uUxoBRtnXzljJQFLSBslbIMRLheOnjOpzhzuOmw955gZFqJQxjnnUxrnHoAuqd11Y+tqZqqQkunkfKb6bBziQ31ACwA5gAgMqZSq69/GVc8k7r3HGOJa2/wCFupuoagF8yfx1O8S08j4ZBqfG4sdrva41jQNC644gFnhQS3mvzoyTSMocpuBkeQymqrBuN/NHLbRiPM4a9R06TMCqGWc40EWII0EEaiPWrRcC8qOrKGlqX/tyRM4zYZW/ReR6sTXIPaVec92RBS5QFQwWZXM4w21cfHZrz7wWHftVhlFHyh6YGjpZrfSiqcGLYySJ1x7yxiCFgFYvM55pp+tU/wBw9V2h0hWLzPjkqn61R/cPQOaQM+fmif2lN3zU/pAz5+aJ/aU3fNQV3pRoTpmpHKlL0yd25J9GNCdM1g5UpemTu3ILHoQhBVrOgOWa3rs7pi8QNXuZzxyzW9dndMXkBqCwGZQclRe1qe+cntIuZcclx+1qe9cnpAg58vM9R16bv2KLM0vAk5Tl46Zv6lA60t7jjpAARCPVpBd6tHPomzOFkE5SozRh4i46WnDnuNrMbK1zrbXWBsNtl7GRclQ0UEdLTtwRQtDGN1n1knnJOsoOtjA0BrQAAAABoAA1ABZISBnj4YTZLpGina4T1RdFHPhuyGwBcb/jIJwjpPMgTs9+cG+PJNG7X9Gtlad9O0j/AOW7aogpKbnXykgLjidckm5J0kk6ySvTZHZBgGIwrbhRhQasKMK24UYUGrCjCtuFGFA/Zjhyi72EvxNQs8yI5Qd7CT4mr4g4s645UqOiHumpRwpyzqDlOo/4e6alLCg1YUYVtwowoNWFGFbcKMKCTcw8gE1WznMcTvcHOH+VMirzmvyoKXKMJcbRzh1M8nUMYuw/ztYOglWGQaayHjI3sGgvY9gPrLSFUGlpXRPfE8WfE58TwRYh7HFpFukFXEUO51c3shlflKhYXiT6VXAwEvxj/WjaNdxrA06Li9ygivCjCtgH9NBGwr7hQaiFZXN9Qup8nUkTwQ7ig9zToLTITJhPrGK3uUV5uuAclZIypqWFlIwh4DrtNQQdDWj8FxpPPzKdQEAos+UPNbJ8DNF5KqPps2KQk77b1KagD5QWWGzVlPRMN/mjHSSgWsJZsJDTp14WtOn8XrQINKNAVi80Xmqn61R371XumZYBWGzSjkun61R370DgkDPn5on9pTd81P6QM+Xmif2lN3zUFf6IfRTnmuHKdL0yd25KFA36Kc82DeU6bpk7tyCxCEIQVdzmjlmt67O6YvKDV6+cocs1vXZ3TF5oagnrM0OTI/aVHelPCSczo5Mj9pUd6U7IEbPRUPiyVNLE4skjlpXse3W14qGEEe9d2bfhgzK1I2U2bURWjqo9VpLfttH4Xax7xzLzc+Pmeo69N37FCvAXL8mTJ2VUd3N/YniB+1hOtunnGsesbCUFp153CHIsFfTyUlQ3FHKLH8TXDS17TzEGy6cn1sdREyeFwfHK0PY4c7SF0IKq5d4Py5NqH0k4+k3TG8fsyxE/Rkb020jmIIXHhVjM4XBBmVKfC2zamG7qaU6LO543H8Lre7QeZV4khfG50UjSySNzmSMcLOa9psQUGrCjCtuFGFBqwowrbhRhQasKMK24UYUD1mUHKDvYSfE1CzzLDlB3sJPiahBx50m8p1H/ABd01KeFOGc9vKVR/wAXdNSrhQacKMK3YUYUGnCjCt2FGFBpw7LgjSCDYg8xBVg83vChuUaZpcf1mENjqG6iXAaJANjtfTccygLCuzIuVp6CZtTTOs9uhzD+xLHzseNn5awgs0hLfA/hnS5TZ9W7i52j62meRxjDzkfib+8PfbUmRB4uV+CdBVkuqKaN7jreAY5Df99hB/qtGTeBGTKYh0VLHiBuHSF8zgfUZCbJhQgEIXj8J+E1JkyIz1cgYNOBgsZZXD7sbec6vUOeyA4V8IYcm0stXOdEYOBl/pSyn9mNvrJ/yqrS1ctbUS1UxxSTvdI87CToaPUBYDoXrcOOF9TluoD3gx00ZIp6e9wwH77jzvO3m1BaaGkwBBsYywU/Zp/NkHWn796gjCp4zVDkyDrT9+9A3JBz5eaJ/aU3fNT8kHPl5om9pTd81BA2T2/RCc82Y5SpumTu3JRya36ITlm1bylTdL+7cgsAhCEFYc5A5ZreuzumLha1ehnGHLNb12d0xcjWoJzzQDk2P2lR3hTokzNGOTY/aT94U5oELPj5nqOvTd+xQJk5t2qe8+Hmio69N37FBGTG/RCCRs0vCz5pL8wnP6vUOvC4nRDOfu6dTXW/mttJU3Kq0kVxZThmu4W/Pofm87v1qmABJteaHU2Xp5j7jzoHlRlnb4F8e05RpWkzxD9YjaLmaEffA/G0bx0BSahBVGMgi4WWFPWdDgb8xlNZTt/VZ3EyNF7QTuN/cxxOjYdGqySgEGrCjCt2FGFBpwowrdhRhQO2Zofr7vYyfE1CzzOj9fd7GT4moQcmc0co1H/F3TUrYU+Z2cnOjrBNb6FQxhB5sbBhc3cGn3pJwoNOFGFbsKMKDThRhW7CjCg04UYVuwowoOJ8DmubJG50cjDiY9hLXtdtBGpNeRc62U6QBlS1ldGLDE/6qcN67RZ2jaL7SV4OFYuiBQSRT586K311JWMdziMQyN3l7fyRNn1yeAcFNWudzBzIGgn1kSH8lGD6Bp5lq/RjNiBry7nurpgWUVOylvo42Q8fINGtosGg9IPQo9q/nNbKZ6qR88rtb5Dc22DYPUF7bKBg5l0NhA1BB51HQBi7cK3YUYUGnCnfg7nKbk2ljpjSumMZkONsoZfE9ztRb60nYVhJCHa0D2c/Ef8At8vbs8KX+HWdRuVaN9E2jkhMjoncY6VrwMEgdqA9SXTQM2L6KBmxBzZNZZoXv8G8qiiqY6osMgixHADhJu0jXY7VwMiA1LItQPtRnxYw2+YSH1idnhWry8x/7fL27PCkCSjadYWH6PZsQc+WsrfpCunrRGYhO5rhG4hxbZgbrHQutrUR0jW6gt+FA3cGs5Dcl0rac0zpi10jsTZAy+JxNrEHauk5+Y/9vl7dnhSLLCHa1zHJzNiBj4dZ1mZVo5KJtHJCZHRO4x0rXAYJGv1AepKuS2fRC6Bk5mxdEcIbqQYYVvybWy0k0dVAcMkRuNjmnQ5jtoIuF8wowoHyfPkxhsaCQ+sTst8K1eXqP/b5e3Z4Ugy0bXawtX6OZsQPldntp6iN8E2TZHxytLHsMzLFp/6VH9NM15dgDmsucDXkOc1l/ohxGs2tpWz9HM2LdFTBupAYUYVuwowoNOFGFbsKMKByzQD9ePsZPiahelmcyc4zT1JH0GMETTte4gkDoDR/MEIJD4R5Dir4TBLo+9G8ftRvGpw/7c6hnLvBOroyeMjL2c00YL4yPWfu9BU9IQVs4k7DuKOKOw7irI4BsG5GAbBuQVu4o7DuKOKOw7irI4BsG5GAbBuQVu4o7DuKOKOw7irI4BsG5GAbBuQVu4o7DuKOKOw7irI4BsG5GAbBuQVu4o7DuKOKOw7irI4BsG5GAbBuQVu4o7DuKOKOw7irI4BsG5GAbBuQVu4o7DuKOKOw7irI4BsG5GAbBuQVu4o7DuKOKOw7irI4BsG5GAbBuQVu4o7DuKOKOw7irI4BsG5GAbBuQVu4o7DuKOKOw7irI4BsG5GAbBuQVu4o7DuKOKOw7irI4BsG5GAbBuQVu4o7DuKOKOw7irI4BsG5GAbBuQVu4o7DuKOKOw7irI4BsG5GAbBuQVu4o7DuKOKOw7irI4BsG5GAbBuQVu4o7DuKOKOw7irI4BsG5GAbBuQVu4o7DuKOKOw7irI4BsG5GAbBuQVu4o7DuKOKOw7irI4BsG5GAbBuQVu4o7DuKOKOw7irI4BsG5GAbBuQVu4k7DuK9/g9wMq6xwOAww6MU0rS0YefADpcf6etTkGDYNyyQcORclRUcLKeEWYznOlznHW4naSvq7UIP//Z"/></pattern></defs><path id="NoPath_kopia_28_" data-name="NoPath — kopia (28)" d="M0,0H44.087V20.053H0Z" fill="url(#pattern)"/></svg></span>
                                                            </iaixsl:when>
                                                            <iaixsl:when test="@id = 'installment'">
                                                                <img class="payment_icon" src="//:0">
                                                                    <iaixsl:attribute name="alt"><iaixsl:value-of select="@name"/></iaixsl:attribute>
                                                                </img>
                                                                <span class="payment_icon_primary"><svg xmlns="http://www.w3.org/2000/svg" width="25.418" height="25.418" viewBox="0 0 25.418 25.418"><g id="calendar_1_" transform="translate(0.25 0.25)"><path id="Path_23" data-name="Path 23" d="M22.842,2.336H19.467V.779a.779.779,0,0,0-1.557,0V2.336H13.238V.779a.779.779,0,0,0-1.557,0V2.336H7.008V.779a.779.779,0,0,0-1.557,0V2.336H2.077A2.076,2.076,0,0,0,0,4.412V22.841a2.077,2.077,0,0,0,2.077,2.077H22.842a2.076,2.076,0,0,0,2.076-2.077V4.412A2.075,2.075,0,0,0,22.842,2.336Zm.519,20.505a.52.52,0,0,1-.519.519H2.077a.52.52,0,0,1-.519-.519V4.412a.52.52,0,0,1,.519-.519H5.451V5.451a.779.779,0,0,0,1.557,0V3.893H11.68V5.451a.779.779,0,0,0,1.557,0V3.893H17.91V5.451a.779.779,0,0,0,1.557,0V3.893h3.375a.519.519,0,0,1,.519.519Z" fill="#333" stroke="#333" stroke-width="0.5"/><rect id="Rectangle_18" data-name="Rectangle 18" width="3.115" height="2.336" transform="translate(5.451 9.344)" fill="#333" stroke="#333" stroke-width="0.5"/><rect id="Rectangle_19" data-name="Rectangle 19" width="3.115" height="2.336" transform="translate(5.451 13.238)" fill="#333" stroke="#333" stroke-width="0.5"/><rect id="Rectangle_20" data-name="Rectangle 20" width="3.115" height="2.336" transform="translate(5.451 17.131)" fill="#333" stroke="#333" stroke-width="0.5"/><rect id="Rectangle_21" data-name="Rectangle 21" width="3.115" height="2.336" transform="translate(10.902 17.131)" fill="#333" stroke="#333" stroke-width="0.5"/><rect id="Rectangle_22" data-name="Rectangle 22" width="3.115" height="2.336" transform="translate(10.902 13.238)" fill="#333" stroke="#333" stroke-width="0.5"/><rect id="Rectangle_23" data-name="Rectangle 23" width="3.115" height="2.336" transform="translate(10.902 9.344)" fill="#333" stroke="#333" stroke-width="0.5"/><rect id="Rectangle_24" data-name="Rectangle 24" width="3.115" height="2.336" transform="translate(16.352 17.131)" fill="#333" stroke="#333" stroke-width="0.5"/><rect id="Rectangle_25" data-name="Rectangle 25" width="3.115" height="2.336" transform="translate(16.352 13.238)" fill="#333" stroke="#333" stroke-width="0.5"/><rect id="Rectangle_26" data-name="Rectangle 26" width="3.115" height="2.336" transform="translate(16.352 9.344)" fill="#333" stroke="#333" stroke-width="0.5"/></g></svg></span>
                                                            </iaixsl:when>
                                                            <iaixsl:when test="@id = 'card'">
                                                                <img class="payment_icon" src="//:0">
                                                                    <iaixsl:attribute name="alt"><iaixsl:value-of select="@name"/></iaixsl:attribute>
                                                                </img>
                                                                <span class="payment_icon_primary"><svg xmlns="http://www.w3.org/2000/svg" width="32" height="20.571" viewBox="0 0 32 20.571"><g id="Component_3_2" data-name="Component 3 – 2" transform="translate(0)"><g id="Rectangle_17" data-name="Rectangle 17" transform="translate(32) rotate(90)" fill="#fff" stroke="#333" stroke-width="1.7"><rect width="16" height="21.714" rx="2" stroke="none"/><rect x="0.85" y="0.85" width="14.3" height="20.014" rx="1.15" fill="none"/></g><g id="Rectangle_16" data-name="Rectangle 16" transform="translate(21.714 4.571) rotate(90)" fill="#fff" stroke="#333" stroke-width="1.7"><rect width="16" height="21.714" rx="2" stroke="none"/><rect x="0.85" y="0.85" width="14.3" height="20.014" rx="1.15" fill="none"/></g><line id="Line_5" data-name="Line 5" y2="20.571" transform="translate(21.143 12) rotate(90)" fill="none" stroke="#333" stroke-width="1.7"/><line id="Line_6" data-name="Line 6" y2="19.429" transform="translate(20 15.429) rotate(90)" fill="none" stroke="#333" stroke-width="1.7"/></g></svg></span>
                                                            </iaixsl:when>
                                                            <iaixsl:when test="@id = 'simple_transfer'">
                                                                <img class="payment_icon" src="//:0">
                                                                    <iaixsl:attribute name="alt"><iaixsl:value-of select="@name"/></iaixsl:attribute>
                                                                </img>
                                                                <span class="payment_icon_primary"><svg xmlns="http://www.w3.org/2000/svg" width="29.654" height="29.567" viewBox="0 0 29.654 29.567"><g id="Component_2_1" data-name="Component 2 – 1" transform="translate(0 0)"><path id="Path_32" data-name="Path 32" d="M311.105,359.2h7.7v1.736h-7.7Zm0,0" transform="translate(-293.086 -338.391)" fill="#333"/><path id="Path_31" data-name="Path 31" d="M234.352,419.145H246.5v1.736H234.352Zm0,0" transform="translate(-220.78 -394.869)" fill="#333"/><path id="Path_30" data-name="Path 30" d="M22.292,13.431,29.08,4.156a2.606,2.606,0,1,0-4.188-3.1L22.576,4.211,20.121,2.358,15.247,8.824,16.633,9.87l3.829-5.08,1.087.821-5.738,7.82H0V29.566H29.655V13.431Zm4-11.345a.87.87,0,0,1,1.219-.177.873.873,0,0,1,.174,1.217L25.354,6.308,23.962,5.257Zm-1.96,5.623L15.449,19.842l-1.433-1.031L22.935,6.657ZM12.8,20.466l.187-.255,1.435,1.032-.174.237-1.792.9ZM27.918,27.83H1.737V15.167h12.8l-3.373,4.6L10.137,25.5,15.4,22.842l4.525-6.184,1.092-1.492h6.9Zm0,0" transform="translate(0 0.001)" fill="#333"/></g></svg></span>
                                                            </iaixsl:when>
                                                        </iaixsl:choose>
                                                    </span>
                                                    <iaixsl:if test="not(@id = 'blik' or @id = 'simple_transfer')">
                                                        <span class="expand_button"><i class="icon-angle-down"></i></span>
                                                    </iaixsl:if>
                                                </span>

                                            </label>
                                            

                                            <iaixsl:if test="/shop/page/order1/prepaid_methods/item[@group = $groupID] and not(@id = 'blik')  and not(@id = 'simple_transfer')">
                                                <div class="payment_content">
                                                    <a class="close_popup_payment" href="#close">x</a>
                                                    <iaixsl:for-each select="/shop/page/order1/prepaid_methods/item[@group = $groupID]">
                                                        <div class="prepaid_payment">

                                                            <iaixsl:attribute name="id">payment_<iaixsl:value-of select="@id"/></iaixsl:attribute>
                                                            <iaixsl:attribute name="title">Kliknij, aby wybrać tą metodę płatności</iaixsl:attribute>
                                                            


                                                            <input name="payform_id" type="radio" class="orderdetails_radio">
                                                                <iaixsl:attribute name="value"><iaixsl:value-of select="@id"/></iaixsl:attribute>
                                                                <iaixsl:attribute name="id">payform_<iaixsl:value-of select="@id"/></iaixsl:attribute>
                                                                <iaixsl:if test="not(/shop/page/order1/balance/@active='y' and /shop/page/order1/balance/@onlyPrepaid='y')">
                                                                    <iaixsl:if test="@checked='true'">
                                                                        <iaixsl:attribute name="checked">checked</iaixsl:attribute>
                                                                    </iaixsl:if>
                                                                </iaixsl:if>
                                                            </input>


                                                            <label class="prepaid_payment_sub">
                                                                <iaixsl:attribute name="for">payform_<iaixsl:value-of select="@id"/></iaixsl:attribute>


                                                                <iaixsl:if test="@id = '190'">
                                                                    <input value="" type="hidden" name="voucher_id" disabled="disabled" style="display:none;"/>
                                                                    <input value="" type="hidden" name="pin_value" disabled="disabled" style="display:none;"/>
                                                                </iaixsl:if>

                                                                <iaixsl:if test="@id = '2'">
                                                                    <input value="" type="text" name="voucher_id" disabled="disabled" style="display:none;"/>
                                                                </iaixsl:if>

                                                                <span class="prepaid_payment_header">
                                                                    <iaixsl:value-of disable-output-escaping="yes" select="@name"/>
                                                                </span>

                                                                <iaixsl:if test="@icon != ''">
                                                                    <img class="prepaid_payment_icon"><iaixsl:attribute name="src"><iaixsl:value-of select="@icon"/></iaixsl:attribute><iaixsl:attribute name="alt"><iaixsl:value-of select="@name"/></iaixsl:attribute></img>
                                                                </iaixsl:if>
                                                            </label>

                                                            <iaixsl:if test="@description and not(@description = ' ')">
                                                                <div class="prepaid_payment_description">
                                                                    <iaixsl:attribute name="id">description_<iaixsl:value-of select="@id"/></iaixsl:attribute>
                                                                    <iaixsl:if test="@description and not(@description = ' ')">
                                                                        <iaixsl:value-of disable-output-escaping="yes" select="@description"/>
                                                                        <iaixsl:if test="(@id = '28') and (@allProducts = '0')"><span class="order1_payment_lukaswarning">Nie wszystkie umieszczone w koszyku produkty umożliwią zakup z ratami Lukas Bank. Przejdź do szczegółów każdego z produktów aby dowiedzieć się które z nich umożliwiają taki zakup. Jeżeli zdecydujesz się na zakup na raty, opłata za te produkty będzie musiała być wniesiona odrębnie pozostałymi sposobami płatności.</span></iaixsl:if>
                                                                    </iaixsl:if>
                                                                </div>
                                                            </iaixsl:if>
                                                        </div>
                                                    </iaixsl:for-each>
                                                </div>
                                            </iaixsl:if>
                                        </div>
                                    </iaixsl:if>
                                </iaixsl:for-each>
                    </iaixsl:if>
                </div>
            </div>
            

            <script class="ajaxLoad">
                app_shop.vars.Order1.working_days_arr = [<iaixsl:for-each select="page/order1/shipping/delivery[@checked='true']/working_days/item"><iaixsl:if test="position() != 1">,</iaixsl:if><iaixsl:value-of select="translate(.,'7','0')"/></iaixsl:for-each>];app_shop.vars.Order1.showFields_arr = ['<iaixsl:value-of select="page/order1/shipping/delivery[@checked='true']/@id"/>','<iaixsl:choose><iaixsl:when test="@sameday = 'true'">n</iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="page/order1/shipping/delivery[@checked='true']/@calendar"/></iaixsl:otherwise></iaixsl:choose>','<iaixsl:value-of select="page/order1/shipping/delivery[@checked='true']/@deliverytime"/>', <iaixsl:choose><iaixsl:when test="((page/order1/shipping/delivery[@checked='true']/@type = 'dvp') and (/shop/page/order1/additional/advance/@cash_on_delivery='true')) or (page/order1/shipping/delivery[@checked='true']/@type = 'prepaid')">'1','</iaixsl:when><iaixsl:otherwise>'0','</iaixsl:otherwise></iaixsl:choose><iaixsl:value-of select="page/order1/shipping/delivery[@checked='true']/@time"/>','<iaixsl:value-of select="page/order1/shipping/delivery[@checked='true']/@deliverytime_days"/>#<iaixsl:value-of select="page/order1/shipping/delivery[@checked='true']/@deliverytime_hours"/>#<iaixsl:value-of select="page/order1/shipping/delivery[@checked='true']/@deliverytime_minutes"/>#<iaixsl:choose><iaixsl:when test="page/order1/shipping/delivery[@checked='true']/@today='true'">0</iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="page/order1/shipping/delivery[@checked='true']/@week_day"/></iaixsl:otherwise></iaixsl:choose>#<iaixsl:value-of select="page/order1/shipping/delivery[@checked='true']/@week_amount"/>'];
            </script>



            
            <input type="hidden" value="0" name="shipping_for_points"/>



            <iaixsl:if test="/shop/page/order1/insurance_products/item[@service='TrustedShops']">

                <div id="insurance_products_order1" style="padding: 10px 0;">
                    <div id="tsInnerBox" style="text-align: left; border: 1px solid rgb(102, 102, 102); overflow: hidden; padding: 0 10px 15px; color: rgb(102, 102, 102); margin: 0pt auto;">

                        <div id="tsName" style="font-weight: bold; padding: 10px; border-left: 6px solid rgb(102, 102, 102); margin: -5px 0 15px -10px">
                            <iaixsl:value-of disable-output-escaping="yes" select="/shop/page/order1/insurance_products/item[@service='TrustedShops']/@name"/>
                        </div>
                        <div style="clear:both;"/>
                        <div id="tsSeal" style="float: left; padding-right: 20px; padding-left: 15px;padding-bottom:20px;">
                            <a target="_blank">
                                <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/page/order1/insurance_products/item[@service='TrustedShops']/@icon_target"/></iaixsl:attribute>
                                <img>
                                    <iaixsl:attribute name="src"><iaixsl:value-of select="/shop/page/order1/insurance_products/item[@service='TrustedShops']/@icon_src"/></iaixsl:attribute>
                                    <iaixsl:attribute name="title"><iaixsl:value-of select="/shop/page/order1/insurance_products/item[@service='TrustedShops']/@icon_title"/></iaixsl:attribute>
                                </img>
                            </a>
                        </div>
                        <div id="tsCheck" style="padding-bottom: 10px;">
                            <label>
                                <input type="checkbox" name="add_insurance" value="true" style="margin-right: 6px;">
                                    <iaixsl:if test="/shop/page/order1/insurance_products/item[@service='TrustedShops']/@checked = 'true'">
                                        <iaixsl:attribute name="checked">checked</iaixsl:attribute>
                                    </iaixsl:if>
                                </input>
                                <iaixsl:value-of disable-output-escaping="yes" select="/shop/page/order1/insurance_products/item[@service='TrustedShops']/@product_desc"/>
                            </label>
                        </div>
                        <div id="tsText">
                            <iaixsl:value-of disable-output-escaping="yes" select="/shop/page/order1/insurance_products/item[@service='TrustedShops']/@description"/>
                        </div>
                    </div>



                </div>

            </iaixsl:if>

            

            <iaixsl:if test="/shop/basket/delay_time/@unknown_delivery_time = 'true'">
                <div class="unknown_delivery_time">
                    <i class="icon-truck"></i>
                    <div>
                        <b>W koszyku jest produkt sprowadzany na zamówienie.</b> Aby oszacować czas przygotowania zamówienia do wysyłki, 
                        <a target="_blank">
                            <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/contact/link/@url"/></iaixsl:attribute>
                            skontaktuj się z obsługą sklepu.
                        </a>
                    </div>
                </div>
            </iaixsl:if>


            <div class="basketedit_summary_container">
                <div class="basketedit_summary">
                    <div class="basketedit_summary_sub">

                        <input type="hidden" name="preview" value="true"/>

                        <div class="basketedit_summary_left">

                            <iaixsl:if test="/shop/client_data/client_balance/limit/@value > '0'">
                                <div class="basketedit_limit_section">
                                    <div class="basketedit_product_summary">
                                        <label>
                                            Limit zadłużenia:
                                        </label>
                                        <strong class="limit_total">

                                            <iaixsl:value-of select="/shop/client_data/client_balance/limit/@value_formatted"/>

                                        </strong>
                                    </div>

                                    <div class="basketedit_product_summary">
                                        <label>
                                            Pozostały limit kredytowy:
                                        </label>
                                        <strong class="limit_touse">

                                            <iaixsl:value-of select="/shop/client_data/client_balance/limit/@to_use_formatted"/>

                                        </strong>
                                    </div>
                                </div>
                            </iaixsl:if>

                            <iaixsl:if test="(page/basket-details/summary/points/@debit) and (page/basket-details/summary/points/@debit > 0)">
                                <div class="basketedit_summary_debit">
                                    Po opłaceniu tego zamówienia zyskasz 
                                    <b><iaixsl:value-of select="page/basket-details/summary/points/@debit"/><span> pkt.</span></b> w programie lojalnościowym.
                                    <iaixsl:if test="/shop/basket/@client_points != '0'">
                                        Obecnie na swoim koncie masz 
                                        <b><iaixsl:value-of select="/shop/basket/@client_points"/><span> pkt.</span></b>
                                    </iaixsl:if>
                                </div>
                            </iaixsl:if>

                        </div>



                        <div class="basketedit_summary_right">

                            <div class="basketedit_calculations">
                                <div class="basketedit_product_summary">
                                    <label>
                                        Wartość zamówienia:
                                    </label>

                                    <strong class="worth_value">

                                        <iaixsl:value-of select="/shop/page/basket-details/summary/money/@beforerebate_formatted"/>

                                    </strong>
                                </div>
                                <div class="basketedit_product_summary">
                                    <label>
                                        Koszt przesyłki:
                                    </label>

                                    <strong class="shipping_value">
                                        <iaixsl:attribute name="class">shipping_value plus_sign</iaixsl:attribute> --
                                    </strong>
                                </div>
                                <div class="basketedit_product_summary">
                                    <label>
                                        Koszt formy płatności:
                                    </label>

                                    <strong class="paymentcost_value">
                                        <iaixsl:attribute name="class">paymentcost_value plus_sign</iaixsl:attribute> --
                                    </strong>
                                </div>
                                <div class="basketedit_product_summary">
                                    <label>
                                        Koszt ubezpieczenia:
                                    </label>

                                    <strong class="insurance_value">
                                        <iaixsl:attribute name="class">insurance_value plus_sign</iaixsl:attribute> --
                                    </strong>
                                </div>







                                <div class="basketedit_rabats_summary">
                                    <label>
                                        Rabat:
                                    </label>

                                    <strong>
                                        <iaixsl:attribute name="class">total_rebate minus_sign</iaixsl:attribute> --


                                    </strong>
                                </div>


                                



                                <iaixsl:if test="/shop/client_data/client_balance/balance/@is_selected_and_allowed_order='true' and /shop/client_data/client_balance/balance[@is_selected_and_allowed_order='true']/@value != 0">
                                    <div class="basketedit_product_summary">
                                        <label>
                                            Opłacone z salda:<br />(nadpłaty na koncie klienta)
                                        </label>

                                        <strong class="saldo_value">
                                            <iaixsl:attribute name="class">saldo_value minus_sign</iaixsl:attribute>

                                            <iaixsl:value-of select="/shop/client_data/client_balance/balance[@is_selected_and_allowed_order='true']/@currency_value_formatted"/>

                                        </strong>
                                    </div>
                                </iaixsl:if>

                                <div style="clear:both"/>

                            </div>

                            <div class="basketedit_total_summary">
                                <label>
                                    Do zapłaty:
                                </label>
                                <iaixsl:choose>
                                    <iaixsl:when test="(/shop/basket/@wholesaler = 'true') and not($wholesalerPrice2)">
                                        <strong class="topay_value">


                                            <iaixsl:value-of select="/shop/page/basket-details/summary/money/@total_formatted"/>

                                            <span style="font-size:16px;"> (netto)</span>
                                        </strong>
                                    </iaixsl:when>
                                    <iaixsl:otherwise>
                                        <strong class="topay_value">

                                            <iaixsl:value-of select="/shop/page/basket-details/summary/money/@total_formatted"/>

                                        </strong>
                                    </iaixsl:otherwise>
                                </iaixsl:choose>
                                <iaixsl:if test="(basket/@points_used) and (basket/@points_used != 0)">
                                    <b>
                                         + 
                                        <span><iaixsl:value-of select="basket/@points_used"/>
                                            pkt.</span>
                                    </b>
                                </iaixsl:if>
                            </div>

                            <iaixsl:if test="$txt_68638_rpoz">
                                <div style="clear:both"/>
                                <div class="basketedit_product_summary prepaid_discount_wrapper">
                                    <label>
                                        <iaixsl:value-of select="$txt_68638_rpoz"/>
                                        <span id="discount_paiment_name"/>
                                         otrzymasz dodatkowy rabat:
                                    </label>

                                    <strong class="prepaid_discount_value">
                                        <iaixsl:attribute name="class">prepaid_discount_value minus_sign</iaixsl:attribute> --
                                    </strong>
                                </div>
                            </iaixsl:if>

                            
                            <iaixsl:if test="$txt_60826_advance_a and (/shop/page/order1/additional/advance/@value > 0)">
                                <div class="basketedit_product_summary advance">
                                    <iaixsl:attribute name="style">display: none;</iaixsl:attribute>
                                    <iaixsl:if test="((page/order1/shipping/delivery[@checked='true']/@type = 'dvp') and (/shop/page/order1/additional/advance/@cash_on_delivery='true')) or ((page/order1/shipping/delivery[@checked='true']/@type = 'prepaid') and (/shop/page/order1/additional/advance/@prepaid='true'))">
                                        <iaixsl:attribute name="style">display: block;</iaixsl:attribute>
                                    </iaixsl:if>
                                    <label>Wymagana zaliczka:</label>
                                    
                                    <strong class="advance_value">--</strong>
                                </div>
                            </iaixsl:if>

                            

                        </div>


                        <div class="basketedit_summary_buttons table_display">

                            <div class="btn_wrapper">

                                <iaixsl:if test="count(page/order1/wrappers/wrapper)">
                                    <iaixsl:if test="not(page/order1/formaction = 'order2.php') and not(page/order1/formaction = 'order2.php?preview=true')">
                                        <label class="wrappers_order" for="display_wrappers"><input type="checkbox" class="bg_53687" name="display_wrappers" value="true" id="display_wrappers"/>
                                            Zaznacz to pole, jeśli chcesz zamówione produkty zapakować w dodatkowe opakowanie (np. na prezent).<br /></label>
                                    </iaixsl:if>
                                </iaixsl:if>

                            </div>

                            <iaixsl:if test="/shop/basket/delivery_time/@days and not(basket/@shipping_undefined = 'true')">

                                
                                <div class="basketedit_summary_shipment_time">
                                    <iaixsl:if test="/shop/basket/delay_time/@unknown_delivery_time = 'true'"><iaixsl:attribute name="class">basketedit_summary_shipment_time hide</iaixsl:attribute></iaixsl:if>
                                    <iaixsl:variable name="wys_1_68242"><b> dzisiaj</b></iaixsl:variable>

                                    <iaixsl:if test="$wys_1_68242 and (/shop/basket/shipping_time/@week_amount = 0) and (/shop/basket/shipping_time/@hours = 0) and (/shop/basket/shipping_time/@minutes = 0)">
                                        <div class="shipping_time_order1">
                                            Zamówienie będzie gotowe do wysłania 
                                            <iaixsl:choose>
                                                <iaixsl:when test="/shop/basket/shipping_time/@today = 'true'">
                                                    <b> dzisiaj</b>
                                                </iaixsl:when>
                                                <iaixsl:when test="/shop/basket/shipping_time/@week_day = 1">
                                                    <b> w poniedziałek</b>
                                                </iaixsl:when>
                                                <iaixsl:when test="/shop/basket/shipping_time/@week_day = 2">
                                                    <b> we wtorek</b>
                                                </iaixsl:when>
                                                <iaixsl:when test="/shop/basket/shipping_time/@week_day = 3">
                                                    <b> w środę</b>
                                                </iaixsl:when>
                                                <iaixsl:when test="/shop/basket/shipping_time/@week_day = 4">
                                                    <b> w czwartek</b>
                                                </iaixsl:when>
                                                <iaixsl:when test="/shop/basket/shipping_time/@week_day = 5">
                                                    <b> w piątek</b>
                                                </iaixsl:when>
                                                <iaixsl:when test="/shop/basket/shipping_time/@week_day = 6">
                                                    <b> w sobotę</b>
                                                </iaixsl:when>
                                                <iaixsl:when test="/shop/basket/shipping_time/@week_day = 7">
                                                    <b> w niedzielę</b>
                                                </iaixsl:when>
                                            </iaixsl:choose>
                                        </div>

                                    </iaixsl:if>

                                    <span class="order1_delivery_time_pick_txt_1" style="display:none;">
                                        Przesyłka będzie u Ciebie w ciągu 
                                    </span>
                                    <span class="order1_delivery_time_pick_txt_2" style="display:none;">
                                        Przesyłka będzie dostarczona w dniu 
                                    </span>
                                    <span class="order1_delivery_time_pick_txt_3" style="display:none;">
                                        Odbierz zamówienie za 
                                    </span>
                                    <span class="order1_delivery_time_pick_txt_4" style="display:none;">
                                        Zamówienie będzie gotowe do odbioru natychmiast po przyjęciu zamówienia
                                    </span>

                                    <span class="order1_delivery_time_pick_txt_auto" style="display:none;">

                                    </span>


                                    <b>
                                        



                                        <iaixsl:choose>
                                            <iaixsl:when test="(/shop/basket/delivery_time/@days = 0) and (/shop/basket/delivery_time/@hours = 0) and (/shop/basket/delivery_time/@minutes = 0)">
                                                 24h. 
                                            </iaixsl:when>

                                            <iaixsl:otherwise>
                                                <iaixsl:if test="/shop/basket/delivery_time/@days > 0">
                                                    <iaixsl:value-of select="/shop/basket/delivery_time/@days"/>
                                                    <iaixsl:choose>
                                                        <iaixsl:when test="/shop/basket/delivery_time/@days ='1'">
                                                             dzień 
                                                        </iaixsl:when>
                                                        <iaixsl:otherwise>
                                                             dni 
                                                        </iaixsl:otherwise>
                                                    </iaixsl:choose>
                                                </iaixsl:if>

                                                <iaixsl:choose>
                                                    <iaixsl:when test="$hours_68638">
                                                        <iaixsl:if test="/shop/basket/delivery_time/@hours > 0">
                                                            <iaixsl:value-of select="/shop/basket/delivery_time/@hours"/>
                                                            <iaixsl:choose>
                                                                <iaixsl:when test="/shop/basket/delivery_time/@hours > 1">
                                                                    <iaixsl:value-of select="$hours_68638"/>
                                                                </iaixsl:when>
                                                                <iaixsl:otherwise>
                                                                     godz. 
                                                                </iaixsl:otherwise>
                                                            </iaixsl:choose>
                                                        </iaixsl:if>
                                                    </iaixsl:when>
                                                    <iaixsl:otherwise>
                                                        <iaixsl:if test="/shop/basket/delivery_time/@hours > 0">
                                                            <iaixsl:value-of select="/shop/basket/delivery_time/@hours"/>
                                                             godz. 
                                                        </iaixsl:if>
                                                    </iaixsl:otherwise>
                                                </iaixsl:choose>

                                                <iaixsl:if test="/shop/basket/delivery_time/@minutes > 0">
                                                    <iaixsl:value-of select="/shop/basket/delivery_time/@minutes"/>
                                                     min 
                                                </iaixsl:if>

                                            </iaixsl:otherwise>
                                        </iaixsl:choose>
                                    </b>
                                </div>
                            </iaixsl:if>

                            <div class="btn_wrapper">


                                <button class="btn --solid --large --icon-right icon-angle-right order1_button" type="submit">
                                    Przejdź dalej
                                </button>


                            </div>
                        </div>
                    </div>
                </div>
            </div>


        </form>

        <iaixsl:if test="/shop/page/order1/prepaid_methods/item[@id = '190']">
            <div id="giftcard_data" class="order1_giftcard_form_wrapp" style="display: none;">
                <div class="order1_giftcard_form" id="giftcard_form">
                    <span class="big_label">Karta podarunkowa</span>
                    <p>Zapłać za zakupy swoją Kartą podarunkową</p>
                    <div class="giftcard_status">
                        <div>
                            <strong/>
                            <small/>
                        </div>
                    </div>
                    <div class="giftcard_inputs">
                        <div class="form-group">
                            <label class="control-label col-12 col-sm-2">Numer:</label>
                            <div class="has-feedback col-12 col-sm-12 has-required">
                                <input class="form-control" value="" name="voucher_id" type="text">
                                    <iaixsl:attribute name="placeholder">Podaj numer Twojej karty</iaixsl:attribute>
                                </input>
                                <span class="form-control-feedback"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-12 col-sm-2">PIN:</label>
                            <div class="has-feedback col-12 col-sm-12 has-required">
                                <input class="form-control" value="" name="pin_value" type="password">
                                    <iaixsl:attribute name="placeholder">Podaj numer PIN</iaixsl:attribute>
                                </input>
                                <span class="form-control-feedback"/>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-12 col-sm-2"/>
                        <div class="col-12 col-sm-8">
                            <button class="btn --solid --medium">Zatwierdź kartę</button>
                        </div>
                    </div>
                </div>
            </div>
        </iaixsl:if>

        <iaixsl:if test="/shop/page/order1/prepaid_methods/item[@id = '2']">
            <div id="voucher_data" class="order1_voucher_form_wrapp" style="display: none;">
                <div class="order1_giftcard_form" id="voucher_form">
                    <span class="big_label">Bon produktowy</span>
                    <p>Zapłać za zakupy bonem produktowym</p>
                    <div class="giftcard_status">
                        <div>
                            <strong/>
                            <small/>
                        </div>
                    </div>
                    <div class="giftcard_inputs">
                        <div class="form-group">
                            <label for="order1_voucher" class="control-label col-12 col-sm-2">Numer: </label>
                            <div class="has-feedback col-12 col-sm-12 has-required">
                                <input class="form-control" name="voucher_id" type="text" minlength="10"/>
                                <span class="form-control-feedback"/>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-12 col-sm-2"/>
                        <div class="col-12 col-sm-8">
                            <button class="btn --solid --medium">Zatwierdź bon</button>
                        </div>
                    </div>
                    <small>Jeżeli posiadasz więcej bonów, możesz wpisać ich numery przy podsumowaniu zamówienia.</small>
                </div>
            </div>
        </iaixsl:if>



        <script class="ajaxLoad">
            var client_data_uses_vat = '<iaixsl:value-of select="/shop/client_data/@uses_vat"/>';
        </script>


        
        <div id="alert_cover" class="projector_alert_55916" style="display:none" onclick="Alertek.hide_alert();">NIE DA SIE</div>
        
                        </div>
                    </iaixsl:if>
                </div>
             </div>

            
            <iaixsl:if test="not(action/set_render/item) or (action/set_render/item/@name = 'footer')">
                <footer>
                    <iaixsl:attribute name="class"></iaixsl:attribute>
                    <!--Newsletter (menu_newsletter, 111716.1)-->

        <iaixsl:variable name="hideLabel"></iaixsl:variable>
        <iaixsl:variable name="hideFirstname"></iaixsl:variable>

        <div id="menu_newsletter" class="container">
            <form action="/settings.php" method="post" class="row">
                <iaixsl:if test="/shop/action/settings/@url">
                    <iaixsl:attribute name="action"><iaixsl:value-of select="/shop/action/settings/@url"/></iaixsl:attribute>
                </iaixsl:if>

                <iaixsl:if test="not($hideLabel)">
                    <div class="col-md-3">
                        <iaixsl:choose>
                            <iaixsl:when test="/shop/client_data/@mailing = '1'">
                                <label></label>   
                                
                            </iaixsl:when>
                            <iaixsl:otherwise>
                                <label><b>Newsletter</b><span>Pozostań w kontakcie z nami!</span></label>
                            </iaixsl:otherwise>
                        </iaixsl:choose>
                    </div>  
                </iaixsl:if>
                
                <iaixsl:if test="not($hideFirstname)">
                    <div class="col-md-3 has-feedback">              
                            <input class="form-control validate" name="mailing_name" type="text" minlength="3" required="required">
                                <iaixsl:choose>
                                    <iaixsl:when test="/shop/client_data/@mailing = '1'">
                                        <iaixsl:attribute name="value"><iaixsl:value-of select="/shop/client_data/@firstname"/></iaixsl:attribute>                         
                                    </iaixsl:when>
                                    <iaixsl:otherwise>
                                        <iaixsl:attribute name="placeholder">Podaj Twoje imię</iaixsl:attribute>
                                    </iaixsl:otherwise>
                                </iaixsl:choose> 
                            </input>
                            <span class="form-control-feedback"/>
                    </div>
                </iaixsl:if>

                <div class="col-md-3 has-feedback">
                        <input class="form-control validate" name="mailing_email" type="text" required="required" data-validate="email">                            
                            <iaixsl:choose>
                                 <iaixsl:when test="/shop/client_data/@mailing = '1'">
                                     <iaixsl:attribute name="value"><iaixsl:value-of select="/shop/client_data/@email"/></iaixsl:attribute>
                                 </iaixsl:when>
                                 <iaixsl:otherwise>
                                     <iaixsl:attribute name="placeholder">Podaj Twój e-mail</iaixsl:attribute>
                                 </iaixsl:otherwise>       
                            </iaixsl:choose> 
                        </input>
                        <span class="form-control-feedback"/>
                </div>
                
                <div class="col-md-4 news_btn">
                    <iaixsl:choose>
                        <iaixsl:when test="/shop/client_data/@mailing = '1'">
                                 <button name="mailing_action" value="Wypisz się" type="submit" class="remove_newsletter">
                                    <iaixsl:attribute name="title"></iaixsl:attribute>
                                    Wypisz się
                                </button>
                         </iaixsl:when>       

                        <iaixsl:otherwise>
                            <button name="mailing_action" value="add" type="submit" class="btn add_newsletter">
                                <iaixsl:attribute name="title">Zapisz się</iaixsl:attribute>
                                Zapisz się <i class="icon-angle-right"></i>
                            </button>
                        </iaixsl:otherwise>
                    </iaixsl:choose>          
<div class="newsletter_txt">Odbierz bon o wartości 10 zł na swoje <b>pierwsze zakupy w 4kom.pl!</b></div>              
                </div>
            </form>
        </div>

        
        <iaixsl:if test="/shop/@menu_newsletter"></iaixsl:if>
        <iaixsl:if test="/shop/@menu_newsletter_remove"></iaixsl:if>

        <!--Menu - Drzewo 4 (menu_tree4, 106616.1)-->
            <iaixsl:variable name="hideAdress"></iaixsl:variable>
            <div id="footer_links">
                <iaixsl:choose>
                    <iaixsl:when test="count(navigation4/item) = 1 and (/shop/action/shop_information/@order_link_active='y' or /shop/action/shipping_cost/@order_link_active='y' or /shop/action/payment_methods/@order_link_active='y' or /shop/action/terms/@order_link_active='y' or /shop/action/private_policy/@order_link_active='y' or /shop/action/order_cancel/@order_link_active='y')">
                        <iaixsl:attribute name="class">row container<iaixsl:text> </iaixsl:text>four_elements</iaixsl:attribute>
                    </iaixsl:when>
                    
                    <iaixsl:when test="count(navigation4/item) = 2 and (/shop/action/shop_information/@order_link_active='n' and /shop/action/shipping_cost/@order_link_active='n' and /shop/action/payment_methods/@order_link_active='n' and /shop/action/terms/@order_link_active='n' and /shop/action/private_policy/@order_link_active='n' and /shop/action/order_cancel/@order_link_active='n')">
                        <iaixsl:attribute name="class">row container<iaixsl:text> </iaixsl:text>four_elements</iaixsl:attribute>
                    </iaixsl:when>
                    <iaixsl:otherwise>
                        <iaixsl:attribute name="class">row container</iaixsl:attribute>
                    </iaixsl:otherwise>
                </iaixsl:choose>
                
                <ul id="menu_orders" class="footer_links col-md-4 col-sm-6 col-12">
                    <iaixsl:choose>
                        <iaixsl:when test="count(navigation4/item) = 1 and (/shop/action/shop_information/@order_link_active='y' or /shop/action/shipping_cost/@order_link_active='y' or /shop/action/payment_methods/@order_link_active='y' or /shop/action/terms/@order_link_active='y' or /shop/action/private_policy/@order_link_active='y' or /shop/action/order_cancel/@order_link_active='y')">
                            <iaixsl:attribute name="class">footer_links col-md-4 col-sm-6 col-12 orders_bg</iaixsl:attribute>
                        </iaixsl:when>
                        
                        <iaixsl:when test="count(navigation4/item) = 2 and (/shop/action/shop_information/@order_link_active='n' and /shop/action/shipping_cost/@order_link_active='n' and /shop/action/payment_methods/@order_link_active='n' and /shop/action/terms/@order_link_active='n' and /shop/action/private_policy/@order_link_active='n' and /shop/action/order_cancel/@order_link_active='n')">
                            <iaixsl:attribute name="class">footer_links col-md-4 col-sm-6 col-12 orders_bg</iaixsl:attribute>
                        </iaixsl:when>
                        <iaixsl:when test="count(navigation4/item) = 0">
                            <iaixsl:attribute name="class">footer_links col-md-4 col-sm-6 col-12 orders_bg</iaixsl:attribute>
                        </iaixsl:when>
                    </iaixsl:choose>
                    <li>
                        <a id="menu_orders_header" class=" footer_links_label">
                            <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/login/@url"/></iaixsl:attribute>
                            <iaixsl:attribute name="title"></iaixsl:attribute>
                            Moje zamówienie
                        </a>
                        <ul class="footer_links_sub">
                            <li id="order_status" class="menu_orders_item">
                                <i class="icon-battery"></i>
                                <a>
                                    <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/orderOpen/@url"/></iaixsl:attribute>
                                    Status zamówienia
                                </a>
                            </li>
                            <li id="order_status2" class="menu_orders_item">
                                <i class="icon-truck"></i>
                                <a>
                                    <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/orderOpen/@url"/></iaixsl:attribute>
                                    Śledzenie przesyłki
                                </a>
                            </li>
                            <li id="order_rma" class="menu_orders_item">
                                <i class="icon-sad-face"></i>
                                <a>
                                    <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/addRma/@url"/></iaixsl:attribute>
                                    Chcę zareklamować produkt
                                </a>
                            </li>
                            <li id="order_returns" class="menu_orders_item">
                                <i class="icon-refresh-dollar"></i>
                                <a>
                                    <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/addReturn/@url"/></iaixsl:attribute>
                                    Chcę zwrócić produkt
                                </a>
                            </li>
                            <li id="order_exchange" class="menu_orders_item">
                                <i class="icon-return-box"></i>
                                <a>
                                    <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/returnExchangeLink/@url"/></iaixsl:attribute>
                                    Chcę wymienić produkt
                                </a>
                            </li>
                        </ul>
                    </li>
                </ul>
                
                <ul id="menu_account" class="footer_links col-md-4 col-sm-6 col-12">
                    <li>
                        <a id="menu_account_header" class=" footer_links_label">
                            <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/login/@url"/></iaixsl:attribute>
                            <iaixsl:attribute name="title"></iaixsl:attribute>
                            Moje konto
                        </a>
                        <ul class="footer_links_sub">
                            <iaixsl:choose>
                                <iaixsl:when test="basket/@login">
                                    <li id="account_register" class="menu_orders_item">
                                        <i class="icon-user"></i>
                                        <a>
                                            <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/loginEdit/@url"/></iaixsl:attribute>
                                            Twoje dane
                                        </a>
                                    </li>
                                </iaixsl:when>
                                <iaixsl:otherwise>
                                    <iaixsl:for-each select="/shop/action/registration_options/wholesale">
                                        <li id="account_register_wholesale" class="menu_orders_item">
                                            <i class="icon-wholesaler-register"></i>
                                            <a>
                                                <iaixsl:attribute name="href"><iaixsl:value-of select="@registration_url"/></iaixsl:attribute>
                                                Zarejestruj się jako hurtownik
                                            </a>
                                        </li>
                                    </iaixsl:for-each>
                                    <iaixsl:for-each select="/shop/action/registration_options/retail">
                                        <li id="account_register_retail" class="menu_orders_item">
                                            <i class="icon-register-card"></i>
                                            <a>
                                                <iaixsl:attribute name="href"><iaixsl:value-of select="@registration_url"/></iaixsl:attribute>
                                                Zarejestruj się
                                            </a>
                                        </li>
                                    </iaixsl:for-each>
                                </iaixsl:otherwise>
                            </iaixsl:choose>
                            <li id="account_orders" class="menu_orders_item">
                                <i class="icon-menu-lines"></i>
                                <a>
                                    <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/clientOrders/@url"/></iaixsl:attribute>
                                    Moje zamówienia
                                </a>
                            </li>
                            <li id="account_basket" class="menu_orders_item">
                                <i class="icon-basket"></i>
                                <a>
                                    <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/basket/@url"/></iaixsl:attribute>
                                    Koszyk
                                </a>
                            </li>
                            <li id="account_observed" class="menu_orders_item">
                                <i class="icon-star-empty"></i>
                                <a>
                                    <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/observed/@url"/></iaixsl:attribute>
                                    Lista zakupowa
                                </a>
                            </li>
                            <li id="account_history" class="menu_orders_item">
                                <i class="icon-clock"></i>
                                <a>
                                    <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/clientOrders/@url"/></iaixsl:attribute>
                                    Historia transakcji
                                </a>
                            </li>
                            <li id="account_rebates" class="menu_orders_item">
                                <i class="icon-scissors-cut"></i>
                                <a>
                                    <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/clientRebate/@url"/></iaixsl:attribute>
                                    Moje rabaty
                                </a>
                            </li>
                            <li id="account_newsletter" class="menu_orders_item">
                                <i class="icon-envelope-empty"></i>
                                <a>
                                    <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/newsletter/@url"/></iaixsl:attribute>
                                    Newsletter
                                </a>
                            </li>
                        </ul>
                    </li>
                </ul>
                
                
                <iaixsl:if test="/shop/action/shop_information/@order_link_active='y' or /shop/action/shipping_cost/@order_link_active='y' or /shop/action/payment_methods/@order_link_active='y' or /shop/action/terms/@order_link_active='y' or /shop/action/private_policy/@order_link_active='y' or /shop/action/order_cancel/@order_link_active='y'">

                    <ul id="menu_regulations" class="footer_links col-md-4 col-sm-6 col-12">
                        <li><span class="footer_links_label">Regulaminy</span>
                            <ul class="footer_links_sub">
                                <iaixsl:if test="/shop/action/shop_information/@order_link_active='y' and not(/shop/action/shop_information/@url = '')">
                                    <li>
                                        <a>
                                            <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/shop_information/@url"/></iaixsl:attribute>
                                            Informacje o sklepie
                                        </a>
                                    </li>
                                </iaixsl:if>
                                <iaixsl:if test="/shop/action/shipping_cost/@order_link_active='y' and not(/shop/action/shipping_cost/@url = '')">
                                    <li>
                                        <a>
                                            <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/shipping_cost/@url"/></iaixsl:attribute>
                                            Wysyłka
                                        </a>
                                    </li>
                                </iaixsl:if>
                                <iaixsl:if test="/shop/action/payment_methods/@order_link_active='y' and not(/shop/action/payment_methods/@url = '')">
                                    <li>
                                        <a>
                                            <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/payment_methods/@url"/></iaixsl:attribute>
                                            Sposoby płatności i prowizje
                                        </a>
                                    </li>
                                </iaixsl:if>
                                <iaixsl:if test="/shop/action/terms/@order_link_active='y' and not(/shop/action/terms/@url = '')">
                                    <li>
                                        <a>
                                            <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/terms/@url"/></iaixsl:attribute>
                                            Regulamin
                                        </a>
                                    </li>
                                </iaixsl:if>
                                <iaixsl:if test="/shop/action/private_policy/@order_link_active='y' and not(/shop/action/private_policy/@url = '')">
                                    <li>
                                        <a>
                                            <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/private_policy/@url"/></iaixsl:attribute>
                                            Polityka prywatności
                                        </a>
                                    </li>
                                </iaixsl:if>
                                <iaixsl:if test="/shop/action/order_cancel/@order_link_active='y' and not(/shop/action/order_cancel/@url = '')">
                                    <li>
                                        <a>
                                            <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/order_cancel/@url"/></iaixsl:attribute>
                                            Odstąpienie od umowy
                                        </a>
                                    </li>
                                </iaixsl:if>
                            </ul>
                        </li>
                    </ul>
                </iaixsl:if>
                
                
                
                <iaixsl:if test="navigation4/item">
                    <iaixsl:for-each select="navigation4/item">
                        <ul class="footer_links col-md-4 col-sm-6 col-12">
                            <iaixsl:attribute name="id">links_footer_<iaixsl:value-of select="position()"/></iaixsl:attribute>
                            <li>
                                <iaixsl:choose>
                                    <iaixsl:when test="@link">
                                        <iaixsl:text disable-output-escaping="yes">&lt;a href="</iaixsl:text>
                                        <iaixsl:value-of select="@link"/>
                                        <iaixsl:text disable-output-escaping="yes">" target="</iaixsl:text><iaixsl:value-of select="@target"/>
                                        <iaixsl:text disable-output-escaping="yes">" title="</iaixsl:text><iaixsl:value-of select="@name"/>
                                        <iaixsl:text disable-output-escaping="yes">" class="footer_links_label</iaixsl:text>
                                        <iaixsl:text disable-output-escaping="yes">" &gt;</iaixsl:text>
                                    </iaixsl:when>
                                    <iaixsl:otherwise>
                                        <iaixsl:text disable-output-escaping="yes">&lt;span </iaixsl:text>
                                        <iaixsl:text disable-output-escaping="yes"> title="</iaixsl:text><iaixsl:value-of select="@name"/>
                                        <iaixsl:text disable-output-escaping="yes">" class="footer_links_label</iaixsl:text>
                                        <iaixsl:text disable-output-escaping="yes">" &gt;</iaixsl:text>
                                    </iaixsl:otherwise>
                                </iaixsl:choose>
                                <iaixsl:if test="@gfx">
                                    <img>
                                        <iaixsl:attribute name="alt"><iaixsl:value-of disable-output-escaping="yes" select="@name"/></iaixsl:attribute>
                                        <iaixsl:attribute name="src"><iaixsl:value-of select="@gfx"/></iaixsl:attribute>
                                        <iaixsl:if test="@gfx_onmouseover">
                                            <iaixsl:attribute name="data-onmouseover"><iaixsl:value-of disable-output-escaping="yes" select="@gfx_onmouseover"/></iaixsl:attribute>
                                        </iaixsl:if>
                                    </img>
                                </iaixsl:if>
                                <iaixsl:if test="not(@gfx)">
                                    <span><iaixsl:value-of disable-output-escaping="yes" select="@name"/></span>
                                </iaixsl:if>
                                <iaixsl:choose>
                                    <iaixsl:when test="@link">
                                        <iaixsl:text disable-output-escaping="yes">&lt;/a&gt;</iaixsl:text>
                                    </iaixsl:when>
                                    <iaixsl:otherwise>
                                        <iaixsl:text disable-output-escaping="yes">&lt;/span&gt;</iaixsl:text>
                                    </iaixsl:otherwise>
                                </iaixsl:choose>
                                <iaixsl:if test="item">
                                    <ul class="footer_links_sub">
                                        <iaixsl:for-each select="item">

                                            <li>
                                                <iaixsl:choose>
                                                    <iaixsl:when test="@link">
                                                        <iaixsl:text disable-output-escaping="yes">&lt;a</iaixsl:text>
                                                        <iaixsl:text disable-output-escaping="yes"> href="</iaixsl:text>
                                                        <iaixsl:value-of select="@link"/>
                                                        <iaixsl:text disable-output-escaping="yes">" target="</iaixsl:text><iaixsl:value-of select="@target"/>
                                                        <iaixsl:text disable-output-escaping="yes">" title="</iaixsl:text><iaixsl:value-of select="@name"/>
                                                        <iaixsl:text disable-output-escaping="yes">" &gt;</iaixsl:text>
                                                    </iaixsl:when>
                                                    <iaixsl:otherwise>
                                                        <iaixsl:text disable-output-escaping="yes">&lt;span</iaixsl:text>
                                                        <iaixsl:text disable-output-escaping="yes"> title="</iaixsl:text>
                                                        <iaixsl:text disable-output-escaping="yes">" &gt;</iaixsl:text>
                                                    </iaixsl:otherwise>
                                                </iaixsl:choose>

                                                <iaixsl:if test="@gfx">
                                                    <img>
                                                        <iaixsl:attribute name="alt"><iaixsl:value-of disable-output-escaping="yes" select="@name"/></iaixsl:attribute>
                                                        <iaixsl:attribute name="src"><iaixsl:value-of select="@gfx"/></iaixsl:attribute>
                                                        <iaixsl:if test="@gfx_onmouseover">
                                                            <iaixsl:attribute name="data-onmouseover"><iaixsl:value-of disable-output-escaping="yes" select="@gfx_onmouseover"/></iaixsl:attribute>
                                                        </iaixsl:if>
                                                    </img>
                                                </iaixsl:if>
                                                <iaixsl:if test="not(@gfx)">
                                                    <span><iaixsl:value-of disable-output-escaping="yes" select="@name"/></span>
                                                </iaixsl:if>
                                                <iaixsl:choose>
                                                    <iaixsl:when test="@link">
                                                        <iaixsl:text disable-output-escaping="yes">&lt;/a&gt;</iaixsl:text>
                                                    </iaixsl:when>
                                                    <iaixsl:otherwise>
                                                        <iaixsl:text disable-output-escaping="yes">&lt;/span&gt;</iaixsl:text>
                                                    </iaixsl:otherwise>
                                                </iaixsl:choose>

                                            </li>
                                        </iaixsl:for-each>
                                    </ul>
                                </iaixsl:if>
                            </li>
                        </ul>
                    </iaixsl:for-each>
                    <iaixsl:if test="opinions/service or insurances/service">
                        <iaixsl:if test="insurances/service">
                            <div id="menu_insurances" class="col-md-6 col-12 mb-4">
                                <iaixsl:for-each select="insurances/service">
                                    <div class="menu_insurances_item">
                                        <iaixsl:value-of disable-output-escaping="yes" select="sealbox_html"/>
                                    </div>
                                </iaixsl:for-each>
                            </div>
                        </iaixsl:if>
                    </iaixsl:if>
                </iaixsl:if>
            </div>
        <!--Bannery sekcji 2 (menu_banners2, 77615.1)-->


        <!--Dane kontaktowe w menu (menu_contact, 106454.1)-->
            <div id="menu_contact" class="container clearfix">
                <ul >
                    <li class="contact_type_header">
                        <a href="contact.php">
                            <iaixsl:if test="/shop/action/contact/@url">
                                <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/contact/@url"/></iaixsl:attribute>
                            </iaixsl:if>   

                            <iaixsl:attribute name="title"></iaixsl:attribute>
                            Kontakt
                        </a>  
                    </li>
                    <iaixsl:for-each select="/shop/contact/contact_nodes/node[@type='phone'][1]">
                        <li class="contact_type_phone">
                            <iaixsl:choose>
                                <iaixsl:when test="@link">                    
                                    <a>
                                        <iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
                                        <iaixsl:value-of select="@value"/>
                                    </a>        
                                </iaixsl:when>
                                <iaixsl:otherwise>
                                    <span><iaixsl:value-of select="@value"/></span>
                                </iaixsl:otherwise>
                            </iaixsl:choose>
                        </li>    
                    </iaixsl:for-each>
                    
                    <iaixsl:for-each select="/shop/contact/contact_nodes/node[@type='text'][1]">  
                        <li class="contact_type_text">
                            <span><iaixsl:value-of select="@value"/></span>   
                        </li>                       
                    </iaixsl:for-each>

                    <iaixsl:for-each select="/shop/contact/contact_nodes/node[@type='mail'][1]">
                        <li class="contact_type_mail">
                            <iaixsl:choose>
                                <iaixsl:when test="@link">                   
                                    <a>
                                        <iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
                                        <iaixsl:value-of select="@value"/>
                                    </a>                    
                                </iaixsl:when>
                                <iaixsl:otherwise>
                                    <span><iaixsl:value-of select="@value"/></span>
                                </iaixsl:otherwise>
                            </iaixsl:choose>    
                        </li>                          
                    </iaixsl:for-each>            

                    <iaixsl:if test="not($hideAdress)"> 
                        <li class="contact_type_adress">                           
                            <span class="shopshortname">
                                <iaixsl:value-of select="contact/owner/@shopshortname"/>
                                <span>, </span>
                            </span>
                            <span class="adress_street">
                                <iaixsl:value-of select="contact/adress/@street"/>
                                <span>, </span>
                            </span>
                            <span class="adress_zipcode">                   
                                <iaixsl:value-of select="contact/adress/@zipcode"/>
                                <span class="n55931_city"><iaixsl:text> </iaixsl:text><iaixsl:value-of select="contact/adress/@city"/></span>
                            </span>
                        </li>    
                    </iaixsl:if>                   
                </ul>
                <div class="logo_iai">
                    <iaixsl:if test="/shop/iai/@button_src">
                        <iaixsl:choose>
                            <iaixsl:when test="/shop/iai/@is_mobile_application = 'yes'">
                                <span class="n53399_iailogo">
                                    <img class="n53399_iailogo">
                                        <iaixsl:attribute name="src"><iaixsl:value-of select="/shop/iai/@button_src"/></iaixsl:attribute>
                                        <iaixsl:attribute name="alt"><iaixsl:value-of select="/shop/iai/@button_text"/></iaixsl:attribute>
                                    </img>
                                </span>
                            </iaixsl:when>
                            <iaixsl:otherwise>
                                <a class="n53399_iailogo" target="_blank">
                                    <iaixsl:if test="/shop/iai/@button_target">
                                        <iaixsl:attribute name="target"><iaixsl:value-of select="/shop/iai/@button_target"/></iaixsl:attribute>
                                    </iaixsl:if>
                                    <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/iai/@button_link"/></iaixsl:attribute>
                                    <iaixsl:attribute name="title"><iaixsl:value-of select="/shop/iai/@button_text"/></iaixsl:attribute>
                                    <img class="n53399_iailogo">
                                        <iaixsl:attribute name="src"><iaixsl:value-of select="/shop/iai/@button_src"/></iaixsl:attribute>
                                        <iaixsl:attribute name="alt"><iaixsl:value-of select="/shop/iai/@button_text"/></iaixsl:attribute>
                                    </img>
                                </a>
                            </iaixsl:otherwise>
                        </iaixsl:choose>
                    </iaixsl:if>
                </div>
            </div>

            <iaixsl:if test="/shop/iai/@mobile_link">
                <div class="rwdswicher">
                    <a class="rs-link">
                        <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/iai/@mobile_link"/></iaixsl:attribute>
                        
                    </a>
                </div>
            </iaixsl:if> 
        <!--Stopka (menu_footer, 106456.1)-->
             <iaixsl:if test="/shop/iai/@button_src"/>
        <!--Podpowiedzi - Tooltip (menu_tooltip, 108066.1)-->
            <iaixsl:if test="(/shop/iai/@is_mobile_application = 'yes')"> 
                <script>
                    app_shop.vars.isMobileApp = true;
                </script>
            </iaixsl:if>
        <!--Menu kalendarz (menu_calendar, 107960.1)-->

        <!--Kalkulatory rat (menu_instalment, 108070.1)-->

        <script>
            var instalment_currency = '<iaixsl:value-of select="/shop/currency/@name"/>';
            <iaixsl:choose>
                <iaixsl:when test="page/@type = 'projector'">
                    var koszyk_raty = parseFloat(<iaixsl:value-of select="/shop/basket/@cost"/>);
                </iaixsl:when>
                <iaixsl:otherwise>
                    var koszyk_raty = 0;
                </iaixsl:otherwise>
            </iaixsl:choose>

            
            <iaixsl:choose>
                <iaixsl:when test="basket/@count > 0">
                    var basket_count = parseInt(<iaixsl:value-of select="basket/@count"/>);
                </iaixsl:when>
                <iaixsl:otherwise>
                    var basket_count = 0;
                </iaixsl:otherwise>
            </iaixsl:choose>


            
            <iaixsl:choose>
                <iaixsl:when test="page/@type = 'projector'">

                </iaixsl:when>
                <iaixsl:when test="page/@type = 'basketedit'">
                    var cena_raty = parseFloat(<iaixsl:value-of select="/shop/page/basket-details/summary/money/@to_pay"/>);
                </iaixsl:when>
                <iaixsl:otherwise>
                    var cena_raty = '';
                </iaixsl:otherwise>
            </iaixsl:choose>
        </script>
        <iaixsl:if test="/shop/page/basket-details/summary/payment/instalment"> </iaixsl:if>
        <iaixsl:if test="/shop/page/projector/product/payment/instalment"> </iaixsl:if>
        <!--Structured data markup (menu_structured_data, 108021.1)-->

    <iaixsl:variable name="menu_structured_data_hurt"></iaixsl:variable>
    <iaixsl:variable name="curr_url"><iaixsl:value-of select="/shop/@currurl"/></iaixsl:variable>
    <iaixsl:variable name="url_length"><iaixsl:value-of select="string-length($curr_url)"/></iaixsl:variable>
    <iaixsl:variable name="productLink"><iaixsl:value-of select="substring-after(/shop/page/projector/product/@link, '/')"/></iaixsl:variable>

    <iaixsl:if test="page/@type = 'navigation' or page/@type = 'search' or page/@type = 'projector' or page/@type = 'main'">
      <script type="application/ld+json">
        {
        "@context": "http://schema.org",
        "@type": "Organization",
        "url": "<iaixsl:value-of select="/shop/@currurl"/>",
        "logo": "<iaixsl:value-of select="substring($curr_url,1,($url_length - 1))"/><iaixsl:value-of select="/shop/mask/top/link/image/@src"/>"
        }
      </script>
    </iaixsl:if>

    <iaixsl:if test="bc/item and (page/@type = 'navigation' or page/@type = 'search' or page/@type = 'projector')">
      <script type="application/ld+json">
        {
            "@context": "http://schema.org",
            "@type": "BreadcrumbList",
            "itemListElement": [<iaixsl:for-each select="bc/item"><iaixsl:if test="not(position() = 1)">,</iaixsl:if>
            {
            "@type": "ListItem",
            "position": <iaixsl:value-of select="position()"/>,
            "item": "<iaixsl:value-of select="substring($curr_url,1,($url_length - 1))"/><iaixsl:value-of select="@link"/>",
            "name": "<iaixsl:value-of select="@title"/>"
            }
        </iaixsl:for-each>]
        }
    </script>
  </iaixsl:if>
    <script type="application/ld+json">
      {
      "@context": "http://schema.org",
      "@type": "WebSite",
      <iaixsl:if test="/shop/@shopname">"name":"<iaixsl:value-of select="/shop/@shopname"/>",</iaixsl:if>
      <iaixsl:if test="/shop/@shopshortname">"alternateName": "<iaixsl:value-of select="/shop/@shopshortname"/>",</iaixsl:if>
      "url": "<iaixsl:value-of select="/shop/@currurl"/>",
      "potentialAction": {
      "@type": "SearchAction",
      "target": "<iaixsl:value-of select="/shop/@currurl"/>search.php?text={search_term_string}",
      "query-input": "required name=search_term_string"
      }
      }
    </script>
  <iaixsl:if test="page/@type = 'projector'">
    <script type="application/ld+json">
      {
      "@context": "http://schema.org",
      "@type": "Product",
      <iaixsl:if test="page/projector/comments/opinions/opinion">
        "aggregateRating": {
        "@type": "AggregateRating",
        "ratingValue": "<iaixsl:value-of disable-output-escaping="yes" select="page/projector/comments/@avg"/>",
        "reviewCount": "<iaixsl:value-of select="page/projector/comments/@all"/>"
        },
      </iaixsl:if>
      "description": <iaixsl:call-template name="escape-quote-string"><iaixsl:with-param name="str" select="page/projector/product/cleardescription"/></iaixsl:call-template>,
      "name": <iaixsl:call-template name="escape-quote-string"><iaixsl:with-param name="str" select="/shop/page/projector/product/name"/></iaixsl:call-template>,
      "productID": "mpn:<iaixsl:value-of select="page/projector/product/@code"/>",
      "brand": <iaixsl:call-template name="escape-quote-string"><iaixsl:with-param name="str" select="page/projector/product/firm/@name"/></iaixsl:call-template>,
      "image": "<iaixsl:if test="not(contains(/shop/page/projector/product/enclosures/images/enclosure/@url, 'http'))"><iaixsl:value-of select="substring($curr_url,1,($url_length - 1))"/></iaixsl:if><iaixsl:value-of disable-output-escaping="yes" select="/shop/page/projector/product/enclosures/images/enclosure/@url"/>"
      <iaixsl:if test="((/shop/page/projector/product/versions/version[@id = /shop/page/projector/product/@id]/size/price/@value != 0 or /shop/basket/@wholesaler = 'true') and $menu_structured_data_hurt != '') or not($menu_structured_data_hurt != '')">,
        "offers": [
            <iaixsl:for-each select="page/projector/product/sizes/size">
            <iaixsl:if test="not(position() = 1)">,</iaixsl:if>
            {
            "@type": "Offer",
            "availability": "<iaixsl:choose><iaixsl:when test="availability[(@status = 'enable') or (@status = 'order')]">http://schema.org/InStock</iaixsl:when><iaixsl:otherwise>http://schema.org/OutOfStock</iaixsl:otherwise></iaixsl:choose>",
            "price": "<iaixsl:value-of select="price/@value"/>",
            "priceCurrency": "<iaixsl:value-of select="/shop/currency/@id"/>",
            "eligibleQuantity": {
            "value":  "<iaixsl:value-of select="/shop/page/projector/product/sizes/@unit_sellby"/>",
            "unitCode": "<iaixsl:value-of select="/shop/page/projector/product/sizes/@unit_single"/>",
            "@type": [
            "QuantitativeValue"
            ]
            },
            "url": "<iaixsl:value-of select="substring($curr_url,1,($url_length - 1))"/><iaixsl:value-of select="/shop/page/projector/product/@link"/>?selected_size=<iaixsl:value-of select="@type"/>"
            }
            </iaixsl:for-each>    
        ]</iaixsl:if>
        <iaixsl:if test="page/projector/comments/opinions/opinion">,
          "review": [
          <iaixsl:for-each select="page/projector/comments/opinions/opinion">
            <iaixsl:if test="not(position() = 1)">,</iaixsl:if>
            {
            "@type": "Review",
            "author": "<iaixsl:value-of select="@client"/>",
            "description": <iaixsl:call-template name="escape-quote-string"><iaixsl:with-param name="str" select="."/></iaixsl:call-template>,
            "reviewRating": {
            "@type": "Rating",
            "bestRating": "5",
            "ratingValue": "<iaixsl:value-of select="round(@note)"/>",
            "worstRating": "1"
            }
            }
          </iaixsl:for-each>
          ]
        </iaixsl:if>
        }
        
      </script>
    </iaixsl:if>
    <iaixsl:if test="page/@type = 'blog-item'">
      <script type="application/ld+json">
        {
        "@context": "http://schema.org",
        "@type": "NewsArticle",
        "headline": "<iaixsl:value-of disable-output-escaping="yes" select="/shop/page/blogitem/title/text()"/>",
        "mainEntityOfPage": "<iaixsl:value-of disable-output-escaping="yes" select="/shop/page/blogitem/link/@href"/>",
        "datePublished": "<iaixsl:value-of disable-output-escaping="yes" select="/shop/page/blogitem/date/text()"/>",
        "dateModified": "<iaixsl:value-of disable-output-escaping="yes" select="/shop/page/blogitem/date/text()"/>",
        "image": {
        "@type":"ImageObject",
        "url":"<iaixsl:value-of select="substring($curr_url,1,($url_length - 1))"/><iaixsl:value-of disable-output-escaping="yes" select="/shop/page/blogitem/image/@src"/>",
        "width":"<iaixsl:value-of disable-output-escaping="yes" select="/shop/page/blogitem/image/@width"/>",
        "height":"<iaixsl:value-of disable-output-escaping="yes" select="/shop/page/blogitem/image/@height"/>"
        },
        "description": "<iaixsl:value-of disable-output-escaping="yes" select="/shop/page/blogitem/description/text()"/>",
        "author":{
        "@type": "Organization",
        "name":"<iaixsl:value-of select="/shop/contact/owner/@shopshortname"/>"
        },
        "publisher":{
        "@type": "Organization",
        "name": "<iaixsl:value-of select="/shop/contact/owner/@shopshortname"/>",
        "logo": {
        "@type":"ImageObject",
        "url":"<iaixsl:value-of select="substring($curr_url,1,($url_length - 1))"/><iaixsl:value-of select="/shop/mask/top/link/image/@src"/>",
        "width":"<iaixsl:value-of select="/shop/mask/top/link/image/@width"/>",
        "height":"<iaixsl:value-of select="/shop/mask/top/link/image/@height"/>"
        }
        }
        }
      </script>
    </iaixsl:if>

<!--Menu powiadomienia (menu_notice, 107640.1)-->

        <iaixsl:if test="/shop/order_edit/@order_number">

            <iaixsl:if test="/shop/action_alert or /shop/page/projector/product/exchange/@exchange_id or (/shop/page/@type = 'order2') or (/shop/page/@type = 'order-wrappers')">

                <div id="menu_preloader" class="menu_preolader_1">

                    <iaixsl:choose>
                        <iaixsl:when test="/shop/action_alert/@type = 'order_edit'">

                            <div id="menu_notice">
                                <h2>Edycja zamówienia </h2>

                                <strong>
                                    Jesteś w trybie edycji złożonego zamówienia. By zmiany zostały zastosowane musisz przejść przez wszystkie kroki składania zamówienia. Jeżeli nie przejdziesz przez wszystkie kroki składania zamówienia to wcześniej złożone zamówienie nie zostanie zmienione.
                                </strong>
                                <div class="menu_notice_button">
                                    <button onclick="$('#dialog_close').click();" class="btn --solid menu_notice_button">
                                        zamknij okno
                                    </button>
                                </div>
                                <div class="clearboth"/>
                            </div>

                        </iaixsl:when>


                        <iaixsl:when test="/shop/action_alert/@type = 'order_edit_auction'">

                            <div id="menu_notice">
                                <h2>Edycja zamówienia </h2>

                                <strong>
                                    Jesteś w trybie edycji zamówienia złożonego przez system aukcyjny. Możesz wymienić produkt na inny w tej samej grupie (np. inny kolor lub rozmiar) bądź dodać kolejne (dowolne) produkty w celu powiększenia zamówienia. By zmiany zostały zastosowane musisz przejść przez wszystkie kroki składania zamówienia.
                                </strong>
                                <div class="menu_notice_button">

                                    <button onclick="$('#dialog_close').click();" class="btn --solid menu_notice_button">
                                        zamknij okno
                                    </button>
                                </div>
                                <div class="clearboth"/>
                            </div>

                        </iaixsl:when>


                        <iaixsl:when test="/shop/action_alert/@type = 'order1'">

                            <div id="menu_notice">
                                <h2>Edycja zamówienia </h2>

                                <strong>
                                    Jesteś w trybie edycji złożonego zamówienia. Zaznaczone są wcześniej wybrane ustawienia wysyłki i płatności. Możesz je zmienić. By zmiany zostały zastosowane musisz przejść przez wszystkie kroki składania zamówienia.
                                </strong>
                                <div class="menu_notice_button">

                                    <button onclick="$('#dialog_close').click();" class="btn --solid menu_notice_button">
                                        zamknij okno
                                    </button>
                                </div>
                                <div class="clearboth"/>
                            </div>

                        </iaixsl:when>



                        <iaixsl:when test="/shop/page/@type = 'order2'">
                            <div id="menu_notice">
                                <h2>Edycja zamówienia </h2>

                                <strong>
                                    Sprawdź czy zamówienie w obecnej postaci Ci odpowiada. Jeżeli tak, kliknij na przycisk zmień zamówienie by zatwierdzić zmiany w zamówieniu. Jeżeli nie, wróć do koszyka i postępuj jak poprzednio.
                                </strong>
                                <div class="menu_notice_button">

                                    <button onclick="$('#dialog_close').click();" class="btn --solid menu_notice_button">
                                        zamknij okno
                                    </button>
                                </div>
                                <div class="clearboth"/>
                            </div>

                        </iaixsl:when>


                        <iaixsl:when test="/shop/page/@type = 'order-wrappers'">
                            <div id="menu_notice">
                                <h2>Edycja zamówienia </h2>

                                <strong>
                                    W tym kroku edycji zamówienia możesz wybrać interesujące Cię opakowanie. By zmiany zostały zastosowane musisz przejść przez wszystkie kroki składania zamówienia.
                                </strong>
                                <div class="menu_notice_button">

                                    <button onclick="$('#dialog_close').click();" class="btn --solid menu_notice_button">
                                        zamknij okno
                                    </button>
                                </div>
                                <div class="clearboth"/>
                            </div>

                        </iaixsl:when>


                        <iaixsl:when test="/shop/action_alert/@type = 'add_basket'">

                            <div id="menu_notice">
                                <h2>Edycja zamówienia </h2>

                                <strong>
                                    Zmieniłeś zawartość koszyka, pamiętaj by zastosować te zmiany, musisz ponownie przejść przez wszystkie kroki składania zamówienia.
                                </strong>
                                <div class="menu_notice_button">

                                    <button onclick="$('#dialog_close').click();" class="btn --solid menu_notice_button">
                                        zamknij okno
                                    </button>
                                </div>
                                <div class="clearboth"/>
                            </div>

                        </iaixsl:when>



                        <iaixsl:when test="/shop/action_alert/@type = 'change_basket'">

                            <div id="menu_notice">
                                <h2>Edycja zamówienia </h2>

                                <strong>
                                    Zmieniłeś zawartość koszyka, pamiętaj by zastosować te zmiany, musisz ponownie przejść przez wszystkie kroki składania zamówienia.
                                </strong>
                                <div class="menu_notice_button">

                                    <button onclick="$('#dialog_close').click();" class="btn --solid menu_notice_button">
                                        zamknij okno
                                    </button>
                                </div>
                                <div class="clearboth"/>
                            </div>

                        </iaixsl:when>


                        <iaixsl:when test="page/projector/product/exchange/@exchange_id">

                            <div id="menu_notice">
                                <h2>Edycja zamówienia </h2>

                                <strong>
                                    Aby wymienić produkt w koszyku, możesz wybrać np. inny kolor lub rozmiar tego samego produktu, a system automatycznie podmieni go z produktem wybranym na aukcji.
                                </strong>
                                <div class="menu_notice_button">

                                    <button onclick="$('#dialog_close').click();" class="btn --solid menu_notice_button">
                                        zamknij okno
                                    </button>
                                </div>
                                <div class="clearboth"/>
                            </div>

                        </iaixsl:when>





                    </iaixsl:choose>



                </div>
            </iaixsl:if>

        </iaixsl:if>

        <iaixsl:if test="/shop/page/@type = 'search' and ((/shop/page/sameday/@couriers_available = 'true' and /shop/page/sameday/@client_localized = 'false') or (/shop/page/nextday/@couriers_available = 'true' and /shop/page/nextday/@client_localized = 'false'))">
            <div id="xpress_toplayer">
                <div class="header_wrapper col-md-12">
                    <h2>Lokalizacja</h2>
                </div>
                <div id="xpress_zipcode">
                    <p class="col-md-12">Podaj kod pocztowy adresu dostawy</p>
                    <div class="form-group">
                        <div class="has-feedback has-required col-md-12 col-xs-12">
                            <input id="xpress_zipcode" class="form-control validate" name="client_zipcode" data-validation="client_zipcode" data-validation-url="/ajax/client-new.php?validAjax=true" data-serialize="data-region" value="" required="required" type="text" data-region="client_region=1143020003">
                                <iaixsl:attribute name="placeholder">Kod pocztowy</iaixsl:attribute>
                            </input>
                            <span class="form-control-feedback"/>
                        </div>
                    </div>
                    <div class="xpress_button_sub col-md-12"><a id="xpress_zipcode_submit" class="btn --solid">OK</a></div>
                    <p class="col-md-12">lub udostępnij położenie, abyśmy mogli określić czy dla tego miejsca dostępna jest dostawa ekspresowa.</p>
                    <div class="xpress_button_sub col-md-12"><a id="xpress_zipcode_geolocation" class="btn --solid">Udostępnij położenie</a></div>
                </div>
            </div>
            <div id="xpress_toplayer_error">
                <div class="header_wrapper col-md-12">
                    <h2>Lokalizacja</h2>
                </div>
                <div id="xpress_zipcode">
                    <p class="col-md-12">Przykro nam, ale nasz ekspresowy kurier nie obsługuje tej okolicy. </p>
                    <p class="col-md-12">Twoje zamówienie zostanie dostarczone w standardowym czasie, a kuriera wybierzesz podczas składania zamówienia.</p>
                    <div class="xpress_button_sub col-md-12"><a id="express_close_dialog" href="#" class="btn --solid">OK</a></div>
                </div>
            </div>
        </iaixsl:if>

        <iaixsl:if test="/shop/page/@type = 'prepaid'">
            <div id="menu_preloader" class="menu_preolader_2">
                <div id="menu_notice">
                    <h2>Anulowanie zamówienia</h2>
                    <strong></strong>
                    <div class="menu_notice_button">
                        <button class="btn --solid prepaid_cancel" onclick="$('#dialog_close').click();">
                            zamknij okno
                        </button>
                        <button class="btn --solid  prepaid_confirm">
                            anuluj zamówienie
                        </button>
                    </div>
                    <div class="clearboth"/>
                </div>
            </div>

        </iaixsl:if>



        <!--Elementy dodawane dynamicznie (menu_dynamically_added_content, 106830.1)-->
        
            <script>
                app_shop.vars.request_uri = <iaixsl:call-template name="escape-quote-string"><iaixsl:with-param name="str" select="/shop/page/additional_ajax/@request_uri"/></iaixsl:call-template>
                app_shop.vars.additional_ajax = '<iaixsl:value-of select="/shop/page/additional_ajax/@additional_ajax"/>'
            </script>

            
            <iaixsl:if test="/shop/@menu_dynamically_added_content"> </iaixsl:if>
        
                </footer>
            </iaixsl:if>
            <iaixsl:variable name="projector_script_bottom"></iaixsl:variable>
            <iaixsl:if test="/shop/page/@type = 'main' or /shop/page/@type = 'search' or /shop/page/@type = 'place-order' or /shop/page/@type = 'noproduct' or ($projector_script_bottom and /shop/page/@type = 'projector')">
                <iaixsl:choose>
                    <iaixsl:when test="/shop/@preview > 0">
                        <script><iaixsl:attribute name="src">/gfx/<iaixsl:value-of select="language/@id"/>/<iaixsl:value-of select="/shop/@preview"/>/shop.js</iaixsl:attribute></script>
                    </iaixsl:when>
                    <iaixsl:otherwise>
                        <script><iaixsl:attribute name="src">/gfx/<iaixsl:value-of select="language/@id"/>/shop.js.gzip?r=1598273396</iaixsl:attribute></script>
                    </iaixsl:otherwise>
                </iaixsl:choose>
            </iaixsl:if>
            <script>
                  app_shop.runApp();
            </script>

            
            <iaixsl:if test="/shop/page/seolink_with_language_directory"/>

        
            <iaixsl:if test="(action/set_render/item/@name = 'popup') or not(action/set_render/item)">
                <iaixsl:value-of disable-output-escaping="yes" select="php:functionString('additionalContent', 'additional_body_scripts')"/>
                <iaixsl:text disable-output-escaping="yes">&lt;/body&gt;&lt;/html&gt;</iaixsl:text>
            </iaixsl:if>
        </iaixsl:template><iaixsl:template match="//image"><iaixsl:if test="@type='swf'"><object type="application/x-shockwave-flash"><iaixsl:attribute name="data"><iaixsl:value-of select="@src"/></iaixsl:attribute><iaixsl:attribute name="data"><iaixsl:value-of select="@src"/></iaixsl:attribute><iaixsl:attribute name="width"><iaixsl:value-of select="@width"/></iaixsl:attribute><iaixsl:attribute name="height"><iaixsl:value-of select="@height"/></iaixsl:attribute><param name="movie"><iaixsl:attribute name="value"><iaixsl:value-of select="@src"/></iaixsl:attribute></param><param name="bgcolor"><iaixsl:attribute name="bgcolor"><iaixsl:value-of select="@bgcolor"/></iaixsl:attribute></param></object></iaixsl:if><iaixsl:if test="not(@type='swf')"><img alt="" class="pic"><iaixsl:attribute name="src"><iaixsl:value-of select="@src"/></iaixsl:attribute><iaixsl:if test="@width &gt; 0"><iaixsl:attribute name="width"><iaixsl:value-of select="@width"/></iaixsl:attribute></iaixsl:if><iaixsl:if test="@height &gt; 0"><iaixsl:attribute name="height"><iaixsl:value-of select="@height"/></iaixsl:attribute></iaixsl:if></img></iaixsl:if></iaixsl:template><iaixsl:template name="escape-quote-string"><iaixsl:param name="str"/><iaixsl:param name="escape" select="'quot'"/><iaixsl:param name="quoting" select="'1'"/><iaixsl:variable name="escape_sign"><iaixsl:choose><iaixsl:when test="$escape=&quot;apos&quot;"><iaixsl:value-of select="&quot;'&quot;"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="string('&quot;')"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable><iaixsl:if test="$quoting"><iaixsl:value-of select="$escape_sign"/></iaixsl:if><iaixsl:choose><iaixsl:when test="contains($str,$escape_sign)"><iaixsl:variable name="before-first-apostrophe" select="substring-before($str,$escape_sign)"/><iaixsl:variable name="after-first-apostrophe" select="substring-after($str,$escape_sign)"/><iaixsl:value-of select="$before-first-apostrophe"/>\<iaixsl:value-of select="$escape_sign"/><iaixsl:text/><iaixsl:call-template name="escape-quote-string"><iaixsl:with-param name="str" select="$after-first-apostrophe"/><iaixsl:with-param name="escape" select="$escape"/><iaixsl:with-param name="quoting" select="0"/></iaixsl:call-template></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="$str"/></iaixsl:otherwise></iaixsl:choose><iaixsl:if test="$quoting"><iaixsl:value-of select="$escape_sign"/></iaixsl:if></iaixsl:template></iaixsl:stylesheet>