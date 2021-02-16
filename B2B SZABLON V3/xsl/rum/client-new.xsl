<?xml version="1.0" encoding="UTF-8"?>
<iaixsl:stylesheet xmlns:php="http://php.net/xsl" xmlns:iaixsl="http://www.w3.org/1999/XSL/Transform" xmlns:iaielement="http://iai-system.com/ddd" xmlns:fb="http://www.facebook.com/2008/fbml" version="1.0" exclude-result-prefixes="php iaielement fb"><iaixsl:output indent="no" method="html" doctype-system="about:legacy-compat" version="1.0" encoding="UTF-8"/><iaixsl:strip-space elements="table tr td img"/><iaixsl:decimal-format name="yen" NaN="" grouping-separator="," decimal-separator="."/><iaixsl:template match="shop"><!--Typ strony (envelope, 107421.1)-->
            <iaixsl:variable name="meta_langcode_iso639">ro</iaixsl:variable>
            <iaixsl:variable name="html5_layout">1</iaixsl:variable>
            <iaixsl:variable name="asyncJS"></iaixsl:variable>
            <iaixsl:variable name="themeColor">#0090f6</iaixsl:variable>
            <iaixsl:if test="(action/set_render/item/@name = 'popup') or not(action/set_render/item)">
                <iaixsl:text disable-output-escaping="yes">&lt;html lang="</iaixsl:text><iaixsl:value-of select="/shop/currency/@country"/><iaixsl:text disable-output-escaping="yes">" &gt;</iaixsl:text>
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
                    
                    <link rel="shortcut icon" href="/gfx/rum/favicon.ico" />
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
                                    <link rel="stylesheet" type="text/css"><iaixsl:attribute name="href">/gfx/<iaixsl:value-of select="language/@id"/>/style.css.gzip?r=1571748615</iaixsl:attribute></link>
                                </iaixsl:otherwise>
                            </iaixsl:choose>
                        </iaixsl:when>
                        <iaixsl:otherwise>
                            <iaixsl:choose>
                                <iaixsl:when test="/shop/@preview > 0">
                                    <link rel="stylesheet" type="text/css"><iaixsl:attribute name="href">/gfx/<iaixsl:value-of select="language/@id"/>/<iaixsl:value-of select="/shop/@preview"/>/style.css</iaixsl:attribute></link>
                                </iaixsl:when>
                                <iaixsl:otherwise>
                                    <link rel="stylesheet" type="text/css"><iaixsl:attribute name="href">/gfx/<iaixsl:value-of select="language/@id"/>/style.css.gzip?r=1571748615</iaixsl:attribute></link>
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
                    <iaixsl:if test="not(/shop/page/@type = 'main') and not(/shop/page/@type = 'search')">
                        <iaixsl:choose>
                            <iaixsl:when test="/shop/@preview > 0">
                                <script><iaixsl:attribute name="src">/gfx/<iaixsl:value-of select="language/@id"/>/<iaixsl:value-of select="/shop/@preview"/>/shop.js</iaixsl:attribute></script>
                            </iaixsl:when>
                            <iaixsl:otherwise>
                                <script><iaixsl:attribute name="src">/gfx/<iaixsl:value-of select="language/@id"/>/shop.js.gzip?r=1571748615</iaixsl:attribute></script>
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
            <script>
                var script = document.createElement('script');
                script.src = app_shop.urls.prefix + 'envelope.js';

                document.getElementsByTagName('body')[0].insertBefore(script, document.getElementsByTagName('body')[0].firstChild);
            </script>
            <!--Układ graficzny (layout, 107419.1)-->
            <div id="container">
                <iaixsl:attribute name="class"><iaixsl:value-of select="page/@type"/>_page <iaixsl:if test="/shop/page/login/@shop_registration = 'true'">registration_page </iaixsl:if>container</iaixsl:attribute>

                <iaixsl:if test="not(action/set_render/item) or (action/set_render/item/@name = 'head')">
                    <header>
                        <iaixsl:attribute name="class">d-flex flex-nowrap flex-md-wrap mx-md-n3<iaixsl:if test="count(commercial_banner/link) > 0"> commercial_banner</iaixsl:if></iaixsl:attribute>
                        <!--Javascript (menu_javascript, 107349.1)-->
            
            <script class="ajaxLoad">
                <iaixsl:if test="( page/@type = 'basketedit') or ( page/@type='login' and page/login/onceorder/@display='y') or ((page/@type = 'client-new') and not(page/client-data/@edit = 'true') and (page/client-data/@afterlogin = 'order')) or ( page/@type = 'order1') or ( page/@type = 'order-nonstandardized') or ( page/@type = 'pickup-sites') or ( page/@type = 'order2') or ( page/@type = 'client-save') or ( page/@type = 'prepaid') or ( page/@type = 'order-payment') or ( page/@type = 'order-newpayment') or ( page/@type = 'rma_products' ) or ( page/@type = 'return_products' ) or (page/@type = 'client-orders') or (page/@type = 'rma-add') or (page/@type = 'place-order')">
                   document.getElementsByTagName('html')[0].className += ' cop_site';
                </iaixsl:if>
                <iaixsl:if test="/shop/action_alert/@type">
                    document.getElementsByTagName('html')[0].className += "<iaixsl:value-of select="/shop/action_alert/@type"/>";
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

        <!--Szybkie wyszukiwanie (menu_search, 106472.1)-->
	        <form action="/search.php" method="get" id="menu_search" class="col-md-4">
	            <iaixsl:if test="/shop/action/search/@url"><iaixsl:attribute name="action"><iaixsl:value-of select="/shop/action/search/@url"/></iaixsl:attribute></iaixsl:if>

	            <label class="d-md-none"><i class="icon-search"/></label>
	            
            	<div>
		            <div class="form-group">
		                <input id="menu_search_text" type="text" name="text">
			                <iaixsl:attribute name="class">catcomplete</iaixsl:attribute>
			                <iaixsl:attribute name="placeholder">Enter what you are looking for</iaixsl:attribute>
		                    
		                    <iaixsl:if test="/shop/page/search_params/text">
		                        <iaixsl:attribute name="value"><iaixsl:value-of select="/shop/page/search_params/text/@value"/></iaixsl:attribute>
		                    </iaixsl:if>
			            </input>
		            </div>
		            <button type="submit" >
		                <i class="icon-search"></i>
		            </button>

		            <a href="/searching.php"><iaixsl:if test="/shop/action/searching/@url"><iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/searching/@url"/></iaixsl:attribute></iaixsl:if><iaixsl:attribute name="title"></iaixsl:attribute><i class="icon-remove d-md-none"></i></a>
	            </div>
	        </form>
        <!--Ustawienia języka oraz walut (menu_settings, 109097.1)-->

            <iaixsl:variable name="display_menu_additional">Log in</iaixsl:variable>

            <div id="menu_settings" class="col-md-3 px-0 px-md-3 d-flex align-items-center justify-content-center justify-content-lg-end">
                <iaixsl:if test="(count(/shop/currency/option) > 1) or (count(/shop/language/option) > 1) or (count(/shop/countries/country) > 1)">
                    <div class="open_trigger">
                        <span>
                            <iaixsl:choose>
                                <iaixsl:when test="count(/shop/language/option) > 1">
                                    <iaixsl:attribute name="class">d-none d-md-inline-block flag flag_<iaixsl:value-of select="/shop/language/option[@selected='true']/@id"/></iaixsl:attribute>
                                </iaixsl:when>
                                <iaixsl:when test="count(/shop/currency/option) > 1">
                                    <iaixsl:attribute name="class">d-none d-md-inline-block flag_txt</iaixsl:attribute>
                                    <iaixsl:value-of select="/shop/currency/option[@selected='true']/@symbol"/>
                                </iaixsl:when>
                                <iaixsl:when test="count(/shop/countries/country) > 1">
                                    <iaixsl:attribute name="class">d-none d-md-inline-block flag_txt</iaixsl:attribute>
                                    <i class="icon-truck"></i>
                                </iaixsl:when>

                            </iaixsl:choose>
                        </span>

                        <div class="menu_settings_wrapper d-md-none">
                            <iaixsl:if test="/shop/language/option/@selected or /shop/currency/option/@selected">
                                <div class="menu_settings_inline">
                                    <div class="menu_settings_header">
                                        
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
                        <i class="icon-angle-down d-none d-md-inline-block"></i>

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
                                                <label for="menu_settings_curr">Prices in:</label>

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

                <iaixsl:if test="$display_menu_additional">
                    <div id="menu_additional">
                        <a class="account_link">
                            <iaixsl:if test="/shop/action/login/@url">
                                <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/login/@url"/></iaixsl:attribute>
                            </iaixsl:if>
                            <iaixsl:choose>
                                <iaixsl:when test="basket/@login and not(basket/@login = '')">
                                    Your Account
                                </iaixsl:when>
                                <iaixsl:otherwise>
                                    <iaixsl:value-of select="$display_menu_additional"/>
                                </iaixsl:otherwise>
                            </iaixsl:choose>
                        </a>
                        <a href="/basketedit.php?mode=2" class="wishlist_link">
                            Shopping list
                            <span><iaixsl:choose><iaixsl:when test="wishes/@count"><iaixsl:value-of select="wishes/@count"/></iaixsl:when><iaixsl:otherwise>0</iaixsl:otherwise></iaixsl:choose></span>
                        </a>
                    </div>
                </iaixsl:if>
            </div>
        <!--Menu koszyka (menu_basket, 108216.1)-->
            <div id="menu_basket_wrapper" class="col-md-3 d-flex px-0 pl-lg-3 pr-md-3">
                
                <div id="menu_balance" class="d-none">
                    <div>
                        Balance 
                        <strong>
                            <iaixsl:if test="/shop/client_data/client_balance/balance[@currency_sign=/shop/currency/@name]/@value">
                                <iaixsl:value-of select="(/shop/client_data/client_balance/balance[@currency_sign=/shop/currency/@name]/@value_formatted)"/>
                            </iaixsl:if>
                        </strong>
                    </div>

                    <a href="/client-rebate.php|link_rabaty">
                    <iaixsl:if test="/shop/action/clientRebate/@url">
                        <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/clientRebate/@url"/></iaixsl:attribute>
                    </iaixsl:if>
                        Your discounts
                    </a>
                </div>

                
                <div id="menu_basket" class="menu_basket">
                    <div class="menu_basket_list">
                        <iaixsl:if test="not(basket/@count > 0)">
                            <iaixsl:attribute name="class">menu_basket_list empty</iaixsl:attribute>
                        </iaixsl:if>
                        <a href="/basketedit.php?mode=1">
                            <iaixsl:if test="/shop/action/basket/@url">
                                <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/basket/@url"/>?mode=1</iaixsl:attribute>
                            </iaixsl:if>
                            <iaixsl:if test="basket/@points_used > 0">
                                <iaixsl:attribute name="class">points</iaixsl:attribute>
                            </iaixsl:if>

                            
                            <strong>
                                <b><iaixsl:value-of disable-output-escaping="yes" select="basket/@cost_net_formatted"/></b>
                                <span> net</span>
                                <iaixsl:if test="basket/@points_used > 0">
                                    <small>
                                         + <iaixsl:value-of disable-output-escaping="yes" select="basket/@points_used"/>
                                         PTS.
                                    </small>
                                </iaixsl:if>
                            </strong>

                            <iaixsl:if test="basket/@count > 0">
                                <span class="badge badge-important d-md-none"><iaixsl:value-of disable-output-escaping="yes" select="basket/@count"/></span>
                            </iaixsl:if>
                        </a>

                        <div id="menu_basket_details">
                            
                            <div id="menu_basket_extrainfo">
                                <div class="menu_basket_extrainfo_sub">

                                    
                                    <div class="menu_basket_prices">
                                        <div class="menu_basket_prices_sub">
                                            <table class="menu_basket_prices_wrapper"><tbody>
                                                <tr>
                                                    <td class="menu_basket_prices_label">Net sum:</td>
                                                    <td class="menu_basket_prices_value"><span class="menu_basket_prices_netto"><iaixsl:value-of select="basket/@cost_net_formatted"/></span></td>
                                                </tr>
                                                <tr>
                                                    <td class="menu_basket_prices_label">Gross sum:</td>
                                                    <td class="menu_basket_prices_value"><iaixsl:value-of select="basket/@cost_formatted"/></td>
                                                </tr>
                                                <iaixsl:if test="(basket/@points_used) and not(basket/@points_used = '')">
                                                    <tr>
                                                        <td class="menu_basket_prices_label">Used points:</td>
                                                        <td class="menu_basket_prices_value"><iaixsl:value-of select="basket/@points_used"/>pts.</td>
                                                    </tr>
                                                </iaixsl:if>
                                                <iaixsl:if test="(basket/@shipping_undefined = 'false')">
                                                    <tr>
                                                        <td class="menu_basket_prices_label">Delivery cost:</td>
                                                        <td class="menu_basket_prices_value">
                                                            <iaixsl:choose>
                                                                <iaixsl:when test="not(basket/@shipping = '0')">from <iaixsl:value-of select="basket/@shipping_formatted"/></iaixsl:when>
                                                                <iaixsl:otherwise><span class="menu_basket_shippingfree">free!</span></iaixsl:otherwise>
                                                            </iaixsl:choose>
                                                        </td>
                                                    </tr>
                                                </iaixsl:if>
                                            </tbody></table>
                                        </div>
                                    </div>
                                    

                                    
                                    <iaixsl:if test="((basket/@toshippingfree ) and (basket/@shippinglimitfree)) and (not(basket/@toshippingfree = '') and not(basket/@shippinglimitfree = ''))">
                                        <div class="menu_basket_shippingfree">
                                            <div class="menu_basket_shippingfree_sub">
                                                <iaixsl:choose>
                                                    <iaixsl:when test="basket/@toshippingfree = '0'">
                                                        <span class="menu_basket_shippingfree_hit">Free delivery threshold reached. </span>
                                                    </iaixsl:when>
                                                    <iaixsl:otherwise>
                                                        You are missing only 
                                                        <span class="menu_basket_toshippingfree"><iaixsl:value-of select="basket/@toshippingfree_formatted"/></span>
                                                         to have<br />free delivery.
                                                    </iaixsl:otherwise>
                                                </iaixsl:choose>
                                            </div>
                                        </div>
                                    </iaixsl:if>
                                    

                                    
                                    <iaixsl:if test="((rebatesLocal/@nextleft) and (rebatesLocal/@nextvalue)) and (not(rebatesLocal/@nextleft = '') and not(rebatesLocal/@nextvalue = '') and not(rebatesLocal/@nextvalue = '0.00'))">
                                        <div class="menu_basket_nextrabate">
                                            <div class="menu_basket_nextrabate_sub">
                                                You are missing only 
                                                <span class="menu_basket_nextrabate_in"><iaixsl:value-of select="rebatesLocal/@nextleft_formatted"/></span>
                                                 to have a discount 
                                                <span class="menu_basket_nextrabate_value"><iaixsl:value-of select="rebatesLocal/@nextvalue"/>%</span>
                                            </div>
                                        </div>
                                    </iaixsl:if>
                                    

                                    
                                    <iaixsl:if test="basket/@count > '0'">
                                        <div class="menu_basket_buttons">
                                            <div class="menu_basket_buttons_sub">
                                                <a href="/basketedit.php" class="menu_basket_buttons_basket btn --solid --medium">
                                                    <iaixsl:attribute name="title">Go to a basket page</iaixsl:attribute>
                                                    <iaixsl:if test="/shop/action/basket/@url">
                                                        <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/basket/@url"/>?mode=1</iaixsl:attribute>
                                                    </iaixsl:if>
                                                    Go to basket
                                                </a>

                                                <a href="/order1.php" class="menu_basket_buttons_order btn --solid --medium">
                                                    <iaixsl:attribute name="title">Go to check out page</iaixsl:attribute>
                                                    <iaixsl:if test="/shop/action/order1/@url">
                                                        <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/order1/@url"/></iaixsl:attribute>
                                                    </iaixsl:if>
                                                    Place an order
                                                </a>
                                            </div>
                                        </div>
                                    </iaixsl:if>
                                    

                                </div>
                            </div>
                            

                            
                            <iaixsl:if test="basket/@count > '0'">
                                <div id="menu_basket_productlist">
                                    <div class="menu_basket_productlist_sub">

                                        <table class="menu_basket_product_table">
                                            <thead>
                                                <tr>
                                                    <th class="menu_basket_product_name">Product name</th>
                                                    <th class="menu_basket_product_size">Size</th>
                                                    <th class="menu_basket_product_quantity">Quantity </th>
                                                    <th class="menu_basket_product_price">Net price</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <iaixsl:for-each select="basket/product">
                                                    <tr>
                                                        <td class="menu_basket_product_name">
                                                            <a class="menu_basket_product_name">
                                                                <iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
                                                                <iaixsl:attribute name="title"><iaixsl:value-of select="name"/></iaixsl:attribute>
                                                                <iaixsl:value-of select="name" disable-output-escaping="yes"/>
                                                            </a>
                                                        </td>
                                                        <td class="menu_basket_product_size">
                                                            <iaixsl:choose>
                                                                <iaixsl:when test="not(size/@type = 'uniw')"><iaixsl:value-of select="size/@description"/></iaixsl:when>
                                                                <iaixsl:otherwise>---</iaixsl:otherwise>
                                                            </iaixsl:choose>
                                                        </td>
                                                        <td class="menu_basket_product_quantity">
                                                            <iaixsl:choose>
                                                                <iaixsl:when test="size/@ordered">
                                                                    <iaixsl:value-of select="size/@ordered"/>
                                                                    <iaixsl:if test="(@price_unit) and not(@price_unit = '')">
                                                                        <span class="menu_basket_product_unit">
                                                                            <iaixsl:text>&#160;</iaixsl:text> <iaixsl:value-of select="@price_unit"/>
                                                                        </span>
                                                                    </iaixsl:if>
                                                                </iaixsl:when>
                                                                <iaixsl:when test="size/@ordered_points">
                                                                    <iaixsl:value-of select="size/@ordered_points"/>
                                                                    <iaixsl:if test="(@price_unit) and not(@price_unit = '')">
                                                                        <span class="menu_basket_product_unit">
                                                                            <iaixsl:text>&#160;</iaixsl:text> <iaixsl:value-of select="@price_unit"/>
                                                                        </span>
                                                                    </iaixsl:if>
                                                                </iaixsl:when>
                                                                <iaixsl:otherwise>

                                                                </iaixsl:otherwise>
                                                            </iaixsl:choose>
                                                        </td>
                                                        <td class="menu_basket_product_price">
                                                            <iaixsl:choose>
                                                                <iaixsl:when test="(price/@worth_net != 0)">
                                                                    <iaixsl:value-of select="price/@worth_net_formatted"/>
                                                                    <iaixsl:if test="price/@points">
                                                                        <span class="menu_basket_product_points">+ <iaixsl:value-of select="price/@points"/>pts.</span>
                                                                    </iaixsl:if>
                                                                </iaixsl:when>
                                                                <iaixsl:when test="(price/@worth_net = 0) and (price/@points)">
                                                                    <span class="menu_basket_product_points"><iaixsl:value-of select="price/@points"/>pts.</span>
                                                                </iaixsl:when>
                                                            </iaixsl:choose>
                                                        </td>
                                                    </tr>
                                                </iaixsl:for-each>
                                            </tbody>
                                        </table>

                                    </div>
                                </div>
                                
                            </iaixsl:if>
                        </div>
                    </div>

                    <div class="d-none">
                        <iaixsl:choose>
                            <iaixsl:when test="wishes/@count">
                                <a class="wishes_link link" href="/basketedit.php?mode=2" rel="nofollow">
                                    <iaixsl:attribute name="title"></iaixsl:attribute>
                                    <iaixsl:if test="/shop/action/basket/@url">
                                        <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/basket/@url"/>?mode=2</iaixsl:attribute>
                                    </iaixsl:if>
                                    <span>Wishlist (<iaixsl:value-of select="wishes/@count"/>)</span>

                                    <span class="badge badge-important d-md-none"><iaixsl:value-of select="wishes/@count"/></span>
                                </a>
                            </iaixsl:when>
                            <iaixsl:otherwise>
                                <a class="wishes_link link" href="/basketedit.php?mode=2" rel="nofollow">
                                    <iaixsl:attribute name="title"></iaixsl:attribute>
                                    <iaixsl:if test="/shop/action/basket/@url">
                                        <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/basket/@url"/>?mode=2</iaixsl:attribute>
                                    </iaixsl:if>

                                    <span>Wishlist (0)</span>
                                </a>
                            </iaixsl:otherwise>
                        </iaixsl:choose>
                        <span class="hidden-tablet"> | </span>
                        <a class="basket_link link" href="/basketedit.php?mode=1" rel="nofollow">
                            <iaixsl:attribute name="title">Click to go to basket</iaixsl:attribute>
                            <iaixsl:if test="/shop/action/basket/@url">
                                <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/basket/@url"/>?mode=1</iaixsl:attribute>
                            </iaixsl:if>
                            <iaixsl:if test="basket/@count = '0'">
                                <iaixsl:attribute name="title">Your basket is empty, first add products from our offer to it.</iaixsl:attribute>
                            </iaixsl:if>
                            Place an order
                        </a>
                    </div>
                </div>
            </div>

            <iaixsl:if test="not(/shop/client_data/client_balance/balance[@currency_sign=/shop/currency/@name]/@value)">
                <script>
                    app_shop.vars.formatBasket = true;
                </script>
            </iaixsl:if>
        <!--Menu - Drzewo 1 (menu_categories, 106527.1)-->
        <iaixsl:variable name="dlmenu_showall">+ Show all</iaixsl:variable>
        <iaixsl:variable name="gfx_2lvl_show"></iaixsl:variable>
        <iaixsl:variable name="menu_categories_label"></iaixsl:variable>
        <iaixsl:variable name="current_item"><iaixsl:value-of select="/shop/navigation/current/@ni"/></iaixsl:variable>

        <nav id="menu_categories" class="col-md-12 px-0 px-md-3">
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
                <ul class="navbar-nav mx-md-n2">
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
                            <iaixsl:if test="@gfx or @gfx_active_type">
                                <iaixsl:text disable-output-escaping="yes"> nav-gfx</iaixsl:text>
                            </iaixsl:if>
                            <iaixsl:text disable-output-escaping="yes">" &gt;</iaixsl:text>
                            <iaixsl:choose>
                                <iaixsl:when test="@gfx or @gfx_active_type">
                                    <img>
                                        <iaixsl:attribute name="alt"><iaixsl:value-of disable-output-escaping="yes" select="@name"/></iaixsl:attribute>
                                        <iaixsl:attribute name="title"><iaixsl:value-of disable-output-escaping="yes" select="@name"/></iaixsl:attribute>
                                        <iaixsl:choose>
                                            <iaixsl:when test="@gfx_active_type = 'img_rwd'">
                                                <iaixsl:attribute name="class">rwd-src</iaixsl:attribute>
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
                                    <span class="gfx_lvl_1 d-none"><iaixsl:value-of disable-output-escaping="yes" select="@name"/></span>
                                </iaixsl:when>
                                <iaixsl:otherwise>
                                    <iaixsl:value-of disable-output-escaping="yes" select="@name"/>
                                </iaixsl:otherwise>
                            </iaixsl:choose>
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
        <!--Lokalizator (projector_stepper, 106590.1)-->
        <iaixsl:variable name="searchResults_title"></iaixsl:variable>
        <iaixsl:variable name="breadcrumbs_label">You are here:  </iaixsl:variable>
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
                                <span> <iaixsl:variable name="client_cards">Loyalty Cards</iaixsl:variable></span>
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
                                            <iaixsl:choose>
                                                <iaixsl:when test="not(position() = last())">
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
                                    <a>
                                        <iaixsl:attribute name="class">category</iaixsl:attribute>
                                        <iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
                                        <iaixsl:value-of select="@title"/>
                                    </a>
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

                        
                        <iaixsl:otherwise>
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span><iaixsl:value-of select="page/@type"/></span>
                            </li>
                        </iaixsl:otherwise>
                    </iaixsl:choose>
                </ol>
                
            </div></div>
        
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
            <div class="setMobileGrid" data-item="#menu_navbar"/>
            <div class="setMobileGrid" data-item="#menu_navbar3"/>
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
        
                        </aside>
                    </iaixsl:if>
                    

                    
                    <iaixsl:if test="not(action/set_render/item) or (action/set_render/item/@name = 'content')">
                        <div id="content" class="span9">
                            <iaixsl:choose>
                                <iaixsl:when test="page/@type = 'projector'">
                                     <iaixsl:attribute name="class">col-12</iaixsl:attribute>
                                </iaixsl:when>
                                <iaixsl:when test="page/@type = 'search'">
                                     <iaixsl:attribute name="class">col-md-9 col-12</iaixsl:attribute>
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

                            <!--Postęp składania zamówienia (*mod) (menu_order_progress, 106607.1)-->
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

                    <div class="progress_bar_keeper">
                        <div class="progress_bar_outline">
                            <div class="progress_bar">
                                <div class="progress_bar_active_holder"><div class="active_holder_left"/><div class="active_holder_right"/><div class="progress_bar_active_holder_sub"/></div>



                                
                                <div class="progress_bar_item progress_bar_1 active">
                                    <div class="progress_bar_sub">
                                        <span>
                                            <strong><i class="icon-shopping-cart"></i><b>Your basket</b></strong>
                                        </span>
                                        <div class="n56354" data-mobile-class="hide">
                                            <span>
                                               Value:                                 
                                               <iaixsl:choose>
                                                <iaixsl:when test="(/shop/basket/@wholesaler = 'true') and not($wholesalerPrice_order_progress)">
                                                    <iaixsl:value-of select="basket/@cost_net_formatted"/>              
                                                </iaixsl:when>
                                                <iaixsl:otherwise>
                                                    <iaixsl:value-of select="basket/@cost_formatted"/> 
                                                </iaixsl:otherwise>
                                            </iaixsl:choose>                             

                                        </span>
                                    </div>
                                </div>
                            </div>
                            

                            <iaixsl:if test="not(basket/@login)">
                                
                                <div class="progress_bar_item progress_bar_2">
                                    <div class="progress_bar_sub">
                                        <span>
                                            <iaixsl:choose>
                                                <iaixsl:when test="navigation/@order_express_mode='true'">
                                                    <strong><i class="icon-file-text"></i><b>Your data</b></strong><span class="d-none d-md-block">Enter delivery information</span>
                                                </iaixsl:when>
                                                <iaixsl:otherwise>
                                                    <strong><i class="icon-file-text"></i><b>Your data</b></strong><span class="d-none d-md-block">Sign in or enter information manually</span>
                                                </iaixsl:otherwise>
                                            </iaixsl:choose>
                                        </span>
                                        <div class="progress_desc">
                                            <iaixsl:choose>
                                                <iaixsl:when test="navigation/@order_express_mode='true'">
                                                    
                                                </iaixsl:when>
                                                <iaixsl:otherwise>
                                                    
                                                </iaixsl:otherwise>
                                            </iaixsl:choose>
                                        </div>
                                    </div>
                                </div>
                                

                                
                                <div class="progress_bar_item progress_bar_3">
                                    <div class="progress_bar_sub">

                                        <span>
                                            <strong><i class="icon-truck"></i><b>Shipping and payments</b></strong><span class="d-none d-md-block">Select shipping and payment method</span>
                                        </span>
                                        <div class="progress_desc">
                                            
                                        </div>
                                    </div>
                                </div>
                                

                                
                                <div class="progress_bar_item progress_bar_4">
                                    <div class="progress_bar_sub">
                                        <span>
                                            <strong><i class="icon-comment"></i><b>Notes to order</b></strong><span class="d-none d-md-block">Please check again the correctness of the order, before placing it</span>
                                        </span>
                                        <div class="progress_desc">
                                            
                                        </div>
                                    </div>
                                </div>
                                

                            </iaixsl:if>

                            <iaixsl:if test="basket/@login">

                                
                                <div class="progress_bar_item progress_bar_2">
                                    <div class="progress_bar_sub">
                                        <span>
                                            <strong><i class="icon-truck"></i><b>Shipping and payments</b></strong><span class="d-none d-md-block">Select shipping and payment method</span>
                                        </span>
                                        <div class="progress_desc">
                                            
                                        </div>
                                    </div>
                                </div>
                                

                                
                                <div class="progress_bar_item progress_bar_3">
                                    <div class="progress_bar_sub">
                                        <span>
                                            <strong><i class="icon-comment"></i><b>Notes to order</b></strong><span class="d-none d-md-block">Please check again the correctness of the order, before placing it</span>
                                        </span>
                                        <div class="progress_desc">
                                            
                                        </div>
                                    </div>
                                </div>
                                

                                
                                <div class="progress_bar_item progress_bar_4">
                                    <div class="progress_bar_sub">
                                        <span>
                                            <strong><i class="icon-ok"></i><b>Order registration</b></strong><span class="d-none d-md-block">Order accepted</span>
                                        </span>
                                        <div class="progress_desc">
                                            
                                        </div>
                                    </div>
                                </div>
                                 
                            </iaixsl:if>

                        </div>
                    </div>
                </div>
            </iaixsl:when>

            
            
            <iaixsl:when test="page/@type='login' and page/login/onceorder/@display='y'">

                <iaixsl:if test="$cop_global_label">
                    <span class="big_label cop_global_label">
                        <iaixsl:value-of select="$cop_global_label"/>
                    </span>
                </iaixsl:if>

                <div class="progress_bar_keeper">
                    <div class="progress_bar_outline">
                        <div class="progress_bar">
                            <div class="progress_bar_active_holder"><div class="active_holder_left"/><div class="active_holder_right"/><div class="progress_bar_active_holder_sub"/></div>
                            
                            <div class="progress_bar_item progress_bar_1">
                                <div class="progress_bar_sub">
                                    <span>
                                        <strong><i class="icon-shopping-cart"></i><b>Your basket</b></strong>
                                    </span>
                                    <div class="n56354" data-mobile-class="hide">
                                        <span>
                                            Value:                                   
                                            <iaixsl:choose>
                                                <iaixsl:when test="(/shop/basket/@wholesaler = 'true')  and not($wholesalerPrice_order_progress)">
                                                    <iaixsl:value-of select="basket/@cost_net_formatted"/>              
                                                </iaixsl:when>
                                                <iaixsl:otherwise>
                                                    <iaixsl:value-of select="basket/@cost_formatted"/> 
                                                </iaixsl:otherwise>
                                            </iaixsl:choose>                        


                                        </span>
                                    </div>
                                </div>
                            </div>
                            
                            
                            <div class="progress_bar_item progress_bar_2 active">
                                <div class="progress_bar_sub">
                                    <span>
                                        <strong><i class="icon-file-text"></i><b>Your data</b></strong><span class="d-none d-md-block">Sign in or enter information manually</span>
                                    </span>
                                    <div class="progress_desc">
                                        
                                    </div>
                                </div>
                            </div>
                            
                            
                            <div class="progress_bar_item progress_bar_3">
                                <div class="progress_bar_sub">
                                    <span>
                                        <strong><i class="icon-truck"></i><b>Shipping and payments</b></strong><span class="d-none d-md-block">Select shipping and payment method</span>
                                    </span>
                                    <div class="progress_desc">
                                        
                                    </div>
                                </div>
                            </div>
                            
                            

                            <div class="progress_bar_item progress_bar_4">
                                <div class="progress_bar_sub">
                                    <span>
                                        <strong><i class="icon-comment"></i><b>Notes to order</b></strong><span class="d-none d-md-block">Please check again the correctness of the order, before placing it</span>
                                    </span>
                                    <div class="progress_desc">
                                        
                                    </div>
                                </div>
                            </div>
                            
                        </div>
                    </div>
                </div>
            </iaixsl:when>

            

            <iaixsl:when test="((page/@type = 'client-new') and not(page/client-data/@edit = 'true') and (page/client-data/@afterlogin = 'order'))">

                <iaixsl:if test="$cop_global_label">
                    <span class="big_label cop_global_label">
                        <iaixsl:value-of select="$cop_global_label"/>
                    </span>
                </iaixsl:if>

                <div class="progress_bar_keeper">
                    <div class="progress_bar_outline">
                        <div class="progress_bar">
                            <div class="progress_bar_active_holder"><div class="active_holder_left"/><div class="active_holder_right"/><div class="progress_bar_active_holder_sub"/></div>
                            
                            <div class="progress_bar_item progress_bar_1">
                                <div class="progress_bar_sub">
                                    <span>
                                        <strong><i class="icon-shopping-cart"></i><b>Your basket</b></strong>
                                    </span>
                                    <div class="n56354" data-mobile-class="hide">
                                        <span>
                                          Value:                                        
                                          <iaixsl:choose>
                                            <iaixsl:when test="(/shop/basket/@wholesaler = 'true') and not($wholesalerPrice_order_progress)">
                                                <iaixsl:value-of select="basket/@cost_net_formatted"/>              
                                            </iaixsl:when>
                                            <iaixsl:otherwise>
                                                <iaixsl:value-of select="basket/@cost_formatted"/> 
                                            </iaixsl:otherwise>
                                        </iaixsl:choose>                    



                                    </span>
                                </div>
                            </div>
                        </div>
                        
                        
                        <div class="progress_bar_item progress_bar_2 active">
                            <div class="progress_bar_sub">
                                <span>


                                    <strong><i class="icon-file-text"></i><b>Your data</b></strong><span class="d-none d-md-block">Enter delivery information</span>
                                </span>
                                <div class="progress_desc">
                                    
                                </div>
                            </div>
                        </div>
                        
                        
                        <div class="progress_bar_item progress_bar_3">
                            <div class="progress_bar_sub">
                                <span>
                                    <strong><i class="icon-truck"></i><b>Shipping and payments</b></strong><span class="d-none d-md-block">Select shipping and payment method</span>
                                </span>
                                <div class="progress_desc">
                                    
                                </div>
                            </div>
                        </div>
                        
                        
                        <div class="progress_bar_item progress_bar_4">
                            <div class="progress_bar_sub">
                                <span>
                                    <strong><i class="icon-comment"></i><b>Notes to order</b></strong><span class="d-none d-md-block">Please check again the correctness of the order, before placing it</span>
                                </span>
                                <div class="progress_desc">
                                    
                                </div>
                            </div>
                        </div>
                        
                    </div>
                </div>
            </div>
        </iaixsl:when>

        

        <iaixsl:when test="page/@type = 'order1'">

            <iaixsl:if test="$cop_global_label">
                <span class="big_label cop_global_label">
                    <iaixsl:value-of select="$cop_global_label"/>
                </span>
            </iaixsl:if>

            <div class="progress_bar_keeper">
                <div class="progress_bar_outline">
                    <div class="progress_bar">
                        <div class="progress_bar_active_holder"><div class="active_holder_left"/><div class="active_holder_right"/><div class="progress_bar_active_holder_sub"/></div>
                        
                        <div class="progress_bar_item progress_bar_1">
                            <div class="progress_bar_sub">
                                <span>
                                    <strong><i class="icon-shopping-cart"></i><b>Your basket</b></strong>
                                </span>
                                <div class="n56354" data-mobile-class="hide">
                                    <span>
                                     Value:                                
                                     <iaixsl:choose>
                                        <iaixsl:when test="(/shop/basket/@wholesaler = 'true') and not($wholesalerPrice_order_progress)">
                                            <iaixsl:value-of select="basket/@cost_net_formatted"/>              
                                        </iaixsl:when>
                                        <iaixsl:otherwise>
                                            <iaixsl:value-of select="basket/@cost_formatted"/> 
                                        </iaixsl:otherwise>
                                    </iaixsl:choose>                     

                                </span>
                            </div>
                        </div>
                    </div>
                    

                    
                    <div class="progress_bar_item progress_bar_2 active">
                        <div class="progress_bar_sub">
                            <span>
                                <strong><i class="icon-truck"></i><b>Shipping and payments</b></strong><span class="d-none d-md-block">Select shipping and payment method</span>
                            </span>
                            <div class="progress_desc">
                                
                            </div>
                        </div>
                    </div>
                    

                    
                    <div class="progress_bar_item progress_bar_3">
                        <div class="progress_bar_sub">
                            <span>
                                <strong><i class="icon-comment"></i><b>Notes to order</b></strong><span class="d-none d-md-block">Please check again the correctness of the order, before placing it</span>
                            </span>
                            <div class="progress_desc">
                                
                            </div>
                        </div>
                    </div>
                    


                    <iaixsl:choose>
                        <iaixsl:when test="not(basket/@login) and not(navigation/@order_express_mode='true')">    
                            
                            <div class="progress_bar_item progress_bar_4">
                                <div class="progress_bar_sub">
                                    <span>
                                        <strong><i class="icon-file-text"></i><b>Save data</b></strong><span class="d-none d-md-block">Remember the customer's information</span>
                                    </span>
                                    <div class="progress_desc">
                                        
                                    </div>
                                </div>
                            </div>
                             
                        </iaixsl:when>
                        <iaixsl:otherwise>
                            
                            <div class="progress_bar_item progress_bar_4">
                                <div class="progress_bar_sub">
                                    <span>
                                        <strong><i class="icon-ok"></i><b>Order registration</b></strong><span class="d-none d-md-block">Order accepted</span>
                                    </span>
                                    <div class="progress_desc">
                                        
                                    </div>
                                </div>
                            </div>
                             

                        </iaixsl:otherwise>
                    </iaixsl:choose>
                </div>
            </div>
        </div>
    </iaixsl:when>



    

    <iaixsl:when test="page/@type = 'order-nonstandardized'">

        <iaixsl:if test="$cop_global_label">
            <span class="big_label cop_global_label">
                <iaixsl:value-of select="$cop_global_label"/>
            </span>
        </iaixsl:if>

        <div class="progress_bar_keeper">
            <div class="progress_bar_outline">
                <div class="progress_bar">
                    <div class="progress_bar_active_holder"><div class="active_holder_left"/><div class="active_holder_right"/><div class="progress_bar_active_holder_sub"/></div>
                    
                    <div class="progress_bar_item progress_bar_1">
                        <div class="progress_bar_sub">
                            <span>
                                <strong><i class="icon-shopping-cart"></i><b>Your basket</b></strong>
                            </span>
                            <div class="n56354" data-mobile-class="hide">
                                <span>
                                    Value:                                          
                                    <iaixsl:choose>
                                        <iaixsl:when test="(/shop/basket/@wholesaler = 'true') and not($wholesalerPrice_order_progress)">
                                            <iaixsl:value-of select="basket/@cost_net_formatted"/>              
                                        </iaixsl:when>
                                        <iaixsl:otherwise>
                                            <iaixsl:value-of select="basket/@cost_formatted"/> 
                                        </iaixsl:otherwise>
                                    </iaixsl:choose>                         

                                </span>
                            </div>
                        </div>
                    </div>
                    

                    
                    <div class="progress_bar_item progress_bar_2 active">
                        <div class="progress_bar_sub">
                            <span>
                                <strong><i class="icon-truck"></i><b>Shipping and payments</b></strong><span class="d-none d-md-block">Non standard orders</span>
                            </span>
                            <div class="progress_desc">
                                
                            </div>
                        </div>
                    </div>
                    

                    
                    <div class="progress_bar_item progress_bar_3">
                        <div class="progress_bar_sub">
                            <span>
                                <strong><i class="icon-comment"></i><b>Notes to order</b></strong><span class="d-none d-md-block">Please check again the correctness of the order, before placing it</span>
                            </span>
                            <div class="progress_desc">
                                
                            </div>
                        </div>
                    </div>
                    


                    <iaixsl:choose>
                        <iaixsl:when test="not(basket/@login) and not(navigation/@order_express_mode='true')">    
                            
                            <div class="progress_bar_item progress_bar_4">
                                <div class="progress_bar_sub">
                                    <span>
                                        <strong><i class="icon-file-text"></i><b>Save data</b></strong><span class="d-none d-md-block">Remember the customer's information</span>
                                    </span>
                                    <div class="progress_desc">
                                        
                                    </div>
                                </div>
                            </div>
                             
                        </iaixsl:when>
                        <iaixsl:otherwise>
                            
                            <div class="progress_bar_item progress_bar_4">
                                <div class="progress_bar_sub">
                                    <span>
                                        <strong><i class="icon-ok"></i><b>Order registration</b></strong><span class="d-none d-md-block">Order accepted</span>
                                    </span>
                                    <div class="progress_desc">
                                        
                                    </div>
                                </div>
                            </div>
                             

                        </iaixsl:otherwise>
                    </iaixsl:choose>
                </div>
            </div>
        </div>
    </iaixsl:when>






    

    <iaixsl:when test="page/@type = 'pickup-sites'">

        <iaixsl:if test="$cop_global_label">
            <span class="big_label cop_global_label">
                <iaixsl:value-of select="$cop_global_label"/>
            </span>
        </iaixsl:if>

        <div class="progress_bar_keeper">
            <div class="progress_bar_outline">
                <div class="progress_bar">
                    <div class="progress_bar_active_holder"><div class="active_holder_left"/><div class="active_holder_right"/><div class="progress_bar_active_holder_sub"/></div>
                    
                    <div class="progress_bar_item progress_bar_1">
                        <div class="progress_bar_sub">
                            <span>
                                <strong><i class="icon-shopping-cart"></i><b>Your basket</b></strong>
                            </span>
                            <div class="n56354" data-mobile-class="hide">
                                <span>
                                   Value:                                         
                                   <iaixsl:choose>
                                    <iaixsl:when test="(/shop/basket/@wholesaler = 'true') and not($wholesalerPrice_order_progress)">
                                        <iaixsl:value-of select="basket/@cost_net_formatted"/>              
                                    </iaixsl:when>
                                    <iaixsl:otherwise>
                                        <iaixsl:value-of select="basket/@cost_formatted"/> 
                                    </iaixsl:otherwise>
                                </iaixsl:choose>                   
                                
                                
                            </span>
                        </div>
                    </div>
                </div>
                

                
                <div class="progress_bar_item progress_bar_2 active">
                    <div class="progress_bar_sub">
                        <span>
                            <strong><i class="icon-truck"></i><b>Delivery and payments</b></strong><span class="d-none d-md-block">Select point of collection</span>
                        </span>
                        <div class="progress_desc">
                            
                        </div>
                    </div>
                </div>
                

                
                <div class="progress_bar_item progress_bar_3">
                    <div class="progress_bar_sub">
                        <span>
                            <strong><i class="icon-comment"></i><b>Notes to order</b></strong><span class="d-none d-md-block">Please check again the correctness of the order, before placing it</span>
                        </span>
                        <div class="progress_desc">
                            
                        </div>
                    </div>
                </div>
                


                <iaixsl:choose>
                    <iaixsl:when test="not(basket/@login) and not(navigation/@order_express_mode='true')">    
                        
                        <div class="progress_bar_item progress_bar_4">
                            <div class="progress_bar_sub">
                                <span>
                                    <strong><i class="icon-file-text"></i><b>Save data</b></strong><span class="d-none d-md-block">Remember the customer's information</span>
                                </span>
                                <div class="progress_desc">
                                    
                                </div>
                            </div>
                        </div>
                         
                    </iaixsl:when>
                    <iaixsl:otherwise>
                        
                        <div class="progress_bar_item progress_bar_4">
                            <div class="progress_bar_sub">
                                <span>
                                    <strong><i class="icon-ok"></i><b>Order registration</b></strong><span class="d-none d-md-block">Order accepted</span>
                                </span>
                                <div class="progress_desc">
                                    
                                </div>
                            </div>
                        </div>
                         

                    </iaixsl:otherwise>
                </iaixsl:choose>
            </div>
        </div>
    </div>
</iaixsl:when>



<iaixsl:when test="page/@type = 'order2'">

    <iaixsl:if test="$cop_global_label">
        <span class="big_label cop_global_label">
            <iaixsl:value-of select="$cop_global_label"/>
        </span>
    </iaixsl:if>

    <div class="progress_bar_keeper">
        <div class="progress_bar_outline">
            <div class="progress_bar">
                <div class="progress_bar_active_holder"><div class="active_holder_left"/><div class="active_holder_right"/><div class="progress_bar_active_holder_sub"/></div>
                
                <div class="progress_bar_item progress_bar_1">
                    <div class="progress_bar_sub">
                        <span>
                            <strong><i class="icon-shopping-cart"></i><b>Your basket</b></strong>
                        </span>
                        <div class="n56354" data-mobile-class="hide">
                            <span>

                              Value:                                        
                              <iaixsl:choose>
                                <iaixsl:when test="(/shop/basket/@wholesaler = 'true') and not($wholesalerPrice_order_progress)">
                                    <iaixsl:value-of select="basket/@cost_net_formatted"/>              
                                </iaixsl:when>
                                <iaixsl:otherwise>
                                    <iaixsl:value-of select="basket/@cost_formatted"/> 
                                </iaixsl:otherwise>
                            </iaixsl:choose>                                   

                        </span>
                    </div>
                </div>
            </div>
            

            
            <div class="progress_bar_item progress_bar_2">
                <div class="progress_bar_sub">
                    <span>
                        <strong><i class="icon-truck"></i><b>Shipping and payments</b></strong><span class="d-none d-md-block">Select shipping and payment method</span>
                    </span>
                    <div class="progress_desc">
                        
                    </div>
                </div>
            </div>
            

            
            <div class="progress_bar_item progress_bar_3 active">
                <div class="progress_bar_sub">
                    <span>
                        <strong><i class="icon-comment"></i><b>Notes to order</b></strong><span class="d-none d-md-block">Please check again the correctness of the order, before placing it</span>
                    </span>
                    <div class="progress_desc">
                        
                    </div>
                </div>
            </div>
            


            <iaixsl:choose>
                <iaixsl:when test="not(basket/@login) and not(navigation/@order_express_mode='true')">    
                    
                    <div class="progress_bar_item progress_bar_4">
                        <div class="progress_bar_sub">
                            <span>
                                <strong><i class="icon-file-text"></i><b>Save data</b></strong><span class="d-none d-md-block">Remember the customer's information</span>
                            </span>
                            <div class="progress_desc">
                                
                            </div>
                        </div>
                    </div>
                     
                </iaixsl:when>
                <iaixsl:otherwise>
                    
                    <div class="progress_bar_item progress_bar_4">
                        <div class="progress_bar_sub">
                            <span>
                                <strong><i class="icon-ok"></i><b>Order registration</b></strong><span class="d-none d-md-block">Order accepted</span>
                            </span>
                            <div class="progress_desc">
                                
                            </div>
                        </div>
                    </div>
                     

                </iaixsl:otherwise>
            </iaixsl:choose>
        </div>
    </div>
</div>
</iaixsl:when>



<iaixsl:when test="page/@type = 'client-save'">

    <iaixsl:if test="$cop_global_label">
        <span class="big_label cop_global_label">
            <iaixsl:value-of select="$cop_global_label"/>
        </span>
    </iaixsl:if>

    <div class="progress_bar_keeper">
        <div class="progress_bar_outline">
            <div class="progress_bar">
                <div class="progress_bar_active_holder"><div class="active_holder_left"/><div class="active_holder_right"/><div class="progress_bar_active_holder_sub"/></div>

                
                <div class="progress_bar_item progress_bar_1">
                    <div class="progress_bar_sub">
                        <span>
                            <strong><i class="icon-shopping-cart"></i><b>Your basket</b></strong>
                        </span>
                        <div class="n56354" data-mobile-class="hide">
                            <span>
                                Value:                                         
                                <iaixsl:choose>
                                    <iaixsl:when test="(/shop/basket/@wholesaler = 'true') and not($wholesalerPrice_order_progress)">
                                        <iaixsl:value-of select="basket/@cost_net_formatted"/>              
                                    </iaixsl:when>
                                    <iaixsl:otherwise>
                                        <iaixsl:value-of select="basket/@cost_formatted"/> 
                                    </iaixsl:otherwise>
                                </iaixsl:choose>                   

                                
                            </span>
                        </div>
                    </div>
                </div>
                

                
                <div class="progress_bar_item progress_bar_2">
                    <div class="progress_bar_sub">
                        <span>
                            <strong><i class="icon-comment"></i><b>Notes to order</b></strong><span class="d-none d-md-block">Please check again the correctness of the order, before placing it</span>
                        </span>
                        <div class="progress_desc">
                            
                        </div>
                    </div>
                </div>
                


                
                <div class="progress_bar_item progress_bar_3 active">
                    <div class="progress_bar_sub">
                        <span>
                            <strong><i class="icon-file-text"></i><b>Save data</b></strong><span class="d-none d-md-block">Remember the customer's information</span>
                        </span>
                        <div class="progress_desc">
                            
                        </div>
                    </div>
                </div>
                 

                
                <div class="progress_bar_item progress_bar_4">
                    <div class="progress_bar_sub">
                        <span>
                            <strong><i class="icon-ok"></i><b>Order registration</b></strong><span class="d-none d-md-block">Order accepted</span>
                        </span>
                        <div class="progress_desc">
                            
                        </div>
                    </div>
                </div>
                 

            </div>
        </div>
    </div>
</iaixsl:when>



<iaixsl:when test="page/@type = 'prepaid' and page/prepaid/details/@msg = 'order'">
    
    <iaixsl:if test="$cop_global_label">
        <span class="big_label cop_global_label">
            <iaixsl:value-of select="$cop_global_label"/>
        </span>
    </iaixsl:if>

    <div class="progress_bar_keeper">
        <div class="progress_bar_outline">
            <div class="progress_bar">
                <div class="progress_bar_active_holder"><div class="active_holder_left"/><div class="active_holder_right"/><div class="progress_bar_active_holder_sub"/></div>
                
                <div class="progress_bar_item progress_bar_1">
                    <div class="progress_bar_sub">
                        <span>
                            <strong><i class="icon-shopping-cart"></i><b>Your basket</b></strong>
                        </span>
                        <div class="n56354" data-mobile-class="hide">
                            <span>
                               Value:                                    
                               <iaixsl:choose>
                                <iaixsl:when test="(/shop/basket/@wholesaler = 'true') and not($wholesalerPrice_order_progress)">
                                    <iaixsl:value-of select="basket/@cost_net_formatted"/>              
                                </iaixsl:when>
                                <iaixsl:otherwise>
                                    <iaixsl:value-of select="basket/@cost_formatted"/> 
                                </iaixsl:otherwise>
                            </iaixsl:choose>                                   


                        </span>
                    </div>
                </div>
            </div>
            

            
            <div class="progress_bar_item progress_bar_2">
                <div class="progress_bar_sub">
                    <span>
                        <strong><i class="icon-truck"></i><b>Shipping and payments</b></strong><span class="d-none d-md-block">Select shipping and payment method</span>
                    </span>
                    <div class="progress_desc">
                        
                    </div>
                </div>
            </div>
            

            
            <div class="progress_bar_item progress_bar_3">
                <div class="progress_bar_sub">
                    <span>
                        <strong><i class="icon-comment"></i><b>Notes to order</b></strong><span class="d-none d-md-block">Please check again the correctness of the order, before placing it</span>
                    </span>
                    <div class="progress_desc">
                        
                    </div>
                </div>
            </div>
            

            <iaixsl:choose>
                <iaixsl:when test="page/prepaid/details/@msg = 'order'">
                    
                    <div class="progress_bar_item progress_bar_4 active">
                        <div class="progress_bar_sub">
                            <span>
                                <strong><i class="icon-ok"></i><b>Order placed</b></strong><span class="d-none d-md-block">Order status: </span>
                                <iaixsl:choose>
                                    <iaixsl:when test="(page/prepaid/details/@wykonane = 'n')"><span class="d-none d-md-block">received</span></iaixsl:when>
                                    <iaixsl:when test="(page/prepaid/details/@wykonane = 't')"><span class="d-none d-md-block">sent</span></iaixsl:when>
                                    <iaixsl:when test="(page/prepaid/details/@wykonane = 'i')"><span class="d-none d-md-block">rejected</span></iaixsl:when>
                                    <iaixsl:when test="(page/prepaid/details/@wykonane = 's')"><span class="d-none d-md-block">canceled</span></iaixsl:when>
                                    <iaixsl:when test="(page/prepaid/details/@wykonane = 'o')"><span class="d-none d-md-block">in progress</span></iaixsl:when>
                                    <iaixsl:when test="(page/prepaid/details/@wykonane = 'p')"><span class="d-none d-md-block">ready</span></iaixsl:when>
                                    <iaixsl:when test="(page/prepaid/details/@wykonane = 'h')"><span class="d-none d-md-block">hold</span></iaixsl:when>
                                    <iaixsl:when test="(page/prepaid/details/@wykonane = 'w')"><span class="d-none d-md-block">awaiting payment</span></iaixsl:when>
                                    <iaixsl:when test="(page/prepaid/details/@wykonane = 'd')"><span class="d-none d-md-block">awaiting delivery</span></iaixsl:when>
                                    <iaixsl:when test="(page/prepaid/details/@wykonane = 'z')"><span class="d-none d-md-block">return</span></iaixsl:when>
                                    <iaixsl:when test="(page/prepaid/details/@wykonane = 'k')"><span class="d-none d-md-block">canceled</span></iaixsl:when>
                                    <iaixsl:when test="(page/prepaid/details/@wykonane = 'r')"><span class="d-none d-md-block">complaint</span></iaixsl:when>
                                    <iaixsl:when test="(page/prepaid/details/@wykonane = 'j')"><span class="d-none d-md-block">merged</span></iaixsl:when>
                                    <iaixsl:when test="(page/prepaid/details/@wykonane = 'l')"><span class="d-none d-md-block">lost</span></iaixsl:when>
                                    <iaixsl:when test="(page/prepaid/details/@wykonane = 'a')"><span class="d-none d-md-block">in progress</span></iaixsl:when>
                                </iaixsl:choose>
                            </span>
                            <div class="progress_desc">
                                
                            </div>
                        </div>
                    </div>
                    
                </iaixsl:when>
                <iaixsl:otherwise>
                    
                    <div class="progress_bar_item progress_bar_4">
                        <div class="progress_bar_sub">
                            <span>
                                <strong><i class="icon-ok"></i><b>Order placed</b></strong><span class="d-none d-md-block">Order status: </span>
                                <span class="progress_bar_status">
                                    <iaixsl:choose>
                                        <iaixsl:when test="(page/prepaid/details/@wykonane = 'n')"><span class="d-none d-md-block">received</span></iaixsl:when>
                                        <iaixsl:when test="(page/prepaid/details/@wykonane = 't')"><span class="d-none d-md-block">sent</span></iaixsl:when>
                                        <iaixsl:when test="(page/prepaid/details/@wykonane = 'i')"><span class="d-none d-md-block">rejected</span></iaixsl:when>
                                        <iaixsl:when test="(page/prepaid/details/@wykonane = 's')"><span class="d-none d-md-block">canceled</span></iaixsl:when>
                                        <iaixsl:when test="(page/prepaid/details/@wykonane = 'o')"><span class="d-none d-md-block">in progress</span></iaixsl:when>
                                        <iaixsl:when test="(page/prepaid/details/@wykonane = 'p')"><span class="d-none d-md-block">ready</span></iaixsl:when>
                                        <iaixsl:when test="(page/prepaid/details/@wykonane = 'h')"><span class="d-none d-md-block">hold</span></iaixsl:when>
                                        <iaixsl:when test="(page/prepaid/details/@wykonane = 'w')"><span class="d-none d-md-block">awaiting payment</span></iaixsl:when>
                                        <iaixsl:when test="(page/prepaid/details/@wykonane = 'd')"><span class="d-none d-md-block">awaiting delivery</span></iaixsl:when>
                                        <iaixsl:when test="(page/prepaid/details/@wykonane = 'z')"><span class="d-none d-md-block">return</span></iaixsl:when>
                                        <iaixsl:when test="(page/prepaid/details/@wykonane = 'k')"><span class="d-none d-md-block">canceled</span></iaixsl:when>
                                        <iaixsl:when test="(page/prepaid/details/@wykonane = 'r')"><span class="d-none d-md-block">complaint</span></iaixsl:when>
                                        <iaixsl:when test="(page/prepaid/details/@wykonane = 'j')"><span class="d-none d-md-block">merged</span></iaixsl:when>
                                        <iaixsl:when test="(page/prepaid/details/@wykonane = 'l')"><span class="d-none d-md-block">lost</span></iaixsl:when>
                                        <iaixsl:when test="(page/prepaid/details/@wykonane = 'a')"><span class="d-none d-md-block">in progress</span></iaixsl:when>
                                    </iaixsl:choose>
                                </span>
                            </span>
                            <div class="progress_desc">
                                
                            </div>
                        </div>
                    </div>
                     

                </iaixsl:otherwise>
            </iaixsl:choose>
        </div>
    </div>
</div>
</iaixsl:when>




<iaixsl:when test="page/@type = 'order-payment'">

    <iaixsl:if test="$cop_global_label">
        <span class="big_label cop_global_label">
            <iaixsl:value-of select="$cop_global_label"/>
        </span>
    </iaixsl:if>

    <div class="progress_bar_keeper">
        <div class="progress_bar_outline">
            <div class="progress_bar">
                <div class="progress_bar_active_holder"><div class="active_holder_left"/><div class="active_holder_right"/><div class="progress_bar_active_holder_sub"/></div>
                
                <div class="progress_bar_item progress_bar_1">
                    <div class="progress_bar_sub">
                        <span>
                            <strong><i class="icon-shopping-cart"></i><b>Your basket</b></strong>
                        </span>
                        <div class="n56354" data-mobile-class="hide">
                            <span>
                                Value:                                         
                                <iaixsl:choose>
                                    <iaixsl:when test="(/shop/basket/@wholesaler = 'true') and not($wholesalerPrice_order_progress)">
                                        <iaixsl:value-of select="basket/@cost_net_formatted"/>              
                                    </iaixsl:when>
                                    <iaixsl:otherwise>
                                        <iaixsl:value-of select="basket/@cost_formatted"/> 
                                    </iaixsl:otherwise>
                                </iaixsl:choose>                               
                                
                                
                            </span>
                        </div>
                    </div>
                </div>
                

                
                <div class="progress_bar_item progress_bar_2">
                    <div class="progress_bar_sub">
                        <span>
                            <strong><i class="icon-truck"></i><b>Shipping and payments</b></strong><span class="d-none d-md-block">Select shipping and payment method</span>
                        </span>
                        <div class="progress_desc">
                            
                        </div>
                    </div>
                </div>
                

                
                <div class="progress_bar_item progress_bar_3">
                    <div class="progress_bar_sub">
                        <span>
                            <strong><i class="icon-comment"></i><b>Notes to order</b></strong><span class="d-none d-md-block">Please check again the correctness of the order, before placing it</span>
                        </span>
                        <div class="progress_desc">
                            
                        </div>
                    </div>
                </div>
                

                <iaixsl:choose>
                    <iaixsl:when test="page/order/@new = 'true'">
                        
                        <div class="progress_bar_item progress_bar_4 active">
                            <div class="progress_bar_sub">
                                <span>
                                    <strong><i class="icon-ok"></i><b>Order placed</b></strong>Order status:<span class="progress_bar_status">awaiting payment</span>
                                </span>
                                <div class="progress_desc">
                                    
                                </div>
                            </div>
                        </div>
                        
                    </iaixsl:when>
                    <iaixsl:otherwise>
                        
                        <div class="progress_bar_item progress_bar_4 active">
                            <div class="progress_bar_sub">
                                <span>
                                    <strong><i class="icon-ok"></i><b>Order placed</b></strong>Order status:<span class="progress_bar_status">awaiting payment</span>
                                </span>
                                <div class="progress_desc">
                                    
                                </div>
                            </div>
                        </div>
                         

                    </iaixsl:otherwise>
                </iaixsl:choose>
            </div>
        </div>
    </div>
</iaixsl:when>    



<iaixsl:when test="page/@type = 'order-newpayment'">

    <iaixsl:if test="$cop_global_label">
        <span class="big_label cop_global_label">
            <iaixsl:value-of select="$cop_global_label"/>
        </span>
    </iaixsl:if>
        
    <div class="progress_bar_keeper">
        <div class="progress_bar_outline">
            <div class="progress_bar">
                <div class="progress_bar_active_holder"><div class="active_holder_left"/><div class="active_holder_right"/><div class="progress_bar_active_holder_sub"/></div>
                
                <div class="progress_bar_item progress_bar_1">
                    <div class="progress_bar_sub">
                        <span>
                            <strong><i class="icon-shopping-cart"></i><b>Your basket</b></strong>
                        </span>
                        <div class="n56354" data-mobile-class="hide">
                            <span>
                               Value: 

                               <iaixsl:choose>
                                <iaixsl:when test="(/shop/basket/@wholesaler = 'true') and not($wholesalerPrice_order_progress)">
                                    <iaixsl:value-of select="basket/@cost_net_formatted"/>              
                                </iaixsl:when>
                                <iaixsl:otherwise>
                                    <iaixsl:value-of select="basket/@cost_formatted"/> 
                                </iaixsl:otherwise>
                            </iaixsl:choose>                                 


                        </span>
                    </div>
                </div>
            </div>
            

            
            <div class="progress_bar_item progress_bar_2">
                <div class="progress_bar_sub">
                    <span>
                        <strong><i class="icon-truck"></i><b>Shipping and payments</b></strong><span class="d-none d-md-block">Select shipping and payment method</span>
                    </span>
                    <div class="progress_desc">
                        
                    </div>
                </div>
            </div>
            

            
            <div class="progress_bar_item progress_bar_3">
                <div class="progress_bar_sub">
                    <span>
                        <strong><i class="icon-comment"></i><b>Notes to order</b></strong><span class="d-none d-md-block">Please check again the correctness of the order, before placing it</span>
                    </span>
                    <div class="progress_desc">
                        
                    </div>
                </div>
            </div>
            

            <iaixsl:choose>
                <iaixsl:when test="page/order/@new = 'true'">
                    
                    <div class="progress_bar_item progress_bar_4 active">
                        <div class="progress_bar_sub">
                            <span>
                                <strong><i class="icon-ok"></i><b>Order placed</b></strong>Order status:<span class="progress_bar_status">awaiting payment</span>
                            </span>
                            <div class="progress_desc">
                                
                            </div>
                        </div>
                    </div>
                    
                </iaixsl:when>
                <iaixsl:otherwise>
                    
                    <div class="progress_bar_item progress_bar_4">
                        <div class="progress_bar_sub">
                            <span>
                                <strong><i class="icon-ok"></i><b>Order placed</b></strong>Order status:<span class="progress_bar_status">awaiting payment</span>
                            </span>
                            <div class="progress_desc">
                                
                            </div>
                        </div>
                    </div>
                     

                </iaixsl:otherwise>
            </iaixsl:choose>
        </div>
    </div>
</div>
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


        <iaixsl:if test="count(/shop/page/communicates/message)">
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
                                <iaixsl:when test="@type='login_connect'">The form has been filled in with information provided by <iaixsl:value-of select="@value"/>. Check if the information is up-to-date and fill in the blank fields.</iaixsl:when>
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

        <!--Cms na stronę dodawania konta (client-new) (client_new_cms, 107668.1)-->
            <iaixsl:if test="page/text/body">
                <iaixsl:variable name="loginedit_cms_label">Additional information</iaixsl:variable>
                <div class="loginedit_cms">
                    <iaixsl:if test="$loginedit_cms_label and not($loginedit_cms_label = '')">
                        <div class="client_cms_label">
                            <span class="n53873_label">
                                <iaixsl:value-of select="$loginedit_cms_label"/>
                            </span>
                        </div>
                    </iaixsl:if>
                    <div class="loginedit_cms_sub cm">
                        <iaixsl:value-of disable-output-escaping="yes" select="page/text/body"/>
                    </div>
                </div>
            </iaixsl:if>
        <!--Social networking (client_new_social_networking, 110566.1)-->
        <iaixsl:if test="not(login_options/service[@connected='true'])">
            <iaixsl:choose>
                <iaixsl:when test="/shop/page/client-data">
                    <iaixsl:if test="count(login_options/service)>1 and not(/shop/page/client-data/@registerByExternalService='true')">
                        <div id="client_new_social">
                            <iaixsl:if test="page/client-data/@action = 'password_token'">
                                <iaixsl:attribute name="class">d-none</iaixsl:attribute>
                            </iaixsl:if>
                            <iaixsl:if test="/shop/page/client-data/@edit='true'">
                                <h2>
                                    <iaixsl:attribute name="class">big_label</iaixsl:attribute>
                                    Connect with an existing account in another service
                                </h2>
                            </iaixsl:if>
                            <iaixsl:if test="not(/shop/page/client-data/@edit='true')">
                                <h2>
                                    <iaixsl:attribute name="class">big_label</iaixsl:attribute>
                                    Connect with an existing account in another service
                                </h2>
                            </iaixsl:if>

                            <div class="client_new_social_sub">
                                <iaixsl:if test="not(page/client-data/@allow_register = 'false')">
                                    <iaixsl:if test="/shop/page/client-data/@edit='true'">
                                        <p></p>
                                    </iaixsl:if>
                                    <iaixsl:if test="not(/shop/page/client-data/@edit='true')">
                                        <p></p>
                                    </iaixsl:if>
                                </iaixsl:if>

                                <iaixsl:if test="page/client-data/@allow_register = 'false'">
                                    <div class="client_new_form_info" id="client_new_form_info">
                                        Sign in using one of the login methods listed below to finish registration.
                                    </div>
                                </iaixsl:if>

                                <iaixsl:if test="count(login_options/service)>1">
                                    <ul>
                                        <iaixsl:for-each select="login_options/service[not(@name='shop_register') and @login_url]">
                                            <li>
                                                <iaixsl:choose>
                                                    <iaixsl:when test="@login_url">
                                                        <a class="btn --outline --medium --icon-left service_item">
                                                            <iaixsl:attribute name="data-name">service_<iaixsl:value-of select="translate(@name, ' +', '_')"/></iaixsl:attribute>
                                                            <iaixsl:attribute name="href"><iaixsl:value-of select="@login_url"/></iaixsl:attribute>
                                                            <span><iaixsl:value-of select="@name"/></span>
                                                        </a>
                                                    </iaixsl:when>
                                                    <iaixsl:otherwise>
                                                        <strong class="btn --outline --medium --icon-left service_item">
                                                            <iaixsl:attribute name="data-name">service_<iaixsl:value-of select="translate(@name, ' +', '_')"/></iaixsl:attribute>
                                                            <iaixsl:attribute name="data-service"><iaixsl:value-of select="translate(@name, ' +', '_')"/></iaixsl:attribute>
                                                            <span><iaixsl:value-of select="@name"/></span>
                                                        </strong>
                                                    </iaixsl:otherwise>
                                                </iaixsl:choose>
                                            </li><iaixsl:text> </iaixsl:text>
                                        </iaixsl:for-each>
                                    </ul>

                                    
                                    
                                </iaixsl:if>
                            </div>
                        </div>
                    </iaixsl:if>
                </iaixsl:when>
            </iaixsl:choose>

            
            <iaixsl:choose>
                <iaixsl:when test="/shop/page/communicates/message/@type='login_connect'">
                    <div style="display:none;">
                        <div id="client_new_social_info">
                            <h2>Merging an account from the service<iaixsl:value-of select="/shop/page/communicates/message/@value"/></h2>
                            <strong>
                                We have successfully retrieved information about your account from<iaixsl:value-of select="/shop/page/communicates/message/@value"/>. <br/><br/>Fill out the required shipment details and finish the account registration.
                            </strong>
                            <button class="btn --solid --medium go_to_register_form" onclick="$('#dialog_close').click();">
                                Go to a registration form
                            </button>
                        </div>
                    </div>
                </iaixsl:when>

                <iaixsl:when test="/shop/page/communicates/message/@type='login_connected'">
                    <div style="display:none;">
                        <div id="client_new_social_info">
                            <h2>Merging an account from the service<iaixsl:value-of select="/shop/page/communicates/message/@value"/></h2>

                            <strong>
                                Your account in the shop has been successfully merged with an account from<iaixsl:value-of select="/shop/page/communicates/message/@value"/>. <br/><br/>Go to a registration form and check if your personal details are up-to-date

                            </strong>
                            <button class="btn --solid --medium go_to_register_form2" onclick="$('#dialog_close').click();">
                                 Go to a registration form
                            </button>
                        </div>
                    </div>
                </iaixsl:when>
            </iaixsl:choose>
        </iaixsl:if>
        <!--Formularz dodawania nowego klienta (client_new_form, 108535.1)-->

        <iaixsl:variable name="data_edit_blocked">Part of your data can be edited only by shop operator</iaixsl:variable>
        <iaixsl:variable name="n81519_order2_document_invoice"></iaixsl:variable>
        <iaixsl:variable name="mail_newsletter_active"><iaixsl:value-of select="/shop/page/client-data/contact_data/@mailing"/></iaixsl:variable>
        <iaixsl:variable name="sms_newsletter_active"><iaixsl:value-of select="/shop/page/client-data/contact_data/@send_sms"/></iaixsl:variable>

        
        <iaixsl:variable name="client_new_mode"><iaixsl:choose><iaixsl:when test="/shop/page/client-data/@edit='true'">edit</iaixsl:when><iaixsl:when test="/shop/page/client-data/@register='true'">register</iaixsl:when><iaixsl:when test="not(/shop/page/client-data/@edit='true')">onceorder</iaixsl:when></iaixsl:choose></iaixsl:variable>
        
        <iaixsl:variable name="is_firm"><iaixsl:choose><iaixsl:when test="(/shop/page/client-data/client_type/@type = 'firm') or (page/client-data/@operation = 'register-wholesale-add') or (page/client-data/@operation = 'edit-wholesale-add') or  (page/client-data/@operation = 'edit-wholesale-edit')">true</iaixsl:when><iaixsl:otherwise>false</iaixsl:otherwise></iaixsl:choose></iaixsl:variable>


        <script type="text/javascript" class="ajaxLoad">
            <iaixsl:if test="/shop/page/client-data/profile_data/@min_password_length and /shop/page/client-data/profile_data/@max_password_length">
                var ClNewPasswordLengthMin ="<iaixsl:value-of select="/shop/page/client-data/profile_data/@min_password_length"/>";
                var ClNewPasswordLengthMax ="<iaixsl:value-of select="/shop/page/client-data/profile_data/@max_password_length"/>";
            </iaixsl:if>
            var  is_firm = <iaixsl:value-of select="$is_firm"/>;
            var  client_new_mode = "<iaixsl:value-of select="$client_new_mode"/>";
        </script>

        <iaixsl:if test="page/client-data/@disallow_change_company_data = 'true'">
            <div class="menu_messages_message">
                <div class="menu_messages_message_sub">
                    <p>
                        <iaixsl:value-of select="$data_edit_blocked"/>
                    </p>
                </div>
            </div>
        </iaixsl:if>

        <form method="post" class="form-horizontal" id="client_new_form" enctype="multipart/form-data">
            <iaixsl:attribute name="class">form-horizontal
              
              <iaixsl:if test="not(/shop/page/client-data/invoice_data-list)">invoice_to_billingaddr</iaixsl:if>

              
              <iaixsl:if test="(/shop/page/client-data/delivery_data/@use = 'no')">
                deliver_to_billingaddr
              </iaixsl:if>
              type-<iaixsl:value-of select="$client_new_mode"/>
            </iaixsl:attribute>

            
            <input type="hidden" name="operation">
                <iaixsl:attribute name="value"><iaixsl:value-of select="/shop/page/client-data/@action"/></iaixsl:attribute>
            </input>
            <iaixsl:if test="/shop/page/client-data/wholesale_data/@id">
                <input type="hidden" name="appId">
                    <iaixsl:attribute name="value"><iaixsl:value-of select="/shop/page/client-data/wholesale_data/@id"/></iaixsl:attribute>
                </input>
            </iaixsl:if>



            
            <iaixsl:if test="(page/client-data/@operation = 'register-wholesale-add') or (page/client-data/@operation = 'edit-wholesale-add') or (page/client-data/@operation = 'edit-wholesale-edit')">
                <div class="row clearfix wholesale_box">
                    <div class="col-12">
                        <h2 class="big_label" id="wholesale_header">
                            Wholesaler registration form
                        </h2>
                    </div>
                    <div class="col-12">
                        <div class="wholesale_box cn_wrapper">

                            
                            <div class="form-group">
                                <label class="control-label">
                                    <iaixsl:choose>
                                        <iaixsl:when test="/shop/contact/owner/@vat_registered = 'false' and $n81519_order2_document_invoice !=''">
                                            
                                        </iaixsl:when>
                                        <iaixsl:otherwise>
                                            Invoices:
                                        </iaixsl:otherwise>
                                    </iaixsl:choose>
                                </label>
                                <div class="form-control-static">
                                    <label class="radio-inline">
                                        <input id="client_vat_payer_k" name="client_vat_payer" type="radio" value="k">
                                            <iaixsl:if test="/shop/page/client-data/wholesale_data/@vat_payer='k'"><iaixsl:attribute name="checked">checked</iaixsl:attribute></iaixsl:if>
                                        </input>
                                        domestic
                                    </label>

                                    <label class="radio-inline">
                                        <input id="client_vat_payer_w" name="client_vat_payer" type="radio" value="w">
                                            <iaixsl:if test="/shop/page/client-data/wholesale_data/@vat_payer='w'"><iaixsl:attribute name="checked">checked</iaixsl:attribute></iaixsl:if>
                                        </input>
                                        european commonwealth
                                    </label>

                                    <label class="radio-inline">
                                        <input id="client_vat_payer_e" name="client_vat_payer" type="radio" value="e">
                                            <iaixsl:if test="/shop/page/client-data/wholesale_data/@vat_payer='e'"><iaixsl:attribute name="checked">checked</iaixsl:attribute></iaixsl:if>
                                        </input>
                                        export
                                    </label>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="has-feedback">
                                    <textarea class="form-control" rows="3" id="client_description" name="client_description"><iaixsl:value-of select="/shop/page/client-data/wholesale_data/@description"/></textarea>
                                    <label for="client_description" class="control-label">
                                        Activity description:
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-12">
                        <div class="wholesale_box cn_wrapper">
                            <div class="form-group">
                                <label for="client_attachment1" class="control-label">
                                    Attachment 1 <small>(max 10MB)</small>:
                                </label>
                                <div class="form-control-static">
                                    <input id="client_attachment1" type="file" name="client_attachment1" size="14">
                                        <iaixsl:if test="/shop/form_data/upload_file/max_filesize/@bytes">
                                            <iaixsl:attribute name="data-max_filesize"><iaixsl:value-of select="/shop/form_data/upload_file/max_filesize/@bytes"/></iaixsl:attribute>
                                        </iaixsl:if>
                                    </input>
                                    <iaixsl:if test="/shop/page/client-data/wholesale_data/@file1_link">
                                        <p class="help-block">
                                            [
                                            <a>
                                                <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/page/client-data/wholesale_data/@file1_link"/></iaixsl:attribute>
                                                view
                                            </a>
                                            ]
                                        </p>
                                    </iaixsl:if>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="client_attachment2" class="control-label">
                                    Attachment 2 <small>(max 10MB)</small>:
                                </label>
                                <div class="form-control-static">
                                    <input id="client_attachment2" type="file" name="client_attachment2" size="14">
                                        <iaixsl:if test="/shop/form_data/upload_file/max_filesize/@bytes">
                                            <iaixsl:attribute name="data-max_filesize"><iaixsl:value-of select="/shop/form_data/upload_file/max_filesize/@bytes"/></iaixsl:attribute>
                                        </iaixsl:if>
                                    </input>
                                    <iaixsl:if test="/shop/page/client-data/wholesale_data/@file2_link">
                                        <p class="help-block">
                                            [
                                            <a>
                                                <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/page/client-data/wholesale_data/@file2_link"/></iaixsl:attribute>
                                                view
                                            </a>
                                            ]
                                        </p>
                                    </iaixsl:if>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="client_attachment3" class="control-label">
                                    Attachment 3 <small>(max 10MB)</small>:
                                </label>
                                <div class="form-control-static">
                                    <input id="client_attachment3" type="file" name="client_attachment3" size="14">
                                        <iaixsl:if test="/shop/form_data/upload_file/max_filesize/@bytes">
                                            <iaixsl:attribute name="data-max_filesize"><iaixsl:value-of select="/shop/form_data/upload_file/max_filesize/@bytes"/></iaixsl:attribute>
                                        </iaixsl:if>
                                    </input>
                                    <iaixsl:if test="/shop/page/client-data/wholesale_data/@file3_link">
                                        <p class="help-block">
                                            [
                                            <a>
                                                <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/page/client-data/wholesale_data/@file3_link"/></iaixsl:attribute>
                                                view
                                            </a>
                                            ]
                                        </p>
                                    </iaixsl:if>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </iaixsl:if>


            
            <div class="row clearfix">
                <div class="col-12" id="client_new_client">

                    <h2 class="big_label" id="client_header">
                      Billing and shipping information
                    </h2>

                    <iaixsl:choose>
                        <iaixsl:when test="/shop/page/client-data/@operation = 'register' and /shop/action/registration_options/wholesale">
                            <div class="cn_wrapper choose_other_form">
                                <i class="icon-wholesaler-register"></i> Are you a wholesaler? Use the <a>
                                    <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/registration_options/wholesale/@registration_url"/></iaixsl:attribute>
                                    <iaixsl:attribute name="title">Click to go to the registration form for wholesalers</iaixsl:attribute>
                                    registration form for wholesalers
                                </a>
                            </div>
                        </iaixsl:when>
                        <iaixsl:when test="/shop/page/client-data/@operation = 'register-wholesale-add' and /shop/action/registration_options/retail">
                            <div class="cn_wrapper choose_other_form">
                                <i class="icon-register-card"></i> Are you a retail customer? Use the <a>
                                    <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/registration_options/retail/@registration_url"/></iaixsl:attribute>
                                    <iaixsl:attribute name="title">Click to go to the registration form for retailers</iaixsl:attribute>
                                    simplified registration form
                                </a>
                            </div>
                        </iaixsl:when>
                    </iaixsl:choose>

                    <div class="client_box cn_wrapper">
                        <iaixsl:if test="not((page/client-data/@operation = 'register-wholesale-add') or (page/client-data/@operation = 'edit-wholesale-add') or  (page/client-data/@operation = 'edit-wholesale-edit')) or (page/client-data/@disallow_change_company_data = 'false')">
                            <div class="form-group firm_switcher">
                                <label class="control-label">
                                    Ordering as:
                                </label>
                                <div class="form-control-static">
                                    <label class="radio-inline">
                                        <input type="radio" id="client_type2" value="private" name="client_type">
                                            <iaixsl:if test="$is_firm = 'false'">
                                                <iaixsl:attribute name="checked">checked</iaixsl:attribute>
                                            </iaixsl:if>
                                        </input>Individual
                                    </label>
                                    <label class="radio-inline">
                                        <input type="radio" id="client_type1" value="firm" name="client_type">
                                            <iaixsl:if test="$is_firm = 'true'">
                                                <iaixsl:attribute name="checked">checked</iaixsl:attribute>
                                            </iaixsl:if>
                                        </input>Company
                                    </label>
                                </div>
                            </div>

                            <div class="form-group firm-group">
                                <iaixsl:if test="$is_firm = 'false'"><iaixsl:attribute name="style">display:none;</iaixsl:attribute></iaixsl:if>
                                <iaixsl:if test="page/client-data/@disallow_change_company_data = 'true'"><iaixsl:attribute name="class">form-group firm-group readonly</iaixsl:attribute></iaixsl:if>

                                <div class="row">
                                    
                                    <div class="has-feedback has-required col-sm-6 col-12">
                                        <iaixsl:if test="/shop/page/client-data/nip/@active = 'hide'"><iaixsl:attribute name="class">has-feedback has-required col-12</iaixsl:attribute></iaixsl:if>
                                        <input type="text" class="form-control validate" name="client_firm" id="client_firm">
                                            <iaixsl:if test="not(/shop/page/client-data/invoice_data/@firm = '')"><iaixsl:attribute name="class">form-control validate focused</iaixsl:attribute></iaixsl:if>
                                            <iaixsl:attribute name="required">required</iaixsl:attribute>
                                            <iaixsl:attribute name="maxlength"><iaixsl:value-of select="/shop/page/input_option/@additional"/></iaixsl:attribute>
                                            <iaixsl:attribute name="value"><iaixsl:value-of select="/shop/page/client-data/invoice_data/@firm"/></iaixsl:attribute>
                                            <iaixsl:if test="$is_firm = 'false'"><iaixsl:attribute name="disabled">disabled</iaixsl:attribute></iaixsl:if>
                                            
                                            <iaixsl:if test="page/client-data/@disallow_change_company_data = 'true'"><iaixsl:attribute name="readonly">readonly</iaixsl:attribute></iaixsl:if>
                                        </input>
                                        <label for="client_firm" class="control-label">
                                            Company name
                                        </label>
                                        <span class="form-control-feedback"/>
                                    </div>

                                    
                                    <iaixsl:if test="/shop/page/client-data/nip/@active != 'hide'">
                                        <div>
                                            <iaixsl:attribute name="class">has-feedback <iaixsl:if test="/shop/page/client-data/nip/@active = 'required'">has-required </iaixsl:if>col-sm-6 col-12</iaixsl:attribute>
                                            <input type="text" class="form-control validate" name="client_nip" id="client_nip" data-serialize="#client_region">
                                                <iaixsl:if test="not(/shop/page/client-data/invoice_data/@nip = '')"><iaixsl:attribute name="class">form-control validate focused</iaixsl:attribute></iaixsl:if>
                                                <iaixsl:if test="/shop/page/client-data/nip/@active = 'required'"><iaixsl:attribute name="required">required</iaixsl:attribute></iaixsl:if>
                                                <iaixsl:attribute name="maxlength"><iaixsl:value-of select="/shop/page/input_option/@tax_number"/></iaixsl:attribute>
                                                <iaixsl:attribute name="value"><iaixsl:value-of select="/shop/page/client-data/invoice_data/@nip"/></iaixsl:attribute>
                                                <iaixsl:if test="$is_firm = 'false'"><iaixsl:attribute name="disabled">disabled</iaixsl:attribute></iaixsl:if>
                                                <iaixsl:if test="page/client-data/@disallow_change_company_data = 'true'"><iaixsl:attribute name="readonly">readonly</iaixsl:attribute></iaixsl:if>
                                            </input>
                                            <label for="client_nip" class="control-label">
                                                VAT Number
                                            </label>
                                            <span class="form-control-feedback"/>
                                        </div>
                                    </iaixsl:if>
                                </div>
                            </div>
                        </iaixsl:if>


                        <div class="form-group">
                            <iaixsl:if test="page/client-data/@disallow_change_company_data = 'true'">
                                <iaixsl:attribute name="class">form-group readonly</iaixsl:attribute>
                            </iaixsl:if>
                            <div class="row">
                                
                                <div class="has-feedback has-required col-sm-6 col-12">
                                    <input id="client_firstname" type="text" class="form-control validate" name="client_firstname">
                                        <iaixsl:if test="not(/shop/page/client-data/invoice_data/@firstname = '')"><iaixsl:attribute name="class">form-control validate focused</iaixsl:attribute></iaixsl:if>
                                        <iaixsl:attribute name="maxlength"><iaixsl:value-of select="/shop/page/input_option/@name"/></iaixsl:attribute>
                                        <iaixsl:attribute name="value"><iaixsl:value-of select="/shop/page/client-data/invoice_data/@firstname"/></iaixsl:attribute>
                                        <iaixsl:if test="page/client-data/@disallow_change_company_data = 'true'"><iaixsl:attribute name="readonly">readonly</iaixsl:attribute></iaixsl:if>
                                        <iaixsl:attribute name="required">required</iaixsl:attribute>
                                    </input>
                                    <label for="client_firstname" class="control-label">
                                        Name
                                    </label>
                                    <span class="form-control-feedback"/>
                                </div>

                                
                                <div class="has-feedback has-required col-sm-6 col-12">
                                    <input id="client_lastname" type="text" class="form-control validate" name="client_lastname">
                                        <iaixsl:if test="not(/shop/page/client-data/invoice_data/@lastname = '')"><iaixsl:attribute name="class">form-control validate focused</iaixsl:attribute></iaixsl:if>
                                        <iaixsl:attribute name="maxlength"><iaixsl:value-of select="/shop/page/input_option/@lastname"/></iaixsl:attribute>
                                        <iaixsl:attribute name="value"><iaixsl:value-of select="/shop/page/client-data/invoice_data/@lastname"/></iaixsl:attribute>
                                        <iaixsl:if test="page/client-data/@disallow_change_company_data = 'true'"><iaixsl:attribute name="readonly">readonly</iaixsl:attribute></iaixsl:if>
                                        <iaixsl:if test="/shop/page/client-data/profile_data/@mandatory_lastname = 'true'"><iaixsl:attribute name="required">required</iaixsl:attribute></iaixsl:if>
                                    </input>
                                    <label for="client_lastname" class="control-label">
                                        Surname
                                    </label>
                                    <span class="form-control-feedback"/>
                                </div>
                            </div>
                        </div>

                        
                        <iaixsl:if test="(/shop/page/client-data/client_type/@active != 'n') and not(/shop/page/client-data/client_type/@type = 'firm')">
                            <div class="form-group" id="client_sex">
                                <iaixsl:if test="page/client-data/@disallow_change_company_data = 'true'"><iaixsl:attribute name="class">form-group readonly</iaixsl:attribute></iaixsl:if>
                                <label class="control-label">
                                    Sex</label>
                                <div class="form-control-static">
                                    <label class="radio-inline">
                                        <input type="radio" name="client_sex" id="client_sex_male" value="male">
                                            <iaixsl:if test="(/shop/page/client-data/client_type/@type = 'male')"><iaixsl:attribute name="checked">checked</iaixsl:attribute></iaixsl:if>
                                            <iaixsl:if test="page/client-data/@disallow_change_company_data = 'true'"><iaixsl:attribute name="readonly">readonly</iaixsl:attribute></iaixsl:if>
                                            <iaixsl:attribute name="required">required</iaixsl:attribute>
                                        </input>Male
                                    </label>
                                    <label class="radio-inline">
                                        <input type="radio" name="client_sex" id="client_sex_male" value="female">
                                            <iaixsl:if test="(/shop/page/client-data/client_type/@type = 'female')"><iaixsl:attribute name="checked">checked</iaixsl:attribute></iaixsl:if>
                                            <iaixsl:if test="page/client-data/@disallow_change_company_data = 'true'"><iaixsl:attribute name="readonly">readonly</iaixsl:attribute></iaixsl:if>
                                            <iaixsl:attribute name="required">required</iaixsl:attribute>
                                        </input>Female
                                    </label>
                                </div>
                            </div>
                        </iaixsl:if>

                        
                        <iaixsl:if test="/shop/page/client-data/birth_date/@active != 'hide'">
                            <div class="form-group row">
                                <iaixsl:if test="page/client-data/@disallow_change_company_data = 'true'"><iaixsl:attribute name="class">form-group readonly</iaixsl:attribute></iaixsl:if>
                                <div>
                                    <iaixsl:attribute name="class">has-feedback <iaixsl:if test="/shop/page/client-data/birth_date/@active='required'">has-required </iaixsl:if>col-12</iaixsl:attribute>
                                    <input id="birth_date" type="text" class="form-control validate" name="birth_date">
                                        <iaixsl:if test="not(/shop/page/client-data/birth_date/@date = '')"><iaixsl:attribute name="class">form-control validate focused</iaixsl:attribute></iaixsl:if>
                                        <iaixsl:attribute name="maxlength"><iaixsl:value-of select="/shop/page/input_option/@birthdate"/></iaixsl:attribute>
                                        <iaixsl:if test="/shop/page/client-data/birth_date/@date != '0000-00-00'"><iaixsl:attribute name="value"><iaixsl:value-of select="/shop/page/client-data/birth_date/@date"/></iaixsl:attribute></iaixsl:if>
                                        <iaixsl:if test="page/client-data/@disallow_change_company_data = 'true'"><iaixsl:attribute name="readonly">readonly</iaixsl:attribute></iaixsl:if>
                                        <iaixsl:if test="/shop/page/client-data/birth_date/@active='required'"><iaixsl:attribute name="required">required</iaixsl:attribute></iaixsl:if>
                                    </input>
                                    <label for="birth_date" class="control-label">
                                        Date of birth
                                    </label>
                                    <span class="form-control-feedback"/>
                                </div>
                            </div>
                        </iaixsl:if>

                        
                        <div class="form-group row">
                            <iaixsl:if test="page/client-data/@disallow_change_company_data = 'true'"><iaixsl:attribute name="class">form-group row readonly</iaixsl:attribute></iaixsl:if>
                            <div class="has-feedback has-required col-12">
                                <input id="client_street" type="text" class="form-control validate" name="client_street" data-serialize="#client_region">
                                    <iaixsl:if test="not(/shop/page/client-data/invoice_data/@street = '')"><iaixsl:attribute name="class">form-control validate focused</iaixsl:attribute></iaixsl:if>
                                    <iaixsl:attribute name="maxlength"><iaixsl:value-of select="/shop/page/input_option/@addres"/></iaixsl:attribute>
                                    <iaixsl:attribute name="value"><iaixsl:value-of select="/shop/page/client-data/invoice_data/@street"/></iaixsl:attribute>
                                    <iaixsl:if test="page/client-data/@disallow_change_company_data = 'true'"><iaixsl:attribute name="readonly">readonly</iaixsl:attribute></iaixsl:if>
                                    <iaixsl:attribute name="required">required</iaixsl:attribute>
                                </input>
                                <label for="client_street" class="control-label">
                                    Street and no.
                                </label>
                                <span class="form-control-feedback"/>
                            </div>
                        </div>

                        <div class="form-group">
                            <iaixsl:if test="page/client-data/@disallow_change_company_data = 'true'"><iaixsl:attribute name="class">form-group readonly</iaixsl:attribute></iaixsl:if>
                            <div class="row">
                                
                                <div id="zipcode_wrapper" class="has-feedback has-required col-sm-6 col-12">
                                    <input id="client_zipcode" type="text" class="form-control validate" name="client_zipcode" data-serialize="#client_region">
                                        <iaixsl:if test="not(/shop/page/client-data/invoice_data/@zipcode = '')"><iaixsl:attribute name="class">form-control validate focused</iaixsl:attribute></iaixsl:if>
                                        <iaixsl:attribute name="maxlength"><iaixsl:value-of select="/shop/page/input_option/@zipcode"/></iaixsl:attribute>
                                        <iaixsl:attribute name="value"><iaixsl:value-of select="/shop/page/client-data/invoice_data/@zipcode"/></iaixsl:attribute>
                                        <iaixsl:if test="page/client-data/@disallow_change_company_data = 'true'"><iaixsl:attribute name="readonly">readonly</iaixsl:attribute></iaixsl:if>
                                        <iaixsl:attribute name="required">required</iaixsl:attribute>
                                    </input>
                                    <label for="client_zipcode" class="control-label">
                                        Postal code
                                    </label>
                                    <span class="form-control-feedback"/>
                                </div>

                                
                                <div id="city_wrapper" class="has-feedback has-required col-sm-6 col-12">
                                    <input id="client_city" type="text" class="form-control validate" name="client_city">
                                        <iaixsl:if test="not(/shop/page/client-data/invoice_data/@city = '')"><iaixsl:attribute name="class">form-control validate focused</iaixsl:attribute></iaixsl:if>
                                        <iaixsl:attribute name="maxlength"><iaixsl:value-of select="/shop/page/input_option/@city"/></iaixsl:attribute>
                                        <iaixsl:attribute name="value"><iaixsl:value-of select="/shop/page/client-data/invoice_data/@city"/></iaixsl:attribute>
                                        <iaixsl:if test="page/client-data/@disallow_change_company_data = 'true'"><iaixsl:attribute name="readonly">readonly</iaixsl:attribute></iaixsl:if>
                                        <iaixsl:attribute name="required">required</iaixsl:attribute>
                                    </input>
                                    <label for="client_city" class="control-label">
                                        City
                                    </label>
                                    <span class="form-control-feedback"/>
                                </div>
                            </div>

                        </div>

                        
                        <iaixsl:choose>
                            <iaixsl:when test="count(/shop/page/options/countries/country) = 1 and (/shop/page/options/countries/country/@id = 1143020003)">
                                
                                <input id="client_region" type="hidden" name="client_region">
                                    <iaixsl:attribute name="value"><iaixsl:value-of select="/shop/page/options/countries/country/@id"/></iaixsl:attribute>
                                    <iaixsl:attribute name="data-vat_company"><iaixsl:value-of select="/shop/page/options/countries/country/@vat_company"/></iaixsl:attribute>
                                    <iaixsl:attribute name="data-vat"><iaixsl:value-of select="/shop/page/options/countries/country/@vat"/></iaixsl:attribute>
                                </input>
                            </iaixsl:when>
                            <iaixsl:otherwise>
                                <div class="form-group row country">
                                    <iaixsl:if test="page/client-data/@disallow_change_company_data = 'true'"><iaixsl:attribute name="class">form-group row country readonly</iaixsl:attribute></iaixsl:if>
                                    <div class="has-feedback col-12">
                                        <select class="form-control delivery_countries focused" id="client_region" name="client_region" data-revalidate="#client_street,#client_zipcode">
                                            <iaixsl:if test="page/client-data/@disallow_change_company_data = 'true'"><iaixsl:attribute name="readonly">readonly</iaixsl:attribute></iaixsl:if>
                                            
                                            <iaixsl:for-each select="/shop/page/options/countries/country">
                                                <option>
                                                    <iaixsl:attribute name="value"><iaixsl:value-of select="@id"/></iaixsl:attribute>
                                                    <iaixsl:attribute name="data-vat_company"><iaixsl:value-of select="@vat_company"/></iaixsl:attribute>
                                                    <iaixsl:attribute name="data-vat"><iaixsl:value-of select="@vat"/></iaixsl:attribute>
                                                    <iaixsl:choose>
                                                        <iaixsl:when test="/shop/page/client-data/invoice_data/@region > 0">
                                                            <iaixsl:if test="@id = /shop/page/client-data/invoice_data/@region">
                                                                <iaixsl:attribute name="selected">selected</iaixsl:attribute>
                                                            </iaixsl:if>
                                                        </iaixsl:when>
                                                        <iaixsl:otherwise>
                                                            <iaixsl:if test="@selected = 'true'">
                                                                <iaixsl:attribute name="selected">selected</iaixsl:attribute>
                                                            </iaixsl:if>
                                                        </iaixsl:otherwise>
                                                    </iaixsl:choose>
                                                    <iaixsl:value-of select="@name"/>
                                                </option>
                                            </iaixsl:for-each>
                                        </select>
                                        <label for="client_region" class="control-label">
                                            Country
                                        </label>
                                    </div>
                                </div>
                            </iaixsl:otherwise>
                        </iaixsl:choose>

                        <iaixsl:for-each select="/shop/page/options/countries/country">
                            <iaixsl:if test="provinces/province">
                                <div class="form-group client_provinces" style="display: none;">
                                    <iaixsl:if test="@selected = 'true'"><iaixsl:attribute name="style">display: block;</iaixsl:attribute></iaixsl:if>
                                    <iaixsl:attribute name="id">client_region_<iaixsl:value-of select="@id"/></iaixsl:attribute>
                                    <iaixsl:if test="page/client-data/@disallow_change_company_data = 'true'"><iaixsl:attribute name="class">form-group client_provinces  readonly</iaixsl:attribute></iaixsl:if>
                                    <label for="client_province" class="control-label">
                                        <iaixsl:for-each select="province_types/type">
                                            <iaixsl:choose>
                                                <iaixsl:when test="text() = 'state'">State</iaixsl:when>
                                                <iaixsl:when test="text() = 'province'">Province</iaixsl:when>
                                                <iaixsl:when test="text() = 'territory'">Territory</iaixsl:when>
                                                <iaixsl:otherwise>Region</iaixsl:otherwise>
                                            </iaixsl:choose><iaixsl:if test="not(position() = last())">/</iaixsl:if></iaixsl:for-each>:
                                    </label>
                                    <div class="has-feedback col-12">
                                        <select class="form-control" name="client_province">
                                            <iaixsl:if test="page/client-data/@disallow_change_company_data = 'true'"><iaixsl:attribute name="readonly">readonly</iaixsl:attribute></iaixsl:if>
                                            <iaixsl:if test="not(@selected = 'true')"><iaixsl:attribute name="disabled">disabled</iaixsl:attribute></iaixsl:if>
                                            <iaixsl:attribute name="id">client_province_<iaixsl:value-of select="@id"/></iaixsl:attribute>
                                            
                                            <iaixsl:for-each select="provinces/province">
                                                <option>
                                                    <iaixsl:attribute name="value"><iaixsl:value-of select="@id"/></iaixsl:attribute>

                                                    <iaixsl:choose>
                                                        <iaixsl:when test="/shop/page/client-data/invoice_data/@province > 0">
                                                            <iaixsl:if test="@id = /shop/page/client-data/invoice_data/@province">
                                                                <iaixsl:attribute name="selected">selected</iaixsl:attribute>
                                                            </iaixsl:if>
                                                        </iaixsl:when>
                                                        <iaixsl:otherwise>
                                                            <iaixsl:if test="@selected = 'true'">
                                                                <iaixsl:attribute name="selected">selected</iaixsl:attribute>
                                                            </iaixsl:if>
                                                        </iaixsl:otherwise>
                                                    </iaixsl:choose>
                                                    <iaixsl:value-of select="@name"/>
                                                </option>
                                            </iaixsl:for-each>
                                        </select>
                                    </div>
                                </div>
                            </iaixsl:if>
                        </iaixsl:for-each>

                        <div class="form-group">
                            <div class="row">
                                
                                <div class="has-feedback has-required col-sm-6 col-12">
                                    <iaixsl:if test="not(/shop/page/client-data/contact_data/@mandatory_phone = 'true')">
                                        <iaixsl:attribute name="class">has-feedback col-sm-6 col-12</iaixsl:attribute>
                                    </iaixsl:if>
                                    <input id="client_phone" type="tel" class="form-control validate" name="client_phone" data-serialize="#client_region">
                                        <iaixsl:if test="not(/shop/page/client-data/contact_data/@phone = '')"><iaixsl:attribute name="class">form-control validate focused</iaixsl:attribute></iaixsl:if>
                                        <iaixsl:attribute name="value"><iaixsl:value-of select="/shop/page/client-data/contact_data/@phone"/></iaixsl:attribute>
                                        <iaixsl:if test="/shop/page/client-data/contact_data/@mandatory_phone = 'true'">
                                            <iaixsl:attribute name="required">required</iaixsl:attribute>
                                        </iaixsl:if>
                                    </input>
                                    <label for="client_phone" class="control-label">
                                        Phone number
                                    </label>
                                    <span class="form-control-feedback"/>
                                </div>

                                
                                <div class="has-feedback has-required col-sm-6 col-12">
                                    <iaixsl:if test="not(/shop/page/client-data/contact_data/@mandatory_email = 'true')">
                                        <iaixsl:attribute name="class">has-feedback col-12</iaixsl:attribute>
                                    </iaixsl:if>
                                    <input id="client_email" type="email" class="form-control validate" name="client_email">
                                        <iaixsl:if test="not(/shop/page/client-data/contact_data/@email = '')"><iaixsl:attribute name="class">form-control validate focused</iaixsl:attribute></iaixsl:if>
                                        <iaixsl:attribute name="value"><iaixsl:value-of select="/shop/page/client-data/contact_data/@email"/></iaixsl:attribute>
                                        <iaixsl:if test="/shop/page/client-data/contact_data/@mandatory_email = 'true'">
                                            <iaixsl:attribute name="required">required</iaixsl:attribute>
                                        </iaixsl:if>
                                    </input>
                                    <label for="client_email" class="control-label">
                                        E-mail
                                    </label>
                                    <span class="form-control-feedback"/>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-12" id="delivery_box_switcher">
                    <div class="cn_wrapper">
                        <div class="form-group row">
                            <input type="checkbox" name="deliver_to_billingaddr" id="deliver_to_billingaddr" value="0">
                                <iaixsl:if test="(/shop/page/client-data/delivery_data/@use = 'yes')"><iaixsl:attribute name="checked">checked</iaixsl:attribute></iaixsl:if>
                            </input>
                            <label for="deliver_to_billingaddr" class="control-label">
                                Delivery to another address:
                            </label>
                        </div>
                    </div>
                </div>

                <div class="col-12" id="client_new_additional">
                    <iaixsl:if test="/shop/page/options/countries/country[@selected='true']">
                        <iaixsl:attribute name="data-active-country"><iaixsl:value-of select="/shop/page/options/countries/country[@selected='true']/@id"/></iaixsl:attribute>
                    </iaixsl:if>

                    <iaixsl:if test="basket/@login">
                        <iaixsl:for-each select="page/client-data/addresses-list/address[@default = 'yes']">
                            <div class="additional_box cn_wrapper">
                                
                                <iaixsl:if test="count(/shop/page/client-data/addresses-list/address) > 1">
                                    <div class="form-group addresses_list_wrapper">
                                        <iaixsl:for-each select="/shop/page/client-data/addresses-list/address[@default = 'yes']">
                                            <input type="hidden" name="delivery_id" id="delivery_id" class="addresse_id"><iaixsl:attribute name="value"><iaixsl:value-of select="@id"/></iaixsl:attribute></input>
                                            <input type="hidden" name="default_delivery_id" id="default_delivery_id"><iaixsl:attribute name="value"><iaixsl:value-of select="@id"/></iaixsl:attribute></input>
                                        </iaixsl:for-each>
                                        <div class="col-12 px-0">
                                            <div class="dropdown cn_dropdown">
                                                <button class="btn --solid --icon-right icon-reorder dropdown-toggle" type="button" id="dropdownAdressMenu" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                                                    Select from address list
                                                </button>
                                                <ul class="dropdown-menu addresses-list" aria-labelledby="dropdownAdressMenu">
                                                    <iaixsl:for-each select="/shop/page/client-data/addresses-list/address">
                                                        <li>
                                                            <a>
                                                                <iaixsl:attribute name="data-wrapper">#client_new_additional</iaixsl:attribute>
                                                                <iaixsl:attribute name="data-id"><iaixsl:value-of select="@id"/></iaixsl:attribute>
                                                                <iaixsl:attribute name="data-zipcode"><iaixsl:value-of select="@zipcode"/></iaixsl:attribute>
                                                                <iaixsl:attribute name="data-phone"><iaixsl:value-of select="@phone"/></iaixsl:attribute>
                                                                <iaixsl:attribute name="data-region_id"><iaixsl:value-of select="@region_id"/></iaixsl:attribute>
                                                                <iaixsl:attribute name="data-country_name"><iaixsl:value-of select="@country_name"/></iaixsl:attribute>
                                                                <iaixsl:attribute name="data-removable"><iaixsl:value-of select="@removable"/></iaixsl:attribute>
                                                                <iaixsl:attribute name="data-editable"><iaixsl:value-of select="@editable"/></iaixsl:attribute>
                                                                <iaixsl:attribute name="data-used"><iaixsl:value-of select="@used"/></iaixsl:attribute>

                                                                <iaixsl:if test="@default = 'yes'"><iaixsl:attribute name="class">active</iaixsl:attribute></iaixsl:if>
                                                                <iaixsl:attribute name="href">#address_<iaixsl:value-of select="@id"/></iaixsl:attribute>
                                                                <span><iaixsl:if test="not(@additional = '')"><iaixsl:value-of select="@additional"/><iaixsl:text> </iaixsl:text></iaixsl:if><iaixsl:value-of select="@firstname"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="@lastname"/></span>
                                                                <span><iaixsl:value-of select="@street"/></span>
                                                                <span><iaixsl:value-of select="@zipcode"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="@city"/></span>

                                                                <span style="display:none">
                                                                    <span class="data-additional"><iaixsl:value-of select="@additional"/></span>
                                                                    <span class="data-firstname"><iaixsl:value-of select="@firstname"/></span>
                                                                    <span class="data-lastname"><iaixsl:value-of select="@lastname"/></span>
                                                                    <span class="data-street"><iaixsl:value-of select="@street"/></span>
                                                                    <span class="data-city"><iaixsl:value-of select="@city"/></span>
                                                                </span>
                                                            </a>
                                                        </li>
                                                    </iaixsl:for-each>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </iaixsl:if>

                                <div class="form-group">
                                    <div class="row">
                                        
                                        <div class="has-feedback has-required col-sm-6 col-12">
                                            <input id="additional_firstname" type="text" class="form-control validate focused" name="additional_firstname">
                                                <iaixsl:attribute name="value"><iaixsl:value-of select="@firstname"/></iaixsl:attribute>
                                                <iaixsl:if test="@editable = 'no'"><iaixsl:attribute name="disabled">disabled</iaixsl:attribute></iaixsl:if>
                                                <iaixsl:attribute name="required">required</iaixsl:attribute>
                                            </input>
                                            <label for="additional_firstname" class="control-label">
                                                Name
                                            </label>
                                            <span class="form-control-feedback"/>
                                        </div>

                                        
                                        <div class="has-feedback has-required col-sm-6 col-12">
                                            <iaixsl:if test="not(/shop/page/client-data/profile_data/@mandatory_lastname = 'true')">
                                                <iaixsl:attribute name="class">has-feedback col-sm-6 col-12</iaixsl:attribute>
                                            </iaixsl:if>
                                            <input id="additional_lastname" type="text" class="form-control validate focused" name="additional_lastname">
                                                <iaixsl:attribute name="value"><iaixsl:value-of select="@lastname"/></iaixsl:attribute>
                                                <iaixsl:if test="@editable = 'no'"><iaixsl:attribute name="disabled">disabled</iaixsl:attribute></iaixsl:if>
                                                <iaixsl:if test="/shop/page/client-data/profile_data/@mandatory_lastname = 'true'"><iaixsl:attribute name="required">required</iaixsl:attribute></iaixsl:if>
                                            </input>
                                            <label for="additional_lastname" class="control-label">
                                                Surname
                                            </label>
                                            <span class="form-control-feedback"/>
                                        </div>
                                    </div>
                                </div>

                                
                                <div class="form-group row">
                                    <div class="has-feedback col-12">
                                        <input id="additional_additional" type="text" class="form-control validate " name="additional_additional">
                                            <iaixsl:if test="not(@additional = '')"><iaixsl:attribute name="class">form-control validate focused</iaixsl:attribute></iaixsl:if>
                                            <iaixsl:attribute name="value"><iaixsl:value-of select="@additional"/></iaixsl:attribute>
                                            <iaixsl:if test="@editable = 'no'"><iaixsl:attribute name="disabled">disabled</iaixsl:attribute></iaixsl:if>
                                        </input>
                                        <label for="additional_additional" class="control-label">
                                            Company name
                                        </label>
                                        <span class="form-control-feedback"/>
                                    </div>
                                </div>

                                
                                <div class="form-group row">
                                    <div class="has-feedback has-required col-12">
                                        <input id="additional_street" type="text" class="form-control validate focused" name="additional_street" data-serialize="#additional_region">
                                            <iaixsl:attribute name="value"><iaixsl:value-of select="@street"/></iaixsl:attribute>
                                            <iaixsl:if test="@editable = 'no'"><iaixsl:attribute name="disabled">disabled</iaixsl:attribute></iaixsl:if>
                                            <iaixsl:attribute name="required">required</iaixsl:attribute>
                                        </input>
                                        <label for="additional_street" class="control-label">
                                            Street and number
                                        </label>
                                        <span class="form-control-feedback"/>
                                    </div>
                                </div>

                                
                                <div class="form-group">
                                    <div class="row">
                                        <div id="delivery_zipcode_wrapper" class="has-feedback has-required col-sm-6 col-12">
                                            <input id="additional_zipcode" type="text" class="form-control validate focused" name="additional_zipcode" data-serialize="#additional_region">
                                                <iaixsl:attribute name="value"><iaixsl:value-of select="@zipcode"/></iaixsl:attribute>
                                                <iaixsl:if test="@editable = 'no'"><iaixsl:attribute name="disabled">disabled</iaixsl:attribute></iaixsl:if>
                                                <iaixsl:attribute name="required">required</iaixsl:attribute>
                                            </input>
                                            <label for="additional_zipcode" class="control-label">
                                                Postal code
                                            </label>
                                            <span class="form-control-feedback"/>
                                        </div>
                                        <div id="delivery_city_wrapper" class="has-feedback has-required col-sm-6 col-12">
                                            <input id="additional_city" type="text" class="form-control validate focused" name="additional_city">
                                                <iaixsl:attribute name="value"><iaixsl:value-of select="@city"/></iaixsl:attribute>
                                                <iaixsl:if test="@editable = 'no'"><iaixsl:attribute name="disabled">disabled</iaixsl:attribute></iaixsl:if>
                                                <iaixsl:attribute name="required">required</iaixsl:attribute>
                                            </input>
                                            <label for="additional_city" class="control-label">
                                                City
                                            </label>
                                            <span class="form-control-feedback"/>
                                        </div>
                                    </div>
                                </div>

                                
                                <iaixsl:choose>
                                    <iaixsl:when test="count(/shop/page/options/countries/country) = 1 and (/shop/page/options/countries/country/@id = 1143020003)">
                                        
                                        <input id="additional_region" type="hidden" name="additional_region">
                                            <iaixsl:attribute name="value"><iaixsl:value-of select="/shop/page/options/countries/country/@id"/></iaixsl:attribute>
                                            <iaixsl:attribute name="data-vat_company"><iaixsl:value-of select="/shop/page/options/countries/country/@vat_company"/></iaixsl:attribute>
                                            <iaixsl:attribute name="data-vat"><iaixsl:value-of select="/shop/page/options/countries/country/@vat"/></iaixsl:attribute>
                                        </input>
                                    </iaixsl:when>
                                    <iaixsl:otherwise>
                                        <div class="form-group row country">
                                            <div class="has-feedback col-12">
                                                <select class="form-control delivery_countries focused" id="additional_region" name="additional_region" data-revalidate="#additional_street,#additional_zipcode">
                                                    <iaixsl:if test="@editable = 'no'"><iaixsl:attribute name="disabled">disabled</iaixsl:attribute></iaixsl:if>
                                                    <iaixsl:for-each select="/shop/page/options/countries/country">
                                                        <option>
                                                            <iaixsl:attribute name="value"><iaixsl:value-of select="@id"/></iaixsl:attribute>
                                                            <iaixsl:attribute name="data-vat_company"><iaixsl:value-of select="@vat_company"/></iaixsl:attribute>
                                                            <iaixsl:attribute name="data-vat"><iaixsl:value-of select="@vat"/></iaixsl:attribute>
                                                            <iaixsl:if test="@id = /shop/page/options/countries/@delivery_active ">
                                                                <iaixsl:attribute name="selected">selected</iaixsl:attribute>
                                                            </iaixsl:if>
                                                            <iaixsl:value-of select="@name"/>
                                                        </option>
                                                    </iaixsl:for-each>
                                                </select>
                                                <label for="additional_region" class="control-label">
                                                    Country
                                                </label>
                                            </div>
                                        </div>
                                    </iaixsl:otherwise>
                                </iaixsl:choose>

                                <iaixsl:variable name="default_province"><iaixsl:value-of select="@province"/></iaixsl:variable>
                                <iaixsl:variable name="editable_province"><iaixsl:value-of select="@editable"/></iaixsl:variable>
                                <iaixsl:for-each select="/shop/page/options/countries/country">
                                    <iaixsl:if test="provinces/province">
                                        <div class="form-group client_provinces" style="display: none;">
                                            <iaixsl:if test="@id = /shop/page/options/countries/@delivery_active"><iaixsl:attribute name="style">display: block;</iaixsl:attribute></iaixsl:if>
                                            <iaixsl:attribute name="id">additional_region_<iaixsl:value-of select="@id"/></iaixsl:attribute>
                                            <label for="additional_province" class="control-label">

                                                <iaixsl:for-each select="province_types/type">
                                                    <iaixsl:choose>
                                                        <iaixsl:when test="text() = 'state'">State</iaixsl:when>
                                                        <iaixsl:when test="text() = 'province'">Province</iaixsl:when>
                                                        <iaixsl:when test="text() = 'territory'">Territory</iaixsl:when>
                                                        <iaixsl:otherwise>Region</iaixsl:otherwise>
                                                    </iaixsl:choose><iaixsl:if test="not(position() = last())">/</iaixsl:if></iaixsl:for-each>:
                                            </label>
                                            <div>
                                                <iaixsl:attribute name="class"></iaixsl:attribute>

                                                <select class="form-control" name="additional_province">
                                                    <iaixsl:if test="not(@id = /shop/page/options/countries/@delivery_active)"><iaixsl:attribute name="disabled">disabled</iaixsl:attribute></iaixsl:if>
                                                    <iaixsl:if test="$editable_province = 'no'"><iaixsl:attribute name="disabled">disabled</iaixsl:attribute></iaixsl:if>

                                                    <iaixsl:for-each select="provinces/province">
                                                        <option>
                                                            <iaixsl:attribute name="value"><iaixsl:value-of select="@id"/></iaixsl:attribute>
                                                            <iaixsl:if test="@id = $default_province">
                                                                <iaixsl:attribute name="selected">selected</iaixsl:attribute>
                                                            </iaixsl:if>
                                                            <iaixsl:value-of select="@name"/>
                                                        </option>
                                                    </iaixsl:for-each>
                                                </select>
                                            </div>
                                        </div>
                                    </iaixsl:if>
                                </iaixsl:for-each>

                                
                                <div class="form-group row">
                                    <div class="has-feedback has-required col-12">
                                        <iaixsl:if test="not(/shop/page/client-data/contact_data/@mandatory_phone = 'true')">
                                            <iaixsl:attribute name="class">has-feedback col-12</iaixsl:attribute>
                                        </iaixsl:if>
                                        <input id="additional_phone" type="tel" class="form-control validate" name="additional_phone" data-serialize="#additional_region">
                                            <iaixsl:if test="not(@phone = '')"><iaixsl:attribute name="class">form-control validate focused</iaixsl:attribute></iaixsl:if>
                                            <iaixsl:attribute name="value"><iaixsl:value-of select="@phone"/></iaixsl:attribute>
                                            <iaixsl:if test="@editable = 'no'"><iaixsl:attribute name="disabled">disabled</iaixsl:attribute></iaixsl:if>
                                            <iaixsl:if test="/shop/page/client-data/contact_data/@mandatory_phone = 'true'">
                                                <iaixsl:attribute name="required">required</iaixsl:attribute>
                                            </iaixsl:if>
                                        </input>
                                        <label for="additional_phone" class="control-label">
                                            Phone number
                                        </label>
                                        <span class="form-control-feedback"/>
                                    </div>
                                </div>

                                <div class="form-group button-form">
                                    <div class="col-12 px-0">
                                        <button id="delete_delivery_address" class="btn --solid delete_address">
                                            <iaixsl:if test="not(@removable = 'yes')"><iaixsl:attribute name="style">display: none;</iaixsl:attribute></iaixsl:if>
                                            Delete the address
                                        </button>
                                        <button id="new_delivery_address" class="btn --solid new_address">
                                            Add a new address
                                        </button>
                                        <button id="save_delivery_address" type="submit" class="btn --solid save_address" style="display:none;">
                                            Save the address
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </iaixsl:for-each>
                    </iaixsl:if>

                    <iaixsl:if test="not(/shop/page/client-data/@edit = 'true') and (/shop/page/client-data/delivery_data/@use != 'hide')">
                        <div class="delivery_box cn_wrapper">
                            <iaixsl:for-each select="/shop/page/client-data/delivery_data">
                                <div class="form-group">
                                    <div class="row">
                                        
                                        <div class="has-feedback has-required col-sm-6 col-12">
                                            <input id="delivery_firstname" type="text" class="form-control validate" name="delivery_firstname">
                                                <iaixsl:attribute name="value"><iaixsl:value-of select="@firstname"/></iaixsl:attribute>
                                                <iaixsl:attribute name="maxlength"><iaixsl:value-of select="/shop/page/input_option/@name"/></iaixsl:attribute>
                                                <iaixsl:if test="@use = 'no'"><iaixsl:attribute name="disabled">disabled</iaixsl:attribute></iaixsl:if>
                                                <iaixsl:attribute name="required">required</iaixsl:attribute>
                                            </input>
                                            <label for="delivery_firstname" class="control-label">
                                                First name
                                            </label>
                                            <span class="form-control-feedback"/>
                                        </div>

                                        
                                        <div class="has-feedback has-required col-sm-6 col-12">
                                            <iaixsl:if test="/shop/page/client-data/profile_data/@mandatory_lastname = 'true'">
                                                <iaixsl:attribute name="class">has-feedback col-sm-6 col-12</iaixsl:attribute>
                                            </iaixsl:if>
                                            <input id="delivery_lastname" type="text" class="form-control validate" name="delivery_lastname">
                                                <iaixsl:attribute name="value"><iaixsl:value-of select="@lastname"/></iaixsl:attribute>
                                                <iaixsl:attribute name="maxlength"><iaixsl:value-of select="/shop/page/input_option/@name"/></iaixsl:attribute>
                                                <iaixsl:if test="@use = 'no'"><iaixsl:attribute name="disabled">disabled</iaixsl:attribute></iaixsl:if>
                                                <iaixsl:if test="/shop/page/client-data/profile_data/@mandatory_lastname = 'true'"><iaixsl:attribute name="required">required</iaixsl:attribute></iaixsl:if>
                                            </input>
                                            <label for="delivery_lastname" class="control-label">
                                                Surname
                                            </label>
                                            <span class="form-control-feedback"/>
                                        </div>
                                    </div>
                                </div>

                                
                                <div class="form-group row">
                                    <div class="has-feedback col-12">
                                        <input id="delivery_additional" type="text" class="form-control validate" name="delivery_additional">
                                            <iaixsl:attribute name="value"><iaixsl:value-of select="@additional"/></iaixsl:attribute>
                                            <iaixsl:attribute name="maxlength"><iaixsl:value-of select="/shop/page/input_option/@additional"/></iaixsl:attribute>
                                            <iaixsl:if test="@use = 'no'"><iaixsl:attribute name="disabled">disabled</iaixsl:attribute></iaixsl:if>
                                        </input>
                                        <label for="delivery_additional" class="control-label">
                                            Company name
                                        </label>
                                        <span class="form-control-feedback"/>
                                    </div>
                                </div>

                                
                                <div class="form-group row">
                                    <div class="has-feedback has-required col-12">
                                        <input id="delivery_street" type="text" class="form-control validate" name="delivery_street" data-serialize="#delivery_region">
                                            <iaixsl:attribute name="value"><iaixsl:value-of select="@street"/></iaixsl:attribute>
                                            <iaixsl:attribute name="maxlength"><iaixsl:value-of select="/shop/page/input_option/@addres"/></iaixsl:attribute>
                                            <iaixsl:if test="@use = 'no'"><iaixsl:attribute name="disabled">disabled</iaixsl:attribute></iaixsl:if>
                                            <iaixsl:attribute name="required">required</iaixsl:attribute>
                                        </input>
                                        <label for="delivery_street" class="control-label">
                                            Street and number
                                        </label>
                                        <span class="form-control-feedback"/>
                                    </div>
                                </div>

                                
                                <div class="form-group">
                                    <div class="row">
                                        <div id="new_delivery_zipcode_wrapper" class="has-feedback has-required col-sm-6 col-12">
                                            <input id="delivery_zipcode" type="text" class="form-control validate" name="delivery_zipcode" data-serialize="#delivery_region">
                                                <iaixsl:attribute name="value"><iaixsl:value-of select="@zipcode"/></iaixsl:attribute>
                                                <iaixsl:attribute name="maxlength"><iaixsl:value-of select="/shop/page/input_option/@zipcode"/></iaixsl:attribute>
                                                <iaixsl:if test="@use = 'no'"><iaixsl:attribute name="disabled">disabled</iaixsl:attribute></iaixsl:if>
                                                <iaixsl:attribute name="required">required</iaixsl:attribute>
                                            </input>
                                            <label for="delivery_zipcode" class="control-label">
                                                Postal code
                                            </label>
                                            <span class="form-control-feedback"/>
                                        </div>
                                        <div id="new_delivery_city_wrapper" class="has-feedback has-required col-sm-6 col-12">
                                            <input id="delivery_city" type="text" class="form-control validate" name="delivery_city">
                                                <iaixsl:attribute name="value"><iaixsl:value-of select="@city"/></iaixsl:attribute>
                                                <iaixsl:attribute name="maxlength"><iaixsl:value-of select="/shop/page/input_option/@city"/></iaixsl:attribute>
                                                <iaixsl:if test="@use = 'no'"><iaixsl:attribute name="disabled">disabled</iaixsl:attribute></iaixsl:if>
                                                <iaixsl:attribute name="required">required</iaixsl:attribute>
                                            </input>
                                            <label for="delivery_city" class="control-label">
                                                City
                                            </label>
                                            <span class="form-control-feedback"/>
                                        </div>
                                    </div>
                                </div>

                                
                                <iaixsl:choose>
                                    <iaixsl:when test="count(/shop/page/options/countries/country) = 1 and (/shop/page/options/countries/country/@id = 1143020003)">
                                        
                                        <input id="delivery_region" type="hidden" name="delivery_region">
                                            <iaixsl:attribute name="value"><iaixsl:value-of select="/shop/page/options/countries/country/@id"/></iaixsl:attribute>
                                            <iaixsl:attribute name="data-vat_company"><iaixsl:value-of select="/shop/page/options/countries/country/@vat_company"/></iaixsl:attribute>
                                            <iaixsl:attribute name="data-vat"><iaixsl:value-of select="/shop/page/options/countries/country/@vat"/></iaixsl:attribute>

                                            <iaixsl:if test="(/shop/page/client-data/delivery_data/@use = 'no')">
                                                <iaixsl:attribute name="disabled">disabled</iaixsl:attribute>
                                            </iaixsl:if>
                                        </input>
                                    </iaixsl:when>
                                    <iaixsl:otherwise>
                                        <div class="form-group row country">
                                            <div class="has-feedback col-12">
                                                <select class="form-control delivery_countries focused" id="delivery_region" name="delivery_region" data-revalidate="#delivery_street,#delivery_zipcode">
                                                    <iaixsl:if test="(/shop/page/client-data/delivery_data/@use = 'no')">
                                                        <iaixsl:attribute name="disabled">disabled</iaixsl:attribute>
                                                    </iaixsl:if>
                                                    <iaixsl:for-each select="/shop/page/options/countries/country">
                                                        <option>
                                                            <iaixsl:attribute name="value"><iaixsl:value-of select="@id"/></iaixsl:attribute>
                                                            <iaixsl:attribute name="data-vat_company"><iaixsl:value-of select="@vat_company"/></iaixsl:attribute>
                                                            <iaixsl:attribute name="data-vat"><iaixsl:value-of select="@vat"/></iaixsl:attribute>

                                                            <iaixsl:if test="(@id = /shop/page/client-data/delivery_data/@region) or (@selected = 'true')">
                                                                <iaixsl:attribute name="selected">selected</iaixsl:attribute>
                                                            </iaixsl:if>
                                                            <iaixsl:value-of select="@name"/>
                                                        </option>
                                                    </iaixsl:for-each>
                                                </select>
                                                <label for="delivery_region" class="control-label">
                                                    Country
                                                </label>
                                            </div>
                                        </div>
                                    </iaixsl:otherwise>
                                </iaixsl:choose>

                                <iaixsl:for-each select="/shop/page/options/countries/country">
                                    <iaixsl:if test="provinces/province">
                                        <div class="form-group client_provinces" style="display: none;">
                                            <iaixsl:attribute name="id">delivery_region_<iaixsl:value-of select="@id"/></iaixsl:attribute>
                                            <label for="delivery_province" class="control-label">
                                                <iaixsl:for-each select="province_types/type">
                                                    <iaixsl:choose>
                                                        <iaixsl:when test="text() = 'state'">State</iaixsl:when>
                                                        <iaixsl:when test="text() = 'province'">Province</iaixsl:when>
                                                        <iaixsl:when test="text() = 'territory'">Territory</iaixsl:when>
                                                        <iaixsl:otherwise>Region</iaixsl:otherwise>
                                                    </iaixsl:choose><iaixsl:if test="not(position() = last())">/</iaixsl:if></iaixsl:for-each>:
                                            </label>
                                            <div>
                                                <iaixsl:attribute name="class"></iaixsl:attribute>
                                                <select class="form-control" name="delivery_province">
                                                    <iaixsl:attribute name="disabled">disabled</iaixsl:attribute>
                                                    <iaixsl:for-each select="provinces/province">
                                                        <option>
                                                            <iaixsl:attribute name="value"><iaixsl:value-of select="@id"/></iaixsl:attribute>
                                                            <iaixsl:if test="(@id = /shop/page/client-data/invoice_data/@province) or (@selected = 'true')">
                                                                <iaixsl:attribute name="selected">selected</iaixsl:attribute>
                                                            </iaixsl:if>
                                                            <iaixsl:value-of select="@name"/>
                                                        </option>
                                                    </iaixsl:for-each>
                                                </select>
                                            </div>
                                        </div>
                                    </iaixsl:if>
                                </iaixsl:for-each>

                                
                                <div class="form-group row">
                                    <div class="has-feedback has-required col-12">
                                        <iaixsl:if test="not(/shop/page/client-data/contact_data/@mandatory_phone = 'true')">
                                            <iaixsl:attribute name="class">has-feedback col-12</iaixsl:attribute>
                                        </iaixsl:if>
                                        <input id="delivery_phone" type="text" class="form-control validate" name="delivery_phone" data-serialize="#delivery_region">
                                            <iaixsl:attribute name="value"><iaixsl:value-of select="@phone"/></iaixsl:attribute>
                                            <iaixsl:attribute name="maxlength"><iaixsl:value-of select="/shop/page/input_option/@phone"/></iaixsl:attribute>
                                            <iaixsl:if test="@use = 'no'"><iaixsl:attribute name="disabled">disabled</iaixsl:attribute></iaixsl:if>
                                            <iaixsl:if test="/shop/page/client-data/contact_data/@mandatory_phone = 'true'">
                                                <iaixsl:attribute name="required">required</iaixsl:attribute>
                                            </iaixsl:if>
                                        </input>
                                        <label for="delivery_phone" class="control-label">
                                            Phone number
                                        </label>
                                        <span class="form-control-feedback"/>
                                    </div>
                                </div>
                            </iaixsl:for-each>
                        </div>
                    </iaixsl:if>
                </div>

                
                <iaixsl:variable name="show_invoice_test"></iaixsl:variable>
                <iaixsl:if test="/shop/page/client-data/invoice_data/@allow_another_adress or $show_invoice_test = 'true'">
                    <div class="col-12" id="invoice_box_switcher">
                        <div class="cn_wrapper">
                            <div class="form-group row">
                                <input type="checkbox" name="invoice_to_billingaddr" id="invoice_to_billingaddr" value="0">
                                    <iaixsl:if test="/shop/page/client-data/invoice_data-list"><iaixsl:attribute name="checked">checked</iaixsl:attribute></iaixsl:if>
                                </input>
                                <label for="invoice_to_billingaddr" class="control-label">
                                    Invoice for other data: <!-- -->
                                </label>
                            </div>
                        </div>
                    </div>

                    <div class="col-12" id="client_new_invoice">
                        <div class="additional_box cn_wrapper">
                            <iaixsl:if test="count(/shop/page/client-data/invoice_data-list/address) > 1">
                                <div class="form-group addresses_list_wrapper">
                                    <iaixsl:for-each select="/shop/page/client-data/invoice_data-list/address[@default = 'yes']">
                                        <input type="hidden" name="invoice_id" id="invoice_id" class="addresse_id"><iaixsl:attribute name="value"><iaixsl:value-of select="@id"/></iaixsl:attribute></input>
                                        <input type="hidden" name="default_invoice_id" id="default_invoice_id"><iaixsl:attribute name="value"><iaixsl:value-of select="@id"/></iaixsl:attribute></input>
                                    </iaixsl:for-each>
                                    <div class="col-12 px-0">
                                        <div class="dropdown cn_dropdown">
                                            <button class="btn --solid --icon-right icon-reorder dropdown-toggle" type="button" id="dropdownAdressMenu" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                                                Select from address list
                                            </button>
                                            <ul class="dropdown-menu invoice_data-list" aria-labelledby="dropdownAdressMenu">
                                                <iaixsl:for-each select="/shop/page/client-data/invoice_data-list/address">
                                                    <li>
                                                        <a>
                                                        <iaixsl:attribute name="data-wrapper">#client_new_invoice</iaixsl:attribute>
                                                        <iaixsl:attribute name="data-id"><iaixsl:value-of select="@id"/></iaixsl:attribute>
                                                        <iaixsl:attribute name="data-zipcode"><iaixsl:value-of select="@zipcode"/></iaixsl:attribute>
                                                        <iaixsl:attribute name="data-phone"><iaixsl:value-of select="@phone"/></iaixsl:attribute>
                                                        <iaixsl:attribute name="data-region_id"><iaixsl:value-of select="@region_id"/></iaixsl:attribute>
                                                        <iaixsl:attribute name="data-country_name"><iaixsl:value-of select="@country_name"/></iaixsl:attribute>
                                                        <iaixsl:attribute name="data-removable"><iaixsl:value-of select="@removable"/></iaixsl:attribute>
                                                        <iaixsl:attribute name="data-editable"><iaixsl:value-of select="@editable"/></iaixsl:attribute>
                                                        <iaixsl:attribute name="data-used"><iaixsl:value-of select="@used"/></iaixsl:attribute>

                                                        <iaixsl:if test="@default = 'yes'"><iaixsl:attribute name="class">active</iaixsl:attribute></iaixsl:if>
                                                        <iaixsl:attribute name="href">#address_<iaixsl:value-of select="@id"/></iaixsl:attribute>
                                                        <span><iaixsl:if test="not(@additional = '')"><iaixsl:value-of select="@additional"/><iaixsl:text> </iaixsl:text></iaixsl:if><iaixsl:value-of select="@firstname"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="@lastname"/></span>
                                                        <span><iaixsl:value-of select="@street"/></span>
                                                        <span><iaixsl:value-of select="@zipcode"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="@city"/></span>

                                                        <span style="display:none">
                                                            <span class="data-additional"><iaixsl:value-of select="@additional"/></span>
                                                            <span class="data-firstname"><iaixsl:value-of select="@firstname"/></span>
                                                            <span class="data-lastname"><iaixsl:value-of select="@lastname"/></span>
                                                            <span class="data-street"><iaixsl:value-of select="@street"/></span>
                                                            <span class="data-city"><iaixsl:value-of select="@city"/></span>
                                                        </span>
                                                    </a>
                                                </li>
                                            </iaixsl:for-each>
                                        </ul>
                                    </div>
                                    </div>
                                </div>
                            </iaixsl:if>

                            
                            <div class="form-group row">
                                <div class="has-feedback has-required col-12">
                                    <input type="text" class="form-control validate" name="invoice_firm" id="invoice_firm">
                                        <iaixsl:attribute name="required">required</iaixsl:attribute>
                                        <iaixsl:attribute name="maxlength"><iaixsl:value-of select="/shop/page/input_option/@additional"/></iaixsl:attribute>
                                        <iaixsl:attribute name="value"><iaixsl:value-of select="/shop/page/client-data/invoice_data-list/address[@default = 'yes']/@additional"/></iaixsl:attribute>
                                        <iaixsl:if test="page/invoice-data/@disallow_change_company_data = 'true'"><iaixsl:attribute name="readonly">readonly</iaixsl:attribute></iaixsl:if>
                                    </input>
                                    <label for="invoice_firm" class="control-label">
                                        Company name
                                    </label>
                                    <span class="form-control-feedback"/>
                                </div>
                            </div>

                            
                            <iaixsl:if test="/shop/page/client-data/nip/@active != 'hide'">
                                <div class="form-group row">
                                    <iaixsl:if test="page/invoice-data/@disallow_change_company_data = 'true'"><iaixsl:attribute name="class">form-group readonly</iaixsl:attribute></iaixsl:if>
                                    <div>
                                        <iaixsl:attribute name="class">
                                            has-feedback <iaixsl:if test="/shop/page/invoice-data/nip/@active = 'required'">has-required </iaixsl:if>col-12
                                        </iaixsl:attribute>
                                        <input type="text" class="form-control validate" name="invoice_nip" id="invoice_nip" data-serialize="#invoice_region">
                                            <iaixsl:if test="/shop/page/client-data/nip/@active = 'required'">
                                                <iaixsl:attribute name="required">required</iaixsl:attribute>
                                            </iaixsl:if>
                                            <iaixsl:attribute name="maxlength"><iaixsl:value-of select="/shop/page/input_option/@tax_number"/></iaixsl:attribute>
                                            <iaixsl:attribute name="value"><iaixsl:value-of select="/shop/page/client-data/invoice_data-list/address[@default = 'yes']/@nip"/></iaixsl:attribute>
                                            <iaixsl:if test="page/invoice-data/@disallow_change_company_data = 'true'"><iaixsl:attribute name="readonly">readonly</iaixsl:attribute></iaixsl:if>
                                        </input>
                                        <label for="invoice_nip" class="control-label">
                                            VAT Number
                                        </label>
                                        <span class="form-control-feedback"/>
                                    </div>
                                </div>
                            </iaixsl:if>

                            <div class="form-group">
                                <iaixsl:if test="page/invoice-data/@disallow_change_company_data = 'true'">
                                <iaixsl:attribute name="class">form-group readonly</iaixsl:attribute>
                                </iaixsl:if>

                                <div class="row">
                                    
                                    <div class="has-feedback has-required col-sm-6 col-12">
                                        <input id="invoice_firstname" type="text" class="form-control validate" name="invoice_firstname">
                                            <iaixsl:attribute name="maxlength"><iaixsl:value-of select="/shop/page/input_option/@name"/></iaixsl:attribute>
                                            <iaixsl:attribute name="value"><iaixsl:value-of select="/shop/page/client-data/invoice_data-list/address[@default = 'yes']/@firstname"/></iaixsl:attribute>
                                            <iaixsl:if test="page/invoice-data/@disallow_change_company_data = 'true'"><iaixsl:attribute name="readonly">readonly</iaixsl:attribute></iaixsl:if>
                                            <iaixsl:attribute name="required">required</iaixsl:attribute>
                                        </input>
                                        <label for="invoice_firstname" class="control-label">
                                            Name
                                        </label>
                                        <span class="form-control-feedback"/>
                                    </div>

                                    
                                    <div class="has-feedback has-required col-sm-6 col-12">
                                        <iaixsl:if test="not(/shop/page/invoice-data/profile_data/@mandatory_lastname = 'true')">
                                            <iaixsl:attribute name="class">has-feedback col-sm-6 col-12</iaixsl:attribute>
                                        </iaixsl:if>
                                        <input id="invoice_lastname" type="text" class="form-control validate" name="invoice_lastname">
                                            <iaixsl:attribute name="maxlength"><iaixsl:value-of select="/shop/page/input_option/@lastname"/></iaixsl:attribute>
                                            <iaixsl:attribute name="value"><iaixsl:value-of select="/shop/page/client-data/invoice_data-list/address[@default = 'yes']/@lastname"/></iaixsl:attribute>
                                            <iaixsl:if test="page/invoice-data/@disallow_change_company_data = 'true'"><iaixsl:attribute name="readonly">readonly</iaixsl:attribute></iaixsl:if>
                                            <iaixsl:if test="/shop/page/invoice-data/profile_data/@mandatory_lastname = 'true'"><iaixsl:attribute name="required">required</iaixsl:attribute></iaixsl:if>
                                        </input>
                                        <label for="invoice_lastname" class="control-label">
                                            Surname
                                        </label>
                                        <span class="form-control-feedback"/>
                                    </div>
                                </div>
                            </div>

                            
                            <div class="form-group row">
                                <iaixsl:if test="page/invoice-data/@disallow_change_company_data = 'true'"><iaixsl:attribute name="class">form-group row readonly</iaixsl:attribute></iaixsl:if>
                                <div class="has-feedback has-required col-12">
                                    <input id="invoice_street" type="text" class="form-control validate" name="invoice_street" data-serialize="#client_region">
                                        <iaixsl:attribute name="maxlength"><iaixsl:value-of select="/shop/page/input_option/@addres"/></iaixsl:attribute>
                                        <iaixsl:attribute name="value"><iaixsl:value-of select="/shop/page/client-data/invoice_data-list/address[@default = 'yes']/@street"/></iaixsl:attribute>
                                        <iaixsl:if test="page/invoice-data/@disallow_change_company_data = 'true'"><iaixsl:attribute name="readonly">readonly</iaixsl:attribute></iaixsl:if>
                                        <iaixsl:attribute name="required">required</iaixsl:attribute>
                                    </input>
                                    <label for="invoice_street" class="control-label">
                                        Street and no.
                                    </label>
                                    <span class="form-control-feedback"/>
                                </div>
                            </div>

                            
                            <div class="form-group">
                                <iaixsl:if test="page/invoice-data/@disallow_change_company_data = 'true'"><iaixsl:attribute name="class">form-group readonly</iaixsl:attribute></iaixsl:if>
                                <div class="row">
                                    <div id="invoice_zipcode_wrapper" class="has-feedback has-required col-sm-6 col-12">
                                        <input id="invoice_zipcode" type="text" class="form-control validate" name="invoice_zipcode" data-serialize="#invoice_region">
                                            <iaixsl:attribute name="maxlength"><iaixsl:value-of select="/shop/page/input_option/@zipcode"/></iaixsl:attribute>
                                            <iaixsl:attribute name="value"><iaixsl:value-of select="/shop/page/client-data/invoice_data-list/address[@default = 'yes']/@zipcode"/></iaixsl:attribute>
                                            <iaixsl:if test="page/invoice-data/@disallow_change_company_data = 'true'"><iaixsl:attribute name="readonly">readonly</iaixsl:attribute></iaixsl:if>
                                            <iaixsl:attribute name="required">required</iaixsl:attribute>
                                        </input>
                                        <label for="invoice_zipcode" class="control-label">
                                            Postal code
                                        </label>
                                        <span class="form-control-feedback"/>
                                    </div>
                                    <div id="invoice_city_wrapper" class="has-feedback has-required col-sm-6 col-12">
                                        <input id="invoice_city" type="text" class="form-control validate" name="invoice_city">
                                            <iaixsl:attribute name="maxlength"><iaixsl:value-of select="/shop/page/input_option/@city"/></iaixsl:attribute>
                                            <iaixsl:attribute name="value"><iaixsl:value-of select="/shop/page/client-data/invoice_data-list/address[@default = 'yes']/@city"/></iaixsl:attribute>
                                            
                                            <iaixsl:if test="page/invoice-data/@disallow_change_company_data = 'true'"><iaixsl:attribute name="readonly">readonly</iaixsl:attribute></iaixsl:if>
                                            <iaixsl:attribute name="required">required</iaixsl:attribute>
                                        </input>
                                        <label for="invoice_city" class="control-label">
                                            City
                                        </label>
                                        <span class="form-control-feedback"/>
                                    </div>
                                </div>
                            </div>

                            
                            <iaixsl:choose>
                                <iaixsl:when test="count(/shop/page/options/countries/country) = 1 and (/shop/page/options/countries/country/@id = 1143020003)">
                                    
                                    <input id="invoice_region" type="hidden" name="invoice_region">
                                        <iaixsl:attribute name="value"><iaixsl:value-of select="/shop/page/client-data/invoice_data-list/address[@default = 'yes']/@region"/></iaixsl:attribute>
                                        <iaixsl:attribute name="data-vat_company"><iaixsl:value-of select="/shop/page/options/countries/country/@vat_company"/></iaixsl:attribute>
                                        <iaixsl:attribute name="data-vat"><iaixsl:value-of select="/shop/page/options/countries/country/@vat"/></iaixsl:attribute>
                                    </input>
                                </iaixsl:when>
                                <iaixsl:otherwise>
                                    <div class="form-group row country">
                                        <iaixsl:if test="page/invoice-data/@disallow_change_company_data = 'true'"><iaixsl:attribute name="class">form-group row readonly</iaixsl:attribute></iaixsl:if>
                                        <div class="has-feedback col-12">
                                            <select class="form-control delivery_countries focused" id="invoice_region" name="invoice_region" data-revalidate="#invoice_street,#invoice_zipcode">
                                                <iaixsl:if test="page/invoice-data/@disallow_change_company_data = 'true'"><iaixsl:attribute name="readonly">readonly</iaixsl:attribute></iaixsl:if>
                                                
                                                <iaixsl:for-each select="/shop/page/options/countries/country">
                                                    <option>
                                                        <iaixsl:attribute name="value"><iaixsl:value-of select="@id"/></iaixsl:attribute>
                                                        <iaixsl:attribute name="data-vat_company"><iaixsl:value-of select="@vat_company"/></iaixsl:attribute>
                                                        <iaixsl:attribute name="data-vat"><iaixsl:value-of select="@vat"/></iaixsl:attribute>
                                                        <iaixsl:choose>
                                                            <iaixsl:when test="/shop/page/client-data/invoice_data-list/address[@default = 'yes']/@region > 0">
                                                                <iaixsl:if test="@id = /shop/page/client-data/invoice_data-list/address[@default = 'yes']/@region">
                                                                    <iaixsl:attribute name="selected">selected</iaixsl:attribute>
                                                                </iaixsl:if>
                                                            </iaixsl:when>
                                                            <iaixsl:otherwise>
                                                                <iaixsl:if test="@selected = 'true'">
                                                                    <iaixsl:attribute name="selected">selected</iaixsl:attribute>
                                                                </iaixsl:if>
                                                            </iaixsl:otherwise>
                                                        </iaixsl:choose>
                                                        <iaixsl:value-of select="@name"/>
                                                    </option>
                                                </iaixsl:for-each>
                                            </select>
                                            <label for="invoice_region" class="control-label">
                                                Country
                                            </label>
                                        </div>
                                    </div>
                                </iaixsl:otherwise>
                            </iaixsl:choose>

                            <iaixsl:for-each select="/shop/page/options/countries/country">
                                <iaixsl:if test="provinces/province">
                                    <div class="form-group client_provinces" style="display: none;">
                                        <iaixsl:if test="@selected = 'true'"><iaixsl:attribute name="style">display: block;</iaixsl:attribute></iaixsl:if>
                                        <iaixsl:attribute name="id">invoice_region_<iaixsl:value-of select="@id"/></iaixsl:attribute>
                                        <iaixsl:if test="page/invoice-data/@disallow_change_company_data = 'true'"><iaixsl:attribute name="class">form-group client_provinces readonly</iaixsl:attribute></iaixsl:if>
                                        <label for="invoice_province" class="control-label">
                                            <iaixsl:for-each select="province_types/type">
                                                <iaixsl:choose>
                                                    <iaixsl:when test="text() = 'state'">State</iaixsl:when>
                                                    <iaixsl:when test="text() = 'province'">Province</iaixsl:when>
                                                    <iaixsl:when test="text() = 'territory'">Territory</iaixsl:when>
                                                    <iaixsl:otherwise>Region</iaixsl:otherwise>
                                                </iaixsl:choose><iaixsl:if test="not(position() = last())">/</iaixsl:if></iaixsl:for-each>:
                                        </label>
                                        <div>
                                            <iaixsl:attribute name="class"></iaixsl:attribute>
                                            <select class="form-control" name="invoice_province">
                                                <iaixsl:if test="page/invoice-data/@disallow_change_company_data = 'true'"><iaixsl:attribute name="readonly">readonly</iaixsl:attribute></iaixsl:if>
                                                <iaixsl:if test="not(@selected = 'true')"><iaixsl:attribute name="disabled">disabled</iaixsl:attribute></iaixsl:if>
                                                <iaixsl:attribute name="id">invoice_province_<iaixsl:value-of select="@id"/></iaixsl:attribute>
                                                
                                                <iaixsl:for-each select="provinces/province">
                                                    <option>
                                                        <iaixsl:attribute name="value"><iaixsl:value-of select="@id"/></iaixsl:attribute>

                                                        <iaixsl:choose>
                                                            <iaixsl:when test="/shop/page/client-data/invoice_data-list/address[@default = 'yes']/@province > 0">
                                                                <iaixsl:if test="@id = /shop/page/client-data/invoice_data-list/address[@default = 'yes']/@province">
                                                                    <iaixsl:attribute name="selected">selected</iaixsl:attribute>
                                                                </iaixsl:if>
                                                            </iaixsl:when>
                                                            <iaixsl:otherwise>
                                                                <iaixsl:if test="@selected = 'true'">
                                                                    <iaixsl:attribute name="selected">selected</iaixsl:attribute>
                                                                </iaixsl:if>
                                                            </iaixsl:otherwise>
                                                        </iaixsl:choose>
                                                        <iaixsl:value-of select="@name"/>
                                                    </option>
                                                </iaixsl:for-each>
                                            </select>
                                        </div>
                                    </div>
                                </iaixsl:if>
                            </iaixsl:for-each>

                            <iaixsl:if test="count(/shop/page/client-data/invoice_data-list/address) > 1">
                                <div class="form-group button-form">
                                    <div class="col-12 px-0">
                                        <button id="delete_delivery_address" class="btn --solid delete_address">
                                            <iaixsl:if test="not(@removable = 'yes')"><iaixsl:attribute name="style">display: none;</iaixsl:attribute></iaixsl:if>
                                            Delete the address
                                        </button>
                                        <button id="new_delivery_address" class="btn --solid new_address">
                                            Add a new address
                                        </button>
                                        <button id="save_delivery_address" type="submit" class="btn --solid save_address" style="display:none;">
                                            Save the address
                                        </button>
                                    </div>
                                </div>
                            </iaixsl:if>
                        </div>
                    </div>
                </iaixsl:if>
                

                <iaixsl:if test="$client_new_mode != 'onceorder'">
                    <div class="col-12" id="client_new_login">
                        <h2 class="big_label">
                            Login 
                        </h2>

                        <div class="login_box cn_wrapper">
                            <iaixsl:if test="page/client-data/@action = 'password_token' and $client_new_mode = 'edit'">
                                <iaixsl:attribute name="class">login_box cn_wrapper change_password_mode</iaixsl:attribute>
                            </iaixsl:if>
                            
                            <iaixsl:if test="$client_new_mode = 'edit'">
                                <div class="form-group has-feedback">
                                    <label class="control-label">
                                        
                                    </label>
                                    <div>
                                        <iaixsl:attribute name="class">form-control-static </iaixsl:attribute>
                                        <label class="radio-inline">
                                            <input type="radio" name="client_generate_password" id="client_generate_password1" value="y" checked="checked">
                                                <iaixsl:if test="not(/shop/page/client-data/@register='true')"><iaixsl:attribute name="name">client_generate_password_n</iaixsl:attribute></iaixsl:if>
                                            </input>
                                            Do not change the password
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="client_generate_password" id="client_generate_password2" value="no">
                                                <iaixsl:if test="not(/shop/page/client-data/@register='true')"><iaixsl:attribute name="name">client_generate_password_n</iaixsl:attribute></iaixsl:if>
                                            </input>
                                            Change your password
                                        </label>
                                    </div>
                                </div>
                            </iaixsl:if>

                            
                            <div class="form-group row">
                                <div>
                                    <iaixsl:attribute name="class">has-feedback <iaixsl:if test="not(/shop/page/client-data/@edit = 'true')">has-required </iaixsl:if>col-12</iaixsl:attribute>
                                    <input id="client_login" type="text" class="form-control validate" name="client_login">
                                        <iaixsl:if test="not(/shop/page/client-data/profile_data/@login = '')"><iaixsl:attribute name="class">form-control validate focused</iaixsl:attribute></iaixsl:if>
                                        <iaixsl:if test="$client_new_mode = 'edit'"><iaixsl:attribute name="disabled">disabled</iaixsl:attribute></iaixsl:if>
                                        <iaixsl:if test="not(/shop/page/client-data/@edit = 'true')"><iaixsl:attribute name="required">required</iaixsl:attribute></iaixsl:if>
                                        <iaixsl:attribute name="value"><iaixsl:value-of select="/shop/page/client-data/profile_data/@login"/></iaixsl:attribute>
                                    </input>
                                    <label for="client_login" class="control-label">
                                        Login
                                    </label>
                                    <span class="form-control-feedback"/>
                                </div>
                                <div class="form-desc col-12">
                                    The login must have a minimum of 3, and a maximum of 40 characters (only letters or numbers).
                                </div>
                            </div>

                            
                            <div class="form-group row password-group">
                                <iaixsl:if test="$client_new_mode = 'edit'"><iaixsl:attribute name="style">display:none;</iaixsl:attribute></iaixsl:if>
                                <div>
                                    <iaixsl:attribute name="class">has-feedback <iaixsl:if test="/shop/page/client-data/@register='true' and /shop/page/client-data/profile_data/@mandatory_password='true'">has-required </iaixsl:if>col-12</iaixsl:attribute>
                                    <input id="client_password" class="form-control validate" type="password" name="client_password">
                                        <iaixsl:if test="/shop/page/client-data/profile_data/@max_password_length and /shop/page/client-data/profile_data/@max_password_length > 0">
                                            <iaixsl:attribute name="maxlength"><iaixsl:value-of select="/shop/page/client-data/profile_data/@max_password_length"/></iaixsl:attribute>
                                        </iaixsl:if>
                                        <iaixsl:if test="/shop/page/client-data/@register='true' and /shop/page/client-data/profile_data/@mandatory_password='true'">
                                            <iaixsl:attribute name="required">required</iaixsl:attribute>
                                        </iaixsl:if>
                                        <iaixsl:if test="$client_new_mode = 'edit'"><iaixsl:attribute name="disabled">disabled</iaixsl:attribute></iaixsl:if>
                                    </input>
                                    <label for="client_password" class="control-label">
                                        Password
                                    </label>
                                    <span class="form-control-feedback"/>
                                    <a href="#show_pass" class="show_pass"><i class="icon-visibility"></i></a>

                                    
                                    <input id="repeat_password" class="form-control validate" type="hidden" name="repeat_password" data-serialize="#client_password">
                                        <iaixsl:if test="/shop/page/client-data/profile_data/@max_password_length and /shop/page/client-data/profile_data/@max_password_length > 0">
                                            <iaixsl:attribute name="maxlength"><iaixsl:value-of select="/shop/page/client-data/profile_data/@max_password_length"/></iaixsl:attribute>
                                        </iaixsl:if>
                                        <iaixsl:if test="/shop/page/client-data/@register='true' and /shop/page/client-data/profile_data/@mandatory_password='true'">
                                            <iaixsl:attribute name="required">required</iaixsl:attribute>
                                        </iaixsl:if>
                                        <iaixsl:if test="$client_new_mode = 'edit'"><iaixsl:attribute name="disabled">disabled</iaixsl:attribute></iaixsl:if>
                                    </input>
                                </div>
                                <iaixsl:if test="/shop/page/client-data/profile_data/@max_password_length and /shop/page/client-data/profile_data/@max_password_length > 0">
                                    <div class="form-desc col-12">
                                        The password must be at least 6 characters long
                                    </div>
                                </iaixsl:if>
                                <iaixsl:if test="/shop/page/client-data/@register='true' and /shop/page/client-data/profile_data/@mandatory_password!='true'">
                                    <input id="cnew-generate_password" type="hidden" value="n" name="client_generate_password"/>
                                </iaixsl:if>
                            </div>

                            <iaixsl:if test="page/client-data/@action = 'password_token' and $client_new_mode = 'edit'">
                                <p class="no_password_social_text">
                                    <iaixsl:attribute name="style">display:none;</iaixsl:attribute>
                                    <b>You do not need to remember your password.</b> Link your store account with your account in one of the following websites and log in to it during your next purchase.
                                </p>
                            </iaixsl:if>

                        </div>
                    </div>
                </iaixsl:if>
            </div>

            <div id="client_new_summary" class="row clearfix">
                <div class="col-6">

                    
                    <div class="clientnew_regulations">

                        
                        <iaixsl:if test="($client_new_mode = 'edit') and login_options/service[@connected='true']">
                            <div class="form-group">
                                <div class="col-12">
                                    <label> Your account is merged with an account in <iaixsl:value-of select="login_options/service[@connected='true']/@name"/></label>
                                    <a class="btn-connected btn --solid">
                                        <iaixsl:attribute name="href"><iaixsl:value-of select="login_options/service[@connected='true']/@disconnect_url"/></iaixsl:attribute>
                                        Unmerge the accounts 
                                    </a>
                                </div>
                            </div>
                        </iaixsl:if>

                        <iaixsl:if test="not(/shop/contact/owner/@vat_registered = 'false')">
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="vat_company" id="vat_company" value="1">
                                        <iaixsl:if test="(/shop/page/client-data/invoice_data/@vat_company = 'n') or (/shop/page/client-data/invoice_data/@vat_company = 'p')">
                                            <iaixsl:attribute name="checked">checked</iaixsl:attribute>
                                        </iaixsl:if>
                                        <iaixsl:if test="page/client-data/@disallow_change_company_data = 'true'">
                                            <iaixsl:attribute name="readonly">readonly</iaixsl:attribute>
                                        </iaixsl:if>
                                    </input>I am an EU VAT payer. I order without VAT and I commit to settle VAT in my country.
                                </label>
                            </div>
                        </iaixsl:if>
                        <iaixsl:choose>
                            <iaixsl:when test="$client_new_mode != 'edit'">
                                <div class="checkbox">
                                    <label class="has-required">
                                        <input id="terms_agree" type="checkbox" name="terms_agree" value="0" required="required"/>
                                        <i class="icon-need"/>
                                        <iaixsl:value-of disable-output-escaping="yes" select="/shop/page/personal_data_processing_texts/personal_data"/>
                                    </label>
                                </div>
                            </iaixsl:when>
                            <iaixsl:otherwise>
                                <input id="terms_agree" type="hidden" value="1"/>
                            </iaixsl:otherwise>
                        </iaixsl:choose>

                        <div class="form-group">
                            <div class="checkbox">
                                <label>
                                    <input id="client_mailing" type="checkbox" name="client_mailing" value="1">
                                        <iaixsl:if test="/shop/page/client-data/contact_data/@mailing != '0'"><iaixsl:attribute name="checked">checked</iaixsl:attribute></iaixsl:if>
                                    </input>  I want to receive the E-mail Newsletter (future unsubscription possible)
                                </label>
                            </div>
                        </div>
                        <iaixsl:if test="/shop/page/client-data/contact_data/@send_sms">
                            <div class="form-group">
                                <div class="checkbox">
                                    <label>
                                        <input id="client_send_sms" type="checkbox" name="client_send_sms" value="y">
                                            <iaixsl:if test="/shop/page/client-data/contact_data/@send_sms = 'y' or /shop/page/client-data/contact_data/@send_sms = 'd' or /shop/page/client-data/contact_data/@send_sms = '1'"><iaixsl:attribute name="checked">checked</iaixsl:attribute></iaixsl:if>
                                        </input>  I want to receive SMS Newsletter (future unsubscription possible)<br/><br/>
                                        <input type="hidden" name="client_send_sms_exists" value="1"/>
                                    </label>
                                </div>
                            </div>
                        </iaixsl:if>
                    </div>

                    
                    <div class="clientnew_buttons">
                        <div class="button_legend">
                            Fields marked with asterisk are required
                        </div>
                        <button id="submit_clientnew_form" type="submit" class="btn --solid --large">
                            <iaixsl:choose>
                                <iaixsl:when test="$client_new_mode = 'edit'">
                                    Save changes
                                </iaixsl:when>
                                <iaixsl:when test="$client_new_mode = 'register'">
                                    Register an account
                                </iaixsl:when>
                                <iaixsl:when test="$client_new_mode = 'onceorder'">
                                    Next
                                </iaixsl:when>
                            </iaixsl:choose>
                        </button>
                    </div>
                </div>
            </div>
        </form>

        <iaixsl:if test="/shop/page/client-data/delivery_data/@use='hide'"> </iaixsl:if>
        <iaixsl:if test="/shop/page/client-data/allow_change_company_data"> </iaixsl:if>
        <iaixsl:if test="/shop/page/communicates/warning/@type='illegal_characters_client_firstname'"> </iaixsl:if>

        <!--Formularz do podania kodu/karty rabatowej (client_new_rebate_code, 107674.1)-->
            <iaixsl:if test="/shop/page/client-data/@card_discount_program_activated='true'">
                <div class="rebate_card_wrap row">
                    <div class="col-sm-6 col-12">
                        <iaixsl:choose>
                            
                            <iaixsl:when test="/shop/page/client-data/@active_card and not(/shop/page/client-data/@active_card='')">
                                <div class="form-group">
                                    <span class="rebate_card_header">Your discount card is active!</span>
                                    <div class="has-feedback d-flex align-items-center">
                                        <div class="rebate_card_icon">
                                            <i class="icon-credit-card"/>
                                        </div>
                                        <div class="rebate_card_input">
                                            <input type="hidden" value="add" name="global_rebates_codes"/>
                                            <input id="card_discount_code" type="text" placeholder="Numer karty rabatowej" value="" name="card_discount_code" class="form-control focused">
                                                <iaixsl:attribute name="value"><iaixsl:value-of select="/shop/page/client-data/@active_card"/></iaixsl:attribute>
                                            </input>
                                            <label for="card_discount_code" class="control-label">
                                                Discount card number
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <p class="rebate_card_desc">
                                    You can change your active discount card by providing the new number above. Check details of guaranteed discounts, go to <a href="/client-rebate.php" title="Your discounts">Your discounts</a>.
                                </p>
                            </iaixsl:when>
                            <iaixsl:otherwise>
                                <div class="form-group">
                                    <div class="d-flex align-items-center">
                                        <div class="rebate_card_icon">
                                            <i class="icon-credit-card"/>
                                        </div>
                                        <div class="has-feedback rebate_card_input">
                                            <input type="hidden" value="add" name="global_rebates_codes"/>
                                            <input type="text" value="" name="card_discount_code" class="form-control">
                                                    <iaixsl:attribute name="placeholder"/>
                                            </input>
                                            <label for="card_discount_code" class="control-label">
                                                Discount card number
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <p class="rebate_card_desc">
                                    If you have our plastic discount card, please provide its number. This way you will be able to use the same discounts in our online store as in our point of sales.
                                </p>
                            </iaixsl:otherwise>
                        </iaixsl:choose>
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
                    <!--Menu - Drzewo 4 (menu_tree4, 108689.1)-->
            <iaixsl:variable name="hideAdress"></iaixsl:variable>
            <iaixsl:variable name="allow_returns_footer"><iaixsl:choose><iaixsl:when test="/shop/basket/@wholesaler = 'true' and /shop/basket/@blocked_wholesale_returns = 'true'">false</iaixsl:when><iaixsl:otherwise>true</iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
            <div id="footer_links">
                <iaixsl:choose>
                    <iaixsl:when test="$allow_returns_footer = 'true' and count(navigation4/item) = 1 and (/shop/action/shop_information/@order_link_active='y' or /shop/action/shipping_cost/@order_link_active='y' or /shop/action/payment_methods/@order_link_active='y' or /shop/action/terms/@order_link_active='y' or /shop/action/private_policy/@order_link_active='y' or /shop/action/order_cancel/@order_link_active='y')">
                        <iaixsl:attribute name="class">row container<iaixsl:text> </iaixsl:text>four_elements</iaixsl:attribute>
                    </iaixsl:when>
                    
                    <iaixsl:when test="$allow_returns_footer = 'true' and count(navigation4/item) = 2 and (/shop/action/shop_information/@order_link_active='n' and /shop/action/shipping_cost/@order_link_active='n' and /shop/action/payment_methods/@order_link_active='n' and /shop/action/terms/@order_link_active='n' and /shop/action/private_policy/@order_link_active='n' and /shop/action/order_cancel/@order_link_active='n')">
                        <iaixsl:attribute name="class">row container<iaixsl:text> </iaixsl:text>four_elements</iaixsl:attribute>
                    </iaixsl:when>
                    <iaixsl:when test="$allow_returns_footer = 'false'">
                        <iaixsl:attribute name="class">row container<iaixsl:text> no_orders_border</iaixsl:text></iaixsl:attribute>
                    </iaixsl:when>
                    <iaixsl:otherwise>
                        <iaixsl:attribute name="class">row container</iaixsl:attribute>
                    </iaixsl:otherwise>
                </iaixsl:choose>
                
                <iaixsl:if test="$allow_returns_footer = 'true'">
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
                </iaixsl:if>
                
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
        <!--Dane kontaktowe w menu (menu_contact, 106454.1)-->
            <div id="menu_contact" class="container d-md-flex align-items-md-center justify-content-md-between">
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
        <!--Bannery sekcji 2 (menu_banners2, 109348.1)-->

            <iaixsl:if test="count(commercial_banner2/link)"> 
                <section id="menu_banners2" class="container">
                    <iaixsl:for-each select="commercial_banner2/link">
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
                                                        <img src="/gfx/rum/loader.gif?r=1571748615">
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
                                                    <img src="/gfx/rum/loader.gif?r=1571748615">
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
                </section>
            </iaixsl:if>

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
            "item": {
            "@id": "<iaixsl:value-of select="substring($curr_url,1,($url_length - 1))"/><iaixsl:value-of select="@link"/>",
            "name": "<iaixsl:value-of select="@title"/>"
            }
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
            <iaixsl:if test="/shop/page/@type = 'main' or /shop/page/@type = 'search'">
                <iaixsl:choose>
                    <iaixsl:when test="/shop/@preview > 0">
                        <script><iaixsl:attribute name="src">/gfx/<iaixsl:value-of select="language/@id"/>/<iaixsl:value-of select="/shop/@preview"/>/shop.js</iaixsl:attribute></script>
                    </iaixsl:when>
                    <iaixsl:otherwise>
                        <script><iaixsl:attribute name="src">/gfx/<iaixsl:value-of select="language/@id"/>/shop.js.gzip?r=1571748615</iaixsl:attribute></script>
                    </iaixsl:otherwise>
                </iaixsl:choose>
            </iaixsl:if>
            <script type="text/javascript" src="/gfx/rum/client_new_form.js.gzip?r=1571748615"></script>
            <script>
                app_shop.runApp();
            </script>

            
            <iaixsl:if test="/shop/page/seolink_with_language_directory"/>

        
            <iaixsl:if test="(action/set_render/item/@name = 'popup') or not(action/set_render/item)">
                <iaixsl:value-of disable-output-escaping="yes" select="php:functionString('additionalContent', 'additional_body_scripts')"/>
                <iaixsl:text disable-output-escaping="yes">&lt;/body&gt;&lt;/html&gt;</iaixsl:text>
            </iaixsl:if>
        </iaixsl:template><iaixsl:template match="//image"><iaixsl:if test="@type='swf'"><object type="application/x-shockwave-flash"><iaixsl:attribute name="data"><iaixsl:value-of select="@src"/></iaixsl:attribute><iaixsl:attribute name="data"><iaixsl:value-of select="@src"/></iaixsl:attribute><iaixsl:attribute name="width"><iaixsl:value-of select="@width"/></iaixsl:attribute><iaixsl:attribute name="height"><iaixsl:value-of select="@height"/></iaixsl:attribute><param name="movie"><iaixsl:attribute name="value"><iaixsl:value-of select="@src"/></iaixsl:attribute></param><param name="bgcolor"><iaixsl:attribute name="bgcolor"><iaixsl:value-of select="@bgcolor"/></iaixsl:attribute></param></object></iaixsl:if><iaixsl:if test="not(@type='swf')"><img alt="" class="pic"><iaixsl:attribute name="src"><iaixsl:value-of select="@src"/></iaixsl:attribute><iaixsl:if test="@width &gt; 0"><iaixsl:attribute name="width"><iaixsl:value-of select="@width"/></iaixsl:attribute></iaixsl:if><iaixsl:if test="@height &gt; 0"><iaixsl:attribute name="height"><iaixsl:value-of select="@height"/></iaixsl:attribute></iaixsl:if></img></iaixsl:if></iaixsl:template><iaixsl:template name="escape-quote-string"><iaixsl:param name="str"/><iaixsl:param name="escape" select="'quot'"/><iaixsl:param name="quoting" select="'1'"/><iaixsl:variable name="escape_sign"><iaixsl:choose><iaixsl:when test="$escape=&quot;apos&quot;"><iaixsl:value-of select="&quot;'&quot;"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="string('&quot;')"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable><iaixsl:if test="$quoting"><iaixsl:value-of select="$escape_sign"/></iaixsl:if><iaixsl:choose><iaixsl:when test="contains($str,$escape_sign)"><iaixsl:variable name="before-first-apostrophe" select="substring-before($str,$escape_sign)"/><iaixsl:variable name="after-first-apostrophe" select="substring-after($str,$escape_sign)"/><iaixsl:value-of select="$before-first-apostrophe"/>\<iaixsl:value-of select="$escape_sign"/><iaixsl:text/><iaixsl:call-template name="escape-quote-string"><iaixsl:with-param name="str" select="$after-first-apostrophe"/><iaixsl:with-param name="escape" select="$escape"/><iaixsl:with-param name="quoting" select="0"/></iaixsl:call-template></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="$str"/></iaixsl:otherwise></iaixsl:choose><iaixsl:if test="$quoting"><iaixsl:value-of select="$escape_sign"/></iaixsl:if></iaixsl:template></iaixsl:stylesheet>