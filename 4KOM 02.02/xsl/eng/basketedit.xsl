<?xml version="1.0" encoding="UTF-8"?>
<iaixsl:stylesheet xmlns:php="http://php.net/xsl" xmlns:iaixsl="http://www.w3.org/1999/XSL/Transform" xmlns:iaielement="http://iai-system.com/ddd" xmlns:fb="http://www.facebook.com/2008/fbml" version="1.0" exclude-result-prefixes="php iaielement fb"><iaixsl:output indent="no" method="html" doctype-system="about:legacy-compat" version="1.0" encoding="UTF-8"/><iaixsl:strip-space elements="table tr td img"/><iaixsl:decimal-format name="yen" NaN="" grouping-separator="," decimal-separator="."/><iaixsl:template match="shop"><!--Typ strony (envelope, 107421.1)-->
            <iaixsl:variable name="meta_langcode_iso639">en</iaixsl:variable>
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
                    
                    <link rel="shortcut icon" href="/gfx/eng/favicon.ico" />
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
                                    <link rel="stylesheet" type="text/css"><iaixsl:attribute name="href">/gfx/<iaixsl:value-of select="language/@id"/>/style.css.gzip?r=1598273385</iaixsl:attribute></link>
                                </iaixsl:otherwise>
                            </iaixsl:choose>
                        </iaixsl:when>
                        <iaixsl:otherwise>
                            <iaixsl:choose>
                                <iaixsl:when test="/shop/@preview > 0">
                                    <link rel="stylesheet" type="text/css"><iaixsl:attribute name="href">/gfx/<iaixsl:value-of select="language/@id"/>/<iaixsl:value-of select="/shop/@preview"/>/style.css</iaixsl:attribute></link>
                                </iaixsl:when>
                                <iaixsl:otherwise>
                                    <link rel="stylesheet" type="text/css"><iaixsl:attribute name="href">/gfx/<iaixsl:value-of select="language/@id"/>/style.css.gzip?r=1598273385</iaixsl:attribute></link>
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
                                <script><iaixsl:attribute name="src">/gfx/<iaixsl:value-of select="language/@id"/>/shop.js.gzip?r=1598273385</iaixsl:attribute></script>
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
                </head>
                <iaixsl:variable name="meta_body_id"></iaixsl:variable>
                <iaixsl:text disable-output-escaping="yes">&lt;body</iaixsl:text><iaixsl:if test="action/set_render/item/@name = 'popup'"><iaixsl:text disable-output-escaping="yes"> class="popup" </iaixsl:text></iaixsl:if><iaixsl:text disable-output-escaping="yes">&gt;</iaixsl:text>

                <iaixsl:if test="$meta_body_id">
                    <iaixsl:attribute name="id"><iaixsl:value-of select="$meta_body_id"/></iaixsl:attribute>
                </iaixsl:if>
                <iaixsl:value-of disable-output-escaping="yes" select="php:functionString('additionalContent', 'additional_body_top_scripts')"/>
            </iaixsl:if>
            <iaixsl:variable name="valuepricedesc">Price for you</iaixsl:variable>
            <iaixsl:variable name="discountpricedesc">Discount</iaixsl:variable>
            <iaixsl:variable name="promopricedesc">Special offer</iaixsl:variable>
            <iaixsl:variable name="detalpricedesc">Retail price</iaixsl:variable>
            <iaixsl:variable name="rebatepricedesc">Discount</iaixsl:variable>
            <iaixsl:variable name="nettopricedesc">Net price</iaixsl:variable>
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
                                                    <img src="/gfx/eng/loader.gif?r=1598273385">
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
                                                <img src="/gfx/eng/loader.gif?r=1598273385">
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
                                                            <img src="/gfx/eng/loader.gif?r=1598273385">
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
                                                        <img src="/gfx/eng/loader.gif?r=1598273385">
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
<a class="contact_link_top" href="/contact.php">Contact</a>
<iaixsl:if test="/shop/contact/contact_nodes/node[@type='phone']"><a><iaixsl:attribute name="href"><iaixsl:value-of select="/shop/contact/contact_nodes/node[@type='phone']/@link"/></iaixsl:attribute><iaixsl:value-of select="/shop/contact/contact_nodes/node[@type='phone']/@value"/></a></iaixsl:if><iaixsl:if test="/shop/contact/contact_nodes/node[@type='mail']"><span> or </span><a><iaixsl:attribute name="href"><iaixsl:value-of select="/shop/contact/contact_nodes/node[@type='mail']/@link"/></iaixsl:attribute><iaixsl:value-of select="/shop/contact/contact_nodes/node[@type='mail']/@value"/></a></iaixsl:if>
</div>

                    <iaixsl:if test="(count(/shop/currency/option) > 1) or (count(/shop/language/option) > 1) or (count(/shop/countries/country) > 1)">
                        <div class="open_trigger">
                            <div class="menu_settings_wrapper">
                                <iaixsl:if test="/shop/language/option/@selected or /shop/currency/option/@selected">
                                    <div class="menu_settings_inline">
                                        <div class="menu_settings_header">
                                            Language and currency: 
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
                                                <label class="menu_settings_lang_label">Language</label>

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
                                                    <label for="menu_settings_curr">Currency</label>

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
                                                    <label for="menu_settings_country">Country of collecting the order</label>

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
                                            Apply changes
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
        <iaixsl:variable name="dlmenu_showall">+ Show all</iaixsl:variable>
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
			                <iaixsl:attribute name="placeholder"></iaixsl:attribute>
		                    
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
                                 PTS.
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
                    <iaixsl:attribute name="class">row clearfix </iaixsl:attribute>
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
                            <i class="icon-cog"></i>  <span>Account settings</span>
                            
                        </a>
                        <a class="order_status_link" href="/order-open.php">
                            <iaixsl:attribute name="title">
                                
                                
                            </iaixsl:attribute>
                            <i class="icon-globe"></i>  <span>Check order status</span>
                            
                        </a>
                        <iaixsl:if test="(/shop/basket/@client_id_upc != '') ">
                            <a class="client_card_link" href="##">
                                <iaixsl:attribute name="href">
                                    <iaixsl:value-of disable-output-escaping="yes" select="action/login/@url"/>
                                </iaixsl:attribute>
                                 <i class="icon-barcode"></i>  <span>Loyality card</span>
                            </a>
                        </iaixsl:if>
                        <a class="rabates_link" href="/client-rebate.php">
                            <iaixsl:attribute name="title">
                                
                                
                            </iaixsl:attribute>
                            <span class='font_icon'>%</span> <span>Discounts</span>
                            
                        </a>
                        <a class="logout_link" href="/login.php?operation=logout">
                            <iaixsl:attribute name="title">
                                
                                
                            </iaixsl:attribute>
                            <i class="icon-off" style='color: #CC0000;'></i>  <span>Sign out</span>
                            
                        </a>
                        <iaixsl:if test="action/personalized_recommendations/@url">
                            <a class="recommendation_link">
                                <iaixsl:attribute name="href">
                                    <iaixsl:value-of disable-output-escaping="yes" select="action/personalized_recommendations/@url"/>
                                </iaixsl:attribute>

                                <i class="icon-thumbs-up" style='color: #0099D0;'></i> <span>Recommended</span>
                                
                            </a>
                        </iaixsl:if>
                    </iaixsl:when>
                    <iaixsl:otherwise>
                        <a class="sign_in_link" href="/login.php">
                            <iaixsl:attribute name="title">
                                
                                
                            </iaixsl:attribute>
                            <i class="icon-user"></i>  <span>Sign in</span>
                            
                        </a>
                        <a class="registration_link" href="/client-new.php?register">
                            <iaixsl:attribute name="title">
                                
                                
                            </iaixsl:attribute>
                            <i class="icon-lock"></i>  <span>Register</span>
                            
                        </a>
                        <a class="order_status_link" href="/order-open.php">
                            <iaixsl:attribute name="title">
                                
                                
                            </iaixsl:attribute>
                            <i class="icon-globe"></i>  <span>Check order status</span>
                            
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
                <button id="back_button"><i class="icon-angle-left"></i> Back</button>
            </div>
            <div class="list_wrapper">
                <ol>
                    <iaixsl:if test="$breadcrumbs_label">
                        <li>
                            <span><iaixsl:value-of select="$breadcrumbs_label"/></span>
                        </li>
                    </iaixsl:if>
                    <li class="bc-main">
                        <span><a href="/">Main page</a></span>
                    </li>
                    <iaixsl:choose>
                        <iaixsl:when test="page/@type = 'main'">
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'wishesedit'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Wish list</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'basketedit'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Basket</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'product-stocks'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Product's availability </span>
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
                                <span>Opinions</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'opinions-shop'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Opinions about the store</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'categories-list'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>List of categories</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'order-payment'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Payments</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'order-newpayment'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Payments</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'order-wrappers'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Choose a package</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'news'">
                            <iaixsl:choose>
                                <iaixsl:when test="/shop/page/news/title">
                                    <li>
                                        <iaixsl:attribute name="class">bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                        <a>
                                            <iaixsl:attribute name="href">/news.php</iaixsl:attribute>
                                            News
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
                                        <span>News</span>
                                    </li>
                                </iaixsl:otherwise>
                            </iaixsl:choose>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'client-rebates'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Your Discounts</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'sitemap'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Site map</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'client-save'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Sign in</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="((page/@type = 'client-new') and not(page/client-data/@register='true') and not(page/client-data/@edit='true'))">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Registration</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="((page/@type = 'client-new') and (page/client-data/@register='true'))">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Registration</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="((page/@type = 'client-new') and (page/client-data/@edit='true'))">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Data editing</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'order-nonstandardized'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Custom order</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'pickup-sites'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Choose a personal collection point</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'contact'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Contact</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'links'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Links</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'login'">
                            <iaixsl:if test="page/login/response/@type = 'give login'">
                                <li>
                                    <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                    <span>Remind the password</span>
                                </li>
                            </iaixsl:if>
                            <iaixsl:if test="not(page/login/response/@type = 'give login')">
                                <iaixsl:choose>
                                    <iaixsl:when test="/shop/basket/@login">
                                        <li>
                                            <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                            <span>Your account</span>
                                        </li>
                                    </iaixsl:when>
                                    <iaixsl:when test="page/login/response/@type = 'no login'">
                                        <li>
                                            <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                            <span>Sign in</span>
                                        </li>
                                    </iaixsl:when>
                                </iaixsl:choose>
                            </iaixsl:if>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'rma-add'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Add a complaint</span>
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
                                <span>List of complaints</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'stock'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>The point of collection</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'order1'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Delivery and payments</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'order2'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Data confirmation</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'prepaid'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Order summary</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'producers-list'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Manufacturers</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'searching'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Search</span>
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
                                <span>Remark</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'client-orders'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-login</iaixsl:attribute>
                                <a><iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/login/@url"/></iaixsl:attribute>Your account</a>  
                            </li>                            
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Your orders</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'order-open'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Order status</span>
                            </li>
                        </iaixsl:when>
                        

                        <iaixsl:when test="page/@type = 'product-compare'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Price comparison service</span>
                            </li>
                        </iaixsl:when>

                        <iaixsl:when test="page/@type = 'products-bought'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>List of purchased</span>
                            </li>
                        </iaixsl:when>

                        <iaixsl:when test="page/@type = 'return_products'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Return order</span>
                            </li>
                        </iaixsl:when>

                        <iaixsl:when test="page/@type = 'client-cards'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Loyalty Cards</span>
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
                                <span>One Step Checkout Process</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'rma-open'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Complaint without logging in</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'returns-open'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Return open</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'opinions-add'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Add opinions</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'noproduct'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>No product</span>
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
                                <strong class="progress__name">Your basket</strong>
                                <span class="progress__description">Value:<iaixsl:choose><iaixsl:when test="(/shop/basket/@wholesaler = 'true') and not($wholesalerPrice_order_progress)"><iaixsl:value-of select="basket/@cost_net_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="basket/@cost_formatted"/></iaixsl:otherwise></iaixsl:choose></span>
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
                                            <strong class="progress__name">Your data</strong>
                                            <span class="progress__description">Enter delivery information</span>
                                        </iaixsl:when>
                                        <iaixsl:otherwise>
                                            <strong class="progress__name">Your data</strong>
                                            <span class="progress__description">Sign in or enter information manually</span>
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
                                    <strong class="progress__name">Shipping and payments</strong>
                                    <span class="progress__description">Select shipping and payment method</span>
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
                                    <strong class="progress__name">Notes to order</strong>
                                    <span class="progress__description">Please check again the correctness of the order, before placing it</span>
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
                                    <strong class="progress__name">Shipping and payments</strong>
                                    <span class="progress__description">Select shipping and payment method</span>
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
                                    <strong class="progress__name">Notes to order</strong>
                                    <span class="progress__description">Please check again the correctness of the order, before placing it</span>
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
                                    <strong class="progress__name">Order registration</strong>
                                    <span class="progress__description">Order accepted</span>
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
                                <strong class="progress__name">Your basket</strong>
                                <span class="progress__description">Value:<iaixsl:choose><iaixsl:when test="(/shop/basket/@wholesaler = 'true') and not($wholesalerPrice_order_progress)"><iaixsl:value-of select="basket/@cost_net_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="basket/@cost_formatted"/></iaixsl:otherwise></iaixsl:choose></span>
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
                                <strong class="progress__name">Your data</strong>
                                <span class="progress__description">Sign in or enter information manually</span>
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
                                <strong class="progress__name">Shipping and payments</strong>
                                <span class="progress__description">Select shipping and payment method</span>
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
                                <strong class="progress__name">Notes to order</strong>
                                <span class="progress__description">Please check again the correctness of the order, before placing it</span>
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
                                <strong class="progress__name">Your basket</strong>
                                <span class="progress__description">Value:<iaixsl:choose><iaixsl:when test="(/shop/basket/@wholesaler = 'true') and not($wholesalerPrice_order_progress)"><iaixsl:value-of select="basket/@cost_net_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="basket/@cost_formatted"/></iaixsl:otherwise></iaixsl:choose></span>
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
                                <strong class="progress__name">Your data</strong>
                                <span class="progress__description">Enter delivery information</span>
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
                                <strong class="progress__name">Shipping and payments</strong>
                                <span class="progress__description">Select shipping and payment method</span>
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
                                <strong class="progress__name">Notes to order</strong>
                                <span class="progress__description">Please check again the correctness of the order, before placing it</span>
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
                                <strong class="progress__name">Your basket</strong>
                                <span class="progress__description">Value:<iaixsl:choose><iaixsl:when test="(/shop/basket/@wholesaler = 'true') and not($wholesalerPrice_order_progress)"><iaixsl:value-of select="basket/@cost_net_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="basket/@cost_formatted"/></iaixsl:otherwise></iaixsl:choose></span>
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
                                <strong class="progress__name">Shipping and payments</strong>
                                <span class="progress__description">Select shipping and payment method</span>
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
                                <strong class="progress__name">Notes to order</strong>
                                <span class="progress__description">Please check again the correctness of the order, before placing it</span>
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
                                        <strong class="progress__name">Save data</strong>
                                        <span class="progress__description">Remember the customer's information</span>
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
                                        <strong class="progress__name">Order registration</strong>
                                        <span class="progress__description">Order accepted</span>
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
                                <strong class="progress__name">Your basket</strong>
                                <span class="progress__description">Value:<iaixsl:choose><iaixsl:when test="(/shop/basket/@wholesaler = 'true') and not($wholesalerPrice_order_progress)"><iaixsl:value-of select="basket/@cost_net_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="basket/@cost_formatted"/></iaixsl:otherwise></iaixsl:choose></span>
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
                                <strong class="progress__name">Shipping and payments</strong>
                                <span class="progress__description">Non standard orders</span>
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
                                <strong class="progress__name">Notes to order</strong>
                                <span class="progress__description">Please check again the correctness of the order, before placing it</span>
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
                                        <strong class="progress__name">Save data</strong>
                                        <span class="progress__description">Remember the customer's information</span>
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
                                        <strong class="progress__name">Order registration</strong>
                                        <span class="progress__description">Order accepted</span>
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
                                <strong class="progress__name">Your basket</strong>
                                <span class="progress__description">Value:<iaixsl:choose><iaixsl:when test="(/shop/basket/@wholesaler = 'true') and not($wholesalerPrice_order_progress)"><iaixsl:value-of select="basket/@cost_net_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="basket/@cost_formatted"/></iaixsl:otherwise></iaixsl:choose></span>
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
                                <strong class="progress__name">Delivery and payments</strong>
                                <span class="progress__description">Select point of collection</span>
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
                                <strong class="progress__name">Notes to order</strong>
                                <span class="progress__description">Please check again the correctness of the order, before placing it</span>
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
                                        <strong class="progress__name">Save data</strong>
                                        <span class="progress__description">Remember the customer's information</span>
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
                                        <strong class="progress__name">Order registration</strong>
                                        <span class="progress__description">Order accepted</span>
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
                                <strong class="progress__name">Your basket</strong>
                                <span class="progress__description">Value:<iaixsl:choose><iaixsl:when test="(/shop/basket/@wholesaler = 'true') and not($wholesalerPrice_order_progress)"><iaixsl:value-of select="basket/@cost_net_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="basket/@cost_formatted"/></iaixsl:otherwise></iaixsl:choose></span>
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
                                <strong class="progress__name">Shipping and payments</strong>
                                <span class="progress__description">Select shipping and payment method</span>
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
                                <strong class="progress__name">Notes to order</strong>
                                <span class="progress__description">Please check again the correctness of the order, before placing it</span>
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
                                        <strong class="progress__name">Save data</strong>
                                        <span class="progress__description">Remember the customer's information</span>
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
                                        <strong class="progress__name">Order registration</strong>
                                        <span class="progress__description">Order accepted</span>
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
                                <strong class="progress__name">Your basket</strong>
                                <span class="progress__description">Value:<iaixsl:choose><iaixsl:when test="(/shop/basket/@wholesaler = 'true') and not($wholesalerPrice_order_progress)"><iaixsl:value-of select="basket/@cost_net_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="basket/@cost_formatted"/></iaixsl:otherwise></iaixsl:choose></span>
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
                                <strong class="progress__name">Notes to order</strong>
                                <span class="progress__description">Please check again the correctness of the order, before placing it</span>
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
                                <strong class="progress__name">Save data</strong>
                                <span class="progress__description">Remember the customer's information</span>
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
                                <strong class="progress__name">Order registration</strong>
                                <span class="progress__description">Order accepted</span>
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
                                <strong class="progress__name">Your basket</strong>
                                <span class="progress__description">Value:<iaixsl:choose><iaixsl:when test="(/shop/basket/@wholesaler = 'true') and not($wholesalerPrice_order_progress)"><iaixsl:value-of select="basket/@cost_net_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="basket/@cost_formatted"/></iaixsl:otherwise></iaixsl:choose></span>
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
                                <strong class="progress__name">Shipping and payments</strong>
                                <span class="progress__description">Select shipping and payment method</span>
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
                                <strong class="progress__name">Notes to order</strong>
                                <span class="progress__description">Please check again the correctness of the order, before placing it</span>
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
                                <strong class="progress__name">Order placed</strong>
                                <span class="progress__description">Order status: 
                                    <iaixsl:choose>
                                        <iaixsl:when test="(page/prepaid/details/@wykonane = 'n')">received</iaixsl:when>
                                        <iaixsl:when test="(page/prepaid/details/@wykonane = 't')">sent</iaixsl:when>
                                        <iaixsl:when test="(page/prepaid/details/@wykonane = 'i')">rejected</iaixsl:when>
                                        <iaixsl:when test="(page/prepaid/details/@wykonane = 's')">canceled</iaixsl:when>
                                        <iaixsl:when test="(page/prepaid/details/@wykonane = 'o')">in progress</iaixsl:when>
                                        <iaixsl:when test="(page/prepaid/details/@wykonane = 'p')">ready</iaixsl:when>
                                        <iaixsl:when test="(page/prepaid/details/@wykonane = 'h')">hold</iaixsl:when>
                                        <iaixsl:when test="(page/prepaid/details/@wykonane = 'w')">awaiting payment</iaixsl:when>
                                        <iaixsl:when test="(page/prepaid/details/@wykonane = 'd')">awaiting delivery</iaixsl:when>
                                        <iaixsl:when test="(page/prepaid/details/@wykonane = 'z')">return</iaixsl:when>
                                        <iaixsl:when test="(page/prepaid/details/@wykonane = 'k')">canceled</iaixsl:when>
                                        <iaixsl:when test="(page/prepaid/details/@wykonane = 'r')">complaint</iaixsl:when>
                                        <iaixsl:when test="(page/prepaid/details/@wykonane = 'j')">merged</iaixsl:when>
                                        <iaixsl:when test="(page/prepaid/details/@wykonane = 'l')">lost</iaixsl:when>
                                        <iaixsl:when test="(page/prepaid/details/@wykonane = 'a')">in progress</iaixsl:when>
                                        <iaixsl:when test="(page/prepaid/details/@wykonane = 'b')">packed</iaixsl:when>
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
                                <strong class="progress__name">Your basket</strong>
                                <span class="progress__description">Value:<iaixsl:choose><iaixsl:when test="(/shop/basket/@wholesaler = 'true') and not($wholesalerPrice_order_progress)"><iaixsl:value-of select="basket/@cost_net_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="basket/@cost_formatted"/></iaixsl:otherwise></iaixsl:choose></span>
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
                                <strong class="progress__name">Shipping and payments</strong>
                                <span class="progress__description">Select shipping and payment method</span>
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
                                <strong class="progress__name">Notes to order</strong>
                                <span class="progress__description">Please check again the correctness of the order, before placing it</span>
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
                                <strong class="progress__name">Order placed</strong>
                                <span class="progress__description">Order status: awaiting payment</span>
                            </div>
                        </div>
                    </section>
                </iaixsl:when>
            </iaixsl:choose>
        </iaixsl:if>
    <!--Błędy i informacje w projektorze (menu_messages, 106608.1)-->

        <iaixsl:variable name="rebates_code_used">This discount code has already been used.</iaixsl:variable>

        <iaixsl:variable name="change_success">Changes have been saved.</iaixsl:variable>

        <iaixsl:variable name="change_success_despite_no_change">The form has been saved however, no changes had been introduced by you.</iaixsl:variable>


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


                                <iaixsl:when test="@type='file_upload_invalid_type'">File cannot be uploaded <span class="invalidFileName"><iaixsl:value-of select="@value"/></span> because its type of files is invalid</iaixsl:when>
                                <iaixsl:when test="@type='file_upload_invalid_extension'">File cannot be uploaded <span class="invalidFileName"><iaixsl:value-of select="@value"/></span> because its type of files is invalid</iaixsl:when>
                                <iaixsl:when test="@type='file_upload_size_exceeded'">File cannot be uploaded<span class="invalidFileName"><iaixsl:value-of select="@value"/></span> because it is larger than the allowed size of 10MB.</iaixsl:when>
                                <iaixsl:when test="@type='file_uploaded_remove_fail'">An error has occurred when uploading a file<span class="invalidFileName"><iaixsl:value-of select="@value"/></span>.</iaixsl:when>


                                <iaixsl:when test="@type='rebates_code_expired'">Indicated discount code expired and it is inactive.</iaixsl:when>
                                <iaixsl:when test="@type='rebates_code_notbegun'">Indicated discount code is not active. This special offer has not yet started!</iaixsl:when>

                               <iaixsl:when test="@type='order_minimal_wholesale_blocked'">Minimal value of a wholesale order is: <iaixsl:if test="$signbeforeprice = 'true'">
                                            <iaixsl:value-of select="/shop/currency/@name"/>
                                            <iaixsl:value-of select="$signbetweenpricecurrency"/>
                                        </iaixsl:if>
                                        <iaixsl:value-of select="@value"/>
                                        <iaixsl:if test="$signbeforeprice = 'false'">
                                            <iaixsl:value-of select="$signbetweenpricecurrency"/>
                                            <iaixsl:value-of select="/shop/currency/@name"/>
                                        </iaixsl:if>
                                </iaixsl:when>

                            <iaixsl:when test="@type='order_minimal_wholesale_changed'">Despite you are a wholesaler, you see retail prices in your order summary. It means that the minimal value of a wholesale order has not been reached. If you place an order based on your current basket content, it will be a retail order.</iaixsl:when>




                                <iaixsl:when test="@type='openid_invalid_authorization'">Authorization error.</iaixsl:when>
                                <iaixsl:when test="@type='suggest_sent'">An invitation to visit the on-line store has been sent to <iaixsl:value-of select="@value"/>.</iaixsl:when>
                                <iaixsl:when test="@type='search_to_many_products'">Too many items found. Use a search tool to narrow the search results.</iaixsl:when>
                                <iaixsl:when test="@type='search_products_not_found'">Item not found. Use a <a href="/searching.php" title="Click here to perform advanced search">search tool</a>.</iaixsl:when>
                                <iaixsl:when test="@type='search_text_to_short'">The entered text is too short. Try to type a longer text or use the search tool.</iaixsl:when>
                                <iaixsl:when test="@type='login taken'">Provided login is already registered. Please, modify your login by adding numbers or type a new one.</iaixsl:when>
                                <iaixsl:when test="@type='account_not_added'">An error has occurred and an account has not been added - try again later.</iaixsl:when>
                                <iaixsl:when test="@type='exists such account'">An account with similar information already exists. If you have created an account, but you do not remember your password, click  <a href="/password-recover.php">here</a></iaixsl:when>
                                <iaixsl:when test="@type='deliv_addr_not_deleted'">Indicated delivery address cannot be removed.</iaixsl:when>
                                <iaixsl:when test="@type='deliv_addr_not_selected'">Indicated delivery address cannot be the a default one.</iaixsl:when>
                                <iaixsl:when test="@type='no login'">You did not enter the login.</iaixsl:when>
                                <iaixsl:when test="@type='incorect login'">Invalid login. Maximum length of a valid login is 20 characters (same symbols as used in e-mail addresses)</iaixsl:when>
                                <iaixsl:when test="@type='no password'">You did not enter the password</iaixsl:when>
                                <iaixsl:when test="@type='password to short'">A password need to consist of at least 6 characters but no more than 15 characters.</iaixsl:when>


                                <iaixsl:when test="@type='password_to_long'">A password needs to contain at least 6 characters and not more than 15.</iaixsl:when>


                                <iaixsl:when test="@type='login equals password'">A password must be different from a login.</iaixsl:when>
                                <iaixsl:when test="@type='not equal passwords'">A password and the password confirmation are different.</iaixsl:when>
                                <iaixsl:when test="@type='no firstname'">The entered first name is too short.</iaixsl:when>
                                <iaixsl:when test="@type='no name'">Missing first name or surname.</iaixsl:when>
                                <iaixsl:when test="@type='birth_date'">Birth date is entered in a wrong format or it contains incorrect value.</iaixsl:when>
                                <iaixsl:when test="@type='incorect email'">Invalid e-mail address.</iaixsl:when>
                                <iaixsl:when test="@type='incorect nip'">Entering a VAT Number, use the format PLXXXXXXXXXX for EU VAT Number or XXXXXXXXXX for Polish NIP.</iaixsl:when>

                                <iaixsl:when test="@type='no firmname'">Invalid company name.</iaixsl:when>

                                <iaixsl:when test="@type='incorrect region'">Invalid area name.</iaixsl:when>
                                <iaixsl:when test="@type='no city'">Invalid city name.</iaixsl:when>
                                <iaixsl:when test="@type='no street'">Invalid address.</iaixsl:when>

                               <iaixsl:when test="@type='no_street_number'">Invalid address.</iaixsl:when>


                                <iaixsl:when test="@type='incorect phone'">Invalid phone number.</iaixsl:when>
                                <iaixsl:when test="@type='incorect spare phone'">Invalid additional phone number.</iaixsl:when>
                                <iaixsl:when test="@type='incorect zipcode'">Invalid postal code.</iaixsl:when>
                                <iaixsl:when test="@type='double_address_error'">If the delivery address is to be the same as the address of the customer, select the appropriate option.</iaixsl:when>
                                <iaixsl:when test="@type='no delivery firstname'">Customer first name is too short.</iaixsl:when>
                                <iaixsl:when test="@type='no delivery lastname'">Customer surname is too short.</iaixsl:when>
                                <iaixsl:when test="@type='no delivery city'">Customer city name is invalid.</iaixsl:when>
                                <iaixsl:when test="@type='no delivery street'">Customer address is invalid.</iaixsl:when>
                                <iaixsl:when test="@type='incorect delivery region'">Region selected by a customer is invalid.</iaixsl:when>
                                <iaixsl:when test="@type='incorect delivery zipcode'">Customer postal code is invalid.</iaixsl:when>
                                <iaixsl:when test="@type='order_newpayment_hhtransfer_error'">Errors occurred during loyalty points transaction.</iaixsl:when>
                                <iaixsl:when test="@type='order_newpayment_voucher_error'">Errors occurred during a voucher transaction.
                                    <iaixsl:if test="@value='v1'">Voucher is invalid in this on-line store,</iaixsl:if>
                                    <iaixsl:if test="@value='v2'">Provided voucher ID is invalid. There is no voucher with this ID. Try to re-enter the ID.</iaixsl:if>
                                    <iaixsl:if test="@value='v3'">This voucher is blocked.</iaixsl:if>
                                    <iaixsl:if test="@value='v4'">This voucher has already been used.</iaixsl:if>
                                    <iaixsl:if test="@value='v5'">This voucher is no longer valid – the expiry date has passed.</iaixsl:if>
                                    <iaixsl:if test="@value='v7'">Voucher with the provided ID does not exist. Try to re-enter the ID.</iaixsl:if>
                                    <iaixsl:if test="@value='v8'">A voucher ID has not been provided.</iaixsl:if>
                                </iaixsl:when>
                                <iaixsl:when test="@type='order_newpayment_incorrect_paymentid'">Errors occurred – please select other payment method.</iaixsl:when>
                                <iaixsl:when test="@type='order_newpayment_error'">Payment errors occurred. Please wait and try again later.</iaixsl:when>
                                <iaixsl:when test="@type='order_newpayment_points_error'">You do not have enough loyalty points to pay for this order – select other payment method.</iaixsl:when>

                                <iaixsl:when test="@type='filter_products_not_found'">No results matching your search criteria were found. Try to change filters parameters.</iaixsl:when>
                                <iaixsl:when test="@type='questionnaire_error'">An unknown error has occurred. The survey has not been sent.</iaixsl:when>
                                <iaixsl:when test="@type='questionnaire_sent'">The survey has been sent. Thank You!</iaixsl:when>

                                <iaixsl:when test="@type='orderopen_not_found'">Invalid data entered. Try to find the phone number or e-mail address you have provided during the orderd process or check if the provided order ID is correct. If you still cannot pay via this page, please <a href="/contact.php">contact us</a>.</iaixsl:when>

                                <iaixsl:when test="@type='order_nonstandard_inactive'">Sorry, but we have not predicted shipping costs for this type of order. However, we wish to accept your order. Therefore, please contact <a href="/contact.php">our support department</a> in order to determine the possibility of accepting and completing your order.</iaixsl:when>
                                <iaixsl:when test="@type='order_nonstandard_inactive_worth'">Sorry, but we have not predicted that the order with this value would occur. However, we wish to accept your order. Therefore, please contact <a href="/contact.php">our support department</a> in order to determine the possibility of accepting and completing your order.</iaixsl:when>
                                <iaixsl:when test="@type='order_nonstandard_inactive_weight'">Sorry, but we have not predicted that the order with this weight would occur. However, we wish to accept your order. Therefore, please contact <a href="/contact.php">our support department</a> in order to determine the possibility of accepting and completing your order.</iaixsl:when>
                                

                                <iaixsl:when test="@type='no-auction-info'">
                                    No information about an auction.
                                </iaixsl:when>
                                <iaixsl:when test="@type='no-auction-account'">
                                    No information about an account.
                                </iaixsl:when>
                                <iaixsl:when test="@type='no-allegro-item'">
                                    No information about an item.
                                </iaixsl:when>
                                <iaixsl:when test="@type='no-buyer-info'">
                                    No information about a buyer.
                                </iaixsl:when>
                                <iaixsl:when test="@type='no-seller-info'">
                                    No information about a seller.
                                </iaixsl:when>
                                <iaixsl:when test="@type='no-shipping'">
                                    No information about available shipment types.
                                </iaixsl:when>
                                <iaixsl:when test="@type='no-order'">
                                    No information about the order.
                                </iaixsl:when>
                                <iaixsl:when test="@type='less_del'">
                                    Deleting all items is not possible. The order must contain at least as many items as you have bought at the auction.
                                </iaixsl:when>
                                <iaixsl:when test="@type='cant_del'">
                                    You cannot remove products from the current order, because their number equals the auctioned quantity.
                                </iaixsl:when>
                                <iaixsl:when test="@type='rebates_code_ok'">
                                    The provided discount code is valid.
                                </iaixsl:when>
                                <iaixsl:when test="@type='rebates_code_undefined'">
                                    The provided discount code is invalid.
                                </iaixsl:when>

                                <iaixsl:when test="@type='rebates_code_used' and $rebates_code_used">
                                     <iaixsl:value-of select="$rebates_code_used"/>
                                </iaixsl:when>

                                <iaixsl:when test="@type='rebates_code_begins'">
                                    Special offer associated with this discount code has not yet started.
                                </iaixsl:when>
                                <iaixsl:when test="@type='rebates_code_expires'">
                                    Special offer associated with this discount code has already ended.
                                </iaixsl:when>
                                <iaixsl:when test="@type='membershipcard_undefined'">
                                    The card number is invalid. Try again or <a href="/contact.php">contact our support department</a>.
                                </iaixsl:when>
                                <iaixsl:when test="@type='membershipcard_expires'">
                                    The card has expired.
                                </iaixsl:when>
                                <iaixsl:when test="@type='membershipcard_blocked'">
                                    This card has been blocked. <a href="/contact.php">Please contact our support department</a>.
                                </iaixsl:when>
                                <iaixsl:when test="@type='membershipcard_ok'">
                                    Card has been activated.
                                </iaixsl:when>
                                <iaixsl:when test="@type='client_wholesale_application_error'">
                                    An error has occurred during the registration form transmission.
                                </iaixsl:when>
                                <iaixsl:when test="@type='client_wholesale_registered'">
                                    Your account has been registered as a wholesaler type. You cannot submit another registration form.
                                </iaixsl:when>
                                <iaixsl:when test="@type='ordered_empty'">
                                    List of purchased items is empty.
                                </iaixsl:when>

                                <iaixsl:when test="@type='shipping_error'">
                                    We do not ship to your country.
                                </iaixsl:when>
                                <iaixsl:when test="@type='basket_empty'">
                                    Your basket is empty.
                                </iaixsl:when>
                                <iaixsl:when test="@type='order_minimum'">
                                    Too low value of the order.
                                    <iaixsl:if test="@value>0">
                                        Minimum value of the order is 
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
                                    The value of the order is too high.
                                    <iaixsl:if test="@value>0">
                                        Maximum value of the order is                <iaixsl:if test="$signbeforeprice = 'true'">
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
                                    The selected shipping service requires a phone number and e-mail address. To enter this information, please use 
                                    <a>
                                        <iaixsl:attribute name="href"><iaixsl:value-of select="@value"/></iaixsl:attribute>
                                        <iaixsl:attribute name="title">Click here to edit your account details and enter necessary information.</iaixsl:attribute>
                                        customer details edition form
                                    </a>
                                    .
                                </iaixsl:when>
                                <iaixsl:when test="@type='noPickupSites'">
                                    The parcel locker service is currently unavailable. Please 
                                    <a>
                                        <iaixsl:attribute name="href"><iaixsl:value-of select="@value"/></iaixsl:attribute>
                                        <iaixsl:attribute name="title">Click here to return to a shipping method selection.</iaixsl:attribute>
                                        change of a shipping method.
                                    </a>
                                    .
                                </iaixsl:when>
                                <iaixsl:when test="@type='noPickupStocks'">
                                    Personal collection is unavailable at this moment. Please 
                                    <a>
                                        <iaixsl:attribute name="href"><iaixsl:value-of select="@value"/></iaixsl:attribute>
                                        <iaixsl:attribute name="title">Click here to return to a shipping method selection.</iaixsl:attribute>
                                        change of a shipping method.
                                    </a>
                                    .
                                </iaixsl:when>

                                <iaixsl:when test="@type='rma_edit_error'">An error has occurred when filling the complaint form.</iaixsl:when>

                                <iaixsl:when test="@type='onlyHttps'">To make a credit card payment your network connection must be encrypted. Check if the HTTPS protocol precedes the shop address or contact the shop staff.</iaixsl:when>

                                <iaixsl:when test="@type='login_unavailable'">Cannot be connected with the provided account from a different service as the provided account is already connected with a different customer account in our shop. You can log out from this account and sign in again with information from the external service<iaixsl:value-of select="@value"/>.</iaixsl:when>

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

                                <iaixsl:when test="@type='affiliate_not_active'">You are not signed in or the Affiliate Program is not activated in your on-line store.</iaixsl:when>
                                <iaixsl:when test="@type='deliv_addr_deleted'">The indicated delivery address has been removed.</iaixsl:when>
                                <iaixsl:when test="@type='affiliate_off'">You have not activated the Affiliate Program. If You want to activate it, please contact our support department.</iaixsl:when>
                                <iaixsl:when test="@type='affiliate_blocked'">Your Affiliate Program has been blocked.</iaixsl:when>
                                <iaixsl:when test="@type='deliv_addr_selected'">The indicated delivery address has been set as the default.</iaixsl:when>
                                <iaixsl:when test="@type='rebates_code_ok'">The provided discount code is valid.</iaixsl:when>
                                <iaixsl:when test="@type='client_wholesale_application_added'">Your request has been registered.</iaixsl:when>
                                <iaixsl:when test="@type='login_connected'">Account in the store has been successfully linked to the account in the <iaixsl:value-of select="@value"/> service.</iaixsl:when>
                                <iaixsl:when test="@type='login_disconnected'">The account has been sparated from <iaixsl:value-of select="@value"/>.</iaixsl:when>
                                <iaixsl:when test="@type='login_unavailable'">Cannot be connected with the provided account from a different service as the provided account is already connected with a different customer account in our shop. You can log out from this account and sign in again with information from the external service<iaixsl:value-of select="@value"/>.</iaixsl:when>
                                <iaixsl:when test="@type='openid_login_canceled'">Signing in canceled.</iaixsl:when>
                                <iaixsl:when test="@type='client_wholesale_application_changed'">Your request has been modified.</iaixsl:when>
                                <iaixsl:when test="@type='wisheslist_empty'">Your wish list is empty.</iaixsl:when>
                                <iaixsl:when test="@type='products_requests_empty'">Your list of searched products is empty.</iaixsl:when>
                                <iaixsl:when test="@type='products_requests_added'">Request of a searched product has been sent. You will receive an e-mail containing information on potential availability of this product.</iaixsl:when>
                                <iaixsl:when test="@type='products_requests_removed'">Request of a searched product has been removed.</iaixsl:when>
                                <iaixsl:when test="@type='rma_add'">Complaint has been added.</iaixsl:when>
                                <iaixsl:when test="@type='return_add'">A return notification has been added.</iaixsl:when>
                                <iaixsl:when test="@type='return_edit'">Changes in the return have been saved.</iaixsl:when>
                                <iaixsl:when test="@type='rma_edit'">Changes in the complaint have been saved.</iaixsl:when>
                                <iaixsl:when test="@type='order_nonstandard_reason'">Sorry but we cannot calculate the default costs of delivery. You can still continue placing the order, however the total cost will not be displayed. Delivery cost will be calculated individually by our staff after the order is be accepted. Afterwards, we will contact you to confirm the order. If this solution is unsatisfactory, please <a href="/contact.php">contact us</a> in order to obtain more information about delivery costs or possibility of placing an order individually.</iaixsl:when>
                                <iaixsl:when test="@type='order_nonstandard_reason_worth'">Sorry but we cannot calculate the default costs of delivery for this order value. You can still continue placing the order, however the total cost will not be displayed. Delivery cost will be calculated individually by our staff after the order is be accepted. Afterwards, we will contact you to confirm the order. If this solution is unsatisfactory, please <a href="/contact.php">contact us</a> in order to obtain more information about delivery costs or possibility of placing an order individually.</iaixsl:when>
                                <iaixsl:when test="@type='order_nonstandard_reason_weight'">Sorry but we cannot calculate the default costs of delivery for this weight. You can still continue placing the order, however the total cost will not be displayed. Delivery cost will be calculated individually by our staff after the order is be accepted. Afterwards, we will contact you to confirm the order. If this solution is unsatisfactory, please <a href="/contact.php">contact us</a> in order to obtain more information about delivery costs or possibility of placing an order individually.</iaixsl:when>
                                <iaixsl:when test="@type='mailing_addsuccess'">The e-mail address has been added to the mailing list.</iaixsl:when>
                                <iaixsl:when test="@type='mailing_removesuccess'">The e-mail address has been removed from the mailing list.</iaixsl:when>
                                <iaixsl:when test="@type = 'mailing_nosuchemail'">We have not found this e-mail address on our mailing list.</iaixsl:when>
                                <iaixsl:when test="@type = 'mailing_sendingconfirm'">Confirmation of our mailing list modifications has been sent to the specified e-mail address. Check your inbox and follow the instructions from message.</iaixsl:when>
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
                        You are editing the order no. <iaixsl:value-of select="/shop/order_edit/@order_number"/>. Intorduce changes to the order or get back to
                        <a>
                            <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/order_edit/@cancel_lik"/></iaixsl:attribute>
                            order details</a>.
                    </p>
                </div>
            </div>
        </iaixsl:if>


         <iaixsl:if test="/shop/return_edit/@return_id">
            <div class="menu_messages_message" id="menu_messages_warning">
                <div class="menu_messages_message_sub">
                    <p>
                        You are editing the return no. <iaixsl:value-of select="/shop/return_edit/@return_id"/>. Introduce changes to the return or 
                        <a>
                            <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/return_edit/@cancel_link"/></iaixsl:attribute>
                            go back to a return details</a>.
                    </p>
                </div>
            </div>
        </iaixsl:if>

        <!--Koszyk - cms (basketedit_cms, 107581.1)-->
            <iaixsl:if test="page/basket-details/text/body">
                <div class="basket_cms cm">
                    <iaixsl:value-of disable-output-escaping="yes" select="page/basket-details/text/body"/>
                </div>
            </iaixsl:if>
        <!--Lista produktów w koszyku (basketedit_productslist, 107583.1)-->
        <iaixsl:if test="page/@type = 'basketedit'">
            <iaixsl:variable name="txt_50001_025a">Before we proceed with this cash on delivery order, an advance payment for this product is required: </iaixsl:variable>
            <iaixsl:variable name="txt_67332_am">There are </iaixsl:variable>
            <iaixsl:variable name="txt_67332_wm">  in stock currently. Additional amount is in stock of our supplier.</iaixsl:variable>

            <script class="ajaxLoad">
                var only_virtual_literal_1 = 'Files will be available under ';
                var only_virtual_literal_2 = ' in the customer’s panel after the order is handled.';
            </script>

            <script class="ajaxLoad">
                var client_files_link = '<iaixsl:value-of select="/shop/client_files/@link_to_download"/>';
                var client_files_link_txt = '"My files"';
                var currency_format = app_shop.vars.currency_format;
            </script>

            
            <iaixsl:variable name="setIconLarge"></iaixsl:variable>
            <iaixsl:variable name="wholesalerPrice">true</iaixsl:variable>
            <iaixsl:variable name="hideLimit">4</iaixsl:variable>

            <form class="basketedit_productslist" action="/basketchange.php?type=multiproduct" method="post">
                <iaixsl:attribute name="enctype">multipart/form-data</iaixsl:attribute>

                <div id="basketedit_productslist" class="basketedit_productslist">
                    <h2><iaixsl:attribute name="class">big_label</iaixsl:attribute>List of products in a basket</h2>
                    <table>
                        <tr class="basketedit_productslist_label">
                            <th colspan="2" class="productslist_product_name">
                                
                            </th>

                            <iaixsl:if test="/shop/basket/@product_comment_active = 'y' and count(/shop/page/basket-details/product/price[not(@special_offer='true')]) > 0">
                                <th class="productslist_product_comment">
                                    Comments
                                </th>
                            </iaixsl:if>

                            <th class="productslist_product_prices d-none d-md-table-cell">
                                Unit price
                            </th>
                            <th class="productslist_product_quantity">
                                Quantity
                            </th>
                            <th class="productslist_product_sum d-none d-sm-table-cell">
                                Total
                            </th>


                            <th class="productslist_product_calculate">
                                Calculate
                            </th>


                            <th class="productslist_product_action">
                                Remove
                            </th>
                        </tr>

                        <iaixsl:for-each select="page/basket-details/product">
                            <tr class="productslist_item">
                                <iaixsl:if test="price/@special_offer='true'">
                                    <iaixsl:attribute name="class">productslist_item special_offer</iaixsl:attribute>
                                </iaixsl:if>

                                <td class="productslist_product_photo">
                                    <a>
                                        <iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
                                        <img>
                                            <iaixsl:choose>
                                                <iaixsl:when test="$setIconLarge">
                                                    <iaixsl:attribute name="src"><iaixsl:value-of select="icon"/></iaixsl:attribute>
                                                </iaixsl:when>
                                                <iaixsl:otherwise>
                                                    <iaixsl:attribute name="src"><iaixsl:value-of select="iconsmall"/></iaixsl:attribute>
                                                </iaixsl:otherwise>
                                            </iaixsl:choose>
                                            <iaixsl:attribute name="alt"><iaixsl:value-of disable-output-escaping="yes" select="name/text()"/></iaixsl:attribute>
                                        </img>
                                    </a>
                                </td>
                                <td class="productslist_product_name">
                                    <h3>
                                        <a>
                                            <iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
                                            <iaixsl:value-of disable-output-escaping="yes" select="name/text()"/>
                                        </a>
                                        <iaixsl:if test="@product_type = 'product_virtual'">
                                            <i class="product_virtual">Digital file</i>
                                        </iaixsl:if>

                                        <iaixsl:if test="@product_type = 'product_service'">
                                            <i class="product_service">Service</i>
                                        </iaixsl:if>
                                    </h3>

                                    <iaixsl:choose>
                                        
                                        <iaixsl:when test="price/@special_offer='true'">
                                            <div class="productslist_special_offer">
                                                <span>
                                                    Thanks to special offer you save
                                                    <b class="special_offer_value"><iaixsl:value-of select="price/@yousave_formatted"/></b>, that is
                                                    <b><iaixsl:value-of select="price/@yousave_percent"/>%</b>
                                                    of the product value.
                                                </span>
                                            </div>
                                        </iaixsl:when>
                                        <iaixsl:otherwise>

                                            
                                            <iaixsl:if test="not(@barcode ='')">
                                                <div class="productslist_product_barcode">
                                                    <span>
                                                        Product code: 
                                                    </span>
                                                    <iaixsl:value-of select="@barcode"/>
                                                </div>
                                            </iaixsl:if>

                                            
                                            <iaixsl:if test="price/priceformula/parameters">
                                                <iaixsl:for-each select="price/priceformula/parameters/parameter">
                                                    <div class="productslist_priceformula">
                                                        <span>
                                                            <iaixsl:value-of select="name"/>:
                                                        </span>
                                                        <iaixsl:value-of select="values/value"/>
                                                    </div>
                                                </iaixsl:for-each>
                                            </iaixsl:if>

                                            
                                            <iaixsl:if test="not(size/@type='uniw')">
                                                <div class="productslist_product_size">
                                                    <span>
                                                        Size:
                                                    </span>
                                                    <iaixsl:value-of select="size/@description"/>
                                                </div>
                                            </iaixsl:if>

                                            
                                            <iaixsl:if test="(version) and (not(version/@product_name=''))">
                                                <div class="productslist_product_version">
                                                    <span>
                                                        <iaixsl:value-of select="version/@name"/>:
                                                    </span>
                                                    <iaixsl:value-of select="version/@product_name"/>
                                                </div>
                                            </iaixsl:if>

                                            
                                            <iaixsl:if test="@product_type = 'product_bundle'">
                                                <div class="productslist_product_bundle">
                                                    Products in a set:

                                                    <iaixsl:for-each select="bundled/product">
                                                        <span>
                                                            <iaixsl:if test="size/@ordered > 1">
                                                                <iaixsl:value-of select="size/@ordered"/>x 
                                                            </iaixsl:if>
                                                            <iaixsl:value-of select="name/text()"/>
                                                            <iaixsl:if test="not(size/@type='uniw') or ((version) and (not(version/@product_name='')))">
                                                                (<iaixsl:if test="not(size/@type='uniw')">Size:<iaixsl:value-of select="size/@description"/></iaixsl:if><iaixsl:if test="not(size/@type='uniw') and ((version) and (not(version/@product_name='')))">, </iaixsl:if><iaixsl:if test="(version) and (not(version/@product_name=''))"><iaixsl:value-of select="version/@name"/>: <iaixsl:value-of select="version/@product_name"/></iaixsl:if>)
                                                            </iaixsl:if>

                                                            <iaixsl:if test="@product_type = 'product_virtual'">
                                                                <i class="product_virtual">Digital file</i>
                                                            </iaixsl:if>

                                                            <iaixsl:if test="@product_type = 'product_service'">
                                                                <i class="product_service">Service</i>
                                                            </iaixsl:if>
                                                        </span>
                                                    </iaixsl:for-each>
                                                </div>
                                            </iaixsl:if>

                                            <iaixsl:if test="change_group">
                                                <div class="productslist_product_info">
                                                    You cannot remove this product.
                                                </div>
                                            </iaixsl:if>

                                            <iaixsl:choose>
                                                <iaixsl:when test="(size/@orderedsum) > (size/@amount) and not(size/@amount = '0') and not(size/@amount = '-1')">
                                                    <div class="productslist_product_info">
                                                        We currently do not have the required quantity of this product. Please reduce the quantity to 
                                                        <iaixsl:value-of select="size/@amount"/>
                                                         or choose another product.
                                                    </div>
                                                </iaixsl:when>

                                                <iaixsl:when test="(size/@own_stocks_amount > 0) and (size/@ordered > size/@own_stocks_amount) and $txt_67332_am">
                                                    <div class="productslist_product_info basket_info">
                                                        <iaixsl:value-of disable-output-escaping="yes" select="$txt_67332_am"/>
                                                        <iaixsl:value-of select="size/@own_stocks_amount"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="size/@unit"/>
                                                        <iaixsl:value-of disable-output-escaping="yes" select="$txt_67332_wm"/>
                                                    </div>
                                                </iaixsl:when>

                                                <iaixsl:when test="size/@amount = '0'">
                                                    <div class="productslist_product_info">
                                                        This product is currently out of stock. Please choose another product.
                                                    </div>
                                                </iaixsl:when>

                                                <iaixsl:when test="(size/@ordered_points) and not(/shop/basket/@client_points >= 0)">
                                                    <div class="productslist_product_info">
                                                        You have not enough loyalty points to buy so many products for points.
                                                    </div>
                                                </iaixsl:when>

                                                <iaixsl:when test="(/shop/page/rebates/code_details/@active = 'y') and ((/shop/rebate_code/shipping_cost_rebate/@active='n') and (price/@rebate_code_active='n'))">
                                                    <div class="productslist_product_info">
                                                        Indicated discount code is not applicable for this item.
                                                    </div>
                                                </iaixsl:when>

                                                <iaixsl:when test="@product_type='product_virtual'">
                                                    <div class="productslist_product_info virtual">
                                                        Products will be available in 
                                                        <a class="productslist_product_info_link">
                                                            <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/client_files/@link_to_download"/></iaixsl:attribute>
                                                            "My files"
                                                        </a>
                                                         after the order is handled. 
                                                    </div>
                                                </iaixsl:when>

                                            </iaixsl:choose>

                                            <iaixsl:if test="(size/@to_little_for_gross = 'true') and not((size/@orderedsum) > (size/@amount) and not(size/@amount = '0') and not(size/@amount = '-1'))">
                                                <div class="productslist_product_info">
                                                    We currently have in stock
                                                    <iaixsl:value-of select="size/@amount_wholesale"/>
                                                     items in a wholesale price. You have 
                                                    <iaixsl:value-of select="size/@ordered - size/@amount_wholesale"/>
                                                     items in a retail price in a basket.
                                                </div>
                                            </iaixsl:if>

                                            
                                            <iaixsl:if test="$txt_50001_025a and (price/@advanceworth > 0)">
                                                <div class="productslist_product_advance">
                                                    <iaixsl:choose>
                                                        <iaixsl:when test="/shop/page/basket-details/summary/money/@advance_mode = 'default' or /shop/page/basket-details/summary/money/@advance_mode = 'none'">
                                                            <iaixsl:choose>
                                                                <iaixsl:when test="/shop/page/basket-details/summary/money/@cash_on_delivery = 'true' and /shop/page/basket-details/summary/money/@prepaid = 'false'">
                                                                    Before we proceed with this cash on delivery order, an advance payment for this product is required: <iaixsl:value-of select="price/@advanceworth_formatted"/>
                                                                </iaixsl:when>
                                                                <iaixsl:when test="/shop/page/basket-details/summary/money/@cash_on_delivery = 'false' and /shop/page/basket-details/summary/money/@prepaid = 'true'">
                                                                    Before we proceed with this prepayment order, an advance payment for this product is required: <iaixsl:value-of select="price/@advanceworth_formatted"/>
                                                                </iaixsl:when>
                                                                <iaixsl:when test="/shop/page/basket-details/summary/money/@cash_on_delivery = 'true' and /shop/page/basket-details/summary/money/@prepaid = 'true'">
                                                                    Before we proceed with order process, an advance payment for this product is required: <iaixsl:value-of select="price/@advanceworth_formatted"/>
                                                                </iaixsl:when>
                                                            </iaixsl:choose>
                                                        </iaixsl:when>
                                                        <iaixsl:when test="/shop/page/basket-details/summary/money/@advance_mode = 'total'">
                                                            Before we proceed with order process, an advance payment for this product is required: <iaixsl:value-of select="price/@advanceworth_formatted"/>
                                                        </iaixsl:when>
                                                    </iaixsl:choose>
                                                </div>
                                            </iaixsl:if>

                                        </iaixsl:otherwise>
                                    </iaixsl:choose>

                                    <iaixsl:choose>
                                        <iaixsl:when test="size/@ordered_points">
                                            <div class="productslist_product_sum d-sm-none">
                                                <span>
                                                    <iaixsl:value-of select="price/@points_sum"/> pts.
                                                </span>
                                            </div>
                                        </iaixsl:when>
                                        <iaixsl:otherwise>
                                            <div class="productslist_product_sum d-sm-none">
                                                <span>
                                                    <iaixsl:choose>
                                                        <iaixsl:when test="(/shop/basket/@wholesaler = 'true') and not($wholesalerPrice)">
                                                            <iaixsl:value-of select="price/@worth_net_formatted"/>
                                                        </iaixsl:when>
                                                        <iaixsl:otherwise>
                                                            <iaixsl:value-of select="price/@worth_formatted"/>
                                                        </iaixsl:otherwise>
                                                    </iaixsl:choose>
                                                </span>
                                            </div>
                                        </iaixsl:otherwise>
                                    </iaixsl:choose>
                                </td>

                                <iaixsl:if test="/shop/basket/@product_comment_active = 'y' and not(price/@special_offer='true')">
                                    <td class="productslist_product_comment">
                                        <a href="#addComment">
                                            <iaixsl:attribute name="title">click here to add a comment</iaixsl:attribute>
                                            <i class="icon-paper-clip"></i> add a description<br/>or an attachment
                                        </a>
                                    </td>
                                </iaixsl:if>

                                <td class="productslist_product_prices d-none d-md-table-cell">
                                    <iaixsl:choose>
                                        <iaixsl:when test="size/@ordered_points">
                                            <del>
                                                <iaixsl:choose>
                                                    <iaixsl:when test="(/shop/basket/@wholesaler = 'true') and not($wholesalerPrice)">
                                                        <iaixsl:value-of select="price/@price_net_formatted"/>
                                                    </iaixsl:when>
                                                    <iaixsl:otherwise>
                                                        <iaixsl:value-of select="price/@price_formatted"/>
                                                    </iaixsl:otherwise>
                                                </iaixsl:choose>
                                            </del>
                                            <span>
                                                <iaixsl:value-of select="price/@points"/> pts.
                                            </span>
                                        </iaixsl:when>
                                        <iaixsl:otherwise>
                                            <iaixsl:if test="price/@beforerebate">
                                                <del>
                                                    <iaixsl:value-of select="price/@beforerebate_formatted"/>
                                                </del>
                                            </iaixsl:if>
                                            <span>
                                                <iaixsl:choose>
                                                    <iaixsl:when test="(/shop/basket/@wholesaler = 'true') and not($wholesalerPrice)">
                                                        <iaixsl:value-of select="price/@price_net_formatted"/>
                                                    </iaixsl:when>
                                                    <iaixsl:otherwise>
                                                        <iaixsl:value-of select="price/@price_formatted"/>
                                                    </iaixsl:otherwise>
                                                </iaixsl:choose>
                                            </span>

                                            <iaixsl:if test="price/rebateNumber">
                                                <small class="showTip_basket">
                                                    buy more, pay less 
                                                </small>
                                                <div class="tooltipContent">
                                                    <iaixsl:for-each select="price/rebateNumber/rebate">
                                                        <div>
                                                            From 
                                                            <strong>
                                                                <iaixsl:value-of select="@threshold"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="../../../size/@unit"/>
                                                            </strong>
                                                             price 
                                                            <strong>
                                                                <iaixsl:value-of select="@price_formatted"/>
                                                                <iaixsl:if test="not(/shop/contact/owner/@vat_registered = 'false')"> </iaixsl:if>
                                                            </strong>
                                                            - discount 
                                                            <strong>
                                                                <iaixsl:value-of select="@value"/>%
                                                            </strong>
                                                        </div>
                                                    </iaixsl:for-each>
                                                </div>
                                            </iaixsl:if>
                                        </iaixsl:otherwise>
                                    </iaixsl:choose>
                                </td>
                                <td class="productslist_product_quantity">
                                    <div>
                                        <iaixsl:if test="@product_type='product_virtual'">
                                            <iaixsl:attribute name="style">display:none;</iaixsl:attribute>
                                        </iaixsl:if>
                                        <iaixsl:choose>
                                            <iaixsl:when test="change_group/@id">
                                                <iaixsl:attribute name="class">productslist_product_quantity productslist_product_quantity_change</iaixsl:attribute>
                                                <input type="hidden">
                                                    <iaixsl:attribute name="name">product[<iaixsl:value-of select="position()"/>]</iaixsl:attribute>
                                                    <iaixsl:attribute name="value"><iaixsl:value-of select="@id"/></iaixsl:attribute>
                                                </input>
                                                <input type="hidden">
                                                    <iaixsl:attribute name="name">size[<iaixsl:value-of select="position()"/>]</iaixsl:attribute>
                                                    <iaixsl:attribute name="value"><iaixsl:value-of select="size/@type"/></iaixsl:attribute>
                                                </input>
                                                <iaixsl:if test="additional/@hash">
                                                    <input type="hidden">
                                                        <iaixsl:attribute name="name">additional[<iaixsl:value-of select="position()"/>]</iaixsl:attribute>
                                                        <iaixsl:attribute name="value"><iaixsl:value-of select="additional/@hash"/></iaixsl:attribute>
                                                    </input>
                                                </iaixsl:if>
                                                <iaixsl:if test="size/@ordered_points">
                                                    <input type="hidden" value="1">
                                                        <iaixsl:attribute name="name">forpoints[<iaixsl:value-of select="position()"/>]</iaixsl:attribute>
                                                    </input>
                                                </iaixsl:if>
                                                <input type="hidden">
                                                    <iaixsl:attribute name="name">set_quantity[<iaixsl:value-of select="position()"/>]</iaixsl:attribute>
                                                    <iaixsl:choose>
                                                        <iaixsl:when test="size/@ordered_points">
                                                            <iaixsl:attribute name="value"><iaixsl:value-of select="size/@ordered_points"/></iaixsl:attribute>
                                                        </iaixsl:when>
                                                        <iaixsl:otherwise>
                                                            <iaixsl:attribute name="value"><iaixsl:value-of select="size/@ordered"/></iaixsl:attribute>
                                                        </iaixsl:otherwise>
                                                    </iaixsl:choose>
                                                </input>
                                                <strong>
                                                    <iaixsl:choose>
                                                        <iaixsl:when test="size/@ordered_points">
                                                            <iaixsl:value-of select="size/@ordered_points"/>
                                                        </iaixsl:when>
                                                        <iaixsl:otherwise>
                                                            <iaixsl:value-of select="size/@ordered"/>
                                                        </iaixsl:otherwise>
                                                    </iaixsl:choose>
                                                    <span>
                                                        <iaixsl:choose>
                                                            <iaixsl:when test="not(size/@ordered > 1)">
                                                                <iaixsl:value-of select="size/@unit_singular"/>
                                                            </iaixsl:when>
                                                            <iaixsl:otherwise>
                                                                <iaixsl:value-of select="size/@unit"/>
                                                            </iaixsl:otherwise>
                                                        </iaixsl:choose>
                                                    </span>
                                                </strong>
                                                <iaixsl:if test="change_group/@changelink">
                                                    <a class="btn --solid productslist_change_product">
                                                        <iaixsl:attribute name="href"><iaixsl:value-of select="change_group/@changelink"/></iaixsl:attribute>
                                                        Change product
                                                    </a>
                                                </iaixsl:if>
                                            </iaixsl:when>
                                            <iaixsl:otherwise>
                                                <input type="hidden">
                                                    <iaixsl:attribute name="name">product[<iaixsl:value-of select="position()"/>]</iaixsl:attribute>
                                                    <iaixsl:attribute name="value"><iaixsl:value-of select="@id"/></iaixsl:attribute>
                                                </input>
                                                <input type="hidden">
                                                    <iaixsl:attribute name="name">size[<iaixsl:value-of select="position()"/>]</iaixsl:attribute>
                                                    <iaixsl:attribute name="value"><iaixsl:value-of select="size/@type"/></iaixsl:attribute>
                                                </input>
                                                <iaixsl:if test="additional/@hash">
                                                    <input type="hidden">
                                                        <iaixsl:attribute name="name">additional[<iaixsl:value-of select="position()"/>]</iaixsl:attribute>
                                                        <iaixsl:attribute name="value"><iaixsl:value-of select="additional/@hash"/></iaixsl:attribute>
                                                    </input>
                                                </iaixsl:if>
                                                <iaixsl:if test="size/@ordered_points">
                                                    <input type="hidden" value="1">
                                                        <iaixsl:attribute name="name">forpoints[<iaixsl:value-of select="position()"/>]</iaixsl:attribute>
                                                    </input>
                                                </iaixsl:if>
                                                <span class="productslist_quantity">
                                                    <a href="#delQuantity" class="delQuantity d-none d-sm-inline-block"><i class="icon-minus"></i></a>
                                                    <input type="text">
                                                        <iaixsl:if test="price/@special_offer='true'">
                                                            <iaixsl:attribute name="readonly">readonly</iaixsl:attribute>
                                                        </iaixsl:if>
                                                        <iaixsl:attribute name="name">set_quantity[<iaixsl:value-of select="position()"/>]</iaixsl:attribute>
                                                        <iaixsl:attribute name="class">quantity_<iaixsl:value-of select="@id"/></iaixsl:attribute>

                                                        <iaixsl:choose>
                                                            <iaixsl:when test="size/@ordered_points">
                                                                <iaixsl:attribute name="value"><iaixsl:value-of select="size/@ordered_points"/></iaixsl:attribute>
                                                            </iaixsl:when>
                                                            <iaixsl:otherwise>
                                                                <iaixsl:attribute name="value"><iaixsl:value-of select="size/@ordered"/></iaixsl:attribute>
                                                            </iaixsl:otherwise>
                                                        </iaixsl:choose>

                                                        <iaixsl:attribute name="data-amount"><iaixsl:value-of select="size/@amount"/></iaixsl:attribute>
                                                        <iaixsl:attribute name="data-unit_sellby"><iaixsl:value-of select="size/@unit_sellby"/></iaixsl:attribute>
                                                        <iaixsl:attribute name="data-unit"><iaixsl:value-of select="size/@unit"/></iaixsl:attribute>
                                                        <iaixsl:attribute name="data-unit_precision"><iaixsl:value-of select="size/@unit_precision"/></iaixsl:attribute>

                                                        <iaixsl:if test="order_quantity_range/max_quantity_per_order">
                                                            <iaixsl:attribute name="data-max_q"><iaixsl:value-of select="order_quantity_range/max_quantity_per_order"/></iaixsl:attribute>
                                                        </iaixsl:if>
                                                        <iaixsl:if test="order_quantity_range/max_size_quantity_per_order">
                                                            <iaixsl:attribute name="data-max_s"><iaixsl:value-of select="order_quantity_range/max_size_quantity_per_order"/></iaixsl:attribute>
                                                        </iaixsl:if>
                                                        <iaixsl:if test="order_quantity_range/min_quantity_per_order">
                                                            <iaixsl:attribute name="data-min_q"><iaixsl:value-of select="order_quantity_range/min_quantity_per_order"/></iaixsl:attribute>
                                                        </iaixsl:if>
                                                        <iaixsl:if test="order_quantity_range/min_size_quantity_per_order">
                                                            <iaixsl:attribute name="data-min_s"><iaixsl:value-of select="order_quantity_range/min_size_quantity_per_order"/></iaixsl:attribute>
                                                        </iaixsl:if>
                                                    </input>

                                                    <a href="#addQuantity" class="addQuantity d-none d-sm-inline-block"><i class="icon-plus"></i></a>
                                                    <i class="productslist_product_unit d-none d-sm-inline-block">
                                                        <iaixsl:choose>
                                                            <iaixsl:when test="not(size/@ordered > 1)">
                                                                <iaixsl:value-of select="size/@unit_singular"/>
                                                            </iaixsl:when>
                                                            <iaixsl:otherwise>
                                                                <iaixsl:value-of select="size/@unit"/>
                                                            </iaixsl:otherwise>
                                                        </iaixsl:choose>
                                                    </i>

                                                </span>

                                                <iaixsl:if test="not(size/@unit_sellby = '1')">
                                                    <div class="productslist_product_sellby_info">sold by 
                                                        <iaixsl:value-of select="size/@unit_sellby"/><iaixsl:text> </iaixsl:text>
                                                        <iaixsl:choose>
                                                            <iaixsl:when test="not(size/@ordered > 1)">
                                                                <iaixsl:value-of select="size/@unit_singular"/>
                                                            </iaixsl:when>
                                                            <iaixsl:otherwise>
                                                                <iaixsl:value-of select="size/@unit"/>
                                                            </iaixsl:otherwise>
                                                        </iaixsl:choose>
                                                    </div>
                                                </iaixsl:if>

                                            </iaixsl:otherwise>
                                        </iaixsl:choose>
                                    </div>

                                    <iaixsl:if test="@product_type='product_virtual'">
                                        <div class="virtual_quantity">1</div>
                                    </iaixsl:if>
                                </td>

                                <td class="productslist_product_sum d-none d-sm-table-cell">
                                    <iaixsl:choose>
                                        <iaixsl:when test="size/@ordered_points">
                                            <span>
                                                <iaixsl:value-of select="price/@points_sum"/> pts.
                                            </span>
                                        </iaixsl:when>
                                        <iaixsl:otherwise>
                                            <span>
                                                <iaixsl:choose>
                                                    <iaixsl:when test="(/shop/basket/@wholesaler = 'true') and not($wholesalerPrice)">
                                                        <iaixsl:value-of select="price/@worth_net_formatted"/>
                                                    </iaixsl:when>
                                                    <iaixsl:otherwise>
                                                        <iaixsl:value-of select="price/@worth_formatted"/>
                                                    </iaixsl:otherwise>
                                                </iaixsl:choose>
                                            </span>
                                        </iaixsl:otherwise>
                                    </iaixsl:choose>
                                </td>

                                <td class="productslist_product_calculate d-none d-sm-table-cell">
                                    <iaixsl:choose>
                                        <iaixsl:when test="price/@special_offer='true'">
                                            <span class="productslist_specialoffer"><i class="icon-ok-sign"></i>Special offer</span>
                                        </iaixsl:when>
                                        <iaixsl:otherwise>
                                            <button class="product_calculate" type="submit">
                                                <iaixsl:attribute name="title">change quantity</iaixsl:attribute>
                                                <i class="icon-repeat"></i>
                                            </button>
                                        </iaixsl:otherwise>
                                    </iaixsl:choose>
                                </td>

                                <td class="productslist_product_action d-none d-sm-table-cell">
                                    <a href="" class="productslist_product_remove">
                                        <iaixsl:if test="/shop/page/basket-details/@reduction_amount_disabled = 'true' and order_quantity_range/min_quantity_per_order/text()">
                                            <iaixsl:attribute name="class">productslist_product_remove disabled</iaixsl:attribute>
                                        </iaixsl:if>
                                        <iaixsl:choose>
                                            <iaixsl:when test="removeall_points">
                                                <iaixsl:attribute name="href"><iaixsl:value-of select="removeall_points"/></iaixsl:attribute>
                                            </iaixsl:when>
                                            <iaixsl:otherwise>
                                                <iaixsl:attribute name="href"><iaixsl:value-of select="removeall"/></iaixsl:attribute>
                                            </iaixsl:otherwise>
                                        </iaixsl:choose>
                                        <i class="icon-remove"></i>
                                    </a>
                                </td>

                                <td class="productslist_product_toggler d-sm-none">
                                    <a href="#" class="productslist_product_toggler"/>
                                </td>
                            </tr>

                            <tr class="productslist_product_action mobile">
                                <td class="productslist_product_action mobile" colspan="8">
                                    <div>
                                        <a href="" class="productslist_product_remove">
                                            <iaixsl:if test="/shop/page/basket-details/@reduction_amount_disabled = 'true' and order_quantity_range/min_quantity_per_order/text()">
                                                <iaixsl:attribute name="class">productslist_product_remove disabled</iaixsl:attribute>
                                            </iaixsl:if>
                                            <iaixsl:choose>
                                                <iaixsl:when test="removeall_points">
                                                    <iaixsl:attribute name="href"><iaixsl:value-of select="removeall_points"/></iaixsl:attribute>
                                                </iaixsl:when>
                                                <iaixsl:otherwise>
                                                    <iaixsl:attribute name="href"><iaixsl:value-of select="removeall"/></iaixsl:attribute>
                                                </iaixsl:otherwise>
                                            </iaixsl:choose>
                                            <i class="icon-remove"></i>
                                        </a>
                                        <span>Remove from basket</span>
                                        <a href="#addQuantity" class="addQuantity"><i class="icon-plus"></i></a>
                                        <a href="#delQuantity" class="delQuantity"><i class="icon-minus"></i></a>
                                        <button class="product_calculate" type="submit">
                                            <iaixsl:attribute name="title">change quantity</iaixsl:attribute>
                                            <i class="icon-repeat"></i>
                                        </button>
                                    </div>
                                </td>
                            </tr>

                            <iaixsl:choose>
                                <iaixsl:when test="/shop/basket/@product_comment_active = 'y' and not(price/@special_offer='true')">

                                    <tr class="productslist_comment">
                                        <td colspan="8" class="productslist_comment">
                                            <div class="prodl_comment_top">
                                                <iaixsl:if test="comment or order_files"><iaixsl:attribute name="style">display:block</iaixsl:attribute></iaixsl:if>
                                            </div>
                                            <div class="prodl_comment">
                                                <iaixsl:if test="comment or order_files"><iaixsl:attribute name="style">display:block</iaixsl:attribute></iaixsl:if>
                                                <div class="prodl_comment_left">
                                                    <span>Add a comment</span>
                                                    <textarea>
                                                        <iaixsl:attribute name="name">comment[<iaixsl:value-of select="position()"/>]</iaixsl:attribute>
                                                        <iaixsl:if test="comment">
                                                            <iaixsl:value-of select="comment"/>
                                                        </iaixsl:if>
                                                    </textarea>

                                                    <button class="btn --solid --secondary" type="submit">
                                                        Save changes
                                                    </button>

                                                    <a href="#clearComment">clear</a>
                                                </div>

                                                <div class="prodl_comment_right">
                                                    <span>Attach a file to a product</span>

                                                    <iaixsl:if test="order_files/file">
                                                        <ol>
                                                            <iaixsl:for-each select="order_files/file">
                                                                <li>
                                                                    <a class="previewFile" href="#previewFile">
                                                                        <iaixsl:choose>
                                                                            <iaixsl:when test="@preview = 'true'">
                                                                                <iaixsl:attribute name="rel"><iaixsl:value-of select="@path"/></iaixsl:attribute>
                                                                            </iaixsl:when>
                                                                            <iaixsl:otherwise>
                                                                                <iaixsl:attribute name="href"><iaixsl:value-of select="@path"/></iaixsl:attribute>
                                                                                <iaixsl:attribute name="target">_blank</iaixsl:attribute>
                                                                            </iaixsl:otherwise>
                                                                        </iaixsl:choose>
                                                                        <iaixsl:value-of select="@file"/>
                                                                    </a>
                                                                    <a class="deleteFile ">
                                                                        <iaixsl:attribute name="href"><iaixsl:value-of select="@delete_link"/></iaixsl:attribute>
                                                                        <iaixsl:attribute name="title">Remove a file</iaixsl:attribute>
                                                                        Remove a file
                                                                    </a>
                                                                </li>
                                                            </iaixsl:for-each>
                                                        </ol>
                                                    </iaixsl:if>
                                                    <div class="prodl_comment_foto">
                                                        <input type="file" name="comment_photo">
                                                            <iaixsl:if test="/shop/form_data/upload_file/max_filesize/@bytes">
                                                                <iaixsl:attribute name="data-max_filesize"><iaixsl:value-of select="/shop/form_data/upload_file/max_filesize/@bytes"/></iaixsl:attribute>
                                                            </iaixsl:if>
                                                            <iaixsl:attribute name="name">comment_photo[<iaixsl:value-of select="@id"/>][<iaixsl:value-of select="size/@type"/>][<iaixsl:choose><iaixsl:when test="additional/@hash"><iaixsl:value-of select="additional/@hash"/></iaixsl:when><iaixsl:otherwise>0</iaixsl:otherwise></iaixsl:choose>][]</iaixsl:attribute>
                                                            <iaixsl:attribute name="size">20</iaixsl:attribute>

                                                        </input>
                                                    </div>
                                                    <div class="prodl_comment_button">
                                                        <a href="#saveQuantity" class="btn --solid --secondary saveQuantityFile">
                                                            Add a file</a>
                                                    </div>
                                                </div>
                                                <div style="clear: both"/>
                                            </div>
                                        </td>
                                    </tr>
                                </iaixsl:when>
                                <iaixsl:otherwise>
                                    <input>
                                        <iaixsl:attribute name="type">hidden</iaixsl:attribute>
                                        <iaixsl:attribute name="name">comment[<iaixsl:value-of select="position()"/>]</iaixsl:attribute>
                                        <iaixsl:attribute name="value"><iaixsl:value-of select="comment"/></iaixsl:attribute>
                                    </input>
                                </iaixsl:otherwise>
                            </iaixsl:choose>


                        </iaixsl:for-each>
                        <tr class="productslist_tools_bottom">
                            <td colspan="8">
                                <iaixsl:if test="count(page/basket-details/product) = 1"><iaixsl:attribute name="class">productslist_tools_bottom_one_product</iaixsl:attribute></iaixsl:if>
                                <a href="#addSelectedToFavorite" class="btn --icon-left icon-save addSelectedToFavorite">
                                    <i class="icon-save"></i> <span>Save your basket</span></a>
                                <a href="#removeSelected" class="btn --icon-left icon-trash removeSelected">
                                    <i class="icon-trash"></i> <span>Empty your basket</span></a>
                                <a href="#saveQuantity" class="btn --solid --secondary saveQuantity">
                                    Save changes</a>
                                <a href="#addWrapper" class="btn --icon-left icon-gift addWrapper">
                                    Select a package</a>
                            </td>
                        </tr>
                    </table>
                </div>
                <iaixsl:choose>
                    <iaixsl:when test="/shop/page/basket-details/rebate_local/active/selected/product/@id = /shop/page/basket-details/rebate_local/active/products/product/@id">
                        <div id="basketedit_productslist_gift" style="display: none;">
                            <input type="hidden" name="product[0]">
                                <iaixsl:attribute name="value"><iaixsl:value-of select="/shop/page/basket-details/rebate_local/active/selected/product/@id"/></iaixsl:attribute>
                            </input>
                            <input type="hidden" name="size[0]">
                                <iaixsl:attribute name="value"><iaixsl:value-of select="/shop/page/basket-details/rebate_local/active/selected/product/@size"/></iaixsl:attribute>
                            </input>
                            <input type="hidden" name="set_quantity[0]" value="1"/>
                            <input type="hidden" name="gift[0]" value="1"/>
                        </div>
                    </iaixsl:when>
                    <iaixsl:when test="/shop/page/basket-details/rebate_local/selected/@product">
                        <div id="basketedit_productslist_gift" class="nogiftforyou" style="display: none;">
                            <input type="hidden" name="product[0]">
                                <iaixsl:attribute name="value"><iaixsl:value-of select="/shop/page/basket-details/rebate_local/selected/@product"/></iaixsl:attribute>
                            </input>
                            <input type="hidden" name="size[0]">
                                <iaixsl:attribute name="value"><iaixsl:value-of select="/shop/page/basket-details/rebate_local/selected/@size"/></iaixsl:attribute>
                            </input>
                            <input type="hidden" name="set_quantity[0]" value="0"/>
                            <input type="hidden" name="gift[0]" value="1"/>
                        </div>
                    </iaixsl:when>
                    <iaixsl:otherwise>
                    </iaixsl:otherwise>
                </iaixsl:choose>
            </form>

            <div class="wrappers_list" style="display: none;"/>
            <iaixsl:if test="/shop/basket/delay_time/@unknown_delivery_time = 'true'">
                <div class="unknown_delivery_time">
                    <i class="icon-truck"></i>
                    <div>
                        <b>Basket includes products imported on order.</b> To estimate time of preparing product for shipment, 
                        <a target="_blank">
                            <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/contact/link/@url"/></iaixsl:attribute>
                            please contact the shop staff.
                        </a>
                    </div>
                </div>
            </iaixsl:if>

            <iaixsl:if test="/shop/basket/shipping_time"> </iaixsl:if>
            <iaixsl:if test="/shop/page/basket-details/product/price/@detalprice_net_formatted"> </iaixsl:if>
            <iaixsl:if test="/shop/page/basket-details/product/price/@maxprice_formatted"> </iaixsl:if>
            <iaixsl:if test="/shop/page/basket-details/product/price/@maxprice_net_formatted"> </iaixsl:if>
            <iaixsl:if test="/shop/page/basket-details/product/@code"> </iaixsl:if>
            <iaixsl:if test="/shop/page/basket-details/product/price//price/@points"> </iaixsl:if>
            <iaixsl:if test="/shop/page/basket-details/product/size/@name"> </iaixsl:if>
            <iaixsl:if test="/shop/basket/@product_comment_active"> </iaixsl:if>
        </iaixsl:if>
        <!--Podsumowanie koszyka (basketedit_summary, 110557.1)-->
        <iaixsl:variable name="txt_60826_advance_a">Required advance payment with cash on delivery order:</iaixsl:variable>
        <iaixsl:variable name="txt_60826_advance_header">Order with payment in advance</iaixsl:variable>
        <iaixsl:variable name="show_always_instalment_68242"></iaixsl:variable>
        <iaixsl:variable name="hours_68242"></iaixsl:variable>

        
        <script>
            var currency_format = '';
            <iaixsl:if test="/shop/currency/option[@selected='true']/@currency_format">
                var currency_format = '<iaixsl:value-of select="/shop/currency/option[@selected='true']/@currency_format"/>';
            </iaixsl:if>
            var currency_before_value = '';
            <iaixsl:if test="/shop/currency/option[@selected='true']/@currency_before_value">
                var currency_before_value = <iaixsl:value-of select="/shop/currency/option[@selected='true']/@currency_before_value"/>;
            </iaixsl:if>
            var currency_space = '';
            <iaixsl:if test="/shop/currency/option[@selected='true']/@currency_space">
                var currency_space = <iaixsl:value-of select="/shop/currency/option[@selected='true']/@currency_space"/>;
            </iaixsl:if>
            var currency_decimal_separator = '<iaixsl:value-of select="/shop/currency/option[@selected='true']/@currency_decimal_separator"/>';
            var currency_grouping_separator = '<iaixsl:value-of select="/shop/currency/option[@selected='true']/@currency_grouping_separator"/>';
            var symbol = '<iaixsl:value-of select="/shop/currency/option[@selected='true']/@symbol"/>';
        </script>

        <iaixsl:if test="page/@type = 'basketedit'">
            <iaixsl:variable name="wholesalerPrice2">true</iaixsl:variable>
            <iaixsl:variable name="wholesaler_shipping_gross"></iaixsl:variable>
            <iaixsl:variable name="immediately_txt">The order will be sent immediately after it is accepted.</iaixsl:variable>

            <div class="basketedit_summary_container">
                <div class="basketedit_summary">

                    <div class="basketedit_summary_sub">
                        <iaixsl:attribute name="class">basketedit_summary_sub</iaixsl:attribute>
                        <div class="basketedit_summary_left">
                            
                            <iaixsl:if test="$txt_60826_advance_a and (/shop/page/basket-details/summary/money/@advance_mode = 'total' and /shop/page/basket-details/summary/money/@prepaid = 'true' and /shop/page/basket-details/summary/money/@advance > 0)">
                                <div class="summary_left_advance">
                                    <iaixsl:if test="$txt_60826_advance_header">
                                        <div class="summary_left_advance_header">
                                            <iaixsl:value-of select="$txt_60826_advance_header"/>
                                        </div>
                                    </iaixsl:if>
                                    Before we proceed with this prepayment order, an advance payment is required. It consist of a full price of products in our stocks, partial price of products that have to be ordered from a supplier and shipment cost which will be selected in further steps of the check out process.
                                </div>
                            </iaixsl:if>

                            
                            <iaixsl:if test="basket/@toshippingfree> 0 and not(basket/@toshippingfree= '')">
                                <div class="toshippingfree">
                                    <div class="toshippingfree_sub">FREE SHIPPING from  
                                        <span class="price"><iaixsl:value-of select="basket/@shippinglimitfree_formatted"/></span><iaixsl:if test="$wholesaler_shipping_gross">&#160;<iaixsl:value-of select="$wholesaler_shipping_gross"/></iaixsl:if></div>

                                    You are missing only 
                                    <b><iaixsl:value-of select="/shop/basket/@toshippingfree_formatted"/></b><iaixsl:if test="$wholesaler_shipping_gross">&#160;<iaixsl:value-of select="$wholesaler_shipping_gross"/></iaixsl:if> to get free shipping!
                                </div>
                            </iaixsl:if>

                            
                            <iaixsl:if test="/shop/client_data/client_balance/limit/@value > '0'">
                                <div class="basketedit_limit_section">
                                    <div class="basketedit_product_summary">
                                        <label>
                                            Credit limit:
                                        </label>
                                        <strong class="limit_total">
                                            <iaixsl:value-of select="/shop/client_data/client_balance/limit/@value_formatted"/>
                                        </strong>
                                    </div>

                                    <div class="basketedit_product_summary">
                                        <label>
                                            Remaining credit limit:
                                        </label>
                                        <strong class="limit_touse">
                                            <iaixsl:value-of select="/shop/client_data/client_balance/limit/@to_use_formatted"/>
                                        </strong>
                                    </div>
                                </div>
                            </iaixsl:if>

                            <iaixsl:if test="(page/basket-details/summary/points/@debit) and (page/basket-details/summary/points/@debit > 0)">
                                <div class="basketedit_summary_debit">
                                    After payment, you will gain 
                                    <b><iaixsl:value-of select="page/basket-details/summary/points/@debit"/><span> pts</span></b> in Loyalty Program.
                                    <iaixsl:if test="/shop/basket/@client_points != '0'">
                                        Currently you have 
                                        <b><iaixsl:value-of select="/shop/basket/@client_points"/><span> pts</span></b>
                                    </iaixsl:if>
                                </div>
                            </iaixsl:if>

                            
                            <iaixsl:if test="page/basket-details/summary/payment/instalment">
                                <div id="n67367_instalment" class="n67367_instalment">
                                    <h3>You can buy in installments!</h3>
                                    

                                    <iaixsl:for-each select="/shop/page/basket-details/summary/payment/instalment[@selected='true']">
                                        <div class="instalment_value_1">
                                            <iaixsl:choose>
                                                <iaixsl:when test="@value_formatted">
                                                    <img class="instalment_value_1">
                                                        <iaixsl:attribute name="src"><iaixsl:value-of select="@gfx_small"/></iaixsl:attribute>
                                                        <iaixsl:attribute name="alt"><iaixsl:value-of select="@name"/></iaixsl:attribute>
                                                    </img>
                                                    <span class="instalment_value_1">
                                                        Buy on installments from 
                                                        <b><iaixsl:value-of select="@value_formatted"/></b>
                                                         per month!
                                                    </span>

                                                    <span class="n67367_section_txt"><iaixsl:value-of select="@name"/> without leaving your home. Easy and quick like on-line shopping.</span>

                                                    <small class="instalment_value_2">
                                                        Available for total shopping value from 
                                                        <iaixsl:value-of select="@minprice"/> <iaixsl:value-of select="/shop/currency/@name"/>
                                                         to 
                                                        <iaixsl:value-of select="@maxprice"/> <iaixsl:value-of select="/shop/currency/@name"/>
                                                    </small>

                                                    <iaixsl:if test="note">
                                                        <span class="btn_note">legal notice</span>
                                                        <div class="tooltipContent">
                                                            <iaixsl:value-of disable-output-escaping="yes" select="note/text()"/>
                                                        </div>
                                                    </iaixsl:if>
                                                </iaixsl:when>
                                                <iaixsl:otherwise>
                                                    <span class="n67367_section_txt"><iaixsl:value-of select="@name"/> without leaving your home. Easy and quick like on-line shopping.</span>
                                                </iaixsl:otherwise>
                                            </iaixsl:choose>
                                        </div>
                                    </iaixsl:for-each>

                                    <ul class="n67367_instalment">
                                        <iaixsl:for-each select="page/basket-details/summary/payment/instalment">
                                            <li>
                                                <a>
                                                    <iaixsl:attribute name="onclick">calculate_instalments('<iaixsl:value-of select="@minprice"/>','<iaixsl:value-of select="@maxprice"/>','<iaixsl:value-of select="@priceTotal"/>','<iaixsl:value-of select="@alert"/>',$(this).attr('data-window'),'<iaixsl:value-of select="@maxquantity"/>','<iaixsl:value-of select="@name"/>'); return false;</iaixsl:attribute>
                                                    <iaixsl:attribute name="href">javascript:<iaixsl:value-of select="@calculate"/></iaixsl:attribute>
                                                    <iaixsl:attribute name="data-window"><iaixsl:value-of select="@calculate"/></iaixsl:attribute>
                                                    <span>Calculate installment <iaixsl:value-of select="@name"/></span>
                                                    <img>
                                                        <iaixsl:attribute name="src"><iaixsl:value-of select="@gfx"/></iaixsl:attribute>
                                                        <iaixsl:attribute name="alt"><iaixsl:value-of select="@name"/></iaixsl:attribute>
                                                    </img>
                                                </a>
                                            </li>
                                        </iaixsl:for-each>
                                    </ul>
                                </div>
                            </iaixsl:if>
                            
                        </div>

                        <div class="basketedit_summary_right">
                            <div class="basketedit_calculations">
                                <div class="basketedit_product_summary">
                                    <label>
                                        Order value:
                                    </label>

                                    <strong>
                                        <iaixsl:value-of select="/shop/page/basket-details/summary/money/@beforerebate_formatted"/>
                                    </strong>
                                </div>

                                <iaixsl:if test="not((basket/@shipping_undefined = 'true') or (basket/@hide_shipping_cost = 'true') or (basket/@hide_cost='true'))">
                                    <div class="basketedit_product_summary">
                                        <label>
                                            <iaixsl:choose>
                                                <iaixsl:when test="basket/@shipping_after_rebate > '0'">
                                                    Delivery cost from:
                                                </iaixsl:when>
                                                <iaixsl:otherwise>
                                                    Delivery cost
                                                </iaixsl:otherwise>
                                            </iaixsl:choose>
                                        </label>

                                        <strong>
                                            <iaixsl:if test="not(basket/@shipping > basket/@shipping_after_rebate) and basket/@shipping_after_rebate > '0'">
                                                <iaixsl:attribute name="class">plus_sign</iaixsl:attribute>
                                            </iaixsl:if>

                                            <iaixsl:if test="basket/@shipping > basket/@shipping_after_rebate">
                                                <span>
                                                    <iaixsl:if test="basket/@shipping_after_rebate > '0'"><iaixsl:attribute name="class">plus_sign</iaixsl:attribute></iaixsl:if>
                                                    <del>
                                                        <iaixsl:value-of select="basket/@shipping_formatted"/>
                                                    </del><iaixsl:text> </iaixsl:text>
                                                </span>
                                            </iaixsl:if>

                                            <iaixsl:choose>
                                                <iaixsl:when test="basket/@shipping_after_rebate > '0'">
                                                    <iaixsl:value-of select="basket/@shipping_after_rebate_formatted"/>
                                                </iaixsl:when>
                                                <iaixsl:when test="basket/@shipping = ''">
                                                    n.a.
                                                </iaixsl:when>
                                                <iaixsl:otherwise>
                                                    free!
                                                </iaixsl:otherwise>
                                            </iaixsl:choose>
                                        </strong>
                                    </div>
                                </iaixsl:if>

                                <iaixsl:if test="/shop/page/basket-details/summary/money/@total_rebate>0">
                                    <div class="basketedit_rabats_summary">
                                        <label>
                                            Discount:
                                        </label>

                                        <strong class="minus_sign">
                                            <iaixsl:value-of select="/shop/page/basket-details/summary/money/@total_rebate_formatted"/>
                                        </strong>
                                    </div>
                                </iaixsl:if>

                                <iaixsl:variable name="balance_to_pay"><iaixsl:value-of select="/shop/page/basket-details/summary/money/@balance_to_pay"/></iaixsl:variable>

                                <iaixsl:if test="$balance_to_pay">
                                    <div class="basketedit_product_summary">
                                        <iaixsl:if test="/shop/page/basket-details/summary/money/@balance_to_pay">
                                            <iaixsl:choose>
                                                <iaixsl:when test="$balance_to_pay > 0">
                                                    <label>
                                                        Paid from the balance:<br />(overpayment on a customer's account)
                                                    </label>

                                                    <strong class="saldo_value minus_sign">
                                                        <iaixsl:value-of select="/shop/page/basket-details/summary/money/@balance_to_pay_formatted"/>
                                                    </strong>
                                                </iaixsl:when>
                                                <iaixsl:when test="not($balance_to_pay > 0) and not($balance_to_pay = '0.00')">
                                                    <label>
                                                        Paid from the balance:<br />(underpayment on a customer's account)
                                                    </label>

                                                    <strong class="saldo_value plus_sign">
                                                        <iaixsl:value-of select="substring-after(/shop/page/basket-details/summary/money/@balance_to_pay_formatted, '-')"/>
                                                    </strong>
                                                </iaixsl:when>
                                            </iaixsl:choose>
                                        </iaixsl:if>
                                    </div>
                                </iaixsl:if>
                            </div>

                            <div class="basketedit_total_summary">
                                <label>
                                    Total to pay:
                                </label>

                                <strong><iaixsl:value-of select="/shop/page/basket-details/summary/money/@to_pay_formatted"/><iaixsl:if test="not(/shop/client_data/@uses_vat='false')"> incl. VAT</iaixsl:if></strong>
                                <iaixsl:if test="(basket/@points_used) and (basket/@points_used != 0)">
                                    <b>
                                         + 
                                        <span><iaixsl:value-of select="basket/@points_used"/>
                                             pts</span>
                                    </b>
                                </iaixsl:if>
                            </div>

                            
                            <iaixsl:if test="$txt_60826_advance_a and (/shop/page/basket-details/summary/money/@advance > 0)">
                                <div class="basketedit_product_summary advance">
                                    <iaixsl:choose>
                                        <iaixsl:when test="/shop/page/basket-details/summary/money/@advance_mode = 'default' or /shop/page/basket-details/summary/money/@advance_mode = 'none'">
                                            <iaixsl:choose>
                                                <iaixsl:when test="/shop/page/basket-details/summary/money/@cash_on_delivery = 'true' and /shop/page/basket-details/summary/money/@prepaid = 'false'">
                                                    <label class="txt_wrap">Required advance payment with cash on delivery order:</label>
                                                    <strong><iaixsl:value-of select="/shop/page/basket-details/summary/money/@advance_formatted"/></strong>
                                                </iaixsl:when>
                                                <iaixsl:when test="/shop/page/basket-details/summary/money/@cash_on_delivery = 'false' and /shop/page/basket-details/summary/money/@prepaid = 'true'">
                                                    <label class="txt_wrap">Required advance payment with prepayment order:</label>
                                                    <strong><iaixsl:value-of select="/shop/page/basket-details/summary/money/@advance_formatted"/></strong>
                                                </iaixsl:when>
                                                <iaixsl:when test="/shop/page/basket-details/summary/money/@cash_on_delivery = 'true' and /shop/page/basket-details/summary/money/@prepaid = 'true'">
                                                    <label class="txt_wrap">Required advance payment:</label>
                                                    <strong><iaixsl:value-of select="/shop/page/basket-details/summary/money/@advance_formatted"/></strong>
                                                </iaixsl:when>
                                            </iaixsl:choose>
                                        </iaixsl:when>
                                        <iaixsl:when test="/shop/page/basket-details/summary/money/@advance_mode = 'total'">
                                            <label class="txt_wrap">Required advance payment:</label>
                                            <strong><iaixsl:value-of select="/shop/page/basket-details/summary/money/@advance_formatted"/></strong>
                                        </iaixsl:when>
                                    </iaixsl:choose>
                                </div>
                            </iaixsl:if>

                        </div>
                    </div>
                </div>

                <div class="basketedit_summary_buttons table_display summary_buttons">
                    <iaixsl:if test="/shop/basket/shipping_time/@days and not(basket/@shipping_undefined = 'true')">

                        
                        <div class="basketedit_summary_shipment_time d-sm-none">
                            <iaixsl:if test="/shop/basket/delay_time/@unknown_delivery_time = 'true'">
                                <iaixsl:attribute name="style">display:none;</iaixsl:attribute>
                            </iaixsl:if>

                            <iaixsl:variable name="wys_1_68242"> <b>today</b></iaixsl:variable>

                            <iaixsl:choose>
                                <iaixsl:when test="$wys_1_68242 and (/shop/basket/shipping_time/@week_amount = 0) and (/shop/basket/shipping_time/@week_day)">
                                    Order will be ready for shipment 
                                    <iaixsl:choose>
                                        <iaixsl:when test="/shop/basket/shipping_time/@today = 'true'">
                                             <b>today</b>
                                        </iaixsl:when>
                                        <iaixsl:when test="/shop/basket/shipping_time/@week_day = 1">
                                             <b>on Monday</b>
                                        </iaixsl:when>
                                        <iaixsl:when test="/shop/basket/shipping_time/@week_day = 2">
                                             <b>on Tuesday</b>
                                        </iaixsl:when>
                                        <iaixsl:when test="/shop/basket/shipping_time/@week_day = 3">
                                             <b>on Wednesday</b>
                                        </iaixsl:when>
                                        <iaixsl:when test="/shop/basket/shipping_time/@week_day = 4">
                                             <b>on Thursday</b>
                                        </iaixsl:when>
                                        <iaixsl:when test="/shop/basket/shipping_time/@week_day = 5">
                                             <b>on Friday</b>
                                        </iaixsl:when>
                                        <iaixsl:when test="/shop/basket/shipping_time/@week_day = 6">
                                             <b>on Saturday</b>
                                        </iaixsl:when>
                                        <iaixsl:when test="/shop/basket/shipping_time/@week_day = 7">
                                             <b>on Sunday</b>
                                        </iaixsl:when>
                                    </iaixsl:choose>
                                </iaixsl:when>
                                <iaixsl:when test="$immediately_txt and (/shop/basket/shipping_time/@days = 0) and (/shop/basket/shipping_time/@hours = 0) and (/shop/basket/shipping_time/@minutes = 0)">
                                    <iaixsl:value-of select="$immediately_txt"/>
                                </iaixsl:when>

                                <iaixsl:otherwise>

                                    Ready to ship in 
                                    <b>
                                        <iaixsl:if test="(/shop/basket/shipping_time/@days = 0) and (/shop/basket/shipping_time/@hours = 0) and (/shop/basket/shipping_time/@minutes = 0)">
                                             24h 
                                        </iaixsl:if>

                                        <iaixsl:if test="/shop/basket/shipping_time/@days > 0">
                                            <iaixsl:value-of select="/shop/basket/shipping_time/@days"/>
                                            <iaixsl:choose>
                                                <iaixsl:when test="/shop/basket/shipping_time/@days ='1'">
                                                     day 
                                                </iaixsl:when>
                                                <iaixsl:otherwise>
                                                     days 
                                                </iaixsl:otherwise>
                                            </iaixsl:choose>
                                        </iaixsl:if>

                                        <iaixsl:choose>
                                            <iaixsl:when test="$hours_68242">
                                                <iaixsl:if test="/shop/basket/shipping_time/@hours > 0">
                                                    <iaixsl:value-of select="/shop/basket/shipping_time/@hours"/>
                                                    <iaixsl:choose>
                                                        <iaixsl:when test="/shop/basket/shipping_time/@hours > 1">
                                                            <iaixsl:value-of select="$hours_68242"/>
                                                        </iaixsl:when>
                                                        <iaixsl:otherwise>
                                                             hour 
                                                        </iaixsl:otherwise>
                                                    </iaixsl:choose>
                                                </iaixsl:if>
                                            </iaixsl:when>
                                            <iaixsl:otherwise>
                                                <iaixsl:if test="/shop/basket/shipping_time/@hours > 0">
                                                    <iaixsl:value-of select="/shop/basket/shipping_time/@hours"/>
                                                     hour 
                                                </iaixsl:if>
                                            </iaixsl:otherwise>
                                        </iaixsl:choose>

                                        <iaixsl:if test="/shop/basket/shipping_time/@minutes > 0">
                                            <iaixsl:value-of select="/shop/basket/shipping_time/@minutes"/>
                                             min 
                                        </iaixsl:if>
                                    </b>
                                </iaixsl:otherwise>
                            </iaixsl:choose>

                        </div>
                    </iaixsl:if>

                    <div class="btn_wrapper d-sm-none">
                        <a class="btn --solid --large --icon-right icon-angle-right n53706_button1" href="/order1.php" id="basket_go_next_phone">
                            <iaixsl:if test="/shop/page/communicates/warning/@type='order_minimal_wholesale_blocked'">
                                <iaixsl:attribute name="data-disabled">true</iaixsl:attribute>
                                <iaixsl:attribute name="onclick">Alertek.show_alert('Minimal value of a wholesale order is:  <iaixsl:if test="$signbeforeprice = 'true'"><iaixsl:value-of select="/shop/currency/@name"/><iaixsl:value-of select="$signbetweenpricecurrency"/></iaixsl:if><iaixsl:value-of select="/shop/page/communicates/warning/@value"/><iaixsl:if test="$signbeforeprice = 'false'"><iaixsl:value-of select="$signbetweenpricecurrency"/><iaixsl:value-of select="/shop/currency/@name"/>
                                </iaixsl:if>');</iaixsl:attribute>
                            </iaixsl:if>
                            Forward
                        </a>
                    </div>

                    <span id="basketedit_summary_buttons_sepratator" class="d-sm-none">
                        <span>or</span>
                    </span>

                    <div class="btn_wrapper">
                        <a class="btn --medium button_go_shopping">

                            <iaixsl:attribute name="href">
                                <iaixsl:choose>
                                    <iaixsl:when test="/shop/lastsearch/text()">
                                        <iaixsl:value-of select="/shop/lastsearch/text()"/>
                                    </iaixsl:when>
                                    <iaixsl:when test="/shop/page/basket-details/direct-navigation/@url">
                                        <iaixsl:value-of select="/shop/page/basket-details/direct-navigation/@url"/>
                                    </iaixsl:when>
                                    <iaixsl:otherwise>/</iaixsl:otherwise>
                                </iaixsl:choose>
                            </iaixsl:attribute>

                            CONTINUE SHOPPING
                        </a>
                    </div>

					<iaixsl:if test="not(/shop/page/communicates/warning[@type = 'order_tomuch'])">
						<iaixsl:if test="/shop/basket/shipping_time/@days and not(basket/@shipping_undefined = 'true')">
							
							<div class="basketedit_summary_shipment_time d-none d-sm-table-cell">
								<iaixsl:if test="/shop/basket/delay_time/@unknown_delivery_time = 'true'">
									<iaixsl:attribute name="style">display:none;</iaixsl:attribute>
								</iaixsl:if>

								<iaixsl:variable name="wys_1_68242"> <b>today</b></iaixsl:variable>

								<iaixsl:choose>
									<iaixsl:when test="$wys_1_68242 and (/shop/basket/shipping_time/@week_amount = 0) and (/shop/basket/shipping_time/@week_day)">
										Order will be ready for shipment 
										<iaixsl:choose>
											<iaixsl:when test="/shop/basket/shipping_time/@today = 'true'">
												 <b>today</b>
											</iaixsl:when>
											<iaixsl:when test="/shop/basket/shipping_time/@week_day = 1">
												 <b>on Monday</b>
											</iaixsl:when>
											<iaixsl:when test="/shop/basket/shipping_time/@week_day = 2">
												 <b>on Tuesday</b>
											</iaixsl:when>
											<iaixsl:when test="/shop/basket/shipping_time/@week_day = 3">
												 <b>on Wednesday</b>
											</iaixsl:when>
											<iaixsl:when test="/shop/basket/shipping_time/@week_day = 4">
												 <b>on Thursday</b>
											</iaixsl:when>
											<iaixsl:when test="/shop/basket/shipping_time/@week_day = 5">
												 <b>on Friday</b>
											</iaixsl:when>
											<iaixsl:when test="/shop/basket/shipping_time/@week_day = 6">
												 <b>on Saturday</b>
											</iaixsl:when>
											<iaixsl:when test="/shop/basket/shipping_time/@week_day = 7">
												 <b>on Sunday</b>
											</iaixsl:when>
										</iaixsl:choose>
									</iaixsl:when>
									<iaixsl:when test="$immediately_txt and (/shop/basket/shipping_time/@days = 0) and (/shop/basket/shipping_time/@hours = 0) and (/shop/basket/shipping_time/@minutes = 0)">
										<iaixsl:value-of select="$immediately_txt"/>
									</iaixsl:when>

									<iaixsl:otherwise>

										Ready to ship in 
										<b>
											<iaixsl:if test="(/shop/basket/shipping_time/@days = 0) and (/shop/basket/shipping_time/@hours = 0) and (/shop/basket/shipping_time/@minutes = 0)">
												 24h 
											</iaixsl:if>

											<iaixsl:if test="/shop/basket/shipping_time/@days > 0">
												<iaixsl:value-of select="/shop/basket/shipping_time/@days"/>
												<iaixsl:choose>
													<iaixsl:when test="/shop/basket/shipping_time/@days ='1'">
														 day 
													</iaixsl:when>
													<iaixsl:otherwise>
														 days 
													</iaixsl:otherwise>
												</iaixsl:choose>
											</iaixsl:if>

											<iaixsl:choose>
												<iaixsl:when test="$hours_68242">
													<iaixsl:if test="/shop/basket/shipping_time/@hours > 0">
														<iaixsl:value-of select="/shop/basket/shipping_time/@hours"/>
														<iaixsl:choose>
															<iaixsl:when test="/shop/basket/shipping_time/@hours > 1">
																<iaixsl:value-of select="$hours_68242"/>
															</iaixsl:when>
															<iaixsl:otherwise>
																 hour 
															</iaixsl:otherwise>
														</iaixsl:choose>
													</iaixsl:if>
												</iaixsl:when>
												<iaixsl:otherwise>
													<iaixsl:if test="/shop/basket/shipping_time/@hours > 0">
														<iaixsl:value-of select="/shop/basket/shipping_time/@hours"/>
														 hour 
													</iaixsl:if>
												</iaixsl:otherwise>
											</iaixsl:choose>

											<iaixsl:if test="/shop/basket/shipping_time/@minutes > 0">
												<iaixsl:value-of select="/shop/basket/shipping_time/@minutes"/>
												 min 
											</iaixsl:if>
										</b>
									</iaixsl:otherwise>
								</iaixsl:choose>

							</div>
						</iaixsl:if>

						<div class="btn_wrapper d-none d-sm-table-cell">
							<a class="btn --solid --large --icon-right icon-angle-right n53706_button1" href="/order1.php" id="basket_go_next">
								<iaixsl:if test="/shop/page/communicates/warning/@type='order_minimal_wholesale_blocked'">
									<iaixsl:attribute name="data-disabled">true</iaixsl:attribute>
									<iaixsl:attribute name="onclick">Alertek.show_alert('Minimal value of a wholesale order is:  <iaixsl:if test="$signbeforeprice = 'true'"><iaixsl:value-of select="/shop/currency/@name"/><iaixsl:value-of select="$signbetweenpricecurrency"/></iaixsl:if><iaixsl:value-of select="/shop/page/communicates/warning/@value"/><iaixsl:if test="$signbeforeprice = 'false'"><iaixsl:value-of select="$signbetweenpricecurrency"/><iaixsl:value-of select="/shop/currency/@name"/>
									</iaixsl:if>');</iaixsl:attribute>
								</iaixsl:if>
								Forward
							</a>
						</div>
					</iaixsl:if>
                </div>
            </div>

        </iaixsl:if>
        <script>
            
            var client_data_uses_vat = '<iaixsl:value-of select="/shop/client_data/@uses_vat"/>';
        </script>
        <!--Rabaty na stronie koszyka (basketedit_rebates, 110618.1)-->
        <iaixsl:variable name="showGifts"></iaixsl:variable>

        <iaixsl:if test="/shop/page/@type = 'basketedit'">
            <iaixsl:if test="/shop/page/rebates/@rebates_codes = 'y'">
                <div class="basketedit_rebatecodes_outline">
                    
                    <iaixsl:if test="/shop/page/rebates/code_details/@active = 'y'">
                        <div class="basketedit_rebatecode_title">
                            <span class="basketedit_rebatecode_title">
                                Active discount code: 
                            </span>
                            <span class="basketedit_rebatecode_value">
                                <iaixsl:value-of select="/shop/page/rebates/code_details/@number"/>
                            </span>
                            <div class="basketedit_rebatecode_action">
                                <a id="a_remove_code" href="#">[delete code]</a>
                                <a id="a_change_code" href="#">[use another code]</a>
                            </div>
                            <form action="/settings.php?from=basket" method="post" id="change_code">
                                <input class="basketedit_rebatecode_input" name="rebates_codes" type="text" value=""/>
                                <input id="global_rebates_codes" name="global_rebates_codes" value="add" type="hidden"/>
                                <input class="btn --solid basketedit_change_code" type="submit" value="">
                                    <iaixsl:attribute name="value">Use another code</iaixsl:attribute>
                                </input>
                            </form>
                        </div>
                        <div class="basketedit_rebatecode_r">
                            <iaixsl:if test="/shop/page/rebates/code_details/@min_order > 0">
                                <div class="basketedit_rebatecode_title_out">
                                    <span class="basketedit_rebatecode_title">
                                        Required value of products in a basket: 
                                    </span>
                                    <span class="basketedit_rebatecode_value">
                                        <iaixsl:value-of select="/shop/page/rebates/code_details/@min_order"/><iaixsl:value-of select="$signbetweenpricecurrency"/><iaixsl:value-of select="/shop/currency/@name"/>
                                    </span>
                                </div>
                            </iaixsl:if>
                            <iaixsl:if test="/shop/page/rebates/code_details/@expires">
                                <div class="basketedit_rebatecode_title_out">
                                    <span class="basketedit_rebatecode_title">
                                        Discount code expires on: 
                                    </span>
                                    <span class="basketedit_rebatecode_value">
                                        <iaixsl:value-of select="/shop/page/rebates/code_details/@expires"/>
                                    </span>
                                </div>
                            </iaixsl:if>
                            <a href="/client-rebate.php" class="btn --solid basketedit_client_rebate" id="basketedit_client_rebate">
                                <iaixsl:attribute name="title">A detailed record of discounts</iaixsl:attribute>
                                More information about granted discounts
                            </a>
                        </div>
                    </iaixsl:if>
                    
                    <iaixsl:if test="/shop/page/rebates/code_details/@active = 'n'">
                        <iaixsl:if test="/shop/rebate_code_delete_client_advanced_rebate/@active = 'y'">
                            <div id="basketedit_rebatecode_activate_info" style="display:none;">
                                Entering a discount code will delete a discount assigned to your account.
                            </div>
                        </iaixsl:if>

                        <span class="basketedit_rebatecode_activate_txt">Do you have a discount code?</span>

                        <form action="/settings.php?from=basket" method="post">
                            
                            <input onclick="$('#basketedit_rebatecode_activate_info').fadeIn('slow');" class="basketedit_rebatecode_input" name="rebates_codes" type="text" value=""/>
                            <input id="global_rebates_codes" name="global_rebates_codes" value="add" type="hidden"/>
                            <input class="btn --solid basketedit_submit_code" type="submit" value="">
                                <iaixsl:attribute name="value">Confirm the code</iaixsl:attribute>
                            </input>
                        </form>
                        <a href="/client-rebate.php" class="btn --solid basketedit_client_rebate">
                            <iaixsl:attribute name="title">A detailed record of discounts</iaixsl:attribute>
                            More information about discounts
                        </a>
                    </iaixsl:if>

                </div>
            </iaixsl:if>


            <iaixsl:if test="(/shop/rebatesLocal and (/shop/rebatesLocal/rebate/@value > 0 )) or /shop/page/basket-details/rebate_local/active/products/product or /shop/page/basket-details/rebate_local/rebates/rebate/products/product or /shop/page/rebates_for_points/rebate">
                <div id="basketedit_gifts" class="bg_alter">

                    
                    <iaixsl:if test="(/shop/rebatesLocal and (/shop/rebatesLocal/rebate/@value > 0 )) or /shop/rebatecode/@code">
                        <div class="basket_rabates col-lg-4 col-md-6 col-12">
                            <iaixsl:if test="/shop/page/basket-details/rebate_local/active/products/product or /shop/page/basket-details/rebate_local/rebates/rebate/products/product">
                                <iaixsl:attribute name="STYLE">float: right;</iaixsl:attribute>
                            </iaixsl:if>

                            <iaixsl:if test="/shop/rebatesLocal and (/shop/rebatesLocal/rebate/@value > 0 )">
                                <div class="basket_rabates_label">
                                    Discounts on this order
                                </div>

                                <table class="menu_rebates">
                                    <tr>
                                        <th>
                                            <span>Orders beyond</span>
                                        </th>
                                        <th class="menu_rebates_value">
                                            <span>Discount</span>
                                        </th>
                                    </tr>

                                    <iaixsl:for-each select="/shop/rebatesLocal/rebate[@value > 0 ]">
                                        <tr>
                                            <iaixsl:if test="@selected = 'selected'">
                                                <iaixsl:attribute name="class">selected</iaixsl:attribute>
                                            </iaixsl:if>
                                            <td class="menu_rebates_threshold">
                                                <iaixsl:value-of select="format-number(@threshold, '#')"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="/shop/currency/@name"/><iaixsl:if test="not(@selected = 'selected') and @left > 0"> - <span>You still need 
                                                <iaixsl:value-of select="@left_formatted"/></span></iaixsl:if>
                                            </td>
                                            <td class="menu_rebates_value">
                                                <iaixsl:if test="@selected = 'selected'">
                                                    <strong>YOUR DISCOUNT</strong>
                                                </iaixsl:if>
                                                <iaixsl:choose>
                                                    <iaixsl:when test="contains(@value, '.00')">
                                                        <iaixsl:value-of select="format-number(@value, '#')"/>%
                                                    </iaixsl:when>
                                                    <iaixsl:otherwise>
                                                         <iaixsl:value-of select="@value"/>%
                                                    </iaixsl:otherwise>
                                                 </iaixsl:choose>
                                            </td>
                                        </tr>
                                    </iaixsl:for-each>
                                </table>
                            </iaixsl:if>

                        </div>
                    </iaixsl:if>

                    
                    <iaixsl:if test="/shop/page/basket-details/rebate_local/active/products/product or /shop/page/basket-details/rebate_local/rebates/rebate/products/product">

                        <div class="basketedit_gifts_label col-lg-8 col-md-6 col-12">
                            <strong>Order more, pay less!</strong>
                            <span>Check the freebies which we have for you</span>

                            <iaixsl:if test="not($showGifts = '1')">
                                <a href="#showGifts" class="btn --solid --secondary basketedit_gifts_btn">
                                    <iaixsl:if test="/shop/page/basket-details/rebate_local/active/selected/product/@id">
                                        <iaixsl:attribute name="data-active">true</iaixsl:attribute>
                                    </iaixsl:if>
                                    <iaixsl:attribute name="title">Choose a freebie</iaixsl:attribute>
                                    Choose a freebie
                                </a>
                            </iaixsl:if>
                        </div>

                        <div class="basketedit_gifts_wrapper" style="display: none;">
                            <iaixsl:if test="$showGifts = '1' or /shop/page/basket-details/rebate_local/active/selected/product/@id">
                                <iaixsl:attribute name="style">display: block;</iaixsl:attribute>
                            </iaixsl:if>

                            <iaixsl:if test="/shop/page/basket-details/rebate_local/active/products/product">
                                <p class="gift_info">
                                    Your order exceeds 
                                    <b><iaixsl:if test="$signbeforeprice = 'true'"><iaixsl:value-of select="/shop/currency/@name"/><iaixsl:value-of select="$signbetweenpricecurrency"/></iaixsl:if><iaixsl:value-of select="/shop/page/basket-details/rebate_local/active/@threshold"/><iaixsl:if test="$signbeforeprice = 'false'"><iaixsl:value-of select="$signbetweenpricecurrency"/><iaixsl:value-of select="/shop/currency/@name"/></iaixsl:if></b> therefore you can choose a gift!
                                </p>
                            </iaixsl:if>
                            <ul>
                                <iaixsl:for-each select="/shop/page/basket-details/rebate_local/active">
                                    <iaixsl:for-each select="products/product">
                                        <li class="gift_enable col-lg-3 col-md-4 col-sm-6 col-12">
                                            <iaixsl:if test="@id=/shop/page/basket-details/rebate_local/active/selected/product/@id">
                                                <iaixsl:attribute name="class">gift_enable col-lg-3 col-md-4 col-sm-6 col-12 gift_active</iaixsl:attribute>
                                            </iaixsl:if>
                                            <div class="gift_item_sub">
                                                <input type="radio" name="radio_gift">
                                                    <iaixsl:if test="@id=/shop/page/basket-details/rebate_local/active/selected/product/@id">
                                                        <iaixsl:attribute name="checked">checked</iaixsl:attribute>
                                                    </iaixsl:if>
                                                </input>
                                                <input type="hidden" name="product[0]">
                                                    <iaixsl:attribute name="value"><iaixsl:value-of select="@id"/></iaixsl:attribute>
                                                </input>
                                                <input type="hidden" value="1" name="gift[0]"/>
                                                <input type="hidden" value="1" name="set_quantity[0]"/>

                                                <div class="gift_item_icon">
                                                    <img>
                                                        <iaixsl:attribute name="alt"><iaixsl:value-of select="name"/></iaixsl:attribute>
                                                        <iaixsl:attribute name="src"><iaixsl:value-of select="icon_small"/></iaixsl:attribute>
                                                    </img>
                                                </div>
                                                <div class="gift_item_info">
                                                    <h3>
                                                        <iaixsl:if test="@id=/shop/page/basket-details/rebate_local/active/selected/product/@id">
                                                            <div id="your_gift_txt">YOUR GIFT:</div>
                                                        </iaixsl:if>
                                                        <strong class="gift_item_name"><iaixsl:value-of select="name"/></strong>
                                                    </h3>

                                                    <iaixsl:choose>
                                                        <iaixsl:when test="sizes/size/@type = 'uniw' or not(sizes/size)">
                                                            <input type="hidden" name="size[0]"><iaixsl:attribute name="value"><iaixsl:value-of select="sizes/size/@type"/></iaixsl:attribute></input>
                                                        </iaixsl:when>
                                                        <iaixsl:when test="count(sizes/size) = 1">
                                                            <input type="hidden" name="size[0]"><iaixsl:attribute name="value"><iaixsl:value-of select="sizes/size/@type"/></iaixsl:attribute></input>
                                                            <div class="gift_choose_size">
                                                                <label>size: </label>

                                                                <iaixsl:for-each select="sizes/size">
                                                                    <iaixsl:value-of select="@description"/>
                                                                </iaixsl:for-each>
                                                            </div>
                                                        </iaixsl:when>
                                                        <iaixsl:otherwise>
                                                            <div class="gift_choose_size">
                                                                <label>size: </label>
                                                                <select>
                                                                    <iaixsl:for-each select="sizes/size[@amount != 0]">
                                                                        <option>
                                                                            <iaixsl:if test="@amount = '0'">
                                                                                <iaixsl:attribute name="class">no_gift</iaixsl:attribute>
                                                                            </iaixsl:if>

                                                                            <iaixsl:if test="@type=/shop/page/basket-details/rebate_local/active/selected/product/@size and ../../@id=/shop/page/basket-details/rebate_local/active/selected/product/@id">
                                                                                <iaixsl:attribute name="selected">selected</iaixsl:attribute>
                                                                            </iaixsl:if>
                                                                            <iaixsl:attribute name="value"><iaixsl:value-of select="@type"/></iaixsl:attribute><iaixsl:value-of select="@description"/>
                                                                        </option>
                                                                    </iaixsl:for-each>
                                                                </select>
                                                                <input type="hidden" name="size[0]"><iaixsl:attribute name="value"><iaixsl:value-of select="sizes/size/@type"/></iaixsl:attribute></input>
                                                            </div>
                                                        </iaixsl:otherwise>
                                                    </iaixsl:choose>

                                                    <iaixsl:if test="@link">
                                                        <div class="gift_tooltip" style="display:none;">
                                                            <a target="_blank" class="btn --outline --icon-left icon-plus gift_description">
                                                                <iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
                                                                View more
                                                            </a>
                                                            <div class="btn --outline --icon-left icon-plus gift_choose">
                                                                Choose this gift
                                                            </div>
                                                            <div class="btn --outline --icon-left icon-plus gift_resign">
                                                                Resign from this gift
                                                            </div>
                                                        </div>
                                                    </iaixsl:if>

                                                    <iaixsl:choose>
                                                        <iaixsl:when test="price/@beforerebate > 0">
                                                            <div class="gift_price">
                                                                <b>Value </b>
                                                                <span>
                                                                    <iaixsl:value-of select="price/@beforerebate_formatted"/>
                                                                </span>
                                                            </div>
                                                        </iaixsl:when>
                                                        <iaixsl:when test="price/@value > 0">
                                                            <div class="gift_price">
                                                                <b>Value </b>
                                                                <span>
                                                                    <iaixsl:value-of select="price/@price_formatted"/>
                                                                </span>
                                                            </div>
                                                        </iaixsl:when>
                                                        <iaixsl:otherwise>
                                                        </iaixsl:otherwise>
                                                    </iaixsl:choose>
                                                </div>
                                            </div>
                                        </li>
                                    </iaixsl:for-each>
                                </iaixsl:for-each>

                                <iaixsl:for-each select="/shop/page/basket-details/rebate_local/rebates/rebate[products/product][1]">
                                    <iaixsl:if test="products/product">
                                        <li class="gift_label_needs">
                                            <iaixsl:choose>
                                                <iaixsl:when test="(@left_price > 0) and (@left_quantity > 0)">
                                                    <span>To receive a gift, increase the total value of your order by at least  <iaixsl:value-of select="@left_price_formatted"/>   and add <iaixsl:value-of select="@left_quantity"/> 
                                                        <iaixsl:choose>
                                                            <iaixsl:when test="(@left_quantity = '1' )">
                                                                 another product.
                                                            </iaixsl:when>
                                                            <iaixsl:when test=" (substring(@left_quantity, string-length(@left_quantity), 1) = '2') or (substring(@left_quantity, string-length(@left_quantity), 1)='3') or (substring(@left_quantity, string-length(@left_quantity), 1)='4') ">  another products
                                                            </iaixsl:when>
                                                            <iaixsl:otherwise>
                                                                 another products.
                                                            </iaixsl:otherwise>
                                                        </iaixsl:choose>
                                                    </span>
                                                </iaixsl:when>
                                                <iaixsl:when test="not(@left_price > 0) and (@left_quantity > 0)">
                                                    <span>
                                                        To receive a gift, add  <iaixsl:value-of select="@left_quantity"/>  <iaixsl:choose> <iaixsl:when test="(@left_quantity = '1' )">  another product. </iaixsl:when> <iaixsl:when test=" (substring(@left_quantity, string-length(@left_quantity), 1) = '2') or (substring(@left_quantity, string-length(@left_quantity), 1)='3') or (substring(@left_quantity, string-length(@left_quantity), 1)='4') ">  another products. </iaixsl:when> <iaixsl:otherwise>  another products. </iaixsl:otherwise> </iaixsl:choose>
                                                    </span>
                                                </iaixsl:when>
                                                <iaixsl:when test="(@left_price > 0) and not(@left_quantity > 0)">
                                                    <span> To receive a gift, increase the total value of your order by at least  <iaixsl:value-of select="@left_price_formatted"/>
                                                    </span>
                                                </iaixsl:when>
                                            </iaixsl:choose>
                                        </li>
                                    </iaixsl:if>
                                    <iaixsl:for-each select="products/product">
                                        <li class="gift_disable showTip_gift col-lg-3 col-md-4 col-sm-6 col-12">
                                            <div class="gift_item_sub">
                                                <input type="radio" disabled="disabled" name="radio_gift"><iaixsl:attribute name="value"><iaixsl:value-of select="@id"/></iaixsl:attribute></input>
                                                <div class="gift_item_icon">
                                                    <img>
                                                        <iaixsl:attribute name="alt"><iaixsl:value-of select="name"/></iaixsl:attribute>
                                                        <iaixsl:attribute name="src"><iaixsl:value-of select="icon_small"/></iaixsl:attribute>
                                                    </img>
                                                </div>
                                                <div class="gift_item_info">
                                                    <h3>
                                                        <strong class="gift_item_name"><iaixsl:value-of select="name"/></strong>
                                                    </h3>

                                                    <iaixsl:choose>
                                                        <iaixsl:when test="sizes/size/@type = 'uniw' or not(sizes/size)">
                                                            <input type="hidden" name="size[0]"><iaixsl:attribute name="value"><iaixsl:value-of select="sizes/size/@type"/></iaixsl:attribute></input>
                                                        </iaixsl:when>
                                                        <iaixsl:otherwise>
                                                            <div class="gift_choose_size">
                                                                <label>size: </label>

                                                                <iaixsl:for-each select="sizes/size">
                                                                    <iaixsl:value-of select="@description"/><iaixsl:if test="not(position()=last())">, </iaixsl:if>
                                                                </iaixsl:for-each>
                                                            </div>
                                                        </iaixsl:otherwise>
                                                    </iaixsl:choose>

                                                    <iaixsl:if test="@link">
                                                        <a target="_blank">
                                                            <iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
                                                            View more
                                                        </a>
                                                    </iaixsl:if>
                                                    <iaixsl:choose>
                                                        <iaixsl:when test="price/@beforerebate > 0">
                                                            <div class="gift_price">
                                                                <b>Value </b>
                                                                <span>
                                                                    <iaixsl:value-of select="price/@beforerebate_formatted"/>
                                                                </span>
                                                            </div>
                                                        </iaixsl:when>
                                                        <iaixsl:when test="price/@value > 0">
                                                            <div class="gift_price">
                                                                <b>Value </b>
                                                                <span>
                                                                    <iaixsl:value-of select="price/@price_formatted"/>
                                                                </span>
                                                            </div>
                                                        </iaixsl:when>
                                                        <iaixsl:otherwise>
                                                        </iaixsl:otherwise>
                                                    </iaixsl:choose>
                                                </div>
                                            </div>
                                        </li>
                                    </iaixsl:for-each>
                                </iaixsl:for-each>
                            </ul>
                        </div>
                    </iaixsl:if>

                    <iaixsl:if test="/shop/page/rebates_for_points/rebate">
                        <div class="rebates_for_points_wrapper">
                            <iaixsl:if test="(/shop/rebatesLocal and (/shop/rebatesLocal/rebate/@value > 0 )) or /shop/page/basket-details/rebate_local/active/products/product or /shop/page/basket-details/rebate_local/rebates/rebate/products/product">
                                <iaixsl:attribute name="style">padding-top: 20px;</iaixsl:attribute>
                            </iaixsl:if>
                            <table class="menu_rebates">
                                <tr>
                                    <th>
                                        <span class="rebates_for_points col-12">Change points to a discount</span>
                                    </th>
                                </tr>
                                <tr>
                                    <td class="rebates_for_points">
                                        <iaixsl:for-each select="/shop/page/rebates_for_points/rebate">
                                            <div class="col-lg-4 col-md-6 col-12">
                                                <iaixsl:choose>
                                                    <iaixsl:when test="@order_link">
                                                        <a class="btn --solid --medium for_points">
                                                            <iaixsl:attribute name="href"><iaixsl:value-of select="@order_link"/></iaixsl:attribute>

                                                            <iaixsl:if test="/shop/rebate_for_profit_points_delete_client_advanced_rebate/@active = 'y'">
                                                                <iaixsl:attribute name="title">After points are changed to a discount, a discounts assigned to your account will be deleted.</iaixsl:attribute>
                                                                <iaixsl:attribute name="data-title">Points to discount change confirmation</iaixsl:attribute>

                                                                <iaixsl:attribute name="data-button_txt"> exchange</iaixsl:attribute>

                                                                <iaixsl:attribute name="data-confirmation_link">true</iaixsl:attribute>
                                                            </iaixsl:if>

                                                            <iaixsl:if test="/shop/rebate_for_profit_points_delete_rebate_code/@active = 'y'">
                                                                <iaixsl:attribute name="title">After points are changed to a discount, a discount assigned to this discount code will be deleted.</iaixsl:attribute>
                                                                <iaixsl:attribute name="data-title">Points to discount change confirmation</iaixsl:attribute>
                                                                <iaixsl:attribute name="data-button_txt"> exchange</iaixsl:attribute>

                                                                <iaixsl:attribute name="data-confirmation_link">true</iaixsl:attribute>
                                                            </iaixsl:if>

                                                            <iaixsl:if test="@selected = 'selected'">
                                                                <iaixsl:attribute name="data-selected">true</iaixsl:attribute>
                                                                <iaixsl:if test="/shop/rebate_for_profit_points_delete_rebate_code/@active = 'y'">
                                                                    <iaixsl:attribute name="data-confirmation_link">true</iaixsl:attribute>
                                                                </iaixsl:if>
                                                                <iaixsl:if test="/shop/rebate_for_profit_points_delete_client_advanced_rebate/@active = 'y'">
                                                                    <iaixsl:attribute name="data-confirmation_link">true</iaixsl:attribute>
                                                                </iaixsl:if>
                                                            </iaixsl:if>

                                                            <span class="for_points_value">
                                                                <iaixsl:if test="@selected = 'selected'">
                                                                    <strong>YOUR DISCOUNT</strong>
                                                                </iaixsl:if>
                                                                <span>Discount
                                                                    <iaixsl:choose>
                                                                        <iaixsl:when test="@rebate_type='quota'">
                                                                            <iaixsl:value-of select="format-number(@threshold, '#')"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="/shop/currency/@name"/>
                                                                        </iaixsl:when>
                                                                        <iaixsl:otherwise>
                                                                            <iaixsl:value-of select="format-number(@threshold, '#')"/>%
                                                                        </iaixsl:otherwise>
                                                                    </iaixsl:choose>
                                                                </span>
                                                                <iaixsl:choose>
                                                                    <iaixsl:when test="@permanent='true'">
                                                                        permanent
                                                                    </iaixsl:when>
                                                                    <iaixsl:otherwise>
                                                                        for this order
                                                                    </iaixsl:otherwise>
                                                                </iaixsl:choose>
                                                            </span>
                                                            <span class="for_points_points">
                                                                <iaixsl:value-of select="format-number(@points, '#')"/> pts
                                                            </span>
                                                        </a>
                                                    </iaixsl:when>
                                                    <iaixsl:otherwise>
                                                        <div class="btn --solid --medium for_points">
                                                            <iaixsl:if test="@selected = 'selected'">
                                                                <iaixsl:attribute name="data-selected">true</iaixsl:attribute>
                                                            </iaixsl:if>
                                                            <span class="for_points_value">
                                                                <iaixsl:if test="@selected = 'selected'">
                                                                    <strong>YOUR DISCOUNT</strong>
                                                                </iaixsl:if>
                                                                <span>Discount
                                                                    <iaixsl:choose>
                                                                        <iaixsl:when test="@rebate_type='quota'">
                                                                            <iaixsl:value-of select="@threshold_formatted"/>
                                                                        </iaixsl:when>
                                                                        <iaixsl:otherwise>
                                                                            <iaixsl:value-of select="@threshold"/>%
                                                                        </iaixsl:otherwise>
                                                                    </iaixsl:choose>
                                                                </span>
                                                                <iaixsl:choose>
                                                                    <iaixsl:when test="@permanent='true'">
                                                                        permanent
                                                                    </iaixsl:when>
                                                                    <iaixsl:otherwise>
                                                                        for this order
                                                                    </iaixsl:otherwise>
                                                                </iaixsl:choose>
                                                            </span>
                                                            <span class="for_points_points">
                                                                <iaixsl:value-of select="@points"/> pts
                                                            </span>
                                                        </div>
                                                    </iaixsl:otherwise>
                                                </iaixsl:choose>
                                            </div>
                                        </iaixsl:for-each>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </iaixsl:if>
                </div>
            </iaixsl:if>
        </iaixsl:if>
        <!--Lista produktów obserwowanych (basketedit_wishlist, 107591.1)-->
        <iaixsl:if test="page/@type = 'wishesedit'">

            
            <iaixsl:variable name="changePrice"></iaixsl:variable>
            <iaixsl:if test="not(/shop/basket/@login) or (/shop/basket/@login = '')">
                <div class="menu_messages_message">Wishlist is stored only for logged users. Please, <a class="loginPopUpShow" href="/login.php">sign in</a> or, if you do not have an account yet, <a href="/client-new.php?register">register</a>.</div>
            </iaixsl:if>
            <div class="products_bought row" id="favourites_list">
                <div class="col-12">
                <div id="pb_list" class="pb_list">
                    <div class="pb_list_header row d-none d-md-flex">
                        <div class="pb_header_name col-6"></div>
                        <div class="pb_header_date col-2">On a wishlist from:</div>
                        <div class="pb_header_price col-2">Price</div>
                    </div>
                    <div class="row products_wrapper">
                    <iaixsl:for-each select="page/basket-details/product">
                    <div class="col-md-12 col-sm-4 col-6">
                        <div class="pb_product">
                            <div class="row align-items-center product_inner_wrapper">
                            <div class="col-md-1 col-12 mb-3 mb-md-0">
                                <div class="pb_icon">
                                    <a>
                                        <iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
                                        <img class="basket_prod rwd-src" alt="Szczegoly" src="/gfx/eng/loader.gif?r=1598273385">
                                            <iaixsl:attribute name="data-src_desktop"><iaixsl:value-of select="iconsmall"/></iaixsl:attribute>
                                            <iaixsl:attribute name="data-src_tablet"><iaixsl:value-of select="iconsmall"/></iaixsl:attribute>
                                            <iaixsl:attribute name="data-src_mobile"><iaixsl:value-of select="icon"/></iaixsl:attribute>
                                        </img>
                                    </a>
                                </div>
                            </div>
                            <div class="col-md-5 col-12 mb-3 mb-md-0">
                                <div class="pb_info">
                                    <h2 class="basket_name">
                                        <a>
                                            <iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
                                            <iaixsl:value-of disable-output-escaping="yes" select="name/text()"/>
                                        </a>
                                    </h2>

                                    
                                    <iaixsl:if test="not(@barcode ='')">
                                        <div class="pb_single_info" id="kod_54008x">
                                            <span>
                                                Product code: 
                                            </span>
                                            <iaixsl:value-of select="@barcode"/>
                                        </div>
                                    </iaixsl:if>


                                    
                                    <iaixsl:if test="not(sizes/size[@buy_date]/@type='uniw')">
                                        <div class="pb_single_info">
                                            <span>
                                                Size: 
                                            </span>
                                            <iaixsl:value-of select="size/@description"/>
                                        </div>
                                    </iaixsl:if>

                                    
                                    <iaixsl:if test="(version) and (not(version/@product_name=''))">
                                        <div class="pb_single_info">
                                            <span>
                                                <iaixsl:value-of select="version/@name"/>:
                                            </span>
                                            <iaixsl:value-of select="version/@product_name"/>
                                        </div>
                                    </iaixsl:if>
                                </div>
                            </div>

                            
                            <div class="col-md-2 col-12 mb-3 mb-md-0">
                                <div class="pb_date">
                                    <span class="d-block d-md-none">On a wishlist from:</span>
                                    <iaixsl:value-of select="size/@observed_since"/>
                                </div>
                            </div>

                            
                            <div class="col-md-2 col-12 mb-3 mb-md-0">
                                <div class="pb_price">
                                    <span class="d-block d-md-none">Price</span>
                                    <iaixsl:choose>
                                        <iaixsl:when test="price/@value = 0">
                                            <iaixsl:choose>
                                                <iaixsl:when test="price/@points_sum">
                                                    <iaixsl:value-of select="price/@points_sum"/> pts
                                                </iaixsl:when>
                                                <iaixsl:otherwise>
                                                    <a class="col2_54008x_phone" href="/contact.php">Price on phone demand</a>
                                                </iaixsl:otherwise>
                                            </iaixsl:choose>
                                        </iaixsl:when>
                                        <iaixsl:otherwise>
                                            <iaixsl:if test="price/@maxprice != ''">
                                                <iaixsl:choose>
                                                    <iaixsl:when test="(/shop/basket/@wholesaler = 'true')">
                                                        <iaixsl:choose>
                                                            <iaixsl:when test="$changePrice">
                                                                <del><iaixsl:value-of select="price/@maxprice_net_formatted"/></del>
                                                            </iaixsl:when>
                                                            <iaixsl:otherwise>
                                                                <del><iaixsl:value-of select="price/@maxprice_formatted"/></del>
                                                            </iaixsl:otherwise>
                                                        </iaixsl:choose>
                                                    </iaixsl:when>
                                                    <iaixsl:otherwise>
                                                        <del><iaixsl:value-of select="price/@maxprice_formatted"/></del>
                                                    </iaixsl:otherwise>
                                                </iaixsl:choose>
                                            </iaixsl:if>
                                            <iaixsl:choose>
                                                <iaixsl:when test="(/shop/basket/@wholesaler = 'true')">
                                                    <iaixsl:choose>
                                                        <iaixsl:when test="$changePrice">
                                                            <strong><iaixsl:value-of select="price/@price_net_formatted"/></strong>
                                                        </iaixsl:when>
                                                        <iaixsl:otherwise>
                                                            <strong><iaixsl:value-of select="price/@price_formatted"/></strong>
                                                        </iaixsl:otherwise>
                                                    </iaixsl:choose>
                                                </iaixsl:when>
                                                <iaixsl:otherwise>
                                                    <strong><iaixsl:value-of select="price/@price_formatted"/></strong>
                                                </iaixsl:otherwise>
                                            </iaixsl:choose>
                                        </iaixsl:otherwise>
                                    </iaixsl:choose>
                                </div>
                            </div>

                            <div class="col-md-2 col-12 mb-3 mb-md-0">
                                <div class="pb_button">
                                    <iaixsl:choose>
                                        <iaixsl:when test="size/@amount = 0">
                                            <span class="product_unavailable">
                                                Product unavailable
                                            </span>
                                        </iaixsl:when>
                                        <iaixsl:otherwise>
                                            <a class="btn --solid --medium">
                                                <iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
                                                <iaixsl:attribute name="title">Buy Now</iaixsl:attribute>
                                                Buy Now
                                            </a>
                                        </iaixsl:otherwise>
                                    </iaixsl:choose>
                                    <a class="btn --medium mt-2">
                                        <iaixsl:attribute name="href"><iaixsl:value-of select="removeall"/></iaixsl:attribute>
                                        <iaixsl:attribute name="title">Remove from the list</iaixsl:attribute>
                                        Remove from the list
                                    </a>
                                </div>
                            </div>
                            </div>
                        </div>
                        </div>
                    </iaixsl:for-each>
                    </div>
                </div>
                </div>
            </div>
            </iaixsl:if>
        <!--Hotspot w koszyku strefa 1 (basketedit_hotspot_zone1, 107913.1)-->
            
        <!--Polityka bezpieczeństwa (menu_security_policy, 106610.1)-->
        <iaixsl:if test="/shop/iai/@button_src and ( page/@type = 'basketedit') or ( page/@type='login' and page/login/onceorder/@display='y') or ( ((page/@type = 'client-new') and not(page/client-data/@edit='true') )) or ( page/@type = 'order1') or ( page/@type = 'order-nonstandardized') or ( page/@type = 'pickup-sites') or ( page/@type = 'order2') or ( page/@type = 'client-save') or ( page/@type = 'prepaid') or ( page/@type = 'order-payment') or ( page/@type = 'order-newpayment')">
            <div id="menu_security_policy" class="menu_box">
                <iaixsl:choose>
                    <iaixsl:when test="/shop/@trust_level = '1'">
                        <iaixsl:attribute name="class">menu_box supershop</iaixsl:attribute>
                        <img src="/gfx/eng/iai_security_supershop.png?r=1598273385" alt="SuperFair.Shop badge"/>
                        <div class="menu_sub_box">
                            <h2>
                                <iaixsl:attribute name="class">big_label</iaixsl:attribute>
                                <strong>SuperFair.Shop</strong><sup>TM</sup> title from: IdoSell Shop</h2>
                            <p>We use the IdoSell Shop system to give customers control over the order and the order process. We also take care of your rights and convenience. IAI S.A. Regularly verifies our store and confirms that we ship the shipment within the stated deadlines, and we use solutions that make it easy to shop and increase customer safety.</p>

                            <iaixsl:if test="/shop/action/shop_information/@order_link_active='y' or /shop/action/shipping_cost/@order_link_active='y' or /shop/action/payment_methods/@order_link_active='y' or /shop/action/terms/@order_link_active='y' or /shop/action/private_policy/@order_link_active='y' or /shop/action/order_cancel/@order_link_active='y'">
                                <p>
                                    Read our 
                                    <a target="_blank"><iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/terms/@url"/></iaixsl:attribute>Terms and Conditions </a>, <a target="_blank"><iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/private_policy/@url"/></iaixsl:attribute>Privacy Policy</a> and information about 
                                    <a target="_blank"><iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/order_cancel/@url"/></iaixsl:attribute>Agreement Termination </a>.
                                    You can check 
                                    <a target="_blank"><iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/shop_information/@url"/></iaixsl:attribute>Shop information</a>, <a target="_blank"><iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/shipping_cost/@url"/></iaixsl:attribute>Delivery costs</a>, 
                                    <a target="_blank"><iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/payment_methods/@url"/></iaixsl:attribute>Payment information and commissions</a> any time.
                                </p>
                            </iaixsl:if>
                        </div>
                    </iaixsl:when>
                    <iaixsl:otherwise>
                        <h2>
                            <iaixsl:attribute name="class">big_label</iaixsl:attribute>
                            Shopping at our store is safe</h2>
                        <div class="menu_sub_box">
                            <img src="/gfx/eng/iai_security.png?r=1598273385" alt="Idosell security badge"/>
                            <p>We use the <b>IdoSell Shop</b> system, which allows our customers to fully control their orders and order-completion process. We also respect your rights.</p>

                            <iaixsl:if test="/shop/action/shop_information/@order_link_active='y' or /shop/action/shipping_cost/@order_link_active='y' or /shop/action/payment_methods/@order_link_active='y' or /shop/action/terms/@order_link_active='y' or /shop/action/private_policy/@order_link_active='y' or /shop/action/order_cancel/@order_link_active='y'">
                                <p>
                                    Read our 
                                    <a target="_blank"><iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/terms/@url"/></iaixsl:attribute>Terms and Conditions </a>, <a target="_blank"><iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/private_policy/@url"/></iaixsl:attribute>Privacy Policy</a> and information about 
                                    <a target="_blank"><iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/order_cancel/@url"/></iaixsl:attribute>Agreement Termination </a>.
                                </p>

                                <p>
                                    You can check 
                                    <a target="_blank"><iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/shop_information/@url"/></iaixsl:attribute>Shop information</a>, <a target="_blank"><iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/shipping_cost/@url"/></iaixsl:attribute>Delivery costs</a>, 
                                    <a target="_blank"><iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/payment_methods/@url"/></iaixsl:attribute>Payment information and commissions</a> any time.
                                </p>
                            </iaixsl:if>
                        </div>
                    </iaixsl:otherwise>
                </iaixsl:choose>
            </div>
        </iaixsl:if>
        <!--Menu hotspot w koszyku strefa 1 (menu_basketedit_hotspot_zone1, 106611.1)-->
        <iaixsl:if test="page/hotspot/products_zone1 or page/hotspot/products_zone1">

            <div class="main_hotspot mb-4" id="basketedit_hotspot_zone1" data-ajaxLoad="true" data-pageType="basket">
                <div class="main_hotspot mb-4 skeleton">
                    <span class="big_label"/>
                    <div class="main_hotspot_sub">
                        <div class="products_wrapper row clearfix">
                            <div class="product_wrapper col-md-3 col-xs-6">
                                <span class="product-icon"/>
                                <span class="product-name"/>
                                <div class="product_prices"/>
                            </div>
                            <div class="product_wrapper col-md-3 col-xs-6">
                                <span class="product-icon"/>
                                <span class="product-name"/>
                                <div class="product_prices"/>
                            </div>
                            <div class="product_wrapper col-md-3 col-xs-6">
                                <span class="product-icon"/>
                                <span class="product-name"/>
                                <div class="product_prices"/>
                            </div>
                            <div class="product_wrapper col-md-3 col-xs-6">
                                <span class="product-icon"/>
                                <span class="product-name"/>
                                <div class="product_prices"/>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </iaixsl:if>
        
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
                                <label>Subscribe to our <b> Newsletter</b></label>
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
                                        <iaixsl:attribute name="placeholder">Enter your first name</iaixsl:attribute>
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
                                     <iaixsl:attribute name="placeholder">Enter your email</iaixsl:attribute>
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
                                    Unsubscribe
                                </button>
                         </iaixsl:when>       

                        <iaixsl:otherwise>
                            <button name="mailing_action" value="add" type="submit" class="btn add_newsletter">
                                <iaixsl:attribute name="title">Subscribe</iaixsl:attribute>
                                Subscribe
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
                            My order
                        </a>
                        <ul class="footer_links_sub">
                            <li id="order_status" class="menu_orders_item">
                                <i class="icon-battery"></i>
                                <a>
                                    <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/orderOpen/@url"/></iaixsl:attribute>
                                    Order status
                                </a>
                            </li>
                            <li id="order_status2" class="menu_orders_item">
                                <i class="icon-truck"></i>
                                <a>
                                    <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/orderOpen/@url"/></iaixsl:attribute>
                                    Package tracking
                                </a>
                            </li>
                            <li id="order_rma" class="menu_orders_item">
                                <i class="icon-sad-face"></i>
                                <a>
                                    <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/addRma/@url"/></iaixsl:attribute>
                                    I want to make a complaint about the product
                                </a>
                            </li>
                            <li id="order_returns" class="menu_orders_item">
                                <i class="icon-refresh-dollar"></i>
                                <a>
                                    <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/addReturn/@url"/></iaixsl:attribute>
                                    I want to return the product
                                </a>
                            </li>
                            <li id="order_exchange" class="menu_orders_item">
                                <i class="icon-return-box"></i>
                                <a>
                                    <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/returnExchangeLink/@url"/></iaixsl:attribute>
                                    I want to exchange the product
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
                            My account
                        </a>
                        <ul class="footer_links_sub">
                            <iaixsl:choose>
                                <iaixsl:when test="basket/@login">
                                    <li id="account_register" class="menu_orders_item">
                                        <i class="icon-user"></i>
                                        <a>
                                            <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/loginEdit/@url"/></iaixsl:attribute>
                                            Your account
                                        </a>
                                    </li>
                                </iaixsl:when>
                                <iaixsl:otherwise>
                                    <iaixsl:for-each select="/shop/action/registration_options/wholesale">
                                        <li id="account_register_wholesale" class="menu_orders_item">
                                            <i class="icon-wholesaler-register"></i>
                                            <a>
                                                <iaixsl:attribute name="href"><iaixsl:value-of select="@registration_url"/></iaixsl:attribute>
                                                Register as a wholesaler
                                            </a>
                                        </li>
                                    </iaixsl:for-each>
                                    <iaixsl:for-each select="/shop/action/registration_options/retail">
                                        <li id="account_register_retail" class="menu_orders_item">
                                            <i class="icon-register-card"></i>
                                            <a>
                                                <iaixsl:attribute name="href"><iaixsl:value-of select="@registration_url"/></iaixsl:attribute>
                                                Register
                                            </a>
                                        </li>
                                    </iaixsl:for-each>
                                </iaixsl:otherwise>
                            </iaixsl:choose>
                            <li id="account_orders" class="menu_orders_item">
                                <i class="icon-menu-lines"></i>
                                <a>
                                    <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/clientOrders/@url"/></iaixsl:attribute>
                                    My orders
                                </a>
                            </li>
                            <li id="account_basket" class="menu_orders_item">
                                <i class="icon-basket"></i>
                                <a>
                                    <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/basket/@url"/></iaixsl:attribute>
                                    Your basket
                                </a>
                            </li>
                            <li id="account_observed" class="menu_orders_item">
                                <i class="icon-star-empty"></i>
                                <a>
                                    <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/observed/@url"/></iaixsl:attribute>
                                    Wish list
                                </a>
                            </li>
                            <li id="account_history" class="menu_orders_item">
                                <i class="icon-clock"></i>
                                <a>
                                    <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/clientOrders/@url"/></iaixsl:attribute>
                                    Transaction history
                                </a>
                            </li>
                            <li id="account_rebates" class="menu_orders_item">
                                <i class="icon-scissors-cut"></i>
                                <a>
                                    <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/clientRebate/@url"/></iaixsl:attribute>
                                    Granted discounts
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
                        <li><span class="footer_links_label">Information</span>
                            <ul class="footer_links_sub">
                                <iaixsl:if test="/shop/action/shop_information/@order_link_active='y' and not(/shop/action/shop_information/@url = '')">
                                    <li>
                                        <a>
                                            <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/shop_information/@url"/></iaixsl:attribute>
                                            Shop information
                                        </a>
                                    </li>
                                </iaixsl:if>
                                <iaixsl:if test="/shop/action/shipping_cost/@order_link_active='y' and not(/shop/action/shipping_cost/@url = '')">
                                    <li>
                                        <a>
                                            <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/shipping_cost/@url"/></iaixsl:attribute>
                                            Delivery information
                                        </a>
                                    </li>
                                </iaixsl:if>
                                <iaixsl:if test="/shop/action/payment_methods/@order_link_active='y' and not(/shop/action/payment_methods/@url = '')">
                                    <li>
                                        <a>
                                            <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/payment_methods/@url"/></iaixsl:attribute>
                                            Payment information and commissions
                                        </a>
                                    </li>
                                </iaixsl:if>
                                <iaixsl:if test="/shop/action/terms/@order_link_active='y' and not(/shop/action/terms/@url = '')">
                                    <li>
                                        <a>
                                            <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/terms/@url"/></iaixsl:attribute>
                                            Terms and Conditions
                                        </a>
                                    </li>
                                </iaixsl:if>
                                <iaixsl:if test="/shop/action/private_policy/@order_link_active='y' and not(/shop/action/private_policy/@url = '')">
                                    <li>
                                        <a>
                                            <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/private_policy/@url"/></iaixsl:attribute>
                                            Privacy and Cookies policy
                                        </a>
                                    </li>
                                </iaixsl:if>
                                <iaixsl:if test="/shop/action/order_cancel/@order_link_active='y' and not(/shop/action/order_cancel/@url = '')">
                                    <li>
                                        <a>
                                            <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/order_cancel/@url"/></iaixsl:attribute>
                                            Order cancellation
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
                            Contact
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
                                <h2>Order edition</h2>

                                <strong>
                                    You are in the order editing mode. To apply these changes, you need to go through all the steps of placing an order. If you do not go through all of these steps, the previous order will not be changed.
                                </strong>
                                <div class="menu_notice_button">
                                    <button onclick="$('#dialog_close').click();" class="btn --solid menu_notice_button">
                                        close the window
                                    </button>
                                </div>
                                <div class="clearboth"/>
                            </div>

                        </iaixsl:when>


                        <iaixsl:when test="/shop/action_alert/@type = 'order_edit_auction'">

                            <div id="menu_notice">
                                <h2>Order edition</h2>

                                <strong>
                                    You are editing the order placed through a marketplace website. You can change the product for a different one from the same group (i.e. different color or size) or add another (free choice) products to increase the order value. To apply these changes, you need to go through all of the steps of placing an order.
                                </strong>
                                <div class="menu_notice_button">

                                    <button onclick="$('#dialog_close').click();" class="btn --solid menu_notice_button">
                                        close the window
                                    </button>
                                </div>
                                <div class="clearboth"/>
                            </div>

                        </iaixsl:when>


                        <iaixsl:when test="/shop/action_alert/@type = 'order1'">

                            <div id="menu_notice">
                                <h2>Order edition</h2>

                                <strong>
                                    You are editing a complex order. Earlier selected payment and shipment methods are marked. You can change the earlier set options. To apply these changes, you need to go through all the steps of placing an order.
                                </strong>
                                <div class="menu_notice_button">

                                    <button onclick="$('#dialog_close').click();" class="btn --solid menu_notice_button">
                                        close the window
                                    </button>
                                </div>
                                <div class="clearboth"/>
                            </div>

                        </iaixsl:when>



                        <iaixsl:when test="/shop/page/@type = 'order2'">
                            <div id="menu_notice">
                                <h2>Order edition</h2>

                                <strong>
                                    Check if the order in its current form is correct. If everything is fine, click on a change order button to confirm changes. If not, go back to the basket and proceed with changes as you did before.
                                </strong>
                                <div class="menu_notice_button">

                                    <button onclick="$('#dialog_close').click();" class="btn --solid menu_notice_button">
                                        close the window
                                    </button>
                                </div>
                                <div class="clearboth"/>
                            </div>

                        </iaixsl:when>


                        <iaixsl:when test="/shop/page/@type = 'order-wrappers'">
                            <div id="menu_notice">
                                <h2>Order edition</h2>

                                <strong>
                                    You can select the packaging, that you are interested in, in this step of the order edition. To apply these changes, you need to go through all the steps of placing an order.
                                </strong>
                                <div class="menu_notice_button">

                                    <button onclick="$('#dialog_close').click();" class="btn --solid menu_notice_button">
                                        close the window
                                    </button>
                                </div>
                                <div class="clearboth"/>
                            </div>

                        </iaixsl:when>


                        <iaixsl:when test="/shop/action_alert/@type = 'add_basket'">

                            <div id="menu_notice">
                                <h2>Order edition</h2>

                                <strong>
                                    You have changed the basket content. Remember, in order to apply the changes you need to go through all the steps of placing an order.
                                </strong>
                                <div class="menu_notice_button">

                                    <button onclick="$('#dialog_close').click();" class="btn --solid menu_notice_button">
                                        close the window
                                    </button>
                                </div>
                                <div class="clearboth"/>
                            </div>

                        </iaixsl:when>



                        <iaixsl:when test="/shop/action_alert/@type = 'change_basket'">

                            <div id="menu_notice">
                                <h2>Order edition </h2>

                                <strong>
                                    You have changed the basket content. Remember, in order to apply the changes you need to go through all the steps of placing an order.
                                </strong>
                                <div class="menu_notice_button">

                                    <button onclick="$('#dialog_close').click();" class="btn --solid menu_notice_button">
                                        close the window
                                    </button>
                                </div>
                                <div class="clearboth"/>
                            </div>

                        </iaixsl:when>


                        <iaixsl:when test="page/projector/product/exchange/@exchange_id">

                            <div id="menu_notice">
                                <h2>Order edition </h2>

                                <strong>
                                    You can change the product in the basket, for example for a different color or size of the same item, and the system will automatically switch it with the product bought on the auction.
                                </strong>
                                <div class="menu_notice_button">

                                    <button onclick="$('#dialog_close').click();" class="btn --solid menu_notice_button">
                                        close the window
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
                    <h2>Location</h2>
                </div>
                <div id="xpress_zipcode">
                    <p class="col-md-12">Enter the postal code of the delivery address</p>
                    <div class="form-group">
                        <div class="has-feedback has-required col-md-12 col-xs-12">
                            <input id="xpress_zipcode" class="form-control validate" name="client_zipcode" data-validation="client_zipcode" data-validation-url="/ajax/client-new.php?validAjax=true" data-serialize="data-region" value="" required="required" type="text" data-region="client_region=1143020003">
                                <iaixsl:attribute name="placeholder">Postal Code</iaixsl:attribute>
                            </input>
                            <span class="form-control-feedback"/>
                        </div>
                    </div>
                    <div class="xpress_button_sub col-md-12"><a id="xpress_zipcode_submit" class="btn --solid">OK</a></div>
                    <p class="col-md-12">or share location so that we can determine if express delivery is available for this location.</p>
                    <div class="xpress_button_sub col-md-12"><a id="xpress_zipcode_geolocation" class="btn --solid">Share location</a></div>
                </div>
            </div>
            <div id="xpress_toplayer_error">
                <div class="header_wrapper col-md-12">
                    <h2>Location</h2>
                </div>
                <div id="xpress_zipcode">
                    <p class="col-md-12">Sorry, but our express courier does not support this area.</p>
                    <p class="col-md-12">Your order will be delivered in standard time and the courier will choose when ordering.</p>
                    <div class="xpress_button_sub col-md-12"><a id="express_close_dialog" href="#" class="btn --solid">OK</a></div>
                </div>
            </div>
        </iaixsl:if>

        <iaixsl:if test="/shop/page/@type = 'prepaid'">
            <div id="menu_preloader" class="menu_preolader_2">
                <div id="menu_notice">
                    <h2>Order cancelation</h2>
                    <strong></strong>
                    <div class="menu_notice_button">
                        <button class="btn --solid prepaid_cancel" onclick="$('#dialog_close').click();">
                            close the window
                        </button>
                        <button class="btn --solid  prepaid_confirm">
                            cancel order
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
                        <script><iaixsl:attribute name="src">/gfx/<iaixsl:value-of select="language/@id"/>/shop.js.gzip?r=1598273385</iaixsl:attribute></script>
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