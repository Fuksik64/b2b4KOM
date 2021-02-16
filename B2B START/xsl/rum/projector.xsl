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
                <script type="text/javascript" src="/gfx/rum/projector_details.js.gzip?r=1571748615"></script><script type="text/javascript" src="/gfx/rum/projector_bundle_zone.js.gzip?r=1571748615"></script><script type="text/javascript" src="/gfx/rum/projector_projector_opinons_form.js.gzip?r=1571748615"></script><script type="text/javascript" src="/gfx/rum/projector_video.js.gzip?r=1571748615"></script><script type="text/javascript" src="/gfx/rum/projector_photos.js.gzip?r=1571748615"></script></head>
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

        <!--Warianty produktu (projector_productversions, 110590.1)-->
        <iaixsl:if test="compare/@count > 0 or /shop/page/@cache_html = 'true'">
            <div id="menu_compare_product" class="compare mb-2 pt-sm-3 pb-sm-3 mb-sm-3">
                <iaixsl:if test="/shop/page/@cache_html = 'true'">
                    <iaixsl:attribute name="style">display: none;</iaixsl:attribute>
                </iaixsl:if>

                <div class="compare__label d-none d-sm-block">Add to compare</div>

                <div class="compare__sub">
                    <iaixsl:for-each select="compare/product">
                        <a class="compare__item btn --solid --icon-right icon-x">
                            <iaixsl:attribute name="href"><iaixsl:value-of select="@removelink"/></iaixsl:attribute>
                            <iaixsl:attribute name="data-remove_link"><iaixsl:value-of select="@removelink"/></iaixsl:attribute>
                            <iaixsl:attribute name="data-link"><iaixsl:value-of select="@link"/></iaixsl:attribute>
                            <img>
                                <iaixsl:attribute name="src"><iaixsl:value-of select="iconsmall"/></iaixsl:attribute>
                                <iaixsl:attribute name="alt"><iaixsl:value-of disable-output-escaping="yes" select="name"/></iaixsl:attribute>
                            </img>
                        </a>
                    </iaixsl:for-each>
                </div>

                <div class="compare__buttons">
                    <iaixsl:if test="compare/@count = 1">
                        <iaixsl:attribute name="class">compare__buttons --one</iaixsl:attribute>
                    </iaixsl:if>
                    <iaixsl:if test="compare/@count > 1 or /shop/page/@cache_html = 'true'">
                        <a class="compare__button btn --solid --secondary" href="product-compare.php">
                            <iaixsl:if test="/shop/action/productCompare/@url">
                                <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/productCompare/@url"/></iaixsl:attribute>
                            </iaixsl:if>
                            <iaixsl:attribute name="title">Compare all products</iaixsl:attribute>
                            <iaixsl:attribute name="target">_blank</iaixsl:attribute>
                            <span>Compare products </span><span class="d-sm-none">(<iaixsl:value-of select="compare/@count"/>)</span>
                        </a>
                    </iaixsl:if>

                    <a class="compare__button --remove btn d-none d-sm-block">
                        <iaixsl:attribute name="href"><iaixsl:choose><iaixsl:when test="/shop/action/settings/@url"><iaixsl:value-of select="/shop/action/settings/@url"/></iaixsl:when><iaixsl:otherwise>settings.php</iaixsl:otherwise></iaixsl:choose>?comparers=remove&amp;product=<iaixsl:choose><iaixsl:when test="/shop/page/@cache_html = 'true'">###</iaixsl:when><iaixsl:otherwise><iaixsl:for-each select="compare/product"><iaixsl:value-of select="@id"/><iaixsl:if test="not(count(../product) = position())">,</iaixsl:if></iaixsl:for-each></iaixsl:otherwise></iaixsl:choose></iaixsl:attribute>

                        <iaixsl:attribute name="title">Delete all products</iaixsl:attribute>
                        Remove products
                    </a>
                </div>

                <iaixsl:if test="/shop/page/@cache_html = 'true'">
                    <script>
                        var cache_html = true;
                    </script>
                </iaixsl:if>
            </div>
        </iaixsl:if>
    <!--Dokładne dane o produkcie (projector_details, 109280.1)-->

            
            <iaixsl:variable name="showComments"></iaixsl:variable>
            
            <iaixsl:variable name="thresholdEnd_enable"></iaixsl:variable>
            <iaixsl:variable name="param_projector"></iaixsl:variable>
            <iaixsl:variable name="param_kropa"></iaixsl:variable>
            <iaixsl:variable name="amount_txt">%d </iaixsl:variable>
            <iaixsl:variable name="amount_txt2">%d </iaixsl:variable>
            <iaixsl:variable name="fashion_view">0</iaixsl:variable>
            <iaixsl:variable name="sizes_projector">1</iaixsl:variable>
            <iaixsl:variable name="points_in_prices_section">1</iaixsl:variable>
            <iaixsl:variable name="disable_projectorv3_ajax">1</iaixsl:variable>
            <iaixsl:variable name="magnify1"></iaixsl:variable>
            <iaixsl:variable name="advanceprice_txt">Before we process the order with this product, the prepayment in the amount of </iaixsl:variable>
            <iaixsl:variable name="suma_cen_txt"></iaixsl:variable>
            <iaixsl:variable name="wysylka_bundle_txt">Shipment of the selected &lt;span class="bundle_item_count"&gt;&lt;/span&gt; goods:</iaixsl:variable>
            <iaixsl:variable name="cena_bundle_txt">Price of selected goods: </iaixsl:variable>
            <iaixsl:variable name="brutto_bundle_txt"> selected gross goods</iaixsl:variable>
            <iaixsl:variable name="taniej_bundle_txt">By buying &lt;span class="bundle_item_count"&gt;&lt;/span&gt; goods as a collection you will save</iaixsl:variable>
            <iaixsl:variable name="projector_form_privacy_info_text1">Data is processed in accordance with the </iaixsl:variable>
            <iaixsl:variable name="projector_form_privacy_info_text2">. By submitting data, you accept privacy policy provisions.</iaixsl:variable>
            <iaixsl:variable name="dokoszyka_bundle_txt">To shopping cart:</iaixsl:variable>
            <iaixsl:variable name="dokoszykabu_bundle_txt">Add selected items to cart</iaixsl:variable>

            
            <script class="ajaxLoad">
                cena_raty = <iaixsl:value-of select="page/projector/product/price/@value"/>;
                <iaixsl:choose>
                    <iaixsl:when test="basket/@login">
                    var  client_login = 'true'
                    </iaixsl:when>
                    <iaixsl:otherwise>
                    var  client_login = 'false'
                    </iaixsl:otherwise>
                </iaixsl:choose>
                var  client_points = '<iaixsl:value-of select="/shop/basket/@client_points"/>';
                var  points_used = '<iaixsl:value-of select="/shop/basket/@points_used"/>';
                var  shop_currency = '<iaixsl:value-of select="/shop/currency/@name"/>';
                var product_data = {
                "product_id": '<iaixsl:value-of select="/shop/page/projector/product/@id"/>',
                <iaixsl:if test="/shop/page/projector/product/@for_points = 'true'">
                    "for_points": '<iaixsl:value-of select="/shop/page/projector/product/@for_points"/>',
                </iaixsl:if>
                "currency":"<iaixsl:value-of select="/shop/currency/@name"/>",
                "product_type":"<iaixsl:value-of select="page/projector/product/@product_type"/>",
                "unit":"<iaixsl:value-of disable-output-escaping="yes" select="page/projector/product/sizes/@unit"/>",
                "unit_plural":"<iaixsl:value-of disable-output-escaping="yes" select="page/projector/product/sizes/@unit_plural"/>",

                "unit_sellby":"<iaixsl:value-of select="page/projector/product/sizes/@unit_sellby"/>",
                "unit_precision":"<iaixsl:value-of select="page/projector/product/sizes/@unit_precision"/>",

                "base_price":{
                <iaixsl:for-each select="/shop/page/projector/product/sizes/prices/@*">
                    "<iaixsl:value-of select="name()"/>":"<iaixsl:value-of select="."/>",
                </iaixsl:for-each>
                <iaixsl:for-each select="/shop/page/projector/product/price/@*">
                    "<iaixsl:value-of select="name()"/>":"<iaixsl:value-of select="."/>"<iaixsl:if test="position() != last()">,</iaixsl:if>
                </iaixsl:for-each>
                },

                "order_quantity_range":{
                <iaixsl:for-each select="/shop/page/projector/product/order_quantity_range/*">
                    "<iaixsl:value-of select="name()"/>":"<iaixsl:value-of select="."/>"<iaixsl:if test="position() != last()">,</iaixsl:if>
                </iaixsl:for-each>
                }

                <iaixsl:if test="$disable_projectorv3_ajax = '0'">
                    ,
                    "sizes":{
                    <iaixsl:for-each select="/shop/page/projector/product/sizes/size">
                    "<iaixsl:value-of select="@type"/>":
                    {
                    <iaixsl:for-each select="@*">
                        "<iaixsl:value-of select="name()"/>":"<iaixsl:value-of select="."/>",
                    </iaixsl:for-each>
                    <iaixsl:for-each select="/shop/page/projector/product/bundle_price">
                        "<iaixsl:value-of select="name()"/>":{
                        <iaixsl:for-each select="@*">
                        "<iaixsl:value-of select="name()"/>":"<iaixsl:value-of select="."/>"<iaixsl:if test="position() != last()">,</iaixsl:if>
                        </iaixsl:for-each>
                        },
                    </iaixsl:for-each>
                    <iaixsl:if test="price/rebateNumber/rebate">
                        "rebateNumber":[
                        <iaixsl:for-each select="price/rebateNumber/rebate">
                        {
                        <iaixsl:for-each select="@*">
                            "<iaixsl:value-of select="name()"/>":"<iaixsl:value-of select="."/>"<iaixsl:if test="position() != last()">,</iaixsl:if>
                        </iaixsl:for-each>
                        }<iaixsl:if test="position() != last()">,</iaixsl:if>
                        </iaixsl:for-each>
                        ],
                    </iaixsl:if>
                    <iaixsl:if test="availability/shipping_time">
                        "shipping_time":{
                        <iaixsl:for-each select="availability/shipping_time ">
                        <iaixsl:for-each select="@*">
                            "<iaixsl:value-of select="name()"/>":"<iaixsl:value-of disable-output-escaping="yes" select="."/>"<iaixsl:if test="position() != last()">,</iaixsl:if>
                        </iaixsl:for-each>
                        </iaixsl:for-each>
                        },
                    </iaixsl:if>
                    <iaixsl:if test="availability/delay_time">
                        "delay_time":{
                        <iaixsl:for-each select="availability/delay_time">
                        <iaixsl:for-each select="@*">
                            "<iaixsl:value-of select="name()"/>":"<iaixsl:value-of disable-output-escaping="yes" select="."/>"<iaixsl:if test="position() != last()">,</iaixsl:if>
                        </iaixsl:for-each>
                        </iaixsl:for-each>
                        },
                    </iaixsl:if>

                    <iaixsl:for-each select="node()">
                        "<iaixsl:value-of select="name()"/>":{
                        <iaixsl:for-each select="@*">
                        "<iaixsl:value-of select="name()"/>":"<iaixsl:value-of select="."/>"<iaixsl:if test="position() != last()">,</iaixsl:if>
                        </iaixsl:for-each>
                        }<iaixsl:if test="position() != last()">,</iaixsl:if>
                    </iaixsl:for-each>
                    }<iaixsl:if test="position() != last()">,</iaixsl:if>
                    </iaixsl:for-each>
                    }
                </iaixsl:if>

                }
                var  trust_level = '<iaixsl:value-of select="/shop/@trust_level"/>';
            </script>
            

            <form id="projector_form" action="/basketchange.php" method="post">
                <iaixsl:if test="/shop/action/basketChange/@url">
                    <iaixsl:attribute name="action"><iaixsl:value-of select="/shop/action/basketChange/@url"/></iaixsl:attribute>
                </iaixsl:if>
                <iaixsl:attribute name="data-product_id"><iaixsl:value-of select="/shop/page/projector/product/@id"/></iaixsl:attribute>
                <iaixsl:attribute name="class">
                     row 
                    <iaixsl:if test="/shop/page/projector/bundled/@collection = 'true'"> collection</iaixsl:if>
                    <iaixsl:if test="/shop/page/projector/product/@price_from_formula='true'"> price_from_formula</iaixsl:if>
                    <iaixsl:if test="$fashion_view and not($fashion_view = '0')"> fashion_view</iaixsl:if>
                </iaixsl:attribute>

                <input id="projector_product_hidden" type="hidden" name="product"><iaixsl:attribute name="value"><iaixsl:value-of select="page/projector/product/@id"/></iaixsl:attribute></input>
                <input id="projector_size_hidden" type="hidden" name="size" autocomplete="off">
                    <iaixsl:choose>
                        <iaixsl:when test="page/projector/product/sizes/size[@selected='true']">
                            <iaixsl:attribute name="value"><iaixsl:value-of select="page/projector/product/sizes/size[@selected='true']/@type"/></iaixsl:attribute>
                        </iaixsl:when>
                        <iaixsl:when test="page/projector/product/sizes/size/@type = 'onesize'">
                            <iaixsl:attribute name="value"><iaixsl:value-of select="page/projector/product/sizes/size/@type"/></iaixsl:attribute>
                        </iaixsl:when>
                    </iaixsl:choose>
                </input>
                <input id="projector_mode_hidden" type="hidden" name="mode" value="1"/>

                <iaixsl:if test="page/projector/product/exchange/@exchange_id">
                    <input id="projector_exchange_id_hidden" type="hidden" name="exchange_id">
                        <iaixsl:attribute name="value"><iaixsl:value-of select="page/projector/product/exchange/@exchange_id"/></iaixsl:attribute>
                    </input>
                    <input id="projector_change_hidden" type="hidden" name="change" value="change"/>
                </iaixsl:if>

                
                <div class="projector_navigation pb-3 d-md-flex align-items-center justify-content-md-between">
                    <div class="projector_navigation_sub">
                        
                        <div class="label_icons">
                            <iaixsl:if test="/shop/page/projector/product/@promotion">
                                <span class="promo">
                                    On special offer
                                </span>
                            </iaixsl:if>
                            <iaixsl:if test="/shop/page/projector/product/@new">
                                <span class="newproducts">
                                    New in
                                </span>
                            </iaixsl:if>
                            <iaixsl:choose>
                            <iaixsl:when test="/shop/page/projector/product/@promotion and /shop/page/projector/product/@new">
                            </iaixsl:when>
                            <iaixsl:when test="/shop/page/projector/product/@promotion or /shop/page/projector/product/@new">
                                <iaixsl:choose>
                                    <iaixsl:when test="/shop/page/projector/product/@bestseller">
                                        <span class="bestseller">
                                            Our bestseller
                                        </span>
                                    </iaixsl:when>
                                    <iaixsl:when test="/shop/page/projector/product/@discount">
                                        <span class="discount">
                                            Sale
                                        </span>
                                    </iaixsl:when>
                                    <iaixsl:when test="/shop/page/projector/product/@distinguished">
                                        <span class="distinguished">
                                            Recommended
                                        </span>
                                    </iaixsl:when>
                                </iaixsl:choose>
                            </iaixsl:when>
                            <iaixsl:otherwise>
                                <iaixsl:if test="/shop/page/projector/product/@bestseller">
                                    <span class="bestseller">
                                        Our bestseller
                                    </span>
                                </iaixsl:if>
                                <iaixsl:if test="/shop/page/projector/product/@discount">
                                    <span class="discount">
                                        Sale
                                    </span>
                                </iaixsl:if>
                                <iaixsl:if test="/shop/page/projector/product/@distinguished and not(/shop/page/projector/product/@bestseller and /shop/page/projector/product/@discount)">
                                    <span class="distinguished">
                                        Recommended
                                    </span>
                                </iaixsl:if>
                            </iaixsl:otherwise>
                            </iaixsl:choose>
                        </div>

                        
                        <h1>
                            <iaixsl:value-of disable-output-escaping="yes" select="/shop/page/projector/product/name"/>
                        </h1>

                        
                        <iaixsl:if test="page/projector/product/description and page/projector/product/description != ''">
                            <div class="projector_description description">
                                <iaixsl:value-of disable-output-escaping="yes" select="page/projector/product/description/text()"/>
                            </div>
                        </iaixsl:if>
                    </div>

                    
                    <iaixsl:if test="/shop/page/projector/product/firm/@icon and not(/shop/page/projector/product/firm/@icon = '')">
                        <div class="projector_firm_logo d-none d-md-block">
                            <a class="product_firm_logo">
                                <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/page/projector/product/firm/@productslink"/></iaixsl:attribute>

                                <img>
                                    <iaixsl:attribute name="src"><iaixsl:value-of select="/shop/page/projector/product/firm/@icon"/></iaixsl:attribute>
                                    <iaixsl:attribute name="title"><iaixsl:value-of select="/shop/page/projector/product/firm/@name"/></iaixsl:attribute>
                                    <iaixsl:attribute name="alt"><iaixsl:value-of select="/shop/page/projector/product/firm/@name"/></iaixsl:attribute>
                                </img>
                            </a>
                        </div>
                    </iaixsl:if>
                </div>

                
                <div id="projector_photos" class="photos col-12 col-sm-6 pb-4">
                    <iaixsl:if test="count(/shop/page/projector/product/enclosures/images/enclosure) > 0">
                        <ul id="projector_slider">
                            <iaixsl:for-each select="/shop/page/projector/product/enclosures/images/enclosure">
                                <li>
                                    <a class="projector_medium_image" data-imagelightbox="f">
                                        <iaixsl:attribute name="href"><iaixsl:value-of disable-output-escaping="yes" select="@url"/></iaixsl:attribute>
                                        <img class="photo slick-loading">
                                            <iaixsl:attribute name="alt"><iaixsl:value-of disable-output-escaping="yes" select="/shop/page/projector/product/name"/></iaixsl:attribute>
                                            <iaixsl:attribute name="data-lazy"><iaixsl:value-of select="@medium"/></iaixsl:attribute>
                                            <iaixsl:if test="$magnify1"><iaixsl:attribute name="data-zoom-image"><iaixsl:value-of select="@url"/></iaixsl:attribute></iaixsl:if>
                                        </img>
                                        <iaixsl:if test="$magnify1"><span></span></iaixsl:if>
                                    </a>
                                </li>
                            </iaixsl:for-each>
                            <iaixsl:for-each select="/shop/page/projector/bundled/product">
                                <iaixsl:if test="enclosures/images/enclosure[1]/@medium">
                                    <li>
                                        <a class="projector_medium_image" data-imagelightbox="f">
                                            <iaixsl:attribute name="href"><iaixsl:value-of disable-output-escaping="yes" select="enclosures/images/enclosure[1]/@url"/></iaixsl:attribute>
                                            <img class="photo slick-loading">
                                                <iaixsl:attribute name="alt"><iaixsl:value-of disable-output-escaping="yes" select="name"/></iaixsl:attribute>
                                                <iaixsl:attribute name="data-lazy"><iaixsl:value-of select="enclosures/images/enclosure[1]/@medium"/></iaixsl:attribute>
                                                <iaixsl:if test="$magnify1"><iaixsl:attribute name="data-zoom-image"><iaixsl:value-of select="enclosures/images/enclosure[1]/@url"/></iaixsl:attribute></iaixsl:if>
                                            </img>
                                            <iaixsl:if test="$magnify1"><span></span></iaixsl:if>
                                        </a>
                                    </li>
                                </iaixsl:if>
                            </iaixsl:for-each>
                        </ul>
                    </iaixsl:if>
                    <iaixsl:variable name="enclosureCount"><iaixsl:value-of select="count(page/projector/product/enclosures/images/enclosure)"/></iaixsl:variable>
                    <iaixsl:if test="($enclosureCount > 1) or /shop/page/projector/bundled/product">
                        <div id="projector_pager" class="enclosures align_row" data-align="img#css">
                            <iaixsl:if test="$magnify1"><iaixsl:attribute name="class">enclosures</iaixsl:attribute><iaixsl:attribute name="data-align"/></iaixsl:if>
                            <iaixsl:for-each select="page/projector/product/enclosures/images/enclosure">
                                <a href="">
                                    <iaixsl:attribute name="data-slick-index"><iaixsl:value-of select="position()-1"/></iaixsl:attribute>
                                    <img alt="" class="b-lazy"><iaixsl:attribute name="data-src"><iaixsl:value-of select="@icon"/></iaixsl:attribute></img>
                                </a>
                            </iaixsl:for-each>
                            <iaixsl:for-each select="/shop/page/projector/bundled/product">
                                <iaixsl:if test="enclosures/images/enclosure[1]/@icon">
                                    <a href="">
                                        <iaixsl:attribute name="data-slick-index"><iaixsl:value-of select="$enclosureCount + position() - 1"/></iaixsl:attribute>
                                        <img alt="" class="b-lazy"><iaixsl:attribute name="data-src"><iaixsl:value-of select="enclosures/images/enclosure[1]/@icon"/></iaixsl:attribute></img>
                                    </a>
                                </iaixsl:if>
                            </iaixsl:for-each>
                        </div>
                    </iaixsl:if>
                    
                    <iaixsl:if test="count(/shop/page/projector/product/enclosures/images/enclosure) = 0">
                      <div class="projector__default-image">
                        <img class="--default-img">
                          <iaixsl:attribute name="src"><iaixsl:value-of select="/shop/page/projector/product/icon"/></iaixsl:attribute>
                          <iaixsl:attribute name="alt"><iaixsl:value-of disable-output-escaping="yes" select="name"/></iaixsl:attribute>
                        </img>
                      </div>
                    </iaixsl:if>
                </div>

                
                <div id="projector_details" class="product_info col-12 col-sm-6">
                    <iaixsl:if test="not(page/projector/product/firm/@name = '') or (page/projector/product/@code) or (page/projector/product/series) or (page/projector/product/warranty/@name) or (page/projector/product/traits/trait)">
                        <div class="product_info_top">
                            
                            <iaixsl:if test="not(page/projector/product/firm/@name = '')">
                                <div class="producer item_info">
                                    <span>Producer: </span>
                                    <a class="brand">
                                        <iaixsl:attribute name="title">Click to view all products from this producer.</iaixsl:attribute>
                                        <iaixsl:attribute name="href"><iaixsl:value-of disable-output-escaping="yes" select="page/projector/product/firm/@productslink"/></iaixsl:attribute>
                                        <iaixsl:value-of disable-output-escaping="yes" select="page/projector/product/firm/@name"/>
                                    </a>
                                </div>
                            </iaixsl:if>

                            
                            <iaixsl:if test="page/projector/product/@code">
                                <div class="code item_info">
                                    <span>Product code: </span>
                                    <strong><iaixsl:value-of select="page/projector/product/@code"/></strong>
                                </div>
                            </iaixsl:if>

                            
                            <iaixsl:if test="page/projector/product/series">
                                <div class="series item_info">
                                    <span>Series:</span>
                                    <a>
                                        <iaixsl:attribute name="title">Click to view all products from this series.</iaixsl:attribute>
                                        <iaixsl:attribute name="href"><iaixsl:value-of select="page/projector/product/series/@link"/></iaixsl:attribute>
                                        <iaixsl:value-of select="page/projector/product/series/@name"/>
                                    </a>
                                </div>
                            </iaixsl:if>

                            
                            <iaixsl:if test="page/projector/product/warranty/@name">
                                <div class="warranty item_info">
                                    <span>Warranty: </span>
                                    <a href="#tabs_58676">
                                        <iaixsl:attribute name="title">Click to read the warranty</iaixsl:attribute>
                                        <iaixsl:value-of select="page/projector/product/warranty/@name"/>
                                    </a>
                                </div>
                            </iaixsl:if>

                            
                            <iaixsl:if test="not($param_projector)">
                                <iaixsl:if test="page/projector/product/traits/trait[not(contains(@groupdescription, 'gs1:'))]">
                                    <iaixsl:for-each select="page/projector/product/traits/trait">
                                        <iaixsl:if test="not(contains(@groupdescription, 'gs1:'))">
                                            <iaixsl:if test="not(@groupid = preceding-sibling::trait/@groupid)">
                                                <div class="item_info">
                                                    <span><iaixsl:value-of select="@groupdescription"/>: </span>
                                                    <strong class="lt_description dright">
                                                        <iaixsl:choose>
                                                            <iaixsl:when test="@gfx">
                                                                <a class="param_trait_gfx">
                                                                    <iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
                                                                    <img class="list_traits_gfx">
                                                                        <iaixsl:attribute name="src"><iaixsl:value-of select="@gfx"/></iaixsl:attribute>
                                                                        <iaixsl:attribute name="alt"><iaixsl:value-of select="@traitdescription"/></iaixsl:attribute>
                                                                    </img>
                                                                </a>
                                                            </iaixsl:when>
                                                            <iaixsl:otherwise>
                                                                <a class="param_trait"><iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute><iaixsl:value-of select="@traitdescription"/></a>
                                                            </iaixsl:otherwise>
                                                        </iaixsl:choose>
                                                        <iaixsl:if test="@groupid = following-sibling::trait/@groupid">
                                                            <iaixsl:variable name="temporaryGroup"><iaixsl:value-of select="@groupid"/></iaixsl:variable>
                                                            <iaixsl:for-each select="following-sibling::trait[(@groupid = $temporaryGroup)]">
                                                                <iaixsl:choose>
                                                                    <iaixsl:when test="@gfx">
                                                                        <a>
                                                                            <iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
                                                                                <img class="list_traits_gfx">
                                                                                    <iaixsl:attribute name="src"><iaixsl:value-of select="@gfx"/></iaixsl:attribute>
                                                                                    <iaixsl:attribute name="alt"><iaixsl:value-of select="@traitdescription"/></iaixsl:attribute>
                                                                                </img>
                                                                        </a></iaixsl:when><iaixsl:otherwise>, <a><iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute><iaixsl:value-of select="@traitdescription"/></a>
                                                                    </iaixsl:otherwise>
                                                                </iaixsl:choose>
                                                            </iaixsl:for-each>
                                                        </iaixsl:if>
                                                    </strong>
                                                </div>
                                            </iaixsl:if>
                                        </iaixsl:if>
                                    </iaixsl:for-each>
                                </iaixsl:if>
                            </iaixsl:if>
                        </div>
                    </iaixsl:if>

                    
                    <iaixsl:if test="(page/projector/product/multiversions) and (count(page/projector/product/multiversions/multi_version) > 1)">
                        <div id="multi_versions">
                            <iaixsl:for-each select="page/projector/product/multiversions/multi_version">
                                <div class="multi_version product_section">
                                    <div class="fancy-select">
                                        <iaixsl:attribute name="id">mw_<iaixsl:value-of select="@id"/></iaixsl:attribute>
                                        <div class="trigger">
                                            <iaixsl:choose>
                                                <iaixsl:when test="item[@selected='true']/values/value">
                                                    <iaixsl:for-each select="item[@selected='true']/values/value">
                                                    <iaixsl:if test="not(position() = 1)">
                                                         / 
                                                    </iaixsl:if>
                                                    <em class="multiversion_label"><iaixsl:value-of disable-output-escaping="yes" select="../../../@name"/>:</em><span class="multiversion_value"><iaixsl:value-of disable-output-escaping="yes" select="@name"/></span>
                                                    </iaixsl:for-each>
                                                </iaixsl:when>
                                                <iaixsl:otherwise>
                                                    Select ...
                                                </iaixsl:otherwise>
                                            </iaixsl:choose>
                                        </div>
                                        <ul class="options">
                                            <iaixsl:for-each select="item">
                                                <iaixsl:variable name="value_name"><iaixsl:for-each select="values/value"><iaixsl:if test="not(position() = 1)"> / </iaixsl:if><iaixsl:value-of disable-output-escaping="yes" select="@name"/></iaixsl:for-each></iaixsl:variable>
                                                <li>
                                                    <iaixsl:attribute name="class"><iaixsl:if test="@disabled='true'">disabled </iaixsl:if><iaixsl:if test="@selected='true'">selected</iaixsl:if></iaixsl:attribute>
                                                    <iaixsl:attribute name="id">v<iaixsl:value-of disable-output-escaping="yes" select="values/@id"/></iaixsl:attribute>
                                                    <iaixsl:attribute name="data-values_id"><iaixsl:value-of disable-output-escaping="yes" select="values/@id"/></iaixsl:attribute>
                                                    <iaixsl:attribute name="data-value"><iaixsl:value-of select="position()"/></iaixsl:attribute>
                                                    <iaixsl:attribute name="data-title"><iaixsl:value-of select="$value_name"/></iaixsl:attribute>
                                                    <iaixsl:attribute name="data-product"><iaixsl:value-of select="products/product/@product_id"/></iaixsl:attribute>
                                                    <a>
                                                        <iaixsl:attribute name="title"><iaixsl:value-of select="$value_name"/></iaixsl:attribute>
                                                        <iaixsl:attribute name="href"><iaixsl:value-of select="products/product/@url"/></iaixsl:attribute>
                                                        <iaixsl:for-each select="values/value">
                                                            <iaixsl:if test="@gfx">
                                                            <span class="gfx">
                                                                <img>
                                                                    <iaixsl:attribute name="src"><iaixsl:value-of select="@gfx"/></iaixsl:attribute>
                                                                    <iaixsl:attribute name="alt"><iaixsl:value-of select="$value_name"/></iaixsl:attribute>
                                                                </img>
                                                            </span>
                                                            </iaixsl:if>
                                                        </iaixsl:for-each>
                                                        <span>
                                                            <span><em class="multiversion_label"><iaixsl:value-of disable-output-escaping="yes" select="../@name"/>:</em><span class="multiversion_value"><iaixsl:value-of disable-output-escaping="yes" select="$value_name"/></span></span>
                                                            <iaixsl:for-each select="values/value">
                                                                <iaixsl:if test="description"><div class="description"><iaixsl:value-of disable-output-escaping="yes" select="description"/></div></iaixsl:if>
                                                            </iaixsl:for-each>
                                                            <p class="conflict_txt">Choosing this will cause the need to adjust other options. </p>
                                                        </span>
                                                    </a>
                                                </li>
                                            </iaixsl:for-each>
                                        </ul>
                                        <p class="conflict_txt">Choose other option</p>
                                        <iaixsl:if test="description"><div class="description"><iaixsl:value-of disable-output-escaping="yes" select="description"/></div></iaixsl:if>
                                    </div>
                                    <iaixsl:if test="@gfx">
                                        <div class="gfx">
                                            <img>
                                            <iaixsl:attribute name="src"><iaixsl:value-of select="@gfx"/></iaixsl:attribute>
                                            <iaixsl:attribute name="alt"><iaixsl:value-of select="@name"/></iaixsl:attribute>
                                            </img>
                                        </div>
                                    </iaixsl:if>
                                </div>
                            </iaixsl:for-each>
                        </div>
                    </iaixsl:if>

                    
                    <iaixsl:if test="(page/projector/product/versions/@count > 0) and (count(page/projector/product/multiversions/multi_version) = 1)">
                        <iaixsl:choose>
                            <iaixsl:when test="page/projector/product/versions/@count > 9 or count(page/projector/product/versions/version[not(@gfx)]) > 0">
                                <div class="product_section versions mb-3">
                                    <div class="fancy-select">
                                        <div class="trigger">
                                            <div class="version_label"><iaixsl:value-of select="page/projector/product/versions/@name"/>:</div><span class="version_selected_name"><iaixsl:value-of select="page/projector/product/versions/version[@id = /shop/page/projector/product/@id]/@name"/></span>
                                        </div>
                                        <ul class="options">
                                            <iaixsl:for-each select="page/projector/product/versions/version">
                                                <li>
                                                    <a class="version_item">
                                                        <iaixsl:attribute name="title"><iaixsl:value-of select="@name"/></iaixsl:attribute>
                                                        <iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
                                                        <iaixsl:if test="@id = /shop/page/projector/product/@id">
                                                            <iaixsl:attribute name="class">version_item selected</iaixsl:attribute>
                                                        </iaixsl:if>
                                                        <iaixsl:if test="@gfx">
                                                            <span class="gfx">
                                                                <img>
                                                                    <iaixsl:attribute name="src"><iaixsl:value-of select="@gfx"/></iaixsl:attribute>
                                                                    <iaixsl:attribute name="alt"><iaixsl:value-of select="@name"/></iaixsl:attribute>
                                                                </img>
                                                            </span>
                                                        </iaixsl:if>
                                                        <span class="version_name"><iaixsl:value-of select="@name"/></span>
                                                    </a>
                                                </li>
                                            </iaixsl:for-each>
                                        </ul>
                                    </div>
                                </div>
                            </iaixsl:when>
                            <iaixsl:otherwise>
                                <div class="product_section versions row mx-n2">
                                    <iaixsl:for-each select="page/projector/product/versions/version">
                                        <div class="col-4 col-md-2 p-2 select_link">
                                            <a>
                                                <iaixsl:if test="@id = /shop/page/projector/product/@id">
                                                    <iaixsl:attribute name="class">selected</iaixsl:attribute>
                                                </iaixsl:if>
                                                <iaixsl:attribute name="title"><iaixsl:value-of select="@name"/></iaixsl:attribute>
                                                <iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
                                                <iaixsl:if test="@gfx">
                                                    <span class="gfx">
                                                        <img>
                                                            <iaixsl:attribute name="src"><iaixsl:value-of select="@gfx"/></iaixsl:attribute>
                                                            <iaixsl:attribute name="alt"><iaixsl:value-of select="@name"/></iaixsl:attribute>
                                                        </img>
                                                    </span>
                                                </iaixsl:if>
                                            </a>
                                        </div>
                                    </iaixsl:for-each>
                                </div>
                            </iaixsl:otherwise>
                        </iaixsl:choose>
                    </iaixsl:if>

                    
                    <div class="product_section sizes row mx-n2" id="projector_sizes_cont">
                        <iaixsl:if test="/shop/page/projector/product/sizes/size/@type = 'onesize' or /shop/page/projector/product/sizes/size/@type = 'uniw'">
                            <iaixsl:attribute name="style">display:none;</iaixsl:attribute>
                        </iaixsl:if>
                        <iaixsl:if test="((page/projector/text_sizesgroup) and (page/projector/text_sizesgroup != '')) or /shop/page/projector/product/sizes_chart and (count(/shop/page/projector/product/sizes/size) > 6)">
                            <iaixsl:attribute name="class">sizes sizes_projector col-md-7 col-sm-12 col-xs-12</iaixsl:attribute>
                        </iaixsl:if>
                        <iaixsl:choose>
                            <iaixsl:when test="(count(/shop/page/projector/product/sizes/size) > 6) and (not($sizes_projector = '0') or not($fashion_view = '0'))">
                                <select name="projector_sizes" id="projector_sizes_select" class="col px-2">
                                    <option value="">Choose size</option>
                                    <iaixsl:for-each select="page/projector/product/sizes/size">
                                        <option>
                                            <iaixsl:attribute name="class">size_<iaixsl:value-of select="@type"/><iaixsl:if test="(@amount = '0')"> disabled</iaixsl:if></iaixsl:attribute>
                                            <iaixsl:if test="@selected='true'"><iaixsl:attribute name="selected">selected</iaixsl:attribute></iaixsl:if>
                                            <iaixsl:attribute name="value"><iaixsl:value-of select="@type"/></iaixsl:attribute>
                                            <iaixsl:attribute name="data-count"><iaixsl:value-of select="@amount"/></iaixsl:attribute>
                                            <iaixsl:if test="availability/@status_id">
                                                <iaixsl:attribute name="data-statusid"><iaixsl:value-of select="availability/@status_id"/></iaixsl:attribute>
                                            </iaixsl:if>
                                            <iaixsl:value-of select="@description"/>
                                        </option>
                                    </iaixsl:for-each>
                                </select>
                            </iaixsl:when>
                            <iaixsl:otherwise>
                                <iaixsl:for-each select="page/projector/product/sizes/size">
                                    <div class="col-3 p-2">
                                        <iaixsl:choose>
                                            <iaixsl:when test="(@amount > 0) or (@amount = '-1')">
                                                <a class="select_button">
                                                    <iaixsl:if test="@selected='true'"><iaixsl:attribute name="class">select_button active</iaixsl:attribute></iaixsl:if>
                                                    <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/page/projector/product/@link"/>?selected_size=<iaixsl:value-of select="@type"/></iaixsl:attribute>
                                                    <iaixsl:attribute name="data-type"><iaixsl:value-of select="@type"/></iaixsl:attribute>
                                                    <iaixsl:value-of select="@description"/>
                                                </a>
                                            </iaixsl:when>
                                            <iaixsl:otherwise>
                                                <a class="select_button disabled">
                                                    <iaixsl:if test="@selected='true'"><iaixsl:attribute name="class">select_button disabled active</iaixsl:attribute></iaixsl:if>
                                                    <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/page/projector/product/@link"/>?selected_size=<iaixsl:value-of select="@type"/></iaixsl:attribute>
                                                    <iaixsl:attribute name="data-type"><iaixsl:value-of select="@type"/></iaixsl:attribute>
                                                    <iaixsl:value-of select="@description"/>
                                                </a>
                                            </iaixsl:otherwise>
                                        </iaixsl:choose>
                                    </div>
                                </iaixsl:for-each>
                            </iaixsl:otherwise>
                        </iaixsl:choose>
                    </div>

                    <iaixsl:if test="((page/projector/text_sizesgroup) and (page/projector/text_sizesgroup != '')) or /shop/page/projector/product/sizes_chart">
                        <div class="product_section show_size" id="projector_show_size">
                            <iaixsl:if test="($fashion_view and not($fashion_view = '0')) or ($sizes_projector and not($sizes_projector = '0')) and (count(/shop/page/projector/product/sizes/size) > 6)">
                                <iaixsl:attribute name="class">show_sizes_projector col-md-5 col-sm-12 col-xs-12</iaixsl:attribute>
                            </iaixsl:if>

                            <div class="product_section_sub">
                                <a href="#show_size_cms" class="show_size_cms">Size chart - check which size to choose.</a>
                            </div>
                        </div>
                    </iaixsl:if>

                    <div class="projector_product_status_wrapper">
                        <iaixsl:if test="not(/shop/page/projector/product/sizes/size[@selected='true'])"><iaixsl:attribute name="style">display:none</iaixsl:attribute></iaixsl:if>
                        
                        <div id="projector_status_description_wrapper">
                            <iaixsl:if test="not(/shop/page/projector/product/sizes/size[@selected='true'])"><iaixsl:attribute name="style">display:none</iaixsl:attribute></iaixsl:if>
                            <label>
                                Availability:
                            </label>
                            <div>
                                
                                <iaixsl:if test="/shop/page/projector/product/sizes/size/availability/@status_gfx">
                                    <img id="projector_status_gfx" class="projector_status_gfx" alt="status_icon">
                                        <iaixsl:attribute name="src"><iaixsl:choose><iaixsl:when test="/shop/page/projector/product/sizes/size[@selected='true']/availability/@status_gfx"><iaixsl:value-of select="/shop/page/projector/product/sizes/size[@selected='true']/availability/@status_gfx"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="/shop/page/projector/product/sizes/size/availability/@status_gfx"/></iaixsl:otherwise></iaixsl:choose></iaixsl:attribute>
                                    </img>
                                </iaixsl:if>
                                
                                <iaixsl:if test="$amount_txt and not(/shop/page/projector/product/@product_type = 'product_bundle')">
                                    <span class="projector_amount" id="projector_amount">
                                        <iaixsl:if test="/shop/page/projector/product/sizes/size[@selected='true']"><iaixsl:attribute name="style">display:none</iaixsl:attribute></iaixsl:if>
                                        <strong>
                                            <iaixsl:choose>
                                                <iaixsl:when test="$fashion_view and not($fashion_view = '0')">
                                                    <iaixsl:value-of disable-output-escaping="yes" select="$amount_txt2"/>
                                                </iaixsl:when>
                                                <iaixsl:otherwise>
                                                    <iaixsl:value-of disable-output-escaping="yes" select="$amount_txt"/>
                                                </iaixsl:otherwise>
                                            </iaixsl:choose>
                                        </strong>
                                        <iaixsl:if test="$fashion_view and not($fashion_view = '0')">
                                             in stock
                                        </iaixsl:if>
                                    </span>
                                </iaixsl:if>
                                
                                <span class="projector_status_description" id="projector_status_description">
                                    <iaixsl:choose>
                                        <iaixsl:when test="/shop/page/projector/product/sizes/size[@selected='true']/availability/@status_description">
                                            <iaixsl:value-of select="/shop/page/projector/product/sizes/size[@selected='true']/availability/@status_description"/>
                                        </iaixsl:when>
                                        <iaixsl:otherwise>
                                            <iaixsl:value-of select="/shop/page/projector/product/sizes/size/availability/@status_description"/>
                                        </iaixsl:otherwise>
                                    </iaixsl:choose>
                                </span>
                            </div>
                        </div>

                        
                        <iaixsl:if test="(/shop/page/projector/product/sizes/size/availability/delay_time/@unknown_delivery_time = 'true') or (/shop/page/projector/bundled/product/sizes/size/availability/delay_time/@unknown_delivery_time = 'true')">
                            <div id="projector_shipping_unknown">
                                <iaixsl:if test="not(/shop/page/projector/product/sizes/size[@selected='true'])">
                                    <iaixsl:attribute name="style">display:none</iaixsl:attribute>
                                </iaixsl:if>
                                <span>
                                    <a target="_blank">
                                        <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/contact/link/@url"/></iaixsl:attribute>
                                        Contact the shop staff
                                    </a>
                                    in order to estimate time of preparing this product for shipment.
                                </span>
                            </div>
                        </iaixsl:if>

                        
                        <iaixsl:if test="not(/shop/page/projector/product/@product_type = 'product_service')">
                            <div id="projector_shipping_info">
                                <iaixsl:if test="not(/shop/page/projector/product/sizes/size[@selected='true'])"><iaixsl:attribute name="style">display:none</iaixsl:attribute></iaixsl:if>
                                <label>
                                    <iaixsl:choose>
                                        <iaixsl:when test="/shop/page/projector/bundled/@collection = 'true' and $wysylka_bundle_txt">
                                            <iaixsl:value-of disable-output-escaping="yes" select="$wysylka_bundle_txt"/>
                                        </iaixsl:when>
                                        <iaixsl:otherwise>
                                            Ready for dispatch
                                        </iaixsl:otherwise>
                                    </iaixsl:choose>
                                </label>
                                <div>
                                    <span class="projector_delivery_days" id="projector_delivery_days">
                                        <iaixsl:choose>
                                            <iaixsl:when test="/shop/page/projector/product/sizes/size[@selected='true']">
                                                <iaixsl:choose>
                                                    <iaixsl:when test="(/shop/page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@week_amount = 0) and (/shop/page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@hours = 0) and (/shop/page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@minutes = 0)">
                                                        <iaixsl:choose>
                                                            <iaixsl:when test="/shop/page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@today = 'true'">
                                                                today!
                                                            </iaixsl:when>
                                                            <iaixsl:when test="/shop/page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@week_day = 1">
                                                                on Monday 
                                                            </iaixsl:when>
                                                            <iaixsl:when test="/shop/page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@week_day = 2">
                                                                on Tuesday 
                                                            </iaixsl:when>
                                                            <iaixsl:when test="/shop/page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@week_day = 3">
                                                                on Wednesday 
                                                            </iaixsl:when>
                                                            <iaixsl:when test="/shop/page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@week_day = 4">
                                                                on Thursday 
                                                            </iaixsl:when>
                                                            <iaixsl:when test="/shop/page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@week_day = 5">
                                                                on Friday 
                                                            </iaixsl:when>
                                                            <iaixsl:when test="/shop/page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@week_day = 6">
                                                                on Saturday 
                                                            </iaixsl:when>
                                                            <iaixsl:when test="/shop/page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@week_day = 7">
                                                                on Sunday 
                                                            </iaixsl:when>
                                                        </iaixsl:choose>
                                                    </iaixsl:when>
                                                    <iaixsl:when test="page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@days">
                                                        Ready to ship in 
                                                        <iaixsl:if test="page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@days > 0">
                                                            <iaixsl:value-of select="page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@days"/>
                                                            <iaixsl:choose>
                                                            <iaixsl:when test="page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@days ='1'">
                                                                     day 
                                                                </iaixsl:when>
                                                                <iaixsl:otherwise>
                                                                    days 
                                                                </iaixsl:otherwise>
                                                            </iaixsl:choose>
                                                        </iaixsl:if>
                                                        <iaixsl:if test="page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@hours > 0">
                                                            <iaixsl:value-of select="page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@hours"/>
                                                            h 
                                                        </iaixsl:if>
                                                        <iaixsl:if test="page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@minutes > 0">
                                                            <iaixsl:value-of select="page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@minutes"/>
                                                             min  
                                                        </iaixsl:if>
                                                    </iaixsl:when>
                                                </iaixsl:choose>
                                            </iaixsl:when>
                                            <iaixsl:otherwise>
                                                <iaixsl:choose>
                                                    <iaixsl:when test="(/shop/page/projector/product/sizes/size/availability/shipping_time/@week_amount = 0) and (/shop/page/projector/product/sizes/size/availability/shipping_time/@hours = 0) and (/shop/page/projector/product/sizes/size/availability/shipping_time/@minutes = 0)">
                                                        <iaixsl:choose>
                                                            <iaixsl:when test="/shop/page/projector/product/sizes/size/availability/shipping_time/@today = 'true'">
                                                                today!
                                                            </iaixsl:when>
                                                            <iaixsl:when test="/shop/page/projector/product/sizes/size/availability/shipping_time/@week_day = 1">
                                                                on Monday 
                                                            </iaixsl:when>
                                                            <iaixsl:when test="/shop/page/projector/product/sizes/size/availability/shipping_time/@week_day = 2">
                                                                on Tuesday 
                                                            </iaixsl:when>
                                                            <iaixsl:when test="/shop/page/projector/product/sizes/size/availability/shipping_time/@week_day = 3">
                                                                on Wednesday 
                                                            </iaixsl:when>
                                                            <iaixsl:when test="/shop/page/projector/product/sizes/size/availability/shipping_time/@week_day = 4">
                                                                on Thursday 
                                                            </iaixsl:when>
                                                            <iaixsl:when test="/shop/page/projector/product/sizes/size/availability/shipping_time/@week_day = 5">
                                                                on Friday 
                                                            </iaixsl:when>
                                                            <iaixsl:when test="/shop/page/projector/product/sizes/size/availability/shipping_time/@week_day = 6">
                                                                on Saturday 
                                                            </iaixsl:when>
                                                            <iaixsl:when test="/shop/page/projector/product/sizes/size/availability/shipping_time/@week_day = 7">
                                                                on Sunday 
                                                            </iaixsl:when>
                                                        </iaixsl:choose>
                                                    </iaixsl:when>
                                                    <iaixsl:when test="page/projector/product/sizes/size/availability/shipping_time/@days">
                                                        Ready to ship in 
                                                        <iaixsl:if test="page/projector/product/sizes/size/availability/shipping_time/@days > 0">
                                                            <iaixsl:value-of select="page/projector/product/sizes/size/availability/shipping_time/@days"/>
                                                            <iaixsl:choose>
                                                                <iaixsl:when test="page/projector/product/sizes/size/availability/shipping_time/@days ='1'">
                                                                     day 
                                                                </iaixsl:when>
                                                                <iaixsl:otherwise>
                                                                    days 
                                                                </iaixsl:otherwise>
                                                            </iaixsl:choose>
                                                        </iaixsl:if>
                                                        <iaixsl:if test="page/projector/product/sizes/size/availability/shipping_time/@hours > 0">
                                                            <iaixsl:value-of select="page/projector/product/sizes/size/availability/shipping_time/@hours"/>
                                                            h 
                                                        </iaixsl:if>
                                                        <iaixsl:if test="page/projector/product/sizes/size/availability/shipping_time/@minutes > 0">
                                                            <iaixsl:value-of select="page/projector/product/sizes/size/availability/shipping_time/@minutes"/>
                                                             min  
                                                        </iaixsl:if>
                                                    </iaixsl:when>
                                                </iaixsl:choose>
                                            </iaixsl:otherwise>
                                        </iaixsl:choose>
                                    </span>
                                </div>

                                <a class="shipping_info" href="#shipping_info">
                                    <iaixsl:attribute name="title">Check delivery time and costs </iaixsl:attribute>
                                    Check delivery time and costs 
                                </a>
                            </div>
                        </iaixsl:if>
                    </div>

                    <iaixsl:choose>
                        <iaixsl:when test="/shop/basket/@wholesaler = 'true' or /shop/page/projector/product/price/@value != 0">
                            
                            <div id="projector_prices_wrapper">
                                
                                <div class="product_section" id="projector_price_srp_wrapper">
                                    <iaixsl:if test="not(page/projector/product/price/@srp_net) and not(/shop/page/projector/product/sizes/size[@selected='true']/price/@srp_net_formatted)">
                                        <iaixsl:attribute name="style">display:none;</iaixsl:attribute>
                                    </iaixsl:if>
                                    <label class="projector_label">List price:</label>
                                    <div>
                                        <span class="projector_price_srp" id="projector_price_srp">
                                            <iaixsl:choose>
                                                <iaixsl:when test="/shop/page/projector/product/sizes/size[@selected='true']/price/@srp_net_formatted">
                                                    <iaixsl:value-of select="/shop/page/projector/product/sizes/size[@selected='true']/price/@srp_net_formatted"/>
                                                </iaixsl:when>
                                                <iaixsl:otherwise>
                                                    <iaixsl:value-of select="/shop/page/projector/product/price/@srp_net_formatted"/>
                                                </iaixsl:otherwise>
                                            </iaixsl:choose>
                                        </span>
                                    </div>
                                </div>

                                <div class="product_section" id="projector_price_value_wrapper">
                                    <label class="projector_label">
                                        <iaixsl:choose>
                                            <iaixsl:when test="/shop/page/projector/bundled/@collection = 'true' and $cena_bundle_txt">
                                                <iaixsl:value-of disable-output-escaping="yes" select="$cena_bundle_txt"/>
                                            </iaixsl:when>
                                            <iaixsl:otherwise>
                                                Our price:
                                            </iaixsl:otherwise>
                                        </iaixsl:choose>
                                    </label>
                                    <div class="projector_price_subwrapper">
                                        
                                        <div id="projector_price_maxprice_wrapper">
                                            <iaixsl:if test="not(page/projector/product/price/@maxprice_net_formatted) and not(/shop/page/projector/product/sizes/size[@selected='true']/price/@maxprice_net_formatted)">
                                                <iaixsl:attribute name="style">display:none;</iaixsl:attribute>
                                            </iaixsl:if>
                                            <del class="projector_price_maxprice" id="projector_price_maxprice">
                                                <iaixsl:choose>
                                                    <iaixsl:when test="/shop/page/projector/product/sizes/size[@selected='true']/price/@maxprice_net_formatted">
                                                        <iaixsl:value-of select="/shop/page/projector/product/sizes/size[@selected='true']/price/@maxprice_net_formatted"/>
                                                    </iaixsl:when>
                                                    <iaixsl:when test="/shop/page/projector/product/sizes/prices/@size_min_maxprice_net_formatted != /shop/page/projector/product/sizes/prices/@size_max_maxprice_net_formatted">
                                                        <span><iaixsl:value-of select="/shop/page/projector/product/sizes/prices/@size_min_maxprice_net_formatted"/></span>
                                                        <b> - </b>
                                                        <span><iaixsl:value-of select="/shop/page/projector/product/sizes/prices/@size_max_maxprice_net_formatted"/></span>
                                                    </iaixsl:when>
                                                    <iaixsl:when test="page/projector/product/price/@maxprice_net_formatted">
                                                        <iaixsl:value-of select="page/projector/product/price/@maxprice_net_formatted"/>
                                                    </iaixsl:when>
                                                </iaixsl:choose>
                                            </del>
                                        </div>

                                        <iaixsl:choose>
                                            <iaixsl:when test="page/projector/product/price/@value = 0">
                                                <strong class="projector_price_value" id="projector_price_value">
                                                    <a href="/contact.php" target="_blank">
                                                        <iaixsl:attribute name="title">Click to go to the contact form</iaixsl:attribute>
                                                        Call for price
                                                    </a>
                                                </strong>
                                            </iaixsl:when>
                                            <iaixsl:otherwise>
                                                
                                                <strong class="projector_price_value" id="projector_price_value">
                                                    <iaixsl:choose>
                                                        <iaixsl:when test="/shop/page/projector/product/sizes/size[@selected='true']/price/@price_net_formatted">
                                                            <iaixsl:value-of select="page/projector/product/price/@price_net_formatted"/>
                                                        </iaixsl:when>
                                                        <iaixsl:when test="/shop/page/projector/product/sizes/prices and /shop/page/projector/product/sizes/prices/@maxprice_net_formatted != /shop/page/projector/product/sizes/prices/@minprice_net_formatted">
                                                            <iaixsl:value-of select="/shop/page/projector/product/sizes/prices/@minprice_net_formatted"/>
                                                            -
                                                            <iaixsl:value-of select="/shop/page/projector/product/sizes/prices/@maxprice_net_formatted"/>
                                                        </iaixsl:when>
                                                        <iaixsl:otherwise>
                                                            <iaixsl:value-of select="page/projector/product/price/@price_net_formatted"/>
                                                        </iaixsl:otherwise>
                                                    </iaixsl:choose>
                                                </strong>
                                                <iaixsl:if test="(page/projector/product/sizes/@unit_sellby != '1') and (page/projector/product/sizes/size > 1)">
                                                    <script class="ajaxLoad">
                                                        $('#projector_price_value').html(format_price("<iaixsl:value-of select="/shop/page/projector/product/sizes/prices/@minprice * page/projector/product/sizes/@unit_sellby"/>",{mask: app_shop.vars.currency_format,currency: "<iaixsl:value-of select="/shop/currency/@name"/>",currency_space: app_shop.vars.currency_space,currency_before_price: app_shop.vars.currency_before_value})+' - '+format_price("<iaixsl:value-of select="/shop/page/projector/product/sizes/prices/@maxprice * page/projector/product/sizes/@unit_sellby"/>",{mask: app_shop.vars.currency_format,currency: "<iaixsl:value-of select="/shop/currency/@name"/>",currency_space: app_shop.vars.currency_space,currency_before_price: app_shop.vars.currency_before_value}));
                                                    </script>
                                                </iaixsl:if>

                                                <div class="price_gross_info">
                                                    <small class="projector_price_unit_sep">
                                                         / 
                                                    </small>
                                                    <small class="projector_price_unit_sellby" id="projector_price_unit_sellby" style="display:none">
                                                        <iaixsl:value-of select="/shop/page/projector/product/sizes/@unit_sellby"/>
                                                    </small>
                                                    <small class="projector_price_unit" id="projector_price_unit">
                                                        <iaixsl:value-of select="/shop/page/projector/product/sizes/@unit"/>
                                                    </small>
                                                    <span>
                                                        <iaixsl:if test="not(/shop/contact/owner/@vat_registered = 'false')">
                                                            <iaixsl:if test="not(/shop/contact/owner/@vat_registered = 'false') and not(/shop/client_data/@uses_vat='false')">
                                                                
                                                                <iaixsl:choose>
                                                                    <iaixsl:when test="/shop/page/projector/bundled/@collection = 'true' and $brutto_bundle_txt">
                                                                        <iaixsl:value-of disable-output-escaping="yes" select="$brutto_bundle_txt"/>
                                                                    </iaixsl:when>
                                                                    <iaixsl:otherwise>
                                                                         net
                                                                    </iaixsl:otherwise>
                                                                </iaixsl:choose>
                                                            </iaixsl:if>
                                                        </iaixsl:if>
                                                    </span>

                                                    <iaixsl:if test="page/projector/product/sizes/size[1]/price/rebateNumber">
                                                        <span id="projector_rebateNumber">
                                                            <span id="projector_rebatenumber">Buy 
                                                                <span class="product_section rebates_sub">
                                                                    <span id="projector_product_rebatenumber_threshold"><iaixsl:value-of select="format-number(page/projector/product/sizes/size/price/rebateNumber/@nextthreshold, '#')"/></span>&#160;<iaixsl:value-of select="page/projector/product/sizes/@unit"/>
                                                                         and save
                                                                        <strong>
                                                                            <span id="projector_product_rebatenumber_value">
                                                                                <iaixsl:choose>
                                                                                    <iaixsl:when test="contains(page/projector/product/sizes/size[1]/price/rebateNumber/@nextvalue, '.00')">
                                                                                        <iaixsl:value-of select="format-number(page/projector/product/sizes/size[1]/price/rebateNumber/@nextvalue, '#')"/>%
                                                                                    </iaixsl:when>
                                                                                    <iaixsl:otherwise>
                                                                                        <iaixsl:value-of select="page/projector/product/sizes/size[1]/price/rebateNumber/@nextvalue"/>%
                                                                                    </iaixsl:otherwise>
                                                                                </iaixsl:choose>
                                                                            </span>
                                                                        </strong>
                                                                    </span>
                                                                </span>
                                                                <div class="tooltipContent">
                                                                    <iaixsl:for-each select="page/projector/product/sizes/size[1]/price/rebateNumber/rebate">
                                                                        <div class="rebatenumber_rebate">
                                                                            <strong>Discount 
                                                                                <span>
                                                                                    <iaixsl:choose>
                                                                                        <iaixsl:when test="contains(@value, '.00')">
                                                                                            <iaixsl:value-of select="format-number(@value, '#')"/>%
                                                                                        </iaixsl:when>
                                                                                        <iaixsl:otherwise>
                                                                                            <iaixsl:value-of select="@value"/>%
                                                                                        </iaixsl:otherwise>
                                                                                    </iaixsl:choose>
                                                                                </span>
                                                                            </strong>
                                                                            <iaixsl:choose>
                                                                                <iaixsl:when test="$thresholdEnd_enable and (@threshold = @threshold_end)">
                                                                                    
                                                                                </iaixsl:when>
                                                                                <iaixsl:otherwise>
                                                                                     from 
                                                                                </iaixsl:otherwise>
                                                                            </iaixsl:choose>
                                                                            <span><iaixsl:value-of select="format-number(@threshold, '#')"/></span>&#160;<iaixsl:value-of select="/shop/page/projector/product/sizes/@unit"/><iaixsl:if test="$thresholdEnd_enable and not(@threshold = @threshold_end)"> to <span><iaixsl:value-of select="format-number(@threshold_end, '#')"/></span>&#160;<iaixsl:value-of select="/shop/page/projector/product/sizes/@unit"/></iaixsl:if>
                                                                        </div>
                                                                    </iaixsl:for-each>
                                                                </div>
                                                            </span>
                                                    </iaixsl:if>
                                                </div>
                                            </iaixsl:otherwise>
                                        </iaixsl:choose>

                                        <div class="instalment_yousave">
                                          <span id="projector_instalment_wrapper"/>

                                          <iaixsl:choose>
                                              <iaixsl:when test="/shop/page/projector/product/bundle_price/@amount_diff_gross and /shop/page/projector/bundled/@collection = 'true' and $taniej_bundle_txt">
                                                  <span class="projector_price_yousave" id="projector_price_yousave_bundle">
                                                      <iaixsl:if test="/shop/page/projector/product/bundle_price/@amount_diff_gross = '0.00'">
                                                          <iaixsl:attribute name="style">display:none;</iaixsl:attribute>
                                                      </iaixsl:if>
                                                      <iaixsl:value-of disable-output-escaping="yes" select="$taniej_bundle_txt"/><span class="percent_diff"><iaixsl:value-of select="/shop/page/projector/product/bundle_price/@percent_diff"/></span>%
                                                      (<span class="amount_diff_gross"><iaixsl:value-of select="/shop/page/projector/product/bundle_price/@amount_diff_gross_formatted"/></span>)
                                                  </span>
                                              </iaixsl:when>
                                              <iaixsl:otherwise>
                                                  <span class="projector_price_yousave" id="projector_price_yousave">
                                                      <iaixsl:choose>
                                                          <iaixsl:when test="/shop/page/projector/product/bundle_price/@amount_diff_gross">
                                                              <span class="projector_price_save_text">
                                                                   You save 
                                                              </span>
                                                              <span class="projector_price_save_percent">
                                                                  <iaixsl:value-of select="/shop/page/projector/product/bundle_price/@percent_diff"/>% 
                                                              </span>
                                                              <span class="projector_price_save_value">
                                                                  (<span class="projector_price"><iaixsl:value-of select="/shop/page/projector/product/bundle_price/@amount_diff_gross"/><span class="projector_currency"><iaixsl:value-of select="/shop/currency/@name"/></span></span>) when buying in a set. 
                                                              </span>
                                                          </iaixsl:when>
                                                          <iaixsl:when test="/shop/page/projector/product/sizes/size[@selected='true']/price/@yousave_percent">
                                                              <span class="projector_price_save_text">
                                                                   You save 
                                                              </span>
                                                              <span class="projector_price_save_percent">
                                                                  <iaixsl:value-of select="/shop/page/projector/product/sizes/size[@selected='true']/price/@yousave_percent"/>% 
                                                              </span>
                                                              <span class="projector_price_save_value">
                                                                  (<span class="projector_price"><iaixsl:value-of select="/shop/page/projector/product/sizes/size[@selected='true']/price/@yousave_net_formatted"/></span>).
                                                              </span>
                                                          </iaixsl:when>
                                                          <iaixsl:when test="page/projector/product/price/@yousave_percent">
                                                              <span class="projector_price_save_text">
                                                                   You save 
                                                              </span>
                                                              <span class="projector_price_save_percent">
                                                                  <iaixsl:value-of select="page/projector/product/price/@yousave_percent"/>% 
                                                              </span>
                                                              <span class="projector_price_save_value">
                                                                  (<span class="projector_price"><iaixsl:value-of select="page/projector/product/price/@yousave_net_formatted"/></span>).
                                                              </span>
                                                          </iaixsl:when>
                                                          <iaixsl:otherwise>
                                                              <iaixsl:attribute name="style">display:none;</iaixsl:attribute>
                                                          </iaixsl:otherwise>
                                                      </iaixsl:choose>
                                                  </span>
                                              </iaixsl:otherwise>
                                          </iaixsl:choose>
                                        </div>
                                    </div>
                                </div>

                                <iaixsl:if test="/shop/page/projector/product/price/@unit_converted_price_formatted">
                                    <div id="projector_unit_converted_price" class="projector_unit_converted_price product_section">
                                        <label class="projector_label">Unit price:</label>
                                        <span class="unit_converted_price" id="unit_converted_price">
                                            <iaixsl:value-of select="/shop/page/projector/product/price/@unit_converted_price_formatted"/>
                                             / 
                                            <iaixsl:value-of select="/shop/page/projector/product/price/@unit_converted_format"/>
                                        </span>
                                    </div>
                                </iaixsl:if>

                                
                                <iaixsl:if test="/shop/page/projector/product/bundle_price/@price_gross and $suma_cen_txt">
                                    <div id="projector_bundle_price_gross" class="product_section">
                                        <label class="projector_label"><iaixsl:value-of disable-output-escaping="yes" select="$suma_cen_txt"/></label>
                                        <strong class="projector_bundle_sum_price"><span class="projector_price"><iaixsl:value-of select="/shop/page/projector/product/bundle_price/@price_net"/><span class="projector_currency"><iaixsl:value-of select="/shop/currency/@name"/></span></span></strong>
                                    </div>
                                </iaixsl:if>

                                <iaixsl:if test="page/projector/product/sizes/@unit_sellby != '1'">
                                    <div id="projector_sellbyrecount" class="projector_sellbyrecount product_section">
                                        <label class="projector_label">Sold in sets of: </label>
                                        <span>
                                            <iaixsl:value-of select="page/projector/product/sizes/@unit_sellby"/>&#160;<iaixsl:value-of select="page/projector/product/sizes/@unit"/>
                                            <span id="projector_sellbyprice_wrapper" style="display:none;">(<span id="projector_sellbyprice"><iaixsl:value-of select="/shop/page/projector/product/price/@price_net_formatted"/></span>/ 1<iaixsl:value-of select="page/projector/product/sizes/@unit"/>)</span>
                                        </span>
                                    </div>
                                </iaixsl:if>

                                <iaixsl:if test="$advanceprice_txt and page/projector/product/price/@advanceprice_formatted">
                                    <div id="projector_advanceprice_wrapper">
                                        <iaixsl:value-of disable-output-escaping="yes" select="$advanceprice_txt"/><b id="projector_advanceprice"><iaixsl:value-of select="page/projector/product/price/@advanceprice_formatted"/></b> may be required. Detailed information will be provided in the order summary, before its placement.
                                    </div>
                                </iaixsl:if>
                            </div>

                            
                            <iaixsl:if test="$showComments">
                                <div class="product_section comment">
                                    <div class="product_section_sub">
                                        <label>
                                            
                                        </label>
                                        <div>
                                            <textarea name="comment" maxlength="255"/>
                                        </div>
                                    </div>
                                </div>
                            </iaixsl:if>

                            
                            <div class="product_section tell_availability" id="projector_tell_availability">
                                <iaixsl:if test="not(/shop/page/projector/product/sizes/size[@selected='true']/availability/@status = 'disable')">
                                    <iaixsl:attribute name="style">display:none</iaixsl:attribute>
                                </iaixsl:if>
                                <iaixsl:if test="$fashion_view and not($fashion_view = '0')">
                                    <iaixsl:attribute name="class">product_section tell_availability col-md-7 col-sm-12 col-xs-12</iaixsl:attribute>
                                </iaixsl:if>
                                <label>
                                    Notification:
                                </label>
                                <div class="product_section_sub">
                                    <div class="form-group">
                                        <div class="input-group has-feedback has-required">
                                            <div class="input-group-addon"><i class="icon-envelope-alt"/></div>
                                            <input type="text" class="form-control validate" name="email" data-validation-url="/ajax/client-new.php?validAjax=true" data-validation="client_email" required="required" disabled="disabled">
                                                <iaixsl:attribute name="placeholder">Your e-mail address</iaixsl:attribute>
                                            </input>
                                            <span class="form-control-feedback"/>
                                        </div>
                                    </div>
                                    <div class="checkbox" style="display:none;" id="sms_active_checkbox">
                                        <label>
                                            <input type="checkbox"/>I want to receive an additional SMS with a notification
                                        </label>
                                    </div>
                                    <div class="form-group" style="display:none;" id="sms_active_group">
                                        <div class="input-group has-feedback has-required">
                                            <div class="input-group-addon"><i class="icon-phone"/></div>
                                            <input type="text" class="form-control validate" name="phone" data-validation-url="/ajax/client-new.php?validAjax=true" data-validation="client_phone" required="required" disabled="disabled">
                                                <iaixsl:attribute name="placeholder">Your phone number</iaixsl:attribute>
                                            </input>
                                            <span class="form-control-feedback"/>
                                        </div>
                                    </div>

                                    <iaixsl:if test="$projector_form_privacy_info_text1">
                                        <p class="form-privacy-info"><iaixsl:value-of select="$projector_form_privacy_info_text1"/><a><iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/private_policy/@url"/></iaixsl:attribute>privacy policy</a><iaixsl:value-of select="$projector_form_privacy_info_text2"/></p>
                                    </iaixsl:if>

                                    <div class="form-group">
                                        <button type="submit" class="btn --solid --large">
                                            Notify of availability
                                        </button>
                                    </div>
                                    <div class="form-group">
                                        <p> Contact details entered above are not used to send newsletters or other advertisements. When you sign up to be notified, you hereby agree to receive only a one-time notification of a product re-availability.</p>
                                    </div>
                                </div>
                            </div>

                            
                            <div id="projector_buy_section" class="product_section">
                                <label class="projector_label">
                                    <iaixsl:if test="/shop/page/projector/product/@product_type = 'product_virtual'">
                                        <iaixsl:attribute name="style">visibility: hidden;</iaixsl:attribute>
                                    </iaixsl:if>
                                    <iaixsl:choose>
                                        <iaixsl:when test="/shop/page/projector/bundled/@collection = 'true' and $dokoszyka_bundle_txt">
                                            <iaixsl:value-of disable-output-escaping="yes" select="$dokoszyka_bundle_txt"/>
                                        </iaixsl:when>
                                        <iaixsl:otherwise>
                                            Quantity:
                                        </iaixsl:otherwise>
                                    </iaixsl:choose>
                                </label>
                                <div class="projector_buttons" id="projector_buttons">
                                    <iaixsl:if test="not(/shop/page/projector/product/@product_type = 'product_virtual')">
                                        <div class="projector_number" id="projector_number_cont">
                                            <iaixsl:if test="not(page/projector/product/exchange/@exchange_id)">
                                                <button id="projector_number_down" class="projector_number_down" type="button">
                                                    <i class="icon-minus"></i>
                                                </button>
                                            </iaixsl:if>
                                            <input class="projector_number" name="number" id="projector_number">
                                                <iaixsl:attribute name="value"><iaixsl:value-of select="/shop/page/projector/product/sizes/@unit_sellby"/></iaixsl:attribute>
                                                <iaixsl:if test="page/projector/product/exchange/@exchange_id">
                                                    <iaixsl:attribute name="disabled">disabled</iaixsl:attribute>
                                                </iaixsl:if>
                                            </input>
                                            <iaixsl:if test="not(page/projector/product/exchange/@exchange_id)">
                                                <button id="projector_number_up" class="projector_number_up" type="button">
                                                    <i class="icon-plus"></i>
                                                </button>
                                            </iaixsl:if>
                                        </div>
                                    </iaixsl:if>

                                    <button class="btn --solid --large projector_butttons_buy" id="projector_button_basket" type="submit">
                                        
                                        <iaixsl:attribute name="title">Add 1 item to shopping basket</iaixsl:attribute>
                                        <iaixsl:choose>
                                            <iaixsl:when test="page/projector/product/exchange/@exchange_id">
                                                Change product
                                            </iaixsl:when>
                                            <iaixsl:when test="/shop/page/projector/bundled/@collection = 'true' and $dokoszykabu_bundle_txt">
                                                <iaixsl:value-of disable-output-escaping="yes" select="$dokoszykabu_bundle_txt"/>
                                            </iaixsl:when>
                                            <iaixsl:otherwise>
                                                Add to basket
                                            </iaixsl:otherwise>
                                        </iaixsl:choose>
                                    </button>

                                    <a href="#add_favorite" class="projector_buttons_obs" id="projector_button_observe">
                                        <iaixsl:attribute name="title">Add to wish list</iaixsl:attribute>
                                        Add to wish list
                                    </a>
                                    <iaixsl:if test="/shop/compare/@active = 'y'">
                                        <a class="projector_prodstock_compare">
                                            <iaixsl:attribute name="href">settings.php?comparers=add&amp;product=<iaixsl:value-of select="page/projector/product/@id"/></iaixsl:attribute>
                                            <iaixsl:if test="/shop/action/settings/@url">
                                                <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/settings/@url"/>?comparers=add&amp;product=<iaixsl:value-of select="page/projector/product/@id"/></iaixsl:attribute>
                                            </iaixsl:if>
                                            <iaixsl:attribute name="title">Compare</iaixsl:attribute>
                                            Compare
                                        </a>
                                    </iaixsl:if>
                                </div>
                            </div>

                            
                            <iaixsl:if test="$points_in_prices_section">
                                <div id="projector_points_wrapper" class="points_price_section">
                                    <iaixsl:if test="not(/shop/page/projector/product/@for_points='true' or page/projector/product/price/@points > 0 )"><iaixsl:attribute name="style">display:none;</iaixsl:attribute></iaixsl:if>
                                    <div class="product_points_wrapper">
                                        <iaixsl:if test="page/projector/product/price/@points">
                                            <div class="product_points_section">
                                                <label class="projector_label">
                                                    Price in points: 
                                                </label>
                                                <span class="point_price" id="projector_price_points">
                                                    <iaixsl:value-of select="page/projector/product/price/@points"/><span class="projector_currency"> pts</span></span>
                                            </div>
                                        </iaixsl:if>
                                        <iaixsl:if test="page/projector/product/price/@points_recive">
                                            <div class="product_points_section">
                                                <iaixsl:if test="not(page/projector/product/price/@points_recive and page/projector/product/price/@points_recive > 0)">
                                                    <iaixsl:attribute name="style">display:none;</iaixsl:attribute>
                                                </iaixsl:if>
                                                <label class="projector_label">
                                                    After paying for this item you will be awarded: 
                                                </label>
                                                <span class="point_price" id="projector_points_recive_points">
                                                    <iaixsl:value-of select="page/projector/product/price/@points_recive"/><span class="projector_currency"> pts</span>
                                                </span>
                                            </div>
                                        </iaixsl:if>
                                    </div>
                                    <div class="product_points_buy">
                                        <iaixsl:if test="not(/shop/page/projector/product/@for_points='true')">
                                            <iaixsl:attribute name="style">display:none;</iaixsl:attribute>
                                        </iaixsl:if>
                                        <div>
                                            <button id="projector_button_points_basket" type="submit" name="forpoints" value="1" class="btn --solid">
                                                Buy for points
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </iaixsl:if>

                            <iaixsl:if test="not($points_in_prices_section)">
                                <div class="product_section points points_price_old_section" id="projector_points_wrapper">
                                    <iaixsl:if test="not(/shop/page/projector/product/@for_points='true' or page/projector/product/price/@points > 0 )">
                                        <iaixsl:attribute name="style">display:none;</iaixsl:attribute>
                                    </iaixsl:if>
                                    <div class="product_section_sub">
                                        <div class="projector_points_sub_wrapper">
                                            <div class="projector_price_points_wrapper" id="projector_price_points_wrapper">
                                                <label class="projector_label">
                                                    Price in points: 
                                                </label>
                                                <span class="projector_price_points" id="projector_price_points">
                                                    <iaixsl:value-of select="page/projector/product/price/@points"/><span class="projector_currency"> pts</span>                                   </span>
                                            </div>
                                            <div class="projector_price_points_recive_wrapper" id="projector_price_points_recive_wrapper">
                                                <iaixsl:if test="not(page/projector/product/price/@points_recive and page/projector/product/price/@points_recive > 0)">
                                                    <iaixsl:attribute name="style">display:none;</iaixsl:attribute>
                                                </iaixsl:if>
                                                <label class="projector_label">
                                                    After paying for this item you will be awarded: 
                                                </label>
                                                <span class="projector_points_recive_points" id="projector_points_recive_points">
                                                    <iaixsl:value-of select="page/projector/product/price/@points_recive"/><span class="projector_currency"> pts</span>
                                                </span>
                                            </div>
                                        </div>

                                        <button id="projector_button_points_basket" type="submit" name="forpoints" value="1" class="btn --solid">
                                            <iaixsl:if test="not(/shop/page/projector/product/@for_points='true')">
                                                <iaixsl:attribute name="style">display:none;</iaixsl:attribute>
                                            </iaixsl:if>
                                            Buy for points
                                        </button>
                                    </div>
                                </div>
                            </iaixsl:if>
                        </iaixsl:when>
                        <iaixsl:otherwise>
                            <a class="btn --solid --large show_hurt_price_search" href="/login.php">
                                Product not available in retail sale. Register to view wholesale prices.
                            </a>
                        </iaixsl:otherwise>
                    </iaixsl:choose>
                </div>

                
                <iaixsl:if test="/shop/@trust_level = '1'">
                    <div id="superfairshop_info">
                        <div class="superfairshop_info_wrapper">
                            <div>
                                <img src="/gfx/rum/iai_security_supershop.png?r=1571748615" alt="SuperFair.Shop badge"/>
                                <strong>
                                    We ship all packages at declared time
                                </strong>
                                <p>
                                    We have the SuperFair.Shop ™ badge thanks to which our shipments are automatically monitored on a daily basis in terms of compliance with the declared shipment time.
                                </p>
                                <p>
                                    The badge means that our shipments are sent as planned. We also care about your safety and comfort.
                                </p>
                            </div>
                        </div>
                    </div>
                </iaixsl:if>
            </form>

            <div id="projector_rebatenumber_tip_copy" style="display:none;">
                <img class="projector_rebatenumber_tip" src="/gfx/rum/help_tip.png?r=1571748615" alt="tip"/>
            </div>

            
            <div id="alert_cover" class="projector_alert_55916" style="display:none" onclick="Alertek.hide_alert();"></div>
            <script class="ajaxLoad">
                app_shop.vars.contact_link = "<iaixsl:value-of select="/shop/contact/link/@url"/>";
            </script>

            
            <iaixsl:if test="/shop/@get_ajax_projector_xml"> </iaixsl:if>
            <iaixsl:if test="/shop/page/projector/bookmarklets/item/@icon_small"> </iaixsl:if>
            <iaixsl:if test="/shop/page/projector/product/products_other_founds"> </iaixsl:if>
            <iaixsl:if test="/shop/page/projector/product/payment/instalment/@src"> </iaixsl:if>
        <!--Karta produktu - Zestawy (projector_bundle_zone, 106653.1)-->
            <iaixsl:if test="page/projector/bundled/product">
                <div id="projector_bundle_product" >
                    <iaixsl:if test="/shop/page/projector/bundled/@left_quantity and not(/shop/page/projector/product/bundle_price/@amount_diff_gross = '0.00')">
                        <div class="bundle_rabat bg_alter">
                            <h2>Gain a discount when buying products from the collection</h2>
                            <div>
                                <span>
                                    Select at least 
                                    <iaixsl:value-of select="/shop/page/projector/bundled/@left_quantity"/>
                                     products and get a discount!

                                </span>
                            </div>
                        </div>
                    </iaixsl:if>

                    <h2 class="big_label product_bundle">
                        <iaixsl:choose>
                            <iaixsl:when test="/shop/page/projector/bundled/@collection='true'">
                                In collection
                            </iaixsl:when>
                            <iaixsl:otherwise>
                                In a set
                            </iaixsl:otherwise>
                        </iaixsl:choose>
                    </h2>
                    <div class="product_bundle">

                        <ul class="product_bundle">
                            <iaixsl:for-each select="page/projector/bundled/product">
                                <li class="product_bundle">
                                    <iaixsl:attribute name="rel">#projector_image_bundled<iaixsl:value-of select="position()"/></iaixsl:attribute>
                                    <iaixsl:if test="/shop/page/projector/bundled/@collection='true'">
                                        <div class="product_bundle_quantity">
                                            <input type="checkbox" class="bundled_quantity">
                                                <iaixsl:attribute name="name">bundled_quantity[<iaixsl:value-of select="@id"/>]</iaixsl:attribute>
                                                <iaixsl:attribute name="value"><iaixsl:value-of select="sizes/@unit_sellby"/></iaixsl:attribute>
                                                <iaixsl:attribute name="data-amount">
                                                    <iaixsl:choose>
                                                        <iaixsl:when test="sizes/size[@amount!=0][1]/@amount">
                                                            <iaixsl:value-of select="sizes/size[@amount!=0][1]/@amount"/>
                                                        </iaixsl:when>
                                                        <iaixsl:otherwise>
                                                            <iaixsl:value-of select="sizes/size[1]/@amount"/>
                                                        </iaixsl:otherwise>
                                                    </iaixsl:choose>
                                                </iaixsl:attribute>
                                                <iaixsl:attribute name="data-unit_sellby"><iaixsl:value-of select="sizes/@unit_sellby"/></iaixsl:attribute>
                                                <iaixsl:attribute name="data-unit"><iaixsl:value-of select="sizes/@unit"/></iaixsl:attribute>
                                                <iaixsl:attribute name="data-unit_precision"><iaixsl:value-of select="sizes/@unit_precision"/></iaixsl:attribute>
                                                <iaixsl:attribute name="id">bundled_quantity_<iaixsl:value-of select="@id"/></iaixsl:attribute>
                                                <iaixsl:if test="count(sizes/size[@amount=0]) != count(sizes/size)"><iaixsl:attribute name="checked">checked</iaixsl:attribute></iaixsl:if>
                                            </input><label><iaixsl:attribute name="for">bundled_quantity_<iaixsl:value-of select="@id"/></iaixsl:attribute></label>
                                        </div>
                                    </iaixsl:if>
                                    <input type="hidden" class="bundled_product">
                                        <iaixsl:attribute name="name">bundled_product[<iaixsl:value-of select="@id"/>]</iaixsl:attribute>
                                        <iaixsl:attribute name="value"><iaixsl:value-of select="@product_id"/></iaixsl:attribute>
                                    </input>

                                    <iaixsl:choose>
                                        <iaixsl:when test="@link != ''">
                                            <iaixsl:text disable-output-escaping="yes">&lt;a class="product_bundle_icon" href="</iaixsl:text><iaixsl:value-of select="@link"/>
                                            <iaixsl:text disable-output-escaping="yes">" &gt;</iaixsl:text>
                                        </iaixsl:when>
                                        <iaixsl:otherwise>
                                            <iaixsl:text disable-output-escaping="yes">&lt;span class="product_bundle_icon"&gt;</iaixsl:text>
                                        </iaixsl:otherwise>
                                    </iaixsl:choose>

                                    <img>
                                        <iaixsl:attribute name="src"><iaixsl:value-of select="enclosures/images/enclosure[1]/@icon"/></iaixsl:attribute>
                                        <iaixsl:attribute name="alt"><iaixsl:value-of select="name"/></iaixsl:attribute>
                                    </img>

                                    <iaixsl:choose>
                                        <iaixsl:when test="@link != ''">
                                            <iaixsl:text disable-output-escaping="yes">&lt;/a&gt;</iaixsl:text>
                                        </iaixsl:when>
                                        <iaixsl:otherwise>
                                            <iaixsl:text disable-output-escaping="yes">&lt;/span&gt;</iaixsl:text>
                                        </iaixsl:otherwise>
                                    </iaixsl:choose>

                                    <div class="bundled_name">
                                        <iaixsl:choose>
                                            <iaixsl:when test="@link != ''">
                                                <iaixsl:text disable-output-escaping="yes">&lt;a class="product-name" href="</iaixsl:text><iaixsl:value-of select="@link"/>
                                                <iaixsl:text disable-output-escaping="yes">" &gt;</iaixsl:text>
                                            </iaixsl:when>
                                            <iaixsl:otherwise>
                                                <iaixsl:text disable-output-escaping="yes">&lt;span class="product-name"&gt;</iaixsl:text>
                                            </iaixsl:otherwise>
                                        </iaixsl:choose>

                                        <iaixsl:if test="@bundle_quantity and @bundle_quantity > 1"><strong><iaixsl:value-of select="@bundle_quantity"/>x </strong></iaixsl:if><iaixsl:value-of select="name"/>


                                        <iaixsl:choose>
                                            <iaixsl:when test="@link != ''">
                                                <iaixsl:text disable-output-escaping="yes">&lt;/a&gt;</iaixsl:text>
                                            </iaixsl:when>
                                            <iaixsl:otherwise>
                                                <iaixsl:text disable-output-escaping="yes">&lt;/span&gt;</iaixsl:text>
                                            </iaixsl:otherwise>
                                        </iaixsl:choose>


                                        <iaixsl:if test="price/@value > 0">
                                            <div class="price">
                                                Price:
                                                <b><iaixsl:value-of select="price/@price_formatted"/></b>
                                                <iaixsl:if test="sizes/@unit">
                                                    <span> / <iaixsl:value-of select="sizes/@unit"/></span>
                                                </iaixsl:if>
                                            </div>
                                        </iaixsl:if>

                                        <div class="bundled_availability" style="display:none;">
                                            <iaixsl:if test="count(sizes/size[@amount=0]) = count(sizes/size)"><iaixsl:attribute name="style">display:block;</iaixsl:attribute></iaixsl:if>
                                            <iaixsl:choose>
                                                <iaixsl:when test="multiversions and versions/@version_choice='true'">
                                                    Product is unavailable.
                                                </iaixsl:when>
                                                <iaixsl:otherwise>
                                                    Product is unavailable.
                                                </iaixsl:otherwise>
                                            </iaixsl:choose>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="bundled_options_select">
                                            <iaixsl:if test="multiversions and versions/@version_choice='true'">
                                                <div class="bundled_multi_versions clearfix">
                                                    <iaixsl:for-each select="multiversions/multi_version">
                                                        <iaixsl:variable name="bundle_id"><iaixsl:value-of select="../../@id"/></iaixsl:variable>
                                                        <div class="bundled_multi_version">

                                                            <div class="fancy-select"><iaixsl:attribute name="id">mw_<iaixsl:value-of select="$bundle_id"/><iaixsl:value-of select="@id"/></iaixsl:attribute>
                                                                <div class="trigger"><iaixsl:value-of disable-output-escaping="yes" select="@name"/>: <span><iaixsl:for-each select="item[@selected='true']/values/value"><iaixsl:if test="not(position() = 1)"> / </iaixsl:if><iaixsl:value-of disable-output-escaping="yes" select="@name"/></iaixsl:for-each></span></div>
                                                                <ul class="options">
                                                                    <iaixsl:for-each select="item">
                                                                        <iaixsl:variable name="value_name"><iaixsl:for-each select="values/value"><iaixsl:if test="not(position() = 1)"> / </iaixsl:if><iaixsl:value-of disable-output-escaping="yes" select="@name"/></iaixsl:for-each></iaixsl:variable>
                                                                        <li>
                                                                            <iaixsl:attribute name="class"><iaixsl:if test="@disabled='true'">disabled </iaixsl:if><iaixsl:if test="@selected='true'">selected</iaixsl:if></iaixsl:attribute>
                                                                            <iaixsl:attribute name="id">v<iaixsl:value-of select="$bundle_id"/><iaixsl:value-of disable-output-escaping="yes" select="values/@id"/></iaixsl:attribute>
                                                                            <iaixsl:attribute name="data-values_id"><iaixsl:value-of disable-output-escaping="yes" select="values/@id"/></iaixsl:attribute>

                                                                            

                                                                            <iaixsl:attribute name="data-value"><iaixsl:value-of select="position()"/></iaixsl:attribute>
                                                                            <iaixsl:attribute name="data-title"><iaixsl:value-of select="$value_name"/></iaixsl:attribute>
                                                                            <iaixsl:attribute name="data-product"><iaixsl:value-of select="products/product/@product_id"/></iaixsl:attribute>
                                                                            <iaixsl:attribute name="data-bundle_product"><iaixsl:value-of select="$bundle_id"/></iaixsl:attribute>

                                                                            <a>
                                                                                <iaixsl:attribute name="title"><iaixsl:value-of select="$value_name"/></iaixsl:attribute>
                                                                                <iaixsl:attribute name="href"><iaixsl:value-of select="products/product/@url"/></iaixsl:attribute>
                                                                                <iaixsl:for-each select="values/value">
                                                                                    <iaixsl:if test="@gfx">
                                                                                        <span class="gfx">
                                                                                            <img>
                                                                                                <iaixsl:attribute name="src"><iaixsl:value-of select="@gfx"/></iaixsl:attribute>
                                                                                                <iaixsl:attribute name="alt"><iaixsl:value-of select="$value_name"/></iaixsl:attribute>
                                                                                            </img>
                                                                                        </span>
                                                                                    </iaixsl:if>
                                                                                </iaixsl:for-each>
                                                                                <span>
                                                                                    <span><iaixsl:value-of disable-output-escaping="yes" select="$value_name"/></span>
                                                                                    <iaixsl:for-each select="values/value">
                                                                                        <iaixsl:if test="description"><div class="description"><iaixsl:value-of disable-output-escaping="yes" select="description"/></div></iaixsl:if>
                                                                                    </iaixsl:for-each>
                                                                                    <p class="conflict_txt">If you choose this position, you may have to adjust some elements</p>
                                                                                </span>
                                                                            </a>
                                                                        </li>
                                                                    </iaixsl:for-each>
                                                                </ul>
                                                                <p class="conflict_txt">Choose a different option </p>
                                                                <iaixsl:if test="description"><div class="description"><iaixsl:value-of disable-output-escaping="yes" select="description"/></div></iaixsl:if>
                                                            </div>
                                                            <iaixsl:if test="@gfx">
                                                                <div class="gfx">
                                                                    <img>
                                                                        <iaixsl:attribute name="src"><iaixsl:value-of select="@gfx"/></iaixsl:attribute>
                                                                        <iaixsl:attribute name="alt"><iaixsl:value-of select="@name"/></iaixsl:attribute>
                                                                    </img>
                                                                </div>
                                                            </iaixsl:if>
                                                        </div>
                                                    </iaixsl:for-each>
                                                </div>
                                            </iaixsl:if>
                                            <iaixsl:choose>
                                                <iaixsl:when test="sizes/size/@type='onesize'">
                                                    <input class="product_bundle_size" type="hidden" value="">
                                                        <iaixsl:attribute name="name">bundled_size[<iaixsl:value-of select="@id"/>]</iaixsl:attribute>
                                                        <iaixsl:attribute name="value"><iaixsl:value-of select="sizes/size[1]/@type"/></iaixsl:attribute>
                                                    </input>
                                                </iaixsl:when>
                                                <iaixsl:otherwise>
                                                    <select class="product_bundle_size">
                                                        <iaixsl:attribute name="id">s_<iaixsl:value-of select="@id"/></iaixsl:attribute>
                                                        <iaixsl:attribute name="name">bundled_size[<iaixsl:value-of select="@id"/>]</iaixsl:attribute>

                                                        <iaixsl:attribute name="data-label">Size: </iaixsl:attribute>
                                                        <iaixsl:for-each select="sizes/size">
                                                            <option class="enabled">
                                                                <iaixsl:if test="@amount != 0 and (@type = ../size[@amount!=0][1]/@type)">
                                                                    <iaixsl:attribute name="selected">selected</iaixsl:attribute>
                                                                </iaixsl:if>
                                                                <iaixsl:if test="@amount = 0"><iaixsl:attribute name="class">disabled</iaixsl:attribute></iaixsl:if>
                                                                <iaixsl:attribute name="value"><iaixsl:value-of select="@type"/></iaixsl:attribute>
                                                                <iaixsl:attribute name="data-amount"><iaixsl:value-of select="@amount"/></iaixsl:attribute>
                                                                <iaixsl:value-of select="@description"/><iaixsl:if test="@amount = 0"> (none)</iaixsl:if>
                                                            </option>
                                                        </iaixsl:for-each>
                                                    </select>
                                                </iaixsl:otherwise>
                                            </iaixsl:choose>
                                        </div>
                                        

                                        <iaixsl:if test="sizes_chart">
                                            <a href="#show_size_bundle" class="show_size_bundle">
                                                <iaixsl:attribute name="data-id">#component_colection_sizes_chart_<iaixsl:value-of select="sizes_chart/@id"/>_<iaixsl:value-of select="../@id"/></iaixsl:attribute>
                                                <i class="icon-table"></i> Size chart
                                            </a>

                                            <div class="component_projector_sizes_chart" style="display:none;">

                                                <iaixsl:attribute name="id">component_colection_sizes_chart_<iaixsl:value-of select="sizes_chart/@id"/>_<iaixsl:value-of select="../@id"/></iaixsl:attribute>
                                                <iaixsl:if test="sizes_chart/descriptions/description">
                                                    <h2></h2>
                                                    <table class="table-condensed">
                                                        <iaixsl:attribute name="class">ui-responsive table-stroke ui-table ui-table-reflow table-condensed</iaixsl:attribute>
                                                        <thead>
                                                            <tr>
                                                                <th class="table-first-column">Size </th>
                                                                <iaixsl:for-each select="sizes_chart/descriptions/description">
                                                                    <th>
                                                                        <iaixsl:value-of disable-output-escaping="yes" select="@name"/>
                                                                    </th>
                                                                </iaixsl:for-each>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <iaixsl:for-each select="sizes_chart/sizes/size">
                                                                <tr>
                                                                    <td class="table-first-column">
                                                                        <iaixsl:value-of disable-output-escaping="yes" select="@description"/>
                                                                    </td>
                                                                    <iaixsl:for-each select="description">
                                                                        <td>
                                                                            <iaixsl:value-of disable-output-escaping="yes" select="@text"/>
                                                                        </td>
                                                                    </iaixsl:for-each>
                                                                </tr>
                                                            </iaixsl:for-each>
                                                        </tbody>
                                                    </table>
                                                </iaixsl:if>
                                                <div class="sizes_chart_cms">
                                                    <iaixsl:if test="sizes_chart/text">
                                                        <iaixsl:value-of disable-output-escaping="yes" select="sizes_chart/text"/>
                                                    </iaixsl:if>
                                                </div>
                                            </div>
                                        </iaixsl:if>
                                        
                                    </div>
                                </li>
                            </iaixsl:for-each>
                        </ul>
                        <div class="clearBoth"/>
                    </div>
                </div>
            </iaixsl:if>

            <iaixsl:if test="page/projector/bundle/product">
                <div id="projector_bundle_zone2" >
                    <h2 class="product_bundle" id="product_bundle_label_2">
                        <iaixsl:attribute name="class">big_label product_bundle</iaixsl:attribute>
                        It is cheaper in a set!</h2>
                    <table class="product_bundle">
                        <tr>
                            <th class="product_bundle_icon"/>
                            <th class="product_bundle_name"/>
                            <th>Price of a product sold separately:</th>
                            <th>Set price</th>
                        </tr>
                        <iaixsl:for-each select="page/projector/bundle/product">
                            <tr>
                                <td class="product_bundle_icon">
                                    <a>
                                        <iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
                                        <img alt="product_bundle_icon">
                                            <iaixsl:attribute name="alt"><iaixsl:value-of select="name"/></iaixsl:attribute>
                                            <iaixsl:attribute name="src"><iaixsl:value-of select="icon"/></iaixsl:attribute>
                                        </img>
                                    </a>

                                </td>
                                <td class="product_bundle_name">
                                    <a>
                                        <iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
                                        <iaixsl:value-of select="name"/>

                                    </a>
                                </td>
                                <td class="product_bundle_price_value">
                                    <span><iaixsl:value-of select="bundle_price/@price_gross_formatted"/></span>
                                </td>
                                <td class="product_bundle_price_gross">
                                    <iaixsl:choose>
                                        <iaixsl:when test="price/@value > 0">
                                            <span><iaixsl:value-of select="price/@price_formatted"/></span>
                                            <small>You save (<iaixsl:value-of select="bundle_price/@percent_diff"/>%)</small>
                                        </iaixsl:when>
                                        <iaixsl:otherwise>
                                            <a href="contact.php">Call for Price</a>
                                        </iaixsl:otherwise>
                                    </iaixsl:choose>
                                </td>
                            </tr>
                        </iaixsl:for-each>
                    </table>
                </div>
            </iaixsl:if>

            <script class="ajaxLoad">
                var bundle_title =   "Price of a product sold separately:";
            </script>
        <!--Karta produktu - bannery (projector_banner, 108690.1)-->
            <iaixsl:if test="page/projector/returns_config/@active='y' or page/projector/product/payment/instalment or page/projector/product/sizes_version/@stocks_link or page/projector/product/sizes/@stocks_link and not(/shop/page/projector/product/price/@value = 0)">
                <div id="n67367" class="clearfix">

                    
                    <iaixsl:variable name="allow_returns_projector"><iaixsl:choose><iaixsl:when test="/shop/basket/@wholesaler = 'true' and /shop/basket/@blocked_wholesale_returns = 'true'">false</iaixsl:when><iaixsl:otherwise>true</iaixsl:otherwise></iaixsl:choose></iaixsl:variable>

                    <iaixsl:if test="page/projector/returns_config/@active='y' and not(page/projector/product/@product_type = 'product_virtual' or page/projector/product/@product_type = 'product_service') and $allow_returns_projector = true">
                        <div id="n67367_returns" class="n67367_returns">

                            <iaixsl:choose>
                                <iaixsl:when test="page/projector/returns_config/@returns_shop_shipping_cost = 'shop' or page/projector/returns_config/@returns_shop_shipping_cost = 'shopBalance'">
                                    <h3 data-mobile-class="big_label"><span>Free return</span></h3>
                                </iaixsl:when>
                                <iaixsl:otherwise>
                                    <h3 data-mobile-class="big_label">Easy product returns</h3>
                                </iaixsl:otherwise>
                            </iaixsl:choose>
                            <div class="n67367_returns_txt">
                                Buy a product and check it in your own time, at home. <br/>You can return the product without providing a reason within 
                                <b><iaixsl:value-of select="page/projector/returns_config/@days_to_return"/></b>
                                 days.
                            </div>
                            <a class="n67367_more" href="#see_more">
                                <iaixsl:attribute name="title">Show details</iaixsl:attribute>
                                <iaixsl:attribute name="data-less">Hide details</iaixsl:attribute>
                                Show details
                            </a>

                            <div class="n67367_returns_moretext">

                                <div class="n67367_texts n67367_text1">
                                    <strong><b><iaixsl:value-of select="page/projector/returns_config/@days_to_return"/></b> days to withdraw from the contract</strong>
                                    <div>
                                        Your satisfaction is very important to us, therefore you can make a return without providing a reason within 
                                        <b><iaixsl:value-of select="page/projector/returns_config/@days_to_return"/></b>
                                         days.
                                    </div>
                                </div>

                                <div class="n67367_texts n67367_text2">
                                    <iaixsl:choose>
                                        <iaixsl:when test="page/projector/returns_config/@returns_shop_shipping_active = 'y'">
                                            <strong><span>No stress </span>and worry</strong>
                                            <div>We care about your comfort, that's why our shop offers returns on favorable terms.</div>
                                        </iaixsl:when>
                                        <iaixsl:otherwise>
                                            <strong><span>No stress </span>and worry</strong>
                                            <div>We care about your convenience, therefore we offer you an easy-to-use return module.</div>
                                        </iaixsl:otherwise>
                                    </iaixsl:choose>
                                </div>

                                <div class="n67367_texts n67367_text3">
                                    <iaixsl:attribute name="class">n67367_texts n67367_text3 n67367_text3_<iaixsl:value-of select="page/projector/returns_config/@returns_shop_shipping_cost"/></iaixsl:attribute>
                                    <iaixsl:choose>
                                        <iaixsl:when test="page/projector/returns_config/@returns_shop_shipping_cost = 'clientDEFAULT'"> 

                                            <strong><span>Easy returns</span> wizard</strong>
                                            <div>All returns processed by our shop are managed in a <b>easy-to-use returns wizard</b> which gives you the ability to send a return parcel.</div>

                                        </iaixsl:when>
                                        <iaixsl:when test="page/projector/returns_config/@returns_shop_shipping_cost = 'shop'">

                                            <strong><span>Free return</span></strong>
                                            <div>We will cover <b>return delivery costs</b>.</div>

                                        </iaixsl:when>
                                        <iaixsl:when test="page/projector/returns_config/@returns_shop_shipping_cost = 'shopBalance'">

                                            <strong><span>Free return</span></strong>
                                            <div>Select a<b> refund to your customer balance</b> and we will cover the return shipment costs</div>

                                        </iaixsl:when>
                                        <iaixsl:otherwise>

                                            <strong><span>Easy returns</span> wizard</strong>
                                            <div>All returns processed by our shop are managed in a <b>easy-to-use returns wizard</b> which gives you the ability to send a return parcel.</div>

                                        </iaixsl:otherwise>
                                    </iaixsl:choose>

                                </div>
                                <div class="clear"/>

                                <iaixsl:choose>
                                    <iaixsl:when test="page/projector/returns_config/@returns_shop_shipping_link = 'y'">
                                        <a href="#see_more" class="btn --solid --medium n67367_returns_seemore">
                                            <iaixsl:attribute name="title">Learn more</iaixsl:attribute>
                                            Learn more
                                        </a>
                                    </iaixsl:when>
                                    <iaixsl:otherwise>

                                    </iaixsl:otherwise>
                                </iaixsl:choose>
                            </div>
                        </div>
                    </iaixsl:if>

                    
                    <iaixsl:if test="not(page/projector/product/@product_type = 'product_service')">
                    <iaixsl:if test="page/projector/product/sizes_version/@stocks_link or page/projector/product/sizes/@stocks_link and not(/shop/page/projector/product/price/@value = 0)">
                        <div id="n67367_stocks" class="n67367_stocks">
                            <h3 data-mobile-class="big_label">This product is available in our stores</h3>
                            <div class="n67367_stocks_txt">
                                You can buy this product without placing an online order at one of our stores in your area. Check where the product is in stock.
                            </div>
                            <a>
                                <iaixsl:attribute name="href"><iaixsl:value-of select="page/projector/product/sizes_version/@stocks_link"/></iaixsl:attribute>
                                <iaixsl:if test="page/projector/product/sizes/@stocks_link">
                                    <iaixsl:attribute name="href"><iaixsl:value-of select="page/projector/product/sizes/@stocks_link"/></iaixsl:attribute>
                                </iaixsl:if>
                                <iaixsl:attribute name="title">Check availability</iaixsl:attribute>
                                Check availability
                            </a>
                        </div>
                    </iaixsl:if>
                </iaixsl:if>

                    
                    <iaixsl:if test="page/projector/product/payment/instalment">
                        <div id="n67367_instalment" class="n67367_instalment">
                            <h3 data-mobile-class="big_label">You can buy in installments!</h3>
                                <iaixsl:for-each select="/shop/page/projector/product/payment/instalment[@selected='true']">
                                <div class="instalment_value_1">
                                    <iaixsl:choose>
                                        <iaixsl:when test="@value_formatted">
                                            <img class="instalment_value_1">
                                                <iaixsl:attribute name="src"><iaixsl:value-of select="@gfx_small"/></iaixsl:attribute>
                                                <iaixsl:attribute name="alt"><iaixsl:value-of select="@name"/></iaixsl:attribute>
                                            </img>
                                            <span class="instalment_value_1">
                                                Buy in installments from 
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
                                                <span class="btn_note">Legal notice</span>
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
                                <iaixsl:for-each select="page/projector/product/payment/instalment">
                                    <li><iaixsl:attribute name="data-name"><iaixsl:value-of select="@name"/></iaixsl:attribute>
                                        <a class="instalments btn --solid mb-2">
                                            <iaixsl:attribute name="data-instalments"><iaixsl:value-of disable-output-escaping="yes" select="@name"/></iaixsl:attribute>
                                            <iaixsl:attribute name="onclick"> calculate_instalments('<iaixsl:value-of select="@minprice"/>','<iaixsl:value-of select="@maxprice"/>','<iaixsl:value-of select="@priceTotal"/>','<iaixsl:value-of select="@alert"/>',$(this).attr('data-window'),'<iaixsl:value-of select="@maxquantity"/>','<iaixsl:value-of select="@name"/>'); return false;</iaixsl:attribute>
                                            <iaixsl:attribute name="href">javascript:<iaixsl:value-of select="@calculate"/></iaixsl:attribute>
                                            <iaixsl:attribute name="data-window"><iaixsl:value-of select="@calculatePrice"/></iaixsl:attribute>
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
            </iaixsl:if>
        <!--Długi opis produktu z HTML (projector_longdescription, 106664.1)-->
            <iaixsl:if test="page/projector/product/vlongdescription and not(page/projector/product/vlongdescription = '')">
                <div class="projector_longdescription cm"><iaixsl:if test="(/shop/page/projector/product/dictionary/items/item and not(count(/shop/page/projector/product/dictionary/items/item) > 6)) and (not(count(page/projector/questions/question)))"><iaixsl:attribute name="class">projector_longdescription cm longdescription_small</iaixsl:attribute></iaixsl:if><iaixsl:attribute name="id">component_projector_longdescription_not</iaixsl:attribute><iaixsl:value-of disable-output-escaping="yes" select="page/projector/product/vlongdescription/text()"/></div>
            </iaixsl:if>
        <!--Karta produktu - słownik opisu (projector_dictionary, 106665.1)-->
            <iaixsl:if test="count(/shop/page/projector/product/dictionary/items) > 0">
                <div class="component_projector_dictionary">
                    <iaixsl:attribute name="id">component_projector_dictionary_no</iaixsl:attribute>
                    <iaixsl:if test="/shop/page/projector/product/dictionary/items/item and not(count(/shop/page/projector/product/dictionary/items/item) > 6)">
                        <iaixsl:attribute name="class">dictionary_small</iaixsl:attribute>
                    </iaixsl:if>

                    <div class="n56173_main">
                        <div class="n56173_label">
                            <span class="n56173_2_label">
                                Tech specs:
                            </span>
                        </div>
                        <div class="n56173_sub">
                            <table class="n54117_dictionary">
                                <iaixsl:for-each select="/shop/page/projector/product/dictionary/items/item">
                                    <iaixsl:if test="@type = 'group'">
                                        <tr class="group">
                                            <td class="n54117_group" colspan="2">
                                                <div class="n54117_group">
                                                    <iaixsl:choose>
                                                        <iaixsl:when test="desc != ''">
                                                            <span class="n54117_name_group big_label"><iaixsl:value-of select="@name"/></span>
                                                        </iaixsl:when>
                                                        <iaixsl:otherwise>
                                                            <span class="n54117_name2_group big_label"><iaixsl:value-of select="@name"/></span>
                                                        </iaixsl:otherwise>
                                                    </iaixsl:choose>

                                                    <iaixsl:if test="desc != ''">
                                                        <img class="qmark2 showTip" src="/gfx/rum/qmark2.gif?r=1571748615" alt="" title="">

                                                        </img>
                                                        <div class="tooltipContent">
                                                            <iaixsl:value-of disable-output-escaping="yes" select="desc"/>
                                                        </div>
                                                    </iaixsl:if>
                                                </div>
                                            </td>
                                        </tr>
                                    </iaixsl:if>
                                    <iaixsl:if test="@type = 'element'">
                                        <tr class="element">
                                            <iaixsl:if test="following-sibling::item[1]/@type = 'group'">
                                                <iaixsl:attribute name="class">element group_next</iaixsl:attribute>
                                            </iaixsl:if>
                                            <td>
                                                <iaixsl:choose>
                                                    <iaixsl:when test="position() mod 2"><iaixsl:attribute name="class">n54117_item_a1</iaixsl:attribute></iaixsl:when>
                                                    <iaixsl:otherwise><iaixsl:attribute name="class">n54117_item_a2</iaixsl:attribute></iaixsl:otherwise>
                                                </iaixsl:choose>
                                                <span><iaixsl:value-of select="@name"/></span>
                                                <span class="n67256colon">:</span>
                                                <iaixsl:if test="desc != ''">
                                                    <img class="qmark showTip" src="/gfx/rum/qmark2.gif?r=1571748615" alt="" title="">
                                                    </img>
                                                    <div class="tooltipContent">
                                                        <iaixsl:value-of disable-output-escaping="yes" select="desc"/>
                                                    </div>
                                                </iaixsl:if>
                                            </td>
                                            <td>
                                                <iaixsl:choose>
                                                    <iaixsl:when test="position() mod 2"><iaixsl:attribute name="class">n54117_item_b1</iaixsl:attribute></iaixsl:when>
                                                    <iaixsl:otherwise><iaixsl:attribute name="class">n54117_item_b2</iaixsl:attribute></iaixsl:otherwise>
                                                </iaixsl:choose>
                                                <iaixsl:for-each select="values/value">
                                                    <iaixsl:if test="position() > 1">, 
                                                    </iaixsl:if>
                                                    <div class="n54117_item_b_sub">
                                                        <iaixsl:choose>
                                                            <iaixsl:when test="desc != ''">
                                                                <span class="n54117_name_sub"><iaixsl:value-of disable-output-escaping="yes" select="@value"/></span>
                                                            </iaixsl:when>
                                                            <iaixsl:otherwise>
                                                                <iaixsl:value-of disable-output-escaping="yes" select="@value"/>
                                                            </iaixsl:otherwise>
                                                        </iaixsl:choose>
                                                        <iaixsl:if test="desc != ''">
                                                            <img class="qmark showTip" src="/gfx/rum/qmark.gif?r=1571748615" alt="" title="">

                                                            </img>
                                                            <div class="tooltipContent">
                                                                <iaixsl:value-of disable-output-escaping="yes" select="desc"/>
                                                            </div>
                                                        </iaixsl:if>
                                                    </div>
                                                </iaixsl:for-each>
                                            </td>
                                        </tr>
                                    </iaixsl:if>
                                </iaixsl:for-each>
                            </table>
                        </div>
                    </div>

                    <iaixsl:if test="/shop/page/projector/product/dictionary/items/item and not(count(/shop/page/projector/product/dictionary/items/item) > 6)">

                        
                        <iaixsl:if test="page/projector/product/warranty">
                            <div class="component_projector_warranty">
                                <iaixsl:attribute name="id">component_projector_warranty_no</iaixsl:attribute>

                                <div class="n56191_main">
                                    <div class="n56191_sub">
                                        <h2>
                                            <iaixsl:value-of disable-output-escaping="yes" select="page/projector/product/warranty/@name"/>
                                        </h2>
                            
                                            
                                            <h3 class="n56191_label">
                                                <iaixsl:value-of disable-output-escaping="yes" select="page/projector/product/warranty"/>
                                            </h3>
                                        
                                    </div>
                                </div>
                            </div>
                        </iaixsl:if>

                        
                        <iaixsl:if test="(/shop/page/projector/product/enclosures/documents) or (/shop/page/projector/product/enclosures/audio)  or (/shop/page/projector/product/enclosures/other)  or (/shop/page/projector/product/enclosures/images_attachments/item) or (/shop/page/projector/product/enclosures/video/item)">
                            <div class="component_projector_enclosures">
                                <iaixsl:attribute name="id">component_projector_enclosures_no</iaixsl:attribute>
                                <div class="n56259_main">

                                    <iaixsl:variable name="n68814_showlabel">Files to download</iaixsl:variable>
                                    <iaixsl:if test="$n68814_showlabel">
                                        <div class="n68814_label">
                                            <span class="n68814_2_label">
                                                <h2><iaixsl:value-of select="$n68814_showlabel"/></h2>
                                            </span>
                                        </div>
                                    </iaixsl:if>

                                    <ul>
                                        <iaixsl:for-each select="/shop/page/projector/product/enclosures/*">
                                            <iaixsl:for-each select="item">
                                                <li>

                                                    <i class="icon-download-alt"/>

                                                    <a class="enclosure_name">
                                                        <iaixsl:if test="@type = 'image/image' or @type = 'documents'"><iaixsl:attribute name="target">_blank</iaixsl:attribute></iaixsl:if>
                                                        <iaixsl:attribute name="href"><iaixsl:value-of select="@url"/></iaixsl:attribute>
                                                        
                                                        <iaixsl:value-of select="@name"/>
                                                    </a>
                                                </li>
                                            </iaixsl:for-each>
                                        </iaixsl:for-each>
                                        <iaixsl:if test="/shop/page/projector/product/enclosures/video/item">
                                            <script>
                                                var enclosures_video_obj  = [
                                                <iaixsl:for-each select="/shop/page/projector/product/enclosures/video/item">
                                                    <iaixsl:if test="not(position() = 1)">,</iaixsl:if>{
                                                    title:"<iaixsl:value-of select="@name"/>",
                                                    free:true,
                                                    m4v:"<iaixsl:value-of select="/shop/@baseurl"/><iaixsl:value-of select="@url"/>",
                                                    }
                                                </iaixsl:for-each>
                                                ]
                                            </script>
                                        </iaixsl:if>

                                        <iaixsl:if test="/shop/page/projector/product/enclosures/audio/item">
                                            <script>
                                                var enclosures_audio_obj  = [
                                                <iaixsl:for-each select="/shop/page/projector/product/enclosures/audio/item">
                                                    <iaixsl:if test="not(position() = 1)">,</iaixsl:if>{
                                                    <iaixsl:variable name="audio_position"><iaixsl:value-of select="position()"/></iaixsl:variable>
                                                    title:"<iaixsl:value-of select="@name"/>",
                                                    free:true,
                                                    mp3:"<iaixsl:value-of select="/shop/@baseurl"/><iaixsl:value-of select="@url"/>",
                                                    <iaixsl:choose>
                                                        <iaixsl:when test="/shop/page/projector/product/enclosures/images/enclosure[@position = $audio_position]/@url">
                                                            poster:"<iaixsl:value-of select="/shop/page/projector/product/enclosures/images/enclosure[@position = $audio_position]/@url"/>"
                                                        </iaixsl:when>
                                                        <iaixsl:otherwise>
                                                            poster:"<iaixsl:value-of select="/shop/page/projector/product/enclosures/images/enclosure[1]/@url"/>"
                                                        </iaixsl:otherwise>
                                                    </iaixsl:choose>
                                                    }
                                                </iaixsl:for-each>
                                                ]
                                            </script>
                                        </iaixsl:if>

                                        <iaixsl:if test="/shop/page/projector/product/enclosures/images_attachments/item">
                                            <script>
                                                var enclosures_images_obj = new Object();
                                                <iaixsl:if test="not(count(/shop/page/projector/product/enclosures/images_attachments/item) = 1)">
                                                    <iaixsl:for-each select="/shop/page/projector/product/enclosures/images_attachments/item">
                                                        enclosures_images_obj[<iaixsl:value-of select="@position"/>]=new Array('<iaixsl:value-of select="@url"/>','1','1');
                                                    </iaixsl:for-each>
                                                </iaixsl:if>

                                            </script>
                                        </iaixsl:if>
                                    </ul>
                                </div>
                            </div>
                        </iaixsl:if>
                    </iaixsl:if>
                </div>
            </iaixsl:if>
        <!--Karta produktu - załączniki (projector_enclosures, 106674.1)-->
            
            <iaixsl:if test="((/shop/page/projector/product/enclosures/documents) or (/shop/page/projector/product/enclosures/audio)  or (/shop/page/projector/product/enclosures/other)  or (/shop/page/projector/product/enclosures/images_attachments/item) or (/shop/page/projector/product/enclosures/video/item)) and (not(/shop/page/projector/product/dictionary/items/item) or (/shop/page/projector/product/dictionary/items/item and count(/shop/page/projector/product/dictionary/items/item) > 6))">
                <div class="component_projector_enclosures">
                    <iaixsl:attribute name="id">component_projector_enclosures_no</iaixsl:attribute>
                    <div class="n56259_main">

                        <iaixsl:variable name="n68814_showlabel"></iaixsl:variable>
                        <iaixsl:if test="$n68814_showlabel">
                            <div class="n68814_label">
                                <span class="n68814_2_label">
                                    <iaixsl:value-of select="$n68814_showlabel"/>
                                </span>
                            </div>
                        </iaixsl:if>
                        <ul>
                            <iaixsl:for-each select="/shop/page/projector/product/enclosures/*">
                                <iaixsl:for-each select="item">
                                    <li>
                                        <iaixsl:choose>
                                            <iaixsl:when test="@extension = 'swf'">
                                                <iaixsl:attribute name="class">e_swf</iaixsl:attribute>
                                            </iaixsl:when>
                                            <iaixsl:when test="@type = 'video'">
                                                <iaixsl:attribute name="class">e_video</iaixsl:attribute>
                                            </iaixsl:when>
                                            <iaixsl:when test="@type = 'audio/mpeg'">
                                                <iaixsl:attribute name="class">e_audio</iaixsl:attribute>
                                            </iaixsl:when>
                                            <iaixsl:when test="@type = 'image/image'">
                                                <iaixsl:attribute name="class">e_image</iaixsl:attribute>
                                            </iaixsl:when>
                                            <iaixsl:when test="@type = 'documents'">
                                                <iaixsl:attribute name="class">e_documents</iaixsl:attribute>
                                            </iaixsl:when>
                                            <iaixsl:otherwise>
                                                <iaixsl:attribute name="class">e_download</iaixsl:attribute>
                                            </iaixsl:otherwise>
                                        </iaixsl:choose>
                                        <a class="enclosure_name">
                                            <iaixsl:if test="@type = 'image/image' or @type = 'documents'"><iaixsl:attribute name="target">_blank</iaixsl:attribute></iaixsl:if>
                                            <iaixsl:attribute name="href"><iaixsl:value-of select="@url"/></iaixsl:attribute>
                                            
                                            <iaixsl:value-of select="@name"/>
                                        </a>
                                        <iaixsl:choose>
                                            <iaixsl:when test="@extension = 'swf'">
                                                <a data-mobile-class="hide" class="enclosure_show_swf">
                                                    <iaixsl:attribute name="href"><iaixsl:value-of select="@url"/>&amp;preview=true</iaixsl:attribute>
                                                    View
                                                </a>
                                            </iaixsl:when>
                                            <iaixsl:when test="@type = 'video'">
                                                <a data-mobile-class="hide" class="enclosure_video_play">
                                                    <iaixsl:attribute name="href"><iaixsl:value-of select="@url"/></iaixsl:attribute>
                                                    Play
                                                </a>
                                                <input type="hidden" name="enclosure_play_position">
                                                    <iaixsl:attribute name="value"><iaixsl:value-of select="position()"/></iaixsl:attribute>
                                                </input>
                                            </iaixsl:when>
                                            <iaixsl:when test="@type = 'audio/mpeg'">
                                                <a data-mobile-class="hide" class="enclosure_audio_play">
                                                    <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/@currurl"/><iaixsl:value-of select="@url"/></iaixsl:attribute>
                                                    Play
                                                </a>
                                                <input type="hidden" name="enclosure_play_position">
                                                    <iaixsl:attribute name="value"><iaixsl:value-of select="position()"/></iaixsl:attribute>
                                                </input>
                                            </iaixsl:when>
                                            <iaixsl:when test="@type = 'image/image'">
                                                <a target="_blank" data-mobile-class="hide" class="enclosure_show_image">
                                                    <iaixsl:attribute name="href"><iaixsl:value-of select="@url"/></iaixsl:attribute>
                                                    View
                                                </a>
                                            </iaixsl:when>

                                            <iaixsl:otherwise>
                                                <a data-mobile-class="hide" class="enclosure_download">
                                                    <iaixsl:if test="@type = 'documents'"><iaixsl:attribute name="target">_blank</iaixsl:attribute></iaixsl:if>
                                                    <iaixsl:attribute name="href"><iaixsl:value-of select="@url"/></iaixsl:attribute>
                                                    Download
                                                </a>
                                            </iaixsl:otherwise>
                                        </iaixsl:choose>
                                    </li>
                                </iaixsl:for-each>
                            </iaixsl:for-each>
                            <iaixsl:if test="/shop/page/projector/product/enclosures/video/item">
                                <script>
                                    var enclosures_video_obj  = [
                                    <iaixsl:for-each select="/shop/page/projector/product/enclosures/video/item">
                                        <iaixsl:if test="not(position() = 1)">,</iaixsl:if>{
                                        title:"<iaixsl:value-of select="@name"/>",
                                        free:true,
                                        m4v:"<iaixsl:value-of select="/shop/@currurl"/><iaixsl:value-of select="@url"/>",
                                        }
                                    </iaixsl:for-each>
                                    ]
                                </script>
                            </iaixsl:if>

                            <iaixsl:if test="/shop/page/projector/product/enclosures/audio/item">
                                <script>
                                    var enclosures_audio_obj  = [
                                    <iaixsl:for-each select="/shop/page/projector/product/enclosures/audio/item">
                                        <iaixsl:if test="not(position() = 1)">,</iaixsl:if>{
                                        <iaixsl:variable name="audio_position"><iaixsl:value-of select="position()"/></iaixsl:variable>
                                        title:"<iaixsl:value-of select="@name"/>",
                                        free:true,
                                        mp3:"<iaixsl:value-of select="/shop/@currurl"/><iaixsl:value-of select="@url"/>",
                                        <iaixsl:choose>
                                            <iaixsl:when test="/shop/page/projector/product/enclosures/images/enclosure[@position = $audio_position]/@url">
                                                poster:"<iaixsl:value-of select="/shop/page/projector/product/enclosures/images/enclosure[@position = $audio_position]/@url"/>"
                                            </iaixsl:when>
                                            <iaixsl:otherwise>
                                                poster:"<iaixsl:value-of select="/shop/page/projector/product/enclosures/images/enclosure[1]/@url"/>"
                                            </iaixsl:otherwise>
                                        </iaixsl:choose>
                                        }
                                    </iaixsl:for-each>
                                    ]
                                </script>
                            </iaixsl:if>

                            <iaixsl:if test="/shop/page/projector/product/enclosures/images_attachments/item">
                                <script>
                                    var enclosures_images_obj = new Object();
                                    <iaixsl:if test="not(count(/shop/page/projector/product/enclosures/images_attachments/item) = 1)">
                                        <iaixsl:for-each select="/shop/page/projector/product/enclosures/images_attachments/item">
                                            enclosures_images_obj[<iaixsl:value-of select="@position"/>]=new Array('<iaixsl:value-of select="@url"/>','1','1');
                                        </iaixsl:for-each>
                                    </iaixsl:if>

                                </script>
                            </iaixsl:if>
                        </ul>
                    </div>
                </div>
            </iaixsl:if>
        <!--Karta produktu - gwarancja (projector_warranty, 106675.1)-->
            <iaixsl:if test="page/projector/product/warranty and not(page/projector/product/warranty= '') and (not(/shop/page/projector/product/dictionary/items/item) or (/shop/page/projector/product/dictionary/items/item and count(/shop/page/projector/product/dictionary/items/item) > 6))">

                <div class="component_projector_warranty">
                    <iaixsl:attribute name="id">component_projector_warranty_not</iaixsl:attribute>

                    <div class="n56191_main">
                        <div class="n56191_sub">
                            
                            <iaixsl:if test="page/projector/product/warranty/@gfx">
                                <div class="n56191_icon">
                                    <img class="projector_firmlogo_55916">
                                        <iaixsl:attribute name="src"><iaixsl:value-of select="page/projector/product/warranty/@gfx"/></iaixsl:attribute>
                                        <iaixsl:attribute name="alt"><iaixsl:value-of select="page/projector/product/warranty/@name"/></iaixsl:attribute>
                                    </img>
                                </div>
                            </iaixsl:if>

                            <iaixsl:if test="not(page/projector/product/warranty/@gfx)">
                                
                                <h3 class="n56191_label">
                                    <iaixsl:value-of disable-output-escaping="yes" select="page/projector/product/warranty/@name"/>

                                    <iaixsl:if test="page/projector/product/warranty/@type='seller'">
                                         - Warranty is granted by the seller 
                                    </iaixsl:if>

                                    <iaixsl:if test="page/projector/product/warranty/@type='producer'">
                                         - Warranty is granted by the producer 
                                    </iaixsl:if>

                                    <iaixsl:if test="page/projector/product/warranty/@period > 0">
                                         for a period of 
                                        <iaixsl:value-of disable-output-escaping="yes" select="page/projector/product/warranty/@period"/>
                                    </iaixsl:if>

                                    <iaixsl:if test="page/projector/product/warranty/@period = 1">
                                        month. 
                                    </iaixsl:if>

                                    <iaixsl:if test="page/projector/product/warranty/@period > 1">
                                        months.
                                    </iaixsl:if>

                                </h3>
                            </iaixsl:if>
                            

                            
                            <div class="n56191_desc">
                                <iaixsl:value-of disable-output-escaping="yes" select="/shop/page/projector/product/warranty/text() "/>
                            </div>
                            
                        </div>
                    </div>
                </div>
            </iaixsl:if>
        <!--Product questions (projector_product_questions, 106670.1)-->
            <iaixsl:if test="count(page/projector/questions/question)">
                <div class="product_questions_list" id="product_questions_list">
                    <iaixsl:if test="/shop/page/projector/product/dictionary/items/item and not(count(/shop/page/projector/product/dictionary/items/item) > 6)"><iaixsl:attribute name="class">product_questions_list product_questions_small</iaixsl:attribute></iaixsl:if>
                    <div class="product_questions_list_label">
                        <iaixsl:attribute name="class">product_questions_list_label  big_label</iaixsl:attribute>
                        <span class="product_questions_list_label">
                            Your previous questions regarding this product
                        </span>
                    </div>
                    <div class="product_questions_list_sub">
                        <iaixsl:for-each select="page/projector/questions/question">
                            <div class="product_question_container">
                                <div class="product_question"><a href="#showDescription"><iaixsl:value-of select="@question"/><span><i class="icon-caret-down"></i></span></a></div>
                                <div class="product_question_answer"><iaixsl:value-of disable-output-escaping="yes" select="@answer"/></div>
                            </div>
                        </iaixsl:for-each>
                    </div>

                    <a id="send_question_button" href="#showQuestionDialog" class="btn --solid --medium mb-4 mt-5 px-5">Ask a question</a>
                </div>
                <div class="clearfix"/>
            </iaixsl:if>
        <!--Produkty w kategorii (projector_products_in_category, 109126.1)-->
            <iaixsl:if test="page/projector/product/products_other_founds">
                <section id="products_in_category" class="mb-4 d-flex justify-content-center">
                    <div class="px-sm-4 line-back">
                        <a class="other_products">
                            <iaixsl:attribute name="href"><iaixsl:value-of select="page/projector/product/products_other_founds/@previous"/></iaixsl:attribute>
                            <i class="icon-angle-left mr-3"></i> Previous in category
                        </a>
                        <a class="other_products">
                            <iaixsl:attribute name="href"><iaixsl:value-of select="page/projector/product/products_other_founds/@next"/></iaixsl:attribute>
                            Next from category <i class="icon-angle-right ml-3"></i> 
                        </a>
                    </div>
                </section>
            </iaixsl:if>
        <!--Zadaj pytanie o produkt (projector_askforproduct, 106673.1)-->
            <div class="component_projector_askforproduct">
                <iaixsl:if test="count(page/projector/questions/question)">
                    <iaixsl:attribute name="style">display:none;</iaixsl:attribute>
                </iaixsl:if>
                <iaixsl:attribute name="id">component_projector_askforproduct_not</iaixsl:attribute>
                <a id="askforproduct" href="#askforproduct_close"/>

                <form action="/settings.php" class="projector_askforproduct" method="post" novalidate="novalidate">
                    
                    <div class="big_label">
                        Ask for this product
                    </div>
                    

                    
                    <div class="projector_askforproduct_sub">
                        
                        <h3 class="projector_askforproduct_desc">
                            If this description is not sufficient, please send us a question to this product. We will reply as soon as possible.
                        </h3>
                        
                        <input type="hidden" name="question_product_id"><iaixsl:attribute name="value"><iaixsl:value-of select="page/projector/product/@id"/></iaixsl:attribute></input>
                        <input type="hidden" name="question_action" value="add"/>
                        
                        <div class="row flex-column align-items-center">
                            
                            <div class="form-group col-12 col-sm-7">
                                <div class="has-feedback has-required">
                                    <input id="askforproduct_email" type="email" class="form-control validate" name="question_email">
                                        <iaixsl:if test="page/projector/sender/@email and not(page/projector/sender/@email = '') ">
                                            <iaixsl:attribute name="class">form-control validate focused</iaixsl:attribute>
                                        </iaixsl:if>
                                        <iaixsl:attribute name="value"><iaixsl:value-of select="page/projector/sender/@email"/></iaixsl:attribute>
                                        <iaixsl:attribute name="required">required</iaixsl:attribute>
                                    </input>
                                    <label for="askforproduct_email" class="control-label">
                                        E-mail
                                    </label>
                                    <span class="form-control-feedback"/>
                                </div>
                            </div>

                            
                            <div class="form-group col-12 col-sm-7">
                                <div class="has-feedback has-required">
                                    <textarea id="askforproduct_question" rows="6" cols="52" class="form-control validate" name="product_question" minlength="3">
                                        <iaixsl:attribute name="required">required</iaixsl:attribute>
                                    </textarea>
                                    <label for="askforproduct_question" class="control-label">
                                        Question
                                    </label>
                                    <span class="form-control-feedback"/>
                                </div>
                            </div>
                        </div>

                        <iaixsl:variable name="form_privacy_info_text1">Data is processed in accordance with </iaixsl:variable>
                        <iaixsl:variable name="form_privacy_info_text2">. By submitting data, you accept privacy policy provisions.</iaixsl:variable>

                        <iaixsl:if test="$form_privacy_info_text1">
                            <p class="form-privacy-info"><iaixsl:value-of select="$form_privacy_info_text1"/><a><iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/private_policy/@url"/></iaixsl:attribute>privacy policy</a><iaixsl:value-of select="$form_privacy_info_text2"/></p>
                        </iaixsl:if>

                        
                        <div class="projector_askforproduct_submit">
                            <div >
                                <button id="submit_question_form" type="submit" class="btn --solid --medium px-5">
                                    send
                                </button>
                                <div class="button_legend">
                                    <i class="icon-need"></i> Fields marked with asterisk are required
                                </div>
                            </div>
                        </div>
                    </div>
                    
                </form>
            </div>

            
            <iaixsl:if test="/shop/@projector_askforproduct"> </iaixsl:if>
        <!--CMS w karcie produktu (projector_cms, 106677.1)-->
            <iaixsl:if test="page/projector/text/body">
                <div class="component_projector_cms cm">
                    <iaixsl:attribute name="id">component_projector_cms</iaixsl:attribute>
                    <div class="n56196_main">
                    
                        <div class="n56196_sub">
                            <iaixsl:value-of disable-output-escaping="yes" select="page/projector/text/body"/>
                        </div>
                    
                    </div>              
                </div>
            </iaixsl:if>
        <!--Produkty powiązane z tym produktem - strefa 1 (projector_associated_zone1, 106678.1)-->
            
                <iaixsl:if test="page/projector/products_associated_zone1">
                    <div class="main_hotspot mb-4" id="products_associated_zone1">
                        <iaixsl:if test="not(page/projector/products_associated_zone1/product)">
                            <iaixsl:attribute name="data-ajaxload">true</iaixsl:attribute>
                            <iaixsl:attribute name="data-pagetype">projector</iaixsl:attribute>
                        </iaixsl:if>
                        <iaixsl:choose>
                            <iaixsl:when test="page/projector/products_associated_zone1/product or page/projector/products_associated_zone1/opinion">
                                <h2>
                                    <span class="big_label">
                                        <iaixsl:choose>
                                            <iaixsl:when test="page/projector/products_associated_zone1/@name">
                                                <iaixsl:value-of select="page/projector/products_associated_zone1/@name"/>
                                            </iaixsl:when>
                                            <iaixsl:otherwise>
                                                Products bought with this product
                                            </iaixsl:otherwise>
                                        </iaixsl:choose>
                                        
                                    </span>
                                </h2>
                                
                                <div class="align_row main_hotspot_sub">
                                    <div class="products_wrapper row mx-0">
                                
                                        <iaixsl:for-each select="page/projector/products_associated_zone1/*">
                                            <iaixsl:variable name="var_name"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of disable-output-escaping="yes" select="product/name/text()"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of disable-output-escaping="yes" select="name/text()"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                            <iaixsl:variable name="var_icon"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/icon"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="icon"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                            <iaixsl:variable name="var_icon_small"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/icon_small"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="icon_small"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                            <iaixsl:variable name="var_link"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/@link"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="@link"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                            <iaixsl:variable name="var_yousave"></iaixsl:variable>

                                            <div class="product_wrapper col-6 col-sm-3">
                                            
                                                <iaixsl:if test="$var_yousave and not($var_yousave = '') and price/@yousave_formatted != ''">
                                                    <div class="hotspot_yousave">
                                                        <span class="yousave_label"><iaixsl:value-of select="$var_yousave"/></span>
                                                        <span class="yousave_value"><iaixsl:value-of select="price/@yousave_formatted"/></span>
                                                    </div>
                                                </iaixsl:if>

                                                
                                                <a class="product-icon d-flex justify-content-center align-items-center">
                                                    <iaixsl:attribute name="data-product-id"><iaixsl:value-of select="@id"/></iaixsl:attribute>
                                                    <iaixsl:attribute name="href"><iaixsl:value-of select="$var_link"/></iaixsl:attribute>
                                                    <iaixsl:attribute name="title"><iaixsl:value-of select="$var_name"/></iaixsl:attribute>

                                                    <img src="/gfx/rum/loader.gif?r=1571748615" class="b-lazy">
                                                        <iaixsl:attribute name="data-src-small"><iaixsl:value-of disable-output-escaping="yes" select="$var_icon_small"/></iaixsl:attribute>
                                                        <iaixsl:attribute name="data-src"><iaixsl:value-of disable-output-escaping="yes" select="$var_icon"/></iaixsl:attribute>
                                                        <iaixsl:attribute name="alt"><iaixsl:value-of disable-output-escaping="yes" select="$var_name"/></iaixsl:attribute>
                                                    </img>
                                                </a>

                                                
                                                <h3>
                                                    <a class="product-name">
                                                        <iaixsl:attribute name="href"><iaixsl:value-of select="$var_link"/></iaixsl:attribute>
                                                        <iaixsl:attribute name="title"><iaixsl:value-of select="$var_name"/></iaixsl:attribute>
                                                        <iaixsl:value-of select="$var_name"/>
                                                    </a>
                                                </h3>

                                                <iaixsl:variable name="main_hotspot_zone1_b2b_var">Product not available in retail sales. Please register to see the wholesale prices.</iaixsl:variable>
                                                <iaixsl:variable name="var_net_prices"> excl. VAT</iaixsl:variable>
                                                <iaixsl:choose>
                                                    <iaixsl:when test="$var_net_prices = ''">
                                                        <iaixsl:variable name="var_size_min_formatted"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/price/@size_min_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@size_min_formatted"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                                        <iaixsl:variable name="var_size_max_formatted"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/price/@size_max_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@size_max_formatted"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                                        <iaixsl:variable name="var_size_min_maxprice_formatted"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/price/@size_min_maxprice_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@size_min_maxprice_formatted"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                                        <iaixsl:variable name="var_size_max_maxprice_formatted"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/price/@size_max_maxprice_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@size_max_maxprice_formatted"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                                        <iaixsl:variable name="var_points"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/price/@points"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@points"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>

                                                        
                                                        <iaixsl:variable name="var_value"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/price/@size_min"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@size_min"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                                        <iaixsl:variable name="var_price_formatted">
                                                            <iaixsl:choose>
                                                                <iaixsl:when test="price/@price_unit_formatted and sizes/@unit"><iaixsl:value-of select="price/@price_unit_formatted"/><iaixsl:text> / </iaixsl:text><iaixsl:value-of select="sizes/@unit_sellby"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="sizes/@unit"/></iaixsl:when>
                                                                <iaixsl:when test="product/price/@price_unit_formatted and product/sizes/@unit"><iaixsl:value-of select="product/price/@price_unit_formatted"/><iaixsl:text> / </iaixsl:text><iaixsl:value-of select="product/sizes/@unit_sellby"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="product/sizes/@unit"/></iaixsl:when>
                                                                <iaixsl:otherwise><iaixsl:value-of select="$var_size_min_formatted"/></iaixsl:otherwise>
                                                            </iaixsl:choose>
                                                        </iaixsl:variable>

                                                        <iaixsl:variable name="var_maxprice_formatted">
                                                            <iaixsl:choose>
                                                                <iaixsl:when test="price/@maxprice_unit_formatted"><iaixsl:value-of select="price/@maxprice_unit_formatted"/></iaixsl:when>
                                                                <iaixsl:when test="product/price/@maxprice_unit_formatted"><iaixsl:value-of select="product/price/@maxprice_unit_formatted"/></iaixsl:when>
                                                                <iaixsl:when test="product"><iaixsl:value-of select="product/price/@maxprice_formatted"/></iaixsl:when>
                                                                <iaixsl:otherwise><iaixsl:value-of select="price/@maxprice_formatted"/></iaixsl:otherwise>
                                                            </iaixsl:choose>
                                                        </iaixsl:variable>

                                                        
                                                        <div class="product_prices">
                                                            <iaixsl:choose>
                                                                <iaixsl:when test="$var_size_min_formatted != $var_size_max_formatted">
                                                                    <span class="price">
                                                                        <iaixsl:value-of select="$var_size_min_formatted"/><iaixsl:text> - </iaixsl:text><iaixsl:value-of select="$var_size_max_formatted"/>
                                                                    </span>

                                                                    <iaixsl:if test="$var_size_min_maxprice_formatted != ''">
                                                                        <del class="max-price">
                                                                            <span><iaixsl:value-of select="$var_size_min_maxprice_formatted"/></span><b><iaixsl:text> - </iaixsl:text></b><span><iaixsl:value-of select="$var_size_max_maxprice_formatted"/></span>
                                                                        </del>
                                                                    </iaixsl:if>

                                                                    <iaixsl:if test="$var_points != ''">
                                                                        <span class="point-price">
                                                                            <iaixsl:value-of select="$var_points"/><span class="currency"> PTS</span>
                                                                        </span>
                                                                    </iaixsl:if>
                                                                </iaixsl:when>
                                                                <iaixsl:when test="(($var_value = 0) and $var_points = '') or ($var_value = 0 and $main_hotspot_zone1_b2b_var and not($main_hotspot_zone1_b2b_var = '') and not(/shop/basket/@wholesaler = 'true'))">
                                                                    <a class="fon_price">
                                                                        <iaixsl:choose>
                                                                            <iaixsl:when test="$main_hotspot_zone1_b2b_var and not($main_hotspot_zone1_b2b_var = '')">
                                                                                <iaixsl:attribute name="title"><iaixsl:value-of select="$main_hotspot_zone1_b2b_var"/></iaixsl:attribute>
                                                                                <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/signin/@url"/></iaixsl:attribute>
                                                                                <iaixsl:value-of select="$main_hotspot_zone1_b2b_var"/>
                                                                            </iaixsl:when>
                                                                            <iaixsl:otherwise>
                                                                                <iaixsl:attribute name="title">Click to go to the contact form</iaixsl:attribute>
                                                                                <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/contact/link/@url"/></iaixsl:attribute>
                                                                                Call for Price
                                                                            </iaixsl:otherwise>
                                                                        </iaixsl:choose>
                                                                    </a>
                                                                </iaixsl:when>
                                                                <iaixsl:otherwise>
                                                                    <span class="price">
                                                                        
                                                                        <iaixsl:value-of select="$var_price_formatted"/>
                                                                    </span>
                                                                    <iaixsl:if test="$var_maxprice_formatted != ''">
                                                                        <del class="max-price">
                                                                            
                                                                            <iaixsl:value-of select="$var_maxprice_formatted"/>
                                                                        </del>
                                                                    </iaixsl:if>
                                                                    <iaixsl:if test="$var_points != ''">
                                                                        <span class="point-price">
                                                                            <iaixsl:value-of select="$var_points"/><span class="currency"> PTS</span>
                                                                        </span>
                                                                    </iaixsl:if>
                                                                </iaixsl:otherwise>
                                                            </iaixsl:choose>
                                                            <iaixsl:if test="price/@unit_converted_price_formatted">
                                                                <small class="s_unit_converted_price"><iaixsl:value-of select="price/@unit_converted_price_formatted"/><iaixsl:text> / </iaixsl:text><iaixsl:value-of select="price/@unit_converted_format"/></small>
                                                            </iaixsl:if>
                                                        </div>
                                                    </iaixsl:when>
                                                    <iaixsl:otherwise>
                                                        

                                                        <iaixsl:variable name="var_size_min_net_formatted"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/price/@size_min_net_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@size_min_net_formatted"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                                        <iaixsl:variable name="var_size_max_net_formatted"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/price/@size_max_net_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@size_max_net_formatted"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                                        <iaixsl:variable name="var_size_min_net_maxprice_formatted"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/price/@size_min_maxprice_net_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@size_min_maxprice_net_formatted"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                                        <iaixsl:variable name="var_size_max_maxprice_net_formatted"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/price/@size_max_maxprice_net_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@size_max_maxprice_net_formatted"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                                        <iaixsl:variable name="var_points_net"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/price/@points"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@points"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                                        
                                                        
                                                        <iaixsl:variable name="var_net_value"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/price/@size_min_net"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@size_min_net"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                                        <iaixsl:variable name="var_price_formatted">
                                                            <iaixsl:choose>
                                                                <iaixsl:when test="price/@price_unit_net_formatted and sizes/@unit"><iaixsl:value-of select="price/@price_unit_net_formatted"/><iaixsl:text> / </iaixsl:text><iaixsl:value-of select="sizes/@unit_sellby"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="sizes/@unit"/></iaixsl:when>
                                                                <iaixsl:when test="product/price/@price_unit_net_formatted and product/sizes/@unit"><iaixsl:value-of select="product/price/@price_unit_net_formatted"/><iaixsl:text> / </iaixsl:text><iaixsl:value-of select="product/sizes/@unit_sellby"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="product/sizes/@unit"/></iaixsl:when>
                                                                <iaixsl:otherwise><iaixsl:value-of select="$var_size_min_net_formatted"/></iaixsl:otherwise>
                                                            </iaixsl:choose>
                                                        </iaixsl:variable>

                                                        <iaixsl:variable name="var_maxprice_net_formatted">
                                                            <iaixsl:choose>
                                                                <iaixsl:when test="price/@maxprice_unit_net_formatted"><iaixsl:value-of select="price/@maxprice_unit_net_formatted"/></iaixsl:when>
                                                                <iaixsl:when test="product/price/@maxprice_unit_net_formatted"><iaixsl:value-of select="product/price/@maxprice_unit_net_formatted"/></iaixsl:when>
                                                                <iaixsl:when test="product"><iaixsl:value-of select="product/price/@maxprice_net_formatted"/></iaixsl:when>
                                                                <iaixsl:otherwise><iaixsl:value-of select="price/@maxprice_net_formatted"/></iaixsl:otherwise>
                                                            </iaixsl:choose>
                                                        </iaixsl:variable>

                                                        
                                                        <div class="product_prices">
                                                            <iaixsl:choose>
                                                                <iaixsl:when test="$var_size_min_net_formatted != $var_size_max_net_formatted">
                                                                    <span class="price">
                                                                        <iaixsl:value-of select="$var_size_min_net_formatted"/><iaixsl:text> - </iaixsl:text><iaixsl:value-of select="$var_size_max_net_formatted"/><iaixsl:value-of select="$var_net_prices"/>
                                                                    </span>

                                                                    <iaixsl:if test="$var_size_min_net_maxprice_formatted != ''">
                                                                        <del class="max-price">
                                                                            <span><iaixsl:value-of select="$var_size_min_net_maxprice_formatted"/></span><b><iaixsl:text> - </iaixsl:text></b><span><iaixsl:value-of select="$var_size_max_maxprice_net_formatted"/></span><iaixsl:value-of select="$var_net_prices"/>
                                                                        </del>
                                                                    </iaixsl:if>

                                                                    <iaixsl:if test="$var_points_net != ''">
                                                                        <span class="point-price">
                                                                            <iaixsl:value-of select="$var_points_net"/><span class="currency"> PTS</span>
                                                                        </span>
                                                                    </iaixsl:if>
                                                                </iaixsl:when>
                                                                <iaixsl:when test="(($var_net_value = 0) and $var_points_net = '') or ($var_net_value = 0 and $main_hotspot_zone1_b2b_var and not($main_hotspot_zone1_b2b_var = '') and not(/shop/basket/@wholesaler = 'true'))">
                                                                    <a class="fon_price">
                                                                        <iaixsl:choose>
                                                                            <iaixsl:when test="$main_hotspot_zone1_b2b_var and not($main_hotspot_zone1_b2b_var = '')">
                                                                                <iaixsl:attribute name="title"><iaixsl:value-of select="$main_hotspot_zone1_b2b_var"/></iaixsl:attribute>
                                                                                <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/signin/@url"/></iaixsl:attribute>
                                                                                <iaixsl:value-of select="$main_hotspot_zone1_b2b_var"/>
                                                                            </iaixsl:when>
                                                                            <iaixsl:otherwise>
                                                                                <iaixsl:attribute name="title">Click to go to the contact form</iaixsl:attribute>
                                                                                <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/contact/link/@url"/></iaixsl:attribute>
                                                                                Call for Price
                                                                            </iaixsl:otherwise>
                                                                        </iaixsl:choose>
                                                                    </a>
                                                                </iaixsl:when>
                                                                <iaixsl:otherwise>
                                                                    <span class="price">
                                                                        
                                                                        <iaixsl:value-of select="$var_price_formatted"/><iaixsl:value-of select="$var_net_prices"/>
                                                                    </span>
                                                                    <iaixsl:if test="$var_maxprice_net_formatted != ''">
                                                                        <del class="max-price">
                                                                            
                                                                            <iaixsl:value-of select="$var_maxprice_net_formatted"/><iaixsl:value-of select="$var_net_prices"/>
                                                                        </del>
                                                                    </iaixsl:if>
                                                                    <iaixsl:if test="$var_points_net != ''">
                                                                        <span class="point-price">
                                                                            <iaixsl:value-of select="$var_points_net"/><span class="currency"> PTS</span>
                                                                        </span>
                                                                    </iaixsl:if>
                                                                </iaixsl:otherwise>
                                                            </iaixsl:choose>
                                                            <iaixsl:if test="price/@unit_converted_price_net_formatted">
                                                                <small class="s_unit_converted_price"><iaixsl:value-of select="price/@unit_converted_price_net_formatted"/><iaixsl:text> / </iaixsl:text><iaixsl:value-of select="price/@unit_converted_format"/><iaixsl:value-of select="$var_net_prices"/></small>
                                                            </iaixsl:if>
                                                        </div>

                                                        
                                                    </iaixsl:otherwise>
                                                </iaixsl:choose>

                                                <iaixsl:if test="client/@client">
                                                    <div class="client"><iaixsl:value-of disable-output-escaping="yes" select="client/@client"/></div>
                                                </iaixsl:if>
                                                <iaixsl:if test="@note">
                                                    <div class="note">
                                                        <span>
                                                            <i class="icon-star">
                                                                <iaixsl:if test="@note > 0.5"><iaixsl:attribute name="class">icon-star active</iaixsl:attribute></iaixsl:if>
                                                            </i>
                                                            <i class="icon-star">
                                                                <iaixsl:if test="@note > 1.5"><iaixsl:attribute name="class">icon-star active</iaixsl:attribute></iaixsl:if>
                                                            </i>
                                                            <i class="icon-star">
                                                                <iaixsl:if test="@note > 2.5"><iaixsl:attribute name="class">icon-star active</iaixsl:attribute></iaixsl:if>
                                                            </i>
                                                            <i class="icon-star">
                                                                <iaixsl:if test="@note > 3.5"><iaixsl:attribute name="class">icon-star active</iaixsl:attribute></iaixsl:if>
                                                            </i>
                                                            <i class="icon-star">
                                                                <iaixsl:if test="@note > 4.5"><iaixsl:attribute name="class">icon-star active</iaixsl:attribute></iaixsl:if>
                                                            </i>
                                                        </span>
                                                        <small>
                                                            Score:<iaixsl:value-of disable-output-escaping="yes" select="@note"/>/5
                                                        </small>
                                                    </div>
                                                </iaixsl:if>
                                                <iaixsl:if test="content">
                                                    <div class="cleardescription"><iaixsl:value-of disable-output-escaping="yes" select="content"/></div>
                                                </iaixsl:if>
                                            </div>
                                    </iaixsl:for-each>
                                </div>
                            </div>
                        </iaixsl:when>
                        <iaixsl:otherwise>
                            <div class="main_hotspot mrg-b clearfix skeleton">
                                <span class="big_label"/>
                                <div class="main_hotspot_sub">
                                    <div class="products_wrapper row clearfix">
                                        <div class="product_wrapper col-6 col-sm-3">
                                            <span class="product-icon"/>
                                            <span class="product-name"/>
                                            <div class="product_prices"/>
                                        </div>
                                        <div class="product_wrapper col-6 col-sm-3">
                                            <span class="product-icon"/>
                                            <span class="product-name"/>
                                            <div class="product_prices"/>
                                        </div>
                                        <div class="product_wrapper col-6 col-sm-3">
                                            <span class="product-icon"/>
                                            <span class="product-name"/>
                                            <div class="product_prices"/>
                                        </div>
                                        <div class="product_wrapper col-6 col-sm-3">
                                            <span class="product-icon"/>
                                            <span class="product-name"/>
                                            <div class="product_prices"/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </iaixsl:otherwise>
                    </iaixsl:choose>
                </div>
            </iaixsl:if>

            <iaixsl:if test="/shop/page/projector/products_associated_zone1/@iairs_ajax"> </iaixsl:if>
            <iaixsl:if test="/shop/page/projector/products_associated_zone1/@hotspot_ajax"> </iaixsl:if>

            
        <!--Produkty powiązane z tym produktem - strefa 2 (projector_associated_zone2, 106711.1)-->
            

                <iaixsl:if test="page/projector/products_associated_zone2">
                    <div class="main_hotspot mb-4" id="products_associated_zone2">
                        <iaixsl:if test="not(page/projector/products_associated_zone2/product)">
                            <iaixsl:attribute name="data-ajaxload">true</iaixsl:attribute>
                            <iaixsl:attribute name="data-pagetype">projector</iaixsl:attribute>
                        </iaixsl:if>
                        <iaixsl:choose>
                            <iaixsl:when test="page/projector/products_associated_zone2/product or page/projector/products_associated_zone2/opinion">
                                <h2>
                                    <span class="big_label">
                                        <iaixsl:choose>
                                            <iaixsl:when test="page/projector/products_associated_zone2/@name">
                                                <iaixsl:value-of select="page/projector/products_associated_zone2/@name"/>
                                            </iaixsl:when>
                                            <iaixsl:otherwise>
                                                Products bought with this product
                                            </iaixsl:otherwise>
                                        </iaixsl:choose>
                                        
                                    </span>
                                </h2>
                                
                                <div class="align_row main_hotspot_sub">
                                    <div class="products_wrapper row mx-0">
                                
                                        <iaixsl:for-each select="page/projector/products_associated_zone2/*">
                                            <iaixsl:variable name="var_name"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of disable-output-escaping="yes" select="product/name/text()"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of disable-output-escaping="yes" select="name/text()"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                            <iaixsl:variable name="var_icon"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/icon"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="icon"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                            <iaixsl:variable name="var_icon_small"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/icon_small"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="icon_small"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                            <iaixsl:variable name="var_link"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/@link"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="@link"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                            <iaixsl:variable name="var_yousave"></iaixsl:variable>

                                            <div class="product_wrapper col-6 col-sm-3">
                                            
                                                <iaixsl:if test="$var_yousave and not($var_yousave = '') and price/@yousave_formatted != ''">
                                                    <div class="hotspot_yousave">
                                                        <span class="yousave_label"><iaixsl:value-of select="$var_yousave"/></span>
                                                        <span class="yousave_value"><iaixsl:value-of select="price/@yousave_formatted"/></span>
                                                    </div>
                                                </iaixsl:if>

                                                
                                                <a class="product-icon d-flex justify-content-center align-items-center">
                                                    <iaixsl:attribute name="data-product-id"><iaixsl:value-of select="@id"/></iaixsl:attribute>
                                                    <iaixsl:attribute name="href"><iaixsl:value-of select="$var_link"/></iaixsl:attribute>
                                                    <iaixsl:attribute name="title"><iaixsl:value-of select="$var_name"/></iaixsl:attribute>

                                                    <img src="/gfx/rum/loader.gif?r=1571748615" class="b-lazy">
                                                        <iaixsl:attribute name="data-src-small"><iaixsl:value-of disable-output-escaping="yes" select="$var_icon_small"/></iaixsl:attribute>
                                                        <iaixsl:attribute name="data-src"><iaixsl:value-of disable-output-escaping="yes" select="$var_icon"/></iaixsl:attribute>
                                                        <iaixsl:attribute name="alt"><iaixsl:value-of disable-output-escaping="yes" select="$var_name"/></iaixsl:attribute>
                                                    </img>
                                                </a>

                                                
                                                <h3>
                                                    <a class="product-name">
                                                        <iaixsl:attribute name="href"><iaixsl:value-of select="$var_link"/></iaixsl:attribute>
                                                        <iaixsl:attribute name="title"><iaixsl:value-of select="$var_name"/></iaixsl:attribute>
                                                        <iaixsl:value-of select="$var_name"/>
                                                    </a>
                                                </h3>

                                                <iaixsl:variable name="main_hotspot_zone1_b2b_var">Product not available in retail sales. Please register to see the wholesale prices.</iaixsl:variable>
                                                <iaixsl:variable name="var_net_prices"> excl. VAT</iaixsl:variable>
                                                <iaixsl:choose>
                                                    <iaixsl:when test="$var_net_prices = ''">
                                                        <iaixsl:variable name="var_size_min_formatted"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/price/@size_min_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@size_min_formatted"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                                        <iaixsl:variable name="var_size_max_formatted"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/price/@size_max_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@size_max_formatted"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                                        <iaixsl:variable name="var_size_min_maxprice_formatted"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/price/@size_min_maxprice_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@size_min_maxprice_formatted"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                                        <iaixsl:variable name="var_size_max_maxprice_formatted"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/price/@size_max_maxprice_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@size_max_maxprice_formatted"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                                        <iaixsl:variable name="var_points"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/price/@points"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@points"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>

                                                        
                                                        <iaixsl:variable name="var_value"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/price/@size_min"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@size_min"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                                        <iaixsl:variable name="var_price_formatted">
                                                            <iaixsl:choose>
                                                                <iaixsl:when test="price/@price_unit_formatted and sizes/@unit"><iaixsl:value-of select="price/@price_unit_formatted"/><iaixsl:text> / </iaixsl:text><iaixsl:value-of select="sizes/@unit_sellby"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="sizes/@unit"/></iaixsl:when>
                                                                <iaixsl:when test="product/price/@price_unit_formatted and product/sizes/@unit"><iaixsl:value-of select="product/price/@price_unit_formatted"/><iaixsl:text> / </iaixsl:text><iaixsl:value-of select="product/sizes/@unit_sellby"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="product/sizes/@unit"/></iaixsl:when>
                                                                <iaixsl:otherwise><iaixsl:value-of select="$var_size_min_formatted"/></iaixsl:otherwise>
                                                            </iaixsl:choose>
                                                        </iaixsl:variable>

                                                        <iaixsl:variable name="var_maxprice_formatted">
                                                            <iaixsl:choose>
                                                                <iaixsl:when test="price/@maxprice_unit_formatted"><iaixsl:value-of select="price/@maxprice_unit_formatted"/></iaixsl:when>
                                                                <iaixsl:when test="product/price/@maxprice_unit_formatted"><iaixsl:value-of select="product/price/@maxprice_unit_formatted"/></iaixsl:when>
                                                                <iaixsl:when test="product"><iaixsl:value-of select="product/price/@maxprice_formatted"/></iaixsl:when>
                                                                <iaixsl:otherwise><iaixsl:value-of select="price/@maxprice_formatted"/></iaixsl:otherwise>
                                                            </iaixsl:choose>
                                                        </iaixsl:variable>

                                                        
                                                        <div class="product_prices">
                                                            <iaixsl:choose>
                                                                <iaixsl:when test="$var_size_min_formatted != $var_size_max_formatted">
                                                                    <span class="price">
                                                                        <iaixsl:value-of select="$var_size_min_formatted"/><iaixsl:text> - </iaixsl:text><iaixsl:value-of select="$var_size_max_formatted"/>
                                                                    </span>

                                                                    <iaixsl:if test="$var_size_min_maxprice_formatted != ''">
                                                                        <del class="max-price">
                                                                            <span><iaixsl:value-of select="$var_size_min_maxprice_formatted"/></span><b><iaixsl:text> - </iaixsl:text></b><span><iaixsl:value-of select="$var_size_max_maxprice_formatted"/></span>
                                                                        </del>
                                                                    </iaixsl:if>

                                                                    <iaixsl:if test="$var_points != ''">
                                                                        <span class="point-price">
                                                                            <iaixsl:value-of select="$var_points"/><span class="currency"> PTS</span>
                                                                        </span>
                                                                    </iaixsl:if>
                                                                </iaixsl:when>
                                                                <iaixsl:when test="(($var_value = 0) and $var_points = '') or ($var_value = 0 and $main_hotspot_zone1_b2b_var and not($main_hotspot_zone1_b2b_var = '') and not(/shop/basket/@wholesaler = 'true'))">
                                                                    <a class="fon_price">
                                                                        <iaixsl:choose>
                                                                            <iaixsl:when test="$main_hotspot_zone1_b2b_var and not($main_hotspot_zone1_b2b_var = '')">
                                                                                <iaixsl:attribute name="title"><iaixsl:value-of select="$main_hotspot_zone1_b2b_var"/></iaixsl:attribute>
                                                                                <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/signin/@url"/></iaixsl:attribute>
                                                                                <iaixsl:value-of select="$main_hotspot_zone1_b2b_var"/>
                                                                            </iaixsl:when>
                                                                            <iaixsl:otherwise>
                                                                                <iaixsl:attribute name="title">Click to go to the contact form</iaixsl:attribute>
                                                                                <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/contact/link/@url"/></iaixsl:attribute>
                                                                                Call for price
                                                                            </iaixsl:otherwise>
                                                                        </iaixsl:choose>
                                                                    </a>
                                                                </iaixsl:when>
                                                                <iaixsl:otherwise>
                                                                    <span class="price">
                                                                        
                                                                        <iaixsl:value-of select="$var_price_formatted"/>
                                                                    </span>
                                                                    <iaixsl:if test="$var_maxprice_formatted != ''">
                                                                        <del class="max-price">
                                                                            
                                                                            <iaixsl:value-of select="$var_maxprice_formatted"/>
                                                                        </del>
                                                                    </iaixsl:if>
                                                                    <iaixsl:if test="$var_points != ''">
                                                                        <span class="point-price">
                                                                            <iaixsl:value-of select="$var_points"/><span class="currency"> PTS</span>
                                                                        </span>
                                                                    </iaixsl:if>
                                                                </iaixsl:otherwise>
                                                            </iaixsl:choose>
                                                            <iaixsl:if test="price/@unit_converted_price_formatted">
                                                                <small class="s_unit_converted_price"><iaixsl:value-of select="price/@unit_converted_price_formatted"/><iaixsl:text> / </iaixsl:text><iaixsl:value-of select="price/@unit_converted_format"/></small>
                                                            </iaixsl:if>
                                                        </div>
                                                    </iaixsl:when>
                                                    <iaixsl:otherwise>
                                                        

                                                        <iaixsl:variable name="var_size_min_net_formatted"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/price/@size_min_net_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@size_min_net_formatted"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                                        <iaixsl:variable name="var_size_max_net_formatted"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/price/@size_max_net_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@size_max_net_formatted"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                                        <iaixsl:variable name="var_size_min_net_maxprice_formatted"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/price/@size_min_maxprice_net_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@size_min_maxprice_net_formatted"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                                        <iaixsl:variable name="var_size_max_maxprice_net_formatted"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/price/@size_max_maxprice_net_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@size_max_maxprice_net_formatted"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                                        <iaixsl:variable name="var_points_net"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/price/@points"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@points"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                                        
                                                        
                                                        <iaixsl:variable name="var_net_value"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/price/@size_min_net"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@size_min_net"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                                        <iaixsl:variable name="var_price_formatted">
                                                            <iaixsl:choose>
                                                                <iaixsl:when test="price/@price_unit_net_formatted and sizes/@unit"><iaixsl:value-of select="price/@price_unit_net_formatted"/><iaixsl:text> / </iaixsl:text><iaixsl:value-of select="sizes/@unit_sellby"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="sizes/@unit"/></iaixsl:when>
                                                                <iaixsl:when test="product/price/@price_unit_net_formatted and product/sizes/@unit"><iaixsl:value-of select="product/price/@price_unit_net_formatted"/><iaixsl:text> / </iaixsl:text><iaixsl:value-of select="product/sizes/@unit_sellby"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="product/sizes/@unit"/></iaixsl:when>
                                                                <iaixsl:otherwise><iaixsl:value-of select="$var_size_min_net_formatted"/></iaixsl:otherwise>
                                                            </iaixsl:choose>
                                                        </iaixsl:variable>

                                                        <iaixsl:variable name="var_maxprice_net_formatted">
                                                            <iaixsl:choose>
                                                                <iaixsl:when test="price/@maxprice_unit_net_formatted"><iaixsl:value-of select="price/@maxprice_unit_net_formatted"/></iaixsl:when>
                                                                <iaixsl:when test="product/price/@maxprice_unit_net_formatted"><iaixsl:value-of select="product/price/@maxprice_unit_net_formatted"/></iaixsl:when>
                                                                <iaixsl:when test="product"><iaixsl:value-of select="product/price/@maxprice_net_formatted"/></iaixsl:when>
                                                                <iaixsl:otherwise><iaixsl:value-of select="price/@maxprice_net_formatted"/></iaixsl:otherwise>
                                                            </iaixsl:choose>
                                                        </iaixsl:variable>

                                                        
                                                        <div class="product_prices">
                                                            <iaixsl:choose>
                                                                <iaixsl:when test="$var_size_min_net_formatted != $var_size_max_net_formatted">
                                                                    <span class="price">
                                                                        <iaixsl:value-of select="$var_size_min_net_formatted"/><iaixsl:text> - </iaixsl:text><iaixsl:value-of select="$var_size_max_net_formatted"/><iaixsl:value-of select="$var_net_prices"/>
                                                                    </span>

                                                                    <iaixsl:if test="$var_size_min_net_maxprice_formatted != ''">
                                                                        <del class="max-price">
                                                                            <span><iaixsl:value-of select="$var_size_min_net_maxprice_formatted"/></span><b><iaixsl:text> - </iaixsl:text></b><span><iaixsl:value-of select="$var_size_max_maxprice_net_formatted"/></span><iaixsl:value-of select="$var_net_prices"/>
                                                                        </del>
                                                                    </iaixsl:if>

                                                                    <iaixsl:if test="$var_points_net != ''">
                                                                        <span class="point-price">
                                                                            <iaixsl:value-of select="$var_points_net"/><span class="currency"> PTS</span>
                                                                        </span>
                                                                    </iaixsl:if>
                                                                </iaixsl:when>
                                                                <iaixsl:when test="(($var_net_value = 0) and $var_points_net = '') or ($var_net_value = 0 and $main_hotspot_zone1_b2b_var and not($main_hotspot_zone1_b2b_var = '') and not(/shop/basket/@wholesaler = 'true'))">
                                                                    <a class="fon_price">
                                                                        <iaixsl:choose>
                                                                            <iaixsl:when test="$main_hotspot_zone1_b2b_var and not($main_hotspot_zone1_b2b_var = '')">
                                                                                <iaixsl:attribute name="title"><iaixsl:value-of select="$main_hotspot_zone1_b2b_var"/></iaixsl:attribute>
                                                                                <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/signin/@url"/></iaixsl:attribute>
                                                                                <iaixsl:value-of select="$main_hotspot_zone1_b2b_var"/>
                                                                            </iaixsl:when>
                                                                            <iaixsl:otherwise>
                                                                                <iaixsl:attribute name="title">Click to go to the contact form</iaixsl:attribute>
                                                                                <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/contact/link/@url"/></iaixsl:attribute>
                                                                                Call for price
                                                                            </iaixsl:otherwise>
                                                                        </iaixsl:choose>
                                                                    </a>
                                                                </iaixsl:when>
                                                                <iaixsl:otherwise>
                                                                    <span class="price">
                                                                        
                                                                        <iaixsl:value-of select="$var_price_formatted"/><iaixsl:value-of select="$var_net_prices"/>
                                                                    </span>
                                                                    <iaixsl:if test="$var_maxprice_net_formatted != ''">
                                                                        <del class="max-price">
                                                                            
                                                                            <iaixsl:value-of select="$var_maxprice_net_formatted"/><iaixsl:value-of select="$var_net_prices"/>
                                                                        </del>
                                                                    </iaixsl:if>
                                                                    <iaixsl:if test="$var_points_net != ''">
                                                                        <span class="point-price">
                                                                            <iaixsl:value-of select="$var_points_net"/><span class="currency"> PTS</span>
                                                                        </span>
                                                                    </iaixsl:if>
                                                                </iaixsl:otherwise>
                                                            </iaixsl:choose>
                                                            <iaixsl:if test="price/@unit_converted_price_net_formatted">
                                                                <small class="s_unit_converted_price"><iaixsl:value-of select="price/@unit_converted_price_net_formatted"/><iaixsl:text> / </iaixsl:text><iaixsl:value-of select="price/@unit_converted_format"/><iaixsl:value-of select="$var_net_prices"/></small>
                                                            </iaixsl:if>
                                                        </div>

                                                        
                                                    </iaixsl:otherwise>
                                                </iaixsl:choose>

                                                

                                                

                                                <iaixsl:if test="client/@client">
                                                    <div class="client"><iaixsl:value-of disable-output-escaping="yes" select="client/@client"/></div>
                                                </iaixsl:if>
                                                <iaixsl:if test="@note">
                                                    <div class="note">
                                                        <span>
                                                            <i class="icon-star">
                                                                <iaixsl:if test="@note > 0.5"><iaixsl:attribute name="class">icon-star active</iaixsl:attribute></iaixsl:if>
                                                            </i>
                                                            <i class="icon-star">
                                                                <iaixsl:if test="@note > 1.5"><iaixsl:attribute name="class">icon-star active</iaixsl:attribute></iaixsl:if>
                                                            </i>
                                                            <i class="icon-star">
                                                                <iaixsl:if test="@note > 2.5"><iaixsl:attribute name="class">icon-star active</iaixsl:attribute></iaixsl:if>
                                                            </i>
                                                            <i class="icon-star">
                                                                <iaixsl:if test="@note > 3.5"><iaixsl:attribute name="class">icon-star active</iaixsl:attribute></iaixsl:if>
                                                            </i>
                                                            <i class="icon-star">
                                                                <iaixsl:if test="@note > 4.5"><iaixsl:attribute name="class">icon-star active</iaixsl:attribute></iaixsl:if>
                                                            </i>
                                                        </span>
                                                        <small>
                                                            Score:<iaixsl:value-of disable-output-escaping="yes" select="@note"/>/5
                                                        </small>
                                                    </div>
                                                </iaixsl:if>
                                                <iaixsl:if test="content">
                                                    <div class="cleardescription"><iaixsl:value-of disable-output-escaping="yes" select="content"/></div>
                                                </iaixsl:if>
                                            </div>
                                        </iaixsl:for-each>
                                    </div>
                                </div>
                            </iaixsl:when>
                            <iaixsl:otherwise>
                                <div class="main_hotspot mrg-b clearfix skeleton">
                                    <span class="big_label"/>
                                    <div class="main_hotspot_sub">
                                        <div class="products_wrapper row clearfix">
                                            <div class="product_wrapper col-6 col-sm-3">
                                                <span class="product-icon"/>
                                                <span class="product-name"/>
                                                <div class="product_prices"/>
                                            </div>
                                            <div class="product_wrapper col-6 col-sm-3">
                                                <span class="product-icon"/>
                                                <span class="product-name"/>
                                                <div class="product_prices"/>
                                            </div>
                                            <div class="product_wrapper col-6 col-sm-3">
                                                <span class="product-icon"/>
                                                <span class="product-name"/>
                                                <div class="product_prices"/>
                                            </div>
                                            <div class="product_wrapper col-6 col-sm-3">
                                                <span class="product-icon"/>
                                                <span class="product-name"/>
                                                <div class="product_prices"/>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </iaixsl:otherwise>
                        </iaixsl:choose>
                    </div>
                </iaixsl:if>

                <iaixsl:if test="/shop/page/projector/products_associated_zone2/@iairs_ajax"> </iaixsl:if>
                <iaixsl:if test="/shop/page/projector/products_associated_zone2/@hotspot_ajax"> </iaixsl:if>
        
            
        <!--Produkty powiązane z tym produktem - strefa 3 (projector_associated_zone3, 106712.1)-->
            

                <iaixsl:if test="page/projector/products_associated_zone3">
                    <div class="main_hotspot mb-4" id="products_associated_zone3">
                        <iaixsl:if test="not(page/projector/products_associated_zone3/product)">
                            <iaixsl:attribute name="data-ajaxload">true</iaixsl:attribute>
                            <iaixsl:attribute name="data-pagetype">projector</iaixsl:attribute>
                        </iaixsl:if>
                        <iaixsl:choose>
                            <iaixsl:when test="page/projector/products_associated_zone3/product or page/projector/products_associated_zone3/opinion">
                                <h2>
                                    <span class="big_label">
                                        <iaixsl:choose>
                                            <iaixsl:when test="page/projector/products_associated_zone3/@name">
                                                <iaixsl:value-of select="page/projector/products_associated_zone3/@name"/>
                                            </iaixsl:when>
                                            <iaixsl:otherwise>
                                                Produkty kupione z tym produktem
                                            </iaixsl:otherwise>
                                        </iaixsl:choose>
                                        
                                    </span>
                                </h2>

                                <div class="align_row main_hotspot_sub">
                                    <div class="products_wrapper row mx-0">

                                        <iaixsl:for-each select="page/projector/products_associated_zone3/*">
                                            <iaixsl:variable name="var_name"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of disable-output-escaping="yes" select="product/name/text()"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of disable-output-escaping="yes" select="name/text()"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                            <iaixsl:variable name="var_icon"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/icon"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="icon"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                            <iaixsl:variable name="var_icon_small"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/icon_small"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="icon_small"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                            <iaixsl:variable name="var_link"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/@link"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="@link"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                            <iaixsl:variable name="var_yousave"></iaixsl:variable>

                                            <div class="product_wrapper col-6 col-sm-3">

                                                <iaixsl:if test="$var_yousave and not($var_yousave = '') and price/@yousave_formatted != ''">
                                                    <div class="hotspot_yousave">
                                                        <span class="yousave_label"><iaixsl:value-of select="$var_yousave"/></span>
                                                        <span class="yousave_value"><iaixsl:value-of select="price/@yousave_formatted"/></span>
                                                    </div>
                                                </iaixsl:if>

                                                
                                                <a class="product-icon d-flex justify-content-center align-items-center">
                                                    <iaixsl:attribute name="data-product-id"><iaixsl:value-of select="@id"/></iaixsl:attribute>
                                                    <iaixsl:attribute name="href"><iaixsl:value-of select="$var_link"/></iaixsl:attribute>
                                                    <iaixsl:attribute name="title"><iaixsl:value-of select="$var_name"/></iaixsl:attribute>

                                                    <img src="/gfx/rum/loader.gif?r=1571748615" class="b-lazy">
                                                        <iaixsl:attribute name="data-src-small"><iaixsl:value-of disable-output-escaping="yes" select="$var_icon_small"/></iaixsl:attribute>
                                                        <iaixsl:attribute name="data-src"><iaixsl:value-of disable-output-escaping="yes" select="$var_icon"/></iaixsl:attribute>
                                                        <iaixsl:attribute name="alt"><iaixsl:value-of disable-output-escaping="yes" select="$var_name"/></iaixsl:attribute>
                                                    </img>
                                                </a>

                                                
                                                <h3>
                                                    <a class="product-name">
                                                        <iaixsl:attribute name="href"><iaixsl:value-of select="$var_link"/></iaixsl:attribute>
                                                        <iaixsl:attribute name="title"><iaixsl:value-of select="$var_name"/></iaixsl:attribute>
                                                        <iaixsl:value-of select="$var_name"/>
                                                    </a>
                                                </h3>

                                                <iaixsl:variable name="main_hotspot_zone1_b2b_var">Product not available in retail sales. Please register to see the wholesale prices.</iaixsl:variable>
                                                <iaixsl:variable name="var_net_prices"> excl. VAT</iaixsl:variable>
                                                <iaixsl:choose>
                                                    <iaixsl:when test="$var_net_prices = ''">
                                                        <iaixsl:variable name="var_size_min_formatted"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/price/@size_min_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@size_min_formatted"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                                        <iaixsl:variable name="var_size_max_formatted"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/price/@size_max_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@size_max_formatted"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                                        <iaixsl:variable name="var_size_min_maxprice_formatted"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/price/@size_min_maxprice_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@size_min_maxprice_formatted"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                                        <iaixsl:variable name="var_size_max_maxprice_formatted"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/price/@size_max_maxprice_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@size_max_maxprice_formatted"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                                        <iaixsl:variable name="var_points"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/price/@points"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@points"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>

                                                        
                                                        <iaixsl:variable name="var_value"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/price/@size_min"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@size_min"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                                        <iaixsl:variable name="var_price_formatted">
                                                            <iaixsl:choose>
                                                                <iaixsl:when test="price/@price_unit_formatted and sizes/@unit"><iaixsl:value-of select="price/@price_unit_formatted"/><iaixsl:text> / </iaixsl:text><iaixsl:value-of select="sizes/@unit_sellby"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="sizes/@unit"/></iaixsl:when>
                                                                <iaixsl:when test="product/price/@price_unit_formatted and product/sizes/@unit"><iaixsl:value-of select="product/price/@price_unit_formatted"/><iaixsl:text> / </iaixsl:text><iaixsl:value-of select="product/sizes/@unit_sellby"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="product/sizes/@unit"/></iaixsl:when>
                                                                <iaixsl:otherwise><iaixsl:value-of select="$var_size_min_formatted"/></iaixsl:otherwise>
                                                            </iaixsl:choose>
                                                        </iaixsl:variable>

                                                        <iaixsl:variable name="var_maxprice_formatted">
                                                            <iaixsl:choose>
                                                                <iaixsl:when test="price/@maxprice_unit_formatted"><iaixsl:value-of select="price/@maxprice_unit_formatted"/></iaixsl:when>
                                                                <iaixsl:when test="product/price/@maxprice_unit_formatted"><iaixsl:value-of select="product/price/@maxprice_unit_formatted"/></iaixsl:when>
                                                                <iaixsl:when test="product"><iaixsl:value-of select="product/price/@maxprice_formatted"/></iaixsl:when>
                                                                <iaixsl:otherwise><iaixsl:value-of select="price/@maxprice_formatted"/></iaixsl:otherwise>
                                                            </iaixsl:choose>
                                                        </iaixsl:variable>

                                                        
                                                        <div class="product_prices">
                                                            <iaixsl:choose>
                                                                <iaixsl:when test="$var_size_min_formatted != $var_size_max_formatted">
                                                                    <span class="price">
                                                                        <iaixsl:value-of select="$var_size_min_formatted"/><iaixsl:text> - </iaixsl:text><iaixsl:value-of select="$var_size_max_formatted"/>
                                                                    </span>

                                                                    <iaixsl:if test="$var_size_min_maxprice_formatted != ''">
                                                                        <del class="max-price">
                                                                            <span><iaixsl:value-of select="$var_size_min_maxprice_formatted"/></span><b><iaixsl:text> - </iaixsl:text></b><span><iaixsl:value-of select="$var_size_max_maxprice_formatted"/></span>
                                                                        </del>
                                                                    </iaixsl:if>

                                                                    <iaixsl:if test="$var_points != ''">
                                                                        <span class="point-price">
                                                                            <iaixsl:value-of select="$var_points"/><span class="currency"> pts</span>
                                                                        </span>
                                                                    </iaixsl:if>
                                                                </iaixsl:when>
                                                                <iaixsl:when test="(($var_value = 0) and $var_points = '') or ($var_value = 0 and $main_hotspot_zone1_b2b_var and not($main_hotspot_zone1_b2b_var = '') and not(/shop/basket/@wholesaler = 'true'))">
                                                                    <a class="fon_price">
                                                                        <iaixsl:choose>
                                                                            <iaixsl:when test="$main_hotspot_zone1_b2b_var and not($main_hotspot_zone1_b2b_var = '')">
                                                                                <iaixsl:attribute name="title"><iaixsl:value-of select="$main_hotspot_zone1_b2b_var"/></iaixsl:attribute>
                                                                                <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/signin/@url"/></iaixsl:attribute>
                                                                                <iaixsl:value-of select="$main_hotspot_zone1_b2b_var"/>
                                                                            </iaixsl:when>
                                                                            <iaixsl:otherwise>
                                                                                <iaixsl:attribute name="title">Click to go to contact form</iaixsl:attribute>
                                                                                <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/contact/link/@url"/></iaixsl:attribute>
                                                                                Price on phone demand
                                                                            </iaixsl:otherwise>
                                                                        </iaixsl:choose>
                                                                    </a>
                                                                </iaixsl:when>
                                                                <iaixsl:otherwise>
                                                                    <span class="price">
                                                                        
                                                                        <iaixsl:value-of select="$var_price_formatted"/>
                                                                    </span>
                                                                    <iaixsl:if test="$var_maxprice_formatted != ''">
                                                                        <del class="max-price">
                                                                            
                                                                            <iaixsl:value-of select="$var_maxprice_formatted"/>
                                                                        </del>
                                                                    </iaixsl:if>
                                                                    <iaixsl:if test="$var_points != ''">
                                                                        <span class="point-price">
                                                                            <iaixsl:value-of select="$var_points"/><span class="currency"> pts</span>
                                                                        </span>
                                                                    </iaixsl:if>
                                                                </iaixsl:otherwise>
                                                            </iaixsl:choose>
                                                            <iaixsl:if test="price/@unit_converted_price_formatted">
                                                                <small class="s_unit_converted_price"><iaixsl:value-of select="price/@unit_converted_price_formatted"/><iaixsl:text> / </iaixsl:text><iaixsl:value-of select="price/@unit_converted_format"/></small>
                                                            </iaixsl:if>
                                                        </div>
                                                    </iaixsl:when>
                                                    <iaixsl:otherwise>
                                                        

                                                        <iaixsl:variable name="var_size_min_net_formatted"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/price/@size_min_net_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@size_min_net_formatted"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                                        <iaixsl:variable name="var_size_max_net_formatted"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/price/@size_max_net_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@size_max_net_formatted"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                                        <iaixsl:variable name="var_size_min_net_maxprice_formatted"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/price/@size_min_maxprice_net_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@size_min_maxprice_net_formatted"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                                        <iaixsl:variable name="var_size_max_maxprice_net_formatted"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/price/@size_max_maxprice_net_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@size_max_maxprice_net_formatted"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                                        <iaixsl:variable name="var_points_net"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/price/@points"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@points"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>

                                                        
                                                        <iaixsl:variable name="var_net_value"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/price/@size_min_net"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@size_min_net"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                                        <iaixsl:variable name="var_price_formatted">
                                                            <iaixsl:choose>
                                                                <iaixsl:when test="price/@price_unit_net_formatted and sizes/@unit"><iaixsl:value-of select="price/@price_unit_net_formatted"/><iaixsl:text> / </iaixsl:text><iaixsl:value-of select="sizes/@unit_sellby"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="sizes/@unit"/></iaixsl:when>
                                                                <iaixsl:when test="product/price/@price_unit_net_formatted and product/sizes/@unit"><iaixsl:value-of select="product/price/@price_unit_net_formatted"/><iaixsl:text> / </iaixsl:text><iaixsl:value-of select="product/sizes/@unit_sellby"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="product/sizes/@unit"/></iaixsl:when>
                                                                <iaixsl:otherwise><iaixsl:value-of select="$var_size_min_net_formatted"/></iaixsl:otherwise>
                                                            </iaixsl:choose>
                                                        </iaixsl:variable>

                                                        <iaixsl:variable name="var_maxprice_net_formatted">
                                                            <iaixsl:choose>
                                                                <iaixsl:when test="price/@maxprice_unit_net_formatted"><iaixsl:value-of select="price/@maxprice_unit_net_formatted"/></iaixsl:when>
                                                                <iaixsl:when test="product/price/@maxprice_unit_net_formatted"><iaixsl:value-of select="product/price/@maxprice_unit_net_formatted"/></iaixsl:when>
                                                                <iaixsl:when test="product"><iaixsl:value-of select="product/price/@maxprice_net_formatted"/></iaixsl:when>
                                                                <iaixsl:otherwise><iaixsl:value-of select="price/@maxprice_net_formatted"/></iaixsl:otherwise>
                                                            </iaixsl:choose>
                                                        </iaixsl:variable>

                                                        
                                                        <div class="product_prices">
                                                            <iaixsl:choose>
                                                                <iaixsl:when test="$var_size_min_net_formatted != $var_size_max_net_formatted">
                                                                    <span class="price">
                                                                        <iaixsl:value-of select="$var_size_min_net_formatted"/><iaixsl:text> - </iaixsl:text><iaixsl:value-of select="$var_size_max_net_formatted"/><iaixsl:value-of select="$var_net_prices"/>
                                                                    </span>

                                                                    <iaixsl:if test="$var_size_min_net_maxprice_formatted != ''">
                                                                        <del class="max-price">
                                                                            <span><iaixsl:value-of select="$var_size_min_net_maxprice_formatted"/></span><b><iaixsl:text> - </iaixsl:text></b><span><iaixsl:value-of select="$var_size_max_maxprice_net_formatted"/></span><iaixsl:value-of select="$var_net_prices"/>
                                                                        </del>
                                                                    </iaixsl:if>

                                                                    <iaixsl:if test="$var_points_net != ''">
                                                                        <span class="point-price">
                                                                            <iaixsl:value-of select="$var_points_net"/><span class="currency"> pts</span>
                                                                        </span>
                                                                    </iaixsl:if>
                                                                </iaixsl:when>
                                                                <iaixsl:when test="(($var_net_value = 0) and $var_points_net = '') or ($var_net_value = 0 and $main_hotspot_zone1_b2b_var and not($main_hotspot_zone1_b2b_var = '') and not(/shop/basket/@wholesaler = 'true'))">
                                                                    <a class="fon_price">
                                                                        <iaixsl:choose>
                                                                            <iaixsl:when test="$main_hotspot_zone1_b2b_var and not($main_hotspot_zone1_b2b_var = '')">
                                                                                <iaixsl:attribute name="title"><iaixsl:value-of select="$main_hotspot_zone1_b2b_var"/></iaixsl:attribute>
                                                                                <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/signin/@url"/></iaixsl:attribute>
                                                                                <iaixsl:value-of select="$main_hotspot_zone1_b2b_var"/>
                                                                            </iaixsl:when>
                                                                            <iaixsl:otherwise>
                                                                                <iaixsl:attribute name="title">Click to go to contact form</iaixsl:attribute>
                                                                                <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/contact/link/@url"/></iaixsl:attribute>
                                                                                Price on phone demand
                                                                            </iaixsl:otherwise>
                                                                        </iaixsl:choose>
                                                                    </a>
                                                                </iaixsl:when>
                                                                <iaixsl:otherwise>
                                                                    <span class="price">
                                                                        
                                                                        <iaixsl:value-of select="$var_price_formatted"/><iaixsl:value-of select="$var_net_prices"/>
                                                                    </span>
                                                                    <iaixsl:if test="$var_maxprice_net_formatted != ''">
                                                                        <del class="max-price">
                                                                            
                                                                            <iaixsl:value-of select="$var_maxprice_net_formatted"/><iaixsl:value-of select="$var_net_prices"/>
                                                                        </del>
                                                                    </iaixsl:if>
                                                                    <iaixsl:if test="$var_points_net != ''">
                                                                        <span class="point-price">
                                                                            <iaixsl:value-of select="$var_points_net"/><span class="currency"> pts</span>
                                                                        </span>
                                                                    </iaixsl:if>
                                                                </iaixsl:otherwise>
                                                            </iaixsl:choose>
                                                            <iaixsl:if test="price/@unit_converted_price_net_formatted">
                                                                <small class="s_unit_converted_price"><iaixsl:value-of select="price/@unit_converted_price_net_formatted"/><iaixsl:text> / </iaixsl:text><iaixsl:value-of select="price/@unit_converted_format"/><iaixsl:value-of select="$var_net_prices"/></small>
                                                            </iaixsl:if>
                                                        </div>

                                                        
                                                    </iaixsl:otherwise>
                                                </iaixsl:choose>

                                                <iaixsl:if test="client/@client">
                                                    <div class="client"><iaixsl:value-of disable-output-escaping="yes" select="client/@client"/></div>
                                                </iaixsl:if>
                                                <iaixsl:if test="@note">
                                                    <div class="note">
                                                        <span>
                                                            <i class="icon-star">
                                                                <iaixsl:if test="@note > 0.5"><iaixsl:attribute name="class">icon-star active</iaixsl:attribute></iaixsl:if>
                                                            </i>
                                                            <i class="icon-star">
                                                                <iaixsl:if test="@note > 1.5"><iaixsl:attribute name="class">icon-star active</iaixsl:attribute></iaixsl:if>
                                                            </i>
                                                            <i class="icon-star">
                                                                <iaixsl:if test="@note > 2.5"><iaixsl:attribute name="class">icon-star active</iaixsl:attribute></iaixsl:if>
                                                            </i>
                                                            <i class="icon-star">
                                                                <iaixsl:if test="@note > 3.5"><iaixsl:attribute name="class">icon-star active</iaixsl:attribute></iaixsl:if>
                                                            </i>
                                                            <i class="icon-star">
                                                                <iaixsl:if test="@note > 4.5"><iaixsl:attribute name="class">icon-star active</iaixsl:attribute></iaixsl:if>
                                                            </i>
                                                        </span>
                                                        <small>
                                                            Ocena:<iaixsl:value-of disable-output-escaping="yes" select="@note"/>/5
                                                        </small>
                                                    </div>
                                                </iaixsl:if>
                                                <iaixsl:if test="content">
                                                    <div class="cleardescription"><iaixsl:value-of disable-output-escaping="yes" select="content"/></div>
                                                </iaixsl:if>
                                            </div>
                                        </iaixsl:for-each>
                                    </div>
                                </div>
                            </iaixsl:when>
                            <iaixsl:otherwise>
                                <div class="main_hotspot mrg-b clearfix skeleton">
                                    <span class="big_label"/>
                                    <div class="main_hotspot_sub">
                                        <div class="products_wrapper row clearfix">
                                            <div class="product_wrapper col-6 col-sm-3">
                                                <span class="product-icon"/>
                                                <span class="product-name"/>
                                                <div class="product_prices"/>
                                            </div>
                                            <div class="product_wrapper col-6 col-sm-3">
                                                <span class="product-icon"/>
                                                <span class="product-name"/>
                                                <div class="product_prices"/>
                                            </div>
                                            <div class="product_wrapper col-6 col-sm-3">
                                                <span class="product-icon"/>
                                                <span class="product-name"/>
                                                <div class="product_prices"/>
                                            </div>
                                            <div class="product_wrapper col-6 col-sm-3">
                                                <span class="product-icon"/>
                                                <span class="product-name"/>
                                                <div class="product_prices"/>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </iaixsl:otherwise>
                        </iaixsl:choose>
                    </div>
                </iaixsl:if>

                <iaixsl:if test="/shop/page/projector/products_associated_zone3/@iairs_ajax"> </iaixsl:if>
                <iaixsl:if test="/shop/page/projector/products_associated_zone3/@hotspot_ajax"> </iaixsl:if>

            
        <!--Karta towaru - opinie (projector_projector_opinons_form, 108631.1)-->
        
            <section id="opinions_section" class="row mb-4">
                <iaixsl:if test="/shop/page/projector/comments/@all > '0'">
                    <div class="col-12">
                        <span class="big_label">
                            Opinions of our clients
                        </span>
                    </div>

                    <div class="average_opinions_container col-12 col-md-4 col-lg-3 mb-4">
                        <div class="row">
                            <div class="col-12 col-sm-6 col-md-12">
                                <div class="average_opinions_box">
                                    <div class="comments">
                                        <div class="note">
                                            <span>
                                                <i class="icon-star">
                                                    <iaixsl:if test="page/projector/comments/@avg > 0.5"><iaixsl:attribute name="class">icon-star active</iaixsl:attribute></iaixsl:if>
                                                </i>
                                                <i class="icon-star">
                                                    <iaixsl:if test="page/projector/comments/@avg > 1.5"><iaixsl:attribute name="class">icon-star active</iaixsl:attribute></iaixsl:if>
                                                </i>
                                                <i class="icon-star">
                                                    <iaixsl:if test="page/projector/comments/@avg > 2.5"><iaixsl:attribute name="class">icon-star active</iaixsl:attribute></iaixsl:if>
                                                </i>
                                                <i class="icon-star">
                                                    <iaixsl:if test="page/projector/comments/@avg > 3.5"><iaixsl:attribute name="class">icon-star active</iaixsl:attribute></iaixsl:if>
                                                </i>
                                                <i class="icon-star">
                                                    <iaixsl:if test="page/projector/comments/@avg > 4.5"><iaixsl:attribute name="class">icon-star active</iaixsl:attribute></iaixsl:if>
                                                </i>
                                            </span>
                                        </div>
                                    </div>
                                    <div class="average_opinions_score">
                                        <iaixsl:value-of disable-output-escaping="yes" select="page/projector/comments/@avg"/>
                                    </div>
                                    <div class="average_opinions_desc">
                                        Number of opinions issued: <iaixsl:value-of select="page/projector/comments/@all"/>
                                    </div>
                                </div>
                                <div class="opinions_add">
                                    <iaixsl:choose>
                                        <iaixsl:when test="(page/projector/comments/opinionClient/opinion/@stat = 'y')">
                                            <div class="opinions_avg_info menu_messages_message small">
                                                Your opinion is already approved. You can't add more opinions about this product.
                                            </div>
                                        </iaixsl:when>
                                        <iaixsl:otherwise>
                                            <iaixsl:if test="(page/projector/comments/opinionClient/opinion/@stat = 'n')">
                                                <div class="opinions_avg_info menu_messages_message small">
                                                     Before publishing, your opinion will be checked in terms of manners.
                                                </div>
                                            </iaixsl:if>
                                            <a href="#showOpinionForm" id="show_opinion_form" class="btn --solid --medium">
                                                <iaixsl:choose>
                                                    <iaixsl:when test="(page/projector/comments/opinionClient/opinion/@stat = 'n')">
                                                        Change your opinion
                                                    </iaixsl:when>
                                                    <iaixsl:otherwise>
                                                        Write your opinion
                                                    </iaixsl:otherwise>
                                                </iaixsl:choose>
                                            </a>
                                            <iaixsl:if test="/shop/page/projector/comments/opinionClient/@points">
                                                <div class="opinions_affiliate_points">
                                                    <iaixsl:choose>
                                                        <iaixsl:when test="/shop/page/projector/comments/opinionClient/image/@points">
                                                            For opinion with a photo you will receive
                                                        </iaixsl:when>
                                                        <iaixsl:otherwise>
                                                            For opinion you will receive
                                                        </iaixsl:otherwise>
                                                    </iaixsl:choose>
                                                    <strong>
                                                        <iaixsl:choose>
                                                            <iaixsl:when test="substring-after(/shop/page/projector/comments/opinionClient/@points, '.') = '00'">
                                                                <iaixsl:value-of select="substring-before(/shop/page/projector/comments/opinionClient/@points, '.')"/>
                                                            </iaixsl:when>
                                                            <iaixsl:otherwise>
                                                                <iaixsl:value-of select="/shop/page/projector/comments/opinionClient/@points"/>
                                                            </iaixsl:otherwise>
                                                        </iaixsl:choose>
                                                    
                                                        <iaixsl:text> </iaixsl:text>PTS</strong>
                                                    <br/>in our loyalty program.
                                                </div>
                                            </iaixsl:if>
                                        </iaixsl:otherwise>
                                    </iaixsl:choose>
                                </div>
                            </div>


                            <iaixsl:variable name="totalOpinionsAll"><iaixsl:value-of select="page/projector/comments/@all"/></iaixsl:variable>
                            <div class="col-12 col-sm-6 col-md-12">
                                <div class="average_opinions_list">
                                    <div class="opinion_rate" id="shop-opinion_rate_5">
                                        <span class="opinion_number">5</span><span class="opinion_number_star"><i class="icon-star"/></span>
                                        <div class="opinions_bar_container">
                                            <div class="opinions_bar_active">
                                                <iaixsl:variable name="total5"><iaixsl:value-of select="count(/shop/page/projector/comments/opinions/opinion[@note='5'])"/></iaixsl:variable>
                                                <iaixsl:attribute name="style">width: <iaixsl:value-of select="$total5 div $totalOpinionsAll * 100"/>%</iaixsl:attribute>
                                            </div>
                                        </div>
                                        <span class="rate_count"><iaixsl:value-of select="count(page/projector/comments/opinions/opinion[@note='5'])"/></span>
                                    </div>
                                    <div class="opinion_rate" id="shop-opinion_rate_4">
                                        <span class="opinion_number">4</span><span class="opinion_number_star"><i class="icon-star"/></span>
                                        <div class="opinions_bar_container">
                                            <div class="opinions_bar_active">
                                                <iaixsl:variable name="total4"><iaixsl:value-of select="count(/shop/page/projector/comments/opinions/opinion[@note='4'])"/></iaixsl:variable>
                                                <iaixsl:attribute name="style">width: <iaixsl:value-of select="$total4 div $totalOpinionsAll * 100"/>%</iaixsl:attribute>
                                            </div>
                                        </div>
                                        <span class="rate_count"><iaixsl:value-of select="count(page/projector/comments/opinions/opinion[@note='4'])"/></span>
                                    </div>
                                    <div class="opinion_rate" id="shop-opinion_rate_3">
                                        <span class="opinion_number">3</span><span class="opinion_number_star"><i class="icon-star"/></span>
                                        <div class="opinions_bar_container">
                                            <div class="opinions_bar_active">
                                                <iaixsl:variable name="total3"><iaixsl:value-of select="count(/shop/page/projector/comments/opinions/opinion[@note='3'])"/></iaixsl:variable>
                                                <iaixsl:attribute name="style">width: <iaixsl:value-of select="$total3 div $totalOpinionsAll * 100"/>%</iaixsl:attribute>
                                            </div>
                                        </div>
                                        <span class="rate_count"><iaixsl:value-of select="count(page/projector/comments/opinions/opinion[@note='3'])"/></span>
                                    </div>
                                    <div class="opinion_rate" id="shop-opinion_rate_2">
                                        <span class="opinion_number">2</span><span class="opinion_number_star"><i class="icon-star"/></span>
                                        <div class="opinions_bar_container">
                                            <div class="opinions_bar_active">
                                                <iaixsl:variable name="total2"><iaixsl:value-of select="count(/shop/page/projector/comments/opinions/opinion[@note='2'])"/></iaixsl:variable>
                                                <iaixsl:attribute name="style">width: <iaixsl:value-of select="$total2 div $totalOpinionsAll * 100"/>%</iaixsl:attribute>
                                            </div>
                                        </div>
                                        <span class="rate_count"><iaixsl:value-of select="count(page/projector/comments/opinions/opinion[@note='2'])"/></span>
                                    </div>
                                    <div class="opinion_rate" id="shop-opinion_rate_1">
                                        <span class="opinion_number">1</span><span class="opinion_number_star"><i class="icon-star"/></span>
                                        <div class="opinions_bar_container">
                                            <div class="opinions_bar_active">
                                                <iaixsl:variable name="total1"><iaixsl:value-of select="count(/shop/page/projector/comments/opinions/opinion[@note='1'])"/></iaixsl:variable>
                                                <iaixsl:attribute name="style">width: <iaixsl:value-of select="$total1 div $totalOpinionsAll * 100"/>%</iaixsl:attribute>
                                            </div>
                                        </div>
                                        <span class="rate_count"><iaixsl:value-of select="count(page/projector/comments/opinions/opinion[@note='1'])"/></span>
                                    </div>
                                </div>
                                <div class="opinions-shop_guide">
                                    Click a rating to filter reviews
                                </div>
                            </div>
                        </div>
                    </div>

                    
                    <div class="opinions_list col-12 col-md-8 ml-md-auto">
                        <div class="row">
                            <iaixsl:for-each select="/shop/page/projector/comments/opinions/opinion">
                                <div class="col-12">
                                    <iaixsl:choose>
                                        <iaixsl:when test="@note > 4.5"><iaixsl:attribute name="data-opinion_rate">shop-opinion_rate_5</iaixsl:attribute></iaixsl:when>
                                        <iaixsl:when test="@note > 3.5"><iaixsl:attribute name="data-opinion_rate">shop-opinion_rate_4</iaixsl:attribute></iaixsl:when>
                                        <iaixsl:when test="@note > 2.5"><iaixsl:attribute name="data-opinion_rate">shop-opinion_rate_3</iaixsl:attribute></iaixsl:when>
                                        <iaixsl:when test="@note > 1.5"><iaixsl:attribute name="data-opinion_rate">shop-opinion_rate_2</iaixsl:attribute></iaixsl:when>
                                        <iaixsl:when test="@note > 0.5"><iaixsl:attribute name="data-opinion_rate">shop-opinion_rate_1</iaixsl:attribute></iaixsl:when>
                                    </iaixsl:choose>
                                    <div class="opinions_element_holder d-flex mb-4 pb-4 align-items-start">
                                        <iaixsl:if test="@image_small and not(@image_small = '')">
                                            <div class="opinions_element_photo">
                                                <a data-imagelightbox="o">
                                                    <iaixsl:attribute name="href"><iaixsl:value-of select="@image_large"/></iaixsl:attribute>
                                                    <iaixsl:attribute name="style">background-image: url('<iaixsl:value-of select="@image_small"/>');</iaixsl:attribute>

                                                    <img>
                                                        <iaixsl:attribute name="alt"><iaixsl:value-of select="@client"/></iaixsl:attribute>
                                                        <iaixsl:attribute name="title"><iaixsl:value-of select="@client"/></iaixsl:attribute>
                                                        <iaixsl:attribute name="src"><iaixsl:value-of select="@image_large"/></iaixsl:attribute>
                                                    </img>
                                                </a>
                                            </div>
                                        </iaixsl:if>
                                        <div class="opinions_element">
                                            
                                            <div class="opinions_element_top justify-content-between">
                                                
                                                <iaixsl:if test="(@note)">
                                                    <div class="opinions_element_stars">
                                                        <div class="note">
                                                            <span>
                                                                <i class="icon-star">
                                                                    <iaixsl:if test="@note > 0.5"><iaixsl:attribute name="class">icon-star active</iaixsl:attribute></iaixsl:if>
                                                                </i>
                                                                <i class="icon-star">
                                                                    <iaixsl:if test="@note > 1.5"><iaixsl:attribute name="class">icon-star active</iaixsl:attribute></iaixsl:if>
                                                                </i>
                                                                <i class="icon-star">
                                                                    <iaixsl:if test="@note > 2.5"><iaixsl:attribute name="class">icon-star active</iaixsl:attribute></iaixsl:if>
                                                                </i>
                                                                <i class="icon-star">
                                                                    <iaixsl:if test="@note > 3.5"><iaixsl:attribute name="class">icon-star active</iaixsl:attribute></iaixsl:if>
                                                                </i>
                                                                <i class="icon-star">
                                                                    <iaixsl:if test="@note > 4.5"><iaixsl:attribute name="class">icon-star active</iaixsl:attribute></iaixsl:if>
                                                                </i>
                                                            </span>
                                                            <strong><iaixsl:value-of select="@note"/>/5</strong>
                                                        </div>
                                                    </div>
                                                </iaixsl:if>
                                                <span class="opinion_date"><iaixsl:value-of select="@date"/></span>
                                            </div>
                                            
                                            <div class="opinions_element_text">
                                                <iaixsl:value-of select="text" disable-output-escaping="yes"/>
                                            </div>
                                            <div class="opinions_element_opinion_bottom">
                                                
                                                <div class="opinion_author">
                                                    <b class="opinions_element_author_title">
                                                        
                                                    </b>
                                                    <span class="opinions_element_author_desc">
                                                        <iaixsl:value-of select="@client"/>
                                                    </span>
                                                </div>
                                                <div class="rate_opinion">

                                                    <span>Was the opinion helpful?</span>
                                                    <a href="" class="opinion_rate_yes">
                                                        <input name="opinionState" type="hidden">
                                                            <iaixsl:attribute name="value">positive</iaixsl:attribute>
                                                        </input>
                                                        <i class="icon-thumbs-up-empty"></i> Yes<span class="rate_count"><iaixsl:value-of select="@rate_yes"/></span>
                                                    </a>
                                                    <a href="" class="opinion_rate_no">
                                                        <input name="opinionState" type="hidden">
                                                            <iaixsl:attribute name="value">negative</iaixsl:attribute>
                                                        </input>
                                                        <i class="icon-thumbs-down"></i> No<span class="rate_count"><iaixsl:value-of select="@rate_no"/></span>
                                                    </a>
                                                    <input name="opinionId" type="hidden">
                                                        <iaixsl:attribute name="value"><iaixsl:value-of select="@opinionId"/></iaixsl:attribute>
                                                    </input>
                                                </div>
                                            </div>
                                            <iaixsl:if test="response and response != ''">
                                                <div class="opinion_response">
                                                    <div class="opinion_response_top">
                                                        <b>Store response</b>
                                                        <span class="opinion_date"><iaixsl:value-of select="response/@date"/></span>
                                                    </div>
                                                    <div class="response_text"><iaixsl:value-of select="response" disable-output-escaping="yes"/></div>
                                                </div>
                                            </iaixsl:if>
                                        </div>
                                    </div>
                                </div>
                            </iaixsl:for-each>
                        </div>
                        <div class="menu_messages_message d-none" id="no_opinions_of_type">
                            There are no opinions with this number of stars.
                        </div>
                    </div>
                </iaixsl:if>

                
                <iaixsl:if test="not(page/projector/comments/opinionClient/opinion/@stat = 'y')">
                    <div class="opinions_add_form col-12">
                        <iaixsl:if test="/shop/page/projector/comments/@all > '0'">
                            <iaixsl:attribute name="class">opinions_add_form d-none</iaixsl:attribute>
                        </iaixsl:if>

                        <div class="big_label">
                            <iaixsl:choose>
                                <iaixsl:when test="(/shop/page/projector/comments/opinionClient/opinion/@stat = 'n')">
                                    Change your opinion
                                </iaixsl:when>
                                <iaixsl:otherwise>
                                    Write your opinion
                                </iaixsl:otherwise>
                            </iaixsl:choose>
                        </div>
                        <form class="row flex-column align-items-center shop_opinion_form" enctype="multipart/form-data" id="shop_opinion_form" action="/settings.php" method="post">
                            <input type="hidden" name="product">
                                <iaixsl:attribute name="value"><iaixsl:value-of select="page/projector/product/@id"/></iaixsl:attribute>
                            </input>

                            
                            <div class="shop_opinions_notes col-12 col-sm-6">
                                <div class="shop_opinions_name">
                                    Your opinion:
                                </div>
                                <div class="shop_opinions_note_items">
                                    
                                    <div class="opinion_note">
                                        <iaixsl:variable name="starSelected">
                                            <iaixsl:choose>
                                                <iaixsl:when test="/shop/page/projector/comments/opinionClient/notes/note[@selected = 'true']/@value">
                                                    <iaixsl:value-of select="/shop/page/projector/comments/opinionClient/notes/note[@selected = 'true']/@value"/>
                                                </iaixsl:when>
                                                <iaixsl:otherwise>
                                                    <iaixsl:value-of select="count(/shop/page/projector/comments/opinionClient/notes/note)"/>
                                                </iaixsl:otherwise>
                                            </iaixsl:choose>
                                        </iaixsl:variable>
                                        <iaixsl:for-each select="/shop/page/projector/comments/opinionClient/notes/note">
                                            <a href="#" class="opinion_star">
                                                <iaixsl:choose>
                                                    <iaixsl:when test="@value > $starSelected">
                                                        <iaixsl:attribute name="class">opinion_star</iaixsl:attribute>
                                                    </iaixsl:when>
                                                    <iaixsl:otherwise>
                                                        <iaixsl:attribute name="class">opinion_star active</iaixsl:attribute>
                                                    </iaixsl:otherwise>
                                                </iaixsl:choose>
                                                <iaixsl:attribute name="rel"><iaixsl:value-of select="@value"/></iaixsl:attribute>
                                                <iaixsl:attribute name="title">
                                                    <iaixsl:value-of select="@value"/>/<iaixsl:value-of select="count(../note)"/>
                                                </iaixsl:attribute>
                                                <span>
                                                    <i class="icon-star"/>
                                                </span>
                                            </a>
                                        </iaixsl:for-each>
                                        <strong>
                                            <iaixsl:value-of select="$starSelected"/>/<iaixsl:value-of select="count(/shop/page/projector/comments/opinionClient/notes/note)"/>
                                        </strong>
                                        <input type="hidden" name="note">
                                            <iaixsl:attribute name="value"><iaixsl:value-of select="@value"/></iaixsl:attribute>
                                            <iaixsl:choose>
                                                <iaixsl:when test="/shop/page/projector/comments/opinionClient/notes/note/@selected = 'true'">
                                                    <iaixsl:attribute name="value"><iaixsl:value-of select="/shop/page/projector/comments/opinionClient/notes/note[@selected = 'true']/@value"/></iaixsl:attribute>
                                                </iaixsl:when>
                                                <iaixsl:otherwise>
                                                    <iaixsl:attribute name="value"><iaixsl:value-of select="count(/shop/page/projector/comments/opinionClient/notes/note)"/></iaixsl:attribute>
                                                </iaixsl:otherwise>
                                            </iaixsl:choose>
                                        </input>
                                    </div>
                                </div>
                            </div>

                            
                            <div class="form-group col-12 col-sm-7">
                                <div class="has-feedback">
                                    <textarea id="addopp" class="form-control" name="opinion">
                                        <iaixsl:if test="/shop/page/projector/comments/opinionClient/opinion and not(/shop/page/projector/comments/opinionClient/opinion = '')">
                                            <iaixsl:attribute name="class">form-control focused</iaixsl:attribute>
                                        </iaixsl:if>
                                        <iaixsl:value-of select="/shop/page/projector/comments/opinionClient/opinion"/>
                                    </textarea>
                                    <label for="opinion" class="control-label">
                                        Content of your opinion
                                    </label>
                                    <span class="form-control-feedback"/>

                                    
                                    <iaixsl:if test="/shop/page/projector/comments/opinionClient/opinion/@points">
                                        <strong class="opinions_points">
                                            <iaixsl:text>+ </iaixsl:text>
                                            <iaixsl:choose>
                                                <iaixsl:when test="substring-after(/shop/page/projector/comments/opinionClient/opinion/@points, '.') = '00'">
                                                    <iaixsl:value-of select="substring-before(/shop/page/projector/comments/opinionClient/opinion/@points, '.')"/>
                                                </iaixsl:when>
                                                <iaixsl:otherwise>
                                                    <iaixsl:value-of select="/shop/page/projector/comments/opinionClient/opinion/@points"/>
                                                </iaixsl:otherwise>
                                            </iaixsl:choose>
                                            PTS
                                        </strong>
                                    </iaixsl:if>
                                </div>
                            </div>

                            
                            <iaixsl:if test="(page/projector/comments/opinionClient/image/@enabled='true')">
                                <div class="opinion_add_photos col-12 col-sm-7">
                                    <div class="opinion_add_photos_wrapper d-flex align-items-center">
                                        <span class="opinion_add_photos_text">
                                            <i class="icon-file-image"></i>  Add your own product photo:
                                        </span>
                                        <input class="opinion_add_photo" type="file" name="opinion_photo">
                                            <iaixsl:if test="/shop/form_data/upload_file/max_filesize/@bytes">
                                                <iaixsl:attribute name="data-max_filesize"><iaixsl:value-of select="/shop/form_data/upload_file/max_filesize/@bytes"/></iaixsl:attribute>
                                            </iaixsl:if>
                                        </input>

                                        
                                        <iaixsl:if test="/shop/page/projector/comments/opinionClient/image/@points">
                                            <strong class="opinions_points">
                                                <iaixsl:text>+ </iaixsl:text>
                                                <iaixsl:choose>
                                                    <iaixsl:when test="substring-after(/shop/page/projector/comments/opinionClient/image/@points, '.') = '00'">
                                                        <iaixsl:value-of select="substring-before(/shop/page/projector/comments/opinionClient/image/@points, '.')"/>
                                                    </iaixsl:when>
                                                    <iaixsl:otherwise>
                                                        <iaixsl:value-of select="/shop/page/projector/comments/opinionClient/image/@points"/>
                                                    </iaixsl:otherwise>
                                                </iaixsl:choose>
                                                PTS
                                            </strong>
                                        </iaixsl:if>
                                    </div>
                                    <iaixsl:if test="/shop/page/projector/comments/opinionClient/image/@points">
                                        <div class="opinions_points_picture">
                                            Add your own product photo <br/> and get additional
                                            <strong>
                                                <iaixsl:choose>
                                                    <iaixsl:when test="substring-after(/shop/page/projector/comments/opinionClient/image/@points, '.') = '00'">
                                                        <iaixsl:value-of select="substring-before(/shop/page/projector/comments/opinionClient/image/@points, '.')"/>
                                                    </iaixsl:when>
                                                    <iaixsl:otherwise>
                                                        <iaixsl:value-of select="/shop/page/projector/comments/opinionClient/image/@points"/>
                                                    </iaixsl:otherwise>
                                                </iaixsl:choose>
                                                PTS
                                            </strong>
                                            in our loyalty program.
                                        </div>
                                    </iaixsl:if>
                                </div>
                            </iaixsl:if>

                            
                            <iaixsl:if test="/shop/page/projector/sender/@opinion_unregistered = 'true'">
                                <div class="form-group col-12 col-sm-7">
                                    <div class="has-feedback has-required">
                                        <input id="addopinion_name" class="form-control" type="text" name="addopinion_name" value="">
                                            <iaixsl:attribute name="required">required</iaixsl:attribute>
                                        </input>
                                        <label for="addopinion_name" class="control-label">
                                            Your name
                                        </label>
                                        <span class="form-control-feedback"/>
                                    </div>
                                </div>
                                <div class="form-group col-12 col-sm-7">
                                    <div class="has-feedback has-required">
                                        <input id="addopinion_email" class="form-control" type="email" name="addopinion_email" value="">
                                            <iaixsl:attribute name="required">required</iaixsl:attribute>
                                        </input>
                                        <label for="addopinion_email" class="control-label">
                                            Your e-mail
                                        </label>
                                        <span class="form-control-feedback"/>
                                    </div>
                                </div>
                            </iaixsl:if>
                            <div class="shop_opinions_button col-12">
                                <button type="submit" class="btn --solid --medium opinions-shop_opinions_button px-5">
                                    <iaixsl:choose>
                                        <iaixsl:when test="/shop/page/projector/comments/opinionClient/opinion and not(/shop/page/projector/comments/opinionClient/opinion = '')">
                                            <iaixsl:attribute name="title">Change your opinion</iaixsl:attribute>
                                            <iaixsl:attribute name="data-button_edit">true</iaixsl:attribute>
                                            Change an opinion
                                        </iaixsl:when>
                                        <iaixsl:otherwise>
                                            <iaixsl:attribute name="title">Add an opinion</iaixsl:attribute>
                                            Send an opinion
                                        </iaixsl:otherwise>
                                    </iaixsl:choose>
                                </button>
                            </div>
                        </form>
                    </div>
                </iaixsl:if>
            </section>

            <iaixsl:if test="/shop/page/projector/sender/@active='true'">
                <iaixsl:if test="/shop/page/projector/comments/opinions/opinion/response"/> 
            </iaixsl:if>

        <!--Produkty powiązane z tym produktem - strefa 4 (projector_associated_zone4, 88393.1)-->

            <iaixsl:if test="/shop/page/projector/products_associated_zone4/@name"> </iaixsl:if>
            <iaixsl:if test="page/projector/products_associated_zone4/opinion"> </iaixsl:if>
            <iaixsl:if test="/shop/page/projector/products_associated_zone4"> </iaixsl:if>

        <!--Facebook comments (projector_facebook_comments, 106713.1)-->
        <iaixsl:if test="page/facebook_comments">
            <div class="projector_fb_comments">
                <iaixsl:if test="page/projector/products_associated_zone2/product">
                    <iaixsl:attribute name="class">projector_fb_comments_short</iaixsl:attribute>
                </iaixsl:if>
                <iaixsl:attribute name="id">projector_fb_commentsno</iaixsl:attribute>

                <div class="projector_fb_comments_label">
                    <iaixsl:attribute name="class">big_label projector_fb_comments_label</iaixsl:attribute>
                    Share your comment
                </div>
                <div id="fb-root"/>
                <script>
                    <iaixsl:attribute name="src">//connect.facebook.net/<iaixsl:choose><iaixsl:when test="/shop/language/@id = 'pol'">pl_PL</iaixsl:when><iaixsl:otherwise>en_US</iaixsl:otherwise></iaixsl:choose>/all.js#xfbml=1</iaixsl:attribute>
                </script>
                <div class="fb-comments">
                    <iaixsl:attribute name="data-href"><iaixsl:value-of select="/shop/@baseurl"/><iaixsl:value-of select="substring-after(/shop/page/projector/product/@link,'/')"/></iaixsl:attribute>
                    <iaixsl:attribute name="data-num-posts">10</iaixsl:attribute>
                    <iaixsl:attribute name="data-width">100%</iaixsl:attribute>
                    <iaixsl:attribute name="data-colorscheme">light</iaixsl:attribute>
                </div>
            </div>
        </iaixsl:if>
        <!--Blog - wpisy powiązane z tym produktem (projector_blog_items, 106720.1)-->
         <iaixsl:variable name="projector_blog_see_more">Read more</iaixsl:variable>
        <iaixsl:if test="count(/shop/page/projector/blog_entries/item) > 0">
            <div id="projector_blog" class="mb-4 article_wrapper">
                

                <h2 class="label_wrapper">
                   <a href="/blog-list.php" class="big_label">
						<iaixsl:if test="/shop/page/mainpage2/@link and /shop/page/mainpage2/@link!=''">
							<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/page/mainpage2/@link"/></iaixsl:attribute>
						</iaixsl:if>
						<iaixsl:attribute name="title"></iaixsl:attribute>
						Guide
                	</a>
                </h2>

                <div class="row article_sub_wrapper col-bg-1">
                    <iaixsl:for-each select="/shop/page/projector/blog_entries/item">
                        <div class="article_element_wrapper col-12 col-md-6">

							
								<div class="date datasquare">
									<iaixsl:value-of disable-output-escaping="yes" select="date"/>
								</div>
								
								<iaixsl:choose>
									<iaixsl:when test="(link/@href) != ''">
										<h3 class="article_name_wrapper">
											<a class="article_name">
												<iaixsl:attribute name="href"><iaixsl:value-of select="link/@href"/></iaixsl:attribute>
												<iaixsl:attribute name="title"><iaixsl:value-of disable-output-escaping="yes" select="title"/></iaixsl:attribute>
												<iaixsl:value-of disable-output-escaping="yes" select="title"/>
											</a>
										</h3>
									</iaixsl:when>
									<iaixsl:otherwise>
										<iaixsl:if test="title != ''">
											<h3 class="article_name_wrapper">
												<span class="article_name"><iaixsl:value-of disable-output-escaping="yes" select="title"/></span>
											</h3>
										</iaixsl:if>
									</iaixsl:otherwise>
								</iaixsl:choose>
                               
                                <iaixsl:if test="image/@src and image/@src!=''">
                                    <iaixsl:choose>
                                        <iaixsl:when test="(link/@href) != ''">
                                            <iaixsl:text disable-output-escaping="yes">&lt;a class="article_image_wrapper" href="</iaixsl:text>
                                            <iaixsl:value-of select="link/@href"/><iaixsl:text disable-output-escaping="yes">" </iaixsl:text>
                                        </iaixsl:when>
                                        <iaixsl:otherwise>
                                            <iaixsl:text disable-output-escaping="yes">&lt;span class="article_image_wrapper" </iaixsl:text>
                                        </iaixsl:otherwise>
                                    </iaixsl:choose>
                                    <iaixsl:text disable-output-escaping="yes">&gt;</iaixsl:text>

                                    <img src="/gfx/rum/loader.gif?r=1571748615">
										<iaixsl:attribute name="data-src-small"><iaixsl:value-of disable-output-escaping="yes" select="image/@src"/></iaixsl:attribute>
										<iaixsl:attribute name="data-src"><iaixsl:value-of disable-output-escaping="yes" select="image/@src"/></iaixsl:attribute>
										<iaixsl:attribute name="class">article_image b-lazy</iaixsl:attribute>
										<iaixsl:attribute name="alt"><iaixsl:value-of disable-output-escaping="yes" select="title/text()"/></iaixsl:attribute>
                                    </img>

                                    <iaixsl:choose>
                                        <iaixsl:when test="(link/@href) != ''">
                                            <iaixsl:text disable-output-escaping="yes">&lt;/a&gt;</iaixsl:text>
                                        </iaixsl:when>
                                        <iaixsl:otherwise>
                                            <iaixsl:text disable-output-escaping="yes">&lt;/span&gt;</iaixsl:text>
                                        </iaixsl:otherwise>
                                    </iaixsl:choose>
                                </iaixsl:if>

                                <div class="article_text_wrapper">
									<div class="description_text">
										<iaixsl:value-of disable-output-escaping="yes" select="description"/>
									</div>
									
									<iaixsl:if test="more/@href and $projector_blog_see_more">
										<div class="see_more_wrapper">
											<a class="see_more_link">
												<iaixsl:attribute name="href"><iaixsl:value-of select="more/@href"/></iaixsl:attribute>
												<iaixsl:attribute name="title"><iaixsl:value-of disable-output-escaping="yes" select="title"/></iaixsl:attribute>
												Read more
											</a>
										</div>
									</iaixsl:if>
								</div>
                            </div>
                    </iaixsl:for-each>
                </div>
            </div>
        </iaixsl:if>
        <!--CMS w karcie produktu dla rozmiarów (projector_cms_sizes, 106721.1)-->
        <iaixsl:if test="/shop/page/projector/product/sizes_chart">
            <div class="component_projector_sizes_chart">
                <iaixsl:attribute name="id">component_projector_sizes_cms_not</iaixsl:attribute>
                <iaixsl:if test="/shop/page/projector/product/sizes_chart/descriptions/description">
                    <table class="table-condensed">
                        <iaixsl:attribute name="class">ui-responsive table-stroke ui-table ui-table-reflow table-condensed</iaixsl:attribute>
                        <thead>
                            <tr>
                                <th class="table-first-column">Size</th>
                                <iaixsl:for-each select="/shop/page/projector/product/sizes_chart/descriptions/description">
                                    <th>
                                        <iaixsl:value-of disable-output-escaping="yes" select="@name"/>
                                    </th>
                                </iaixsl:for-each>

                            </tr>
                        </thead>
                        <tbody>
                            <iaixsl:for-each select="/shop/page/projector/product/sizes_chart/sizes/size">

                                <tr>
                                    <td class="table-first-column">
                                        <iaixsl:value-of disable-output-escaping="yes" select="@description"/>
                                    </td>
                                    <iaixsl:for-each select="description">
                                        <td>
                                            <iaixsl:value-of disable-output-escaping="yes" select="@text"/>
                                        </td>
                                    </iaixsl:for-each>
                                </tr>
                            </iaixsl:for-each>
                        </tbody>
                    </table>
                </iaixsl:if>
                <div class="sizes_chart_cms">
                    <iaixsl:if test="/shop/page/projector/product/sizes_chart/text">
                        <iaixsl:value-of disable-output-escaping="yes" select="/shop/page/projector/product/sizes_chart/text"/>
                    </iaixsl:if>
                </div>

            </div>
        </iaixsl:if>

        <iaixsl:if test="not(/shop/page/projector/product/sizes_chart) and ((page/projector/text_sizesgroup) and (page/projector/text_sizesgroup != ''))">
            <div class="component_projector_sizes_chart">
                <iaixsl:attribute name="id">component_projector_sizes_cms_not</iaixsl:attribute>
                <div class="sizes_chart_cms">
                    <iaixsl:value-of disable-output-escaping="yes" select="/shop/page/projector/text_sizesgroup"/>
                </div>
            </div>
        </iaixsl:if>

        <!--player video w karcie produktu (projector_video, 107469.1)-->

            <iaixsl:if test="(/shop/page/projector/product/enclosures/documents) or (/shop/page/projector/product/enclosures/audio)  or (/shop/page/projector/product/enclosures/other)  or (/shop/page/projector/product/enclosures/images_attachments/item) or (/shop/page/projector/product/enclosures/video/item)">
                <div style="display:none;" class="projector_video_cover"/>     
                <div class="projector_video">   
                <a href="javascript:;" class="projector_video_close"><img src="/gfx/rum/zamknij.gif?r=1571748615" alt="Zamknij" class="projector_photo_close_55916"/></a>
                    <div id="jp_container_N" class="jp-video jp-video-270p">
                        <div class="jp-type-playlist">
                            <div id="jquery_jplayer_N" class="jp-jplayer"/>
                            <div class="jp-gui">
                                <div class="jp-video-play">
                                    <a href="javascript:;" class="jp-video-play-icon" tabindex="1">play</a>
                                </div>
                                <div class="jp-interface">
                                    <div class="jp-progress">
                                        <div class="jp-seek-bar">
                                            <div class="jp-play-bar"/>
                                        </div>
                                    </div>
                                    <div class="jp-current-time"/>
                                    <div class="jp-duration"/>
                                    <div class="jp-title">
                                        <ul>
                                            <li/>
                                        </ul>
                                    </div>
                                    <div class="jp-controls-holder">
                                        <ul class="jp-controls">
                                            <li><a href="javascript:;" class="jp-previous" tabindex="1">previous</a></li>
                                            <li><a href="javascript:;" class="jp-play" tabindex="1">play</a></li>
                                            <li><a href="javascript:;" class="jp-pause" tabindex="1">pause</a></li>
                                            <li><a href="javascript:;" class="jp-next" tabindex="1">next</a></li>
                                            <li><a href="javascript:;" class="jp-stop" tabindex="1">stop</a></li>
                                            <li><a href="javascript:;" class="jp-mute" tabindex="1" title="mute">mute</a></li>
                                            <li><a href="javascript:;" class="jp-unmute" tabindex="1" title="unmute">unmute</a></li>
                                            <li><a href="javascript:;" class="jp-volume-max" tabindex="1" title="max volume">max volume</a></li>
                                        </ul>
                                        <div class="jp-volume-bar">
                                            <div class="jp-volume-bar-value"/>
                                        </div>
                                        <ul class="jp-toggles">
                                            <li><a href="javascript:;" class="jp-full-screen" tabindex="1" title="full screen">full screen</a></li>
                                            <li><a href="javascript:;" class="jp-restore-screen" tabindex="1" title="restore screen">restore screen</a></li>
                                            <li><a href="javascript:;" class="jp-shuffle" tabindex="1" title="shuffle">shuffle</a></li>
                                            <li><a href="javascript:;" class="jp-shuffle-off" tabindex="1" title="shuffle off">shuffle off</a></li>
                                            <li><a href="javascript:;" class="jp-repeat" tabindex="1" title="repeat">repeat</a></li>
                                            <li><a href="javascript:;" class="jp-repeat-off" tabindex="1" title="repeat off">repeat off</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="jp-playlist">
                                <ul>
                                    
                                    <li/>
                                </ul>
                            </div>
                            <div class="jp-no-solution">
                                <span>Update Required</span>
                                To play the media you will need to either update your browser to a recent version or update your <a href="http://get.adobe.com/flashplayer/" target="_blank">Flash plugin</a>.
                            </div>
                        </div>
                    </div>
                </div>
                <div style="display:none;">
                    
                </div>
            </iaixsl:if> 
        <!--Zdjęcia produktu (projector_photos, 109932.1)-->


<!--Statystyki dotyczące produktu (projector_productstatistics, 106723.1)-->
            <iaixsl:if test="page/projector/bookmarklets/item">
                <div class="bookmarklets_big">
                    <ul>
                        <iaixsl:for-each select="page/projector/bookmarklets/item"><li><iaixsl:value-of disable-output-escaping="yes" select="text()"/></li></iaixsl:for-each>
                    </ul>
                </div>
            </iaixsl:if>
            <iaixsl:if test="/shop/page/projector/bookmarklets/item/text"> </iaixsl:if>
        <!--Menu - Drzewo 5 (menu_tree5, 63237.1)-->
        
        
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
        <!--Action alert (menu_alert, 106620.1)-->
            <iaixsl:if test="/shop/action_alert/@type = 'add_basket'">
                <div id="menu_preloader_add">
                    <iaixsl:choose>
                        <iaixsl:when test="/shop/action_alert/products/@count = 1">
                            <div class="big_label">
                                Added to basket
                            </div>
                        </iaixsl:when>
                        <iaixsl:otherwise>
                            <iaixsl:attribute name="class">menu_preloader_add_multi</iaixsl:attribute>
                            <div class="big_label">
                                Added to basket
                            </div>
                        </iaixsl:otherwise>
                    </iaixsl:choose>

                    <div class="menu_preloader_add_wrapper">
                        <div class="products_wrapper">
                            <div class="product_wrapper">

                                
                                <a class="product-icon d-flex justify-content-center align-items-center">
                                    <iaixsl:attribute name="href">
                                        <iaixsl:value-of select="/shop/action_alert/products/product/@link"/>
                                    </iaixsl:attribute>
                                    <iaixsl:attribute name="title">
                                        <iaixsl:value-of select="/shop/action_alert/products/product/name"/>
                                    </iaixsl:attribute>

                                    <img>
                                        <iaixsl:attribute name="src"><iaixsl:value-of disable-output-escaping="yes" select="/shop/action_alert/products/product/icon"/>
                                        </iaixsl:attribute>
                                        <iaixsl:attribute name="alt">
                                            <iaixsl:value-of disable-output-escaping="yes" select="/shop/action_alert/products/product/name"/>
                                        </iaixsl:attribute>
                                    </img>
                                </a>

                                <div id="dialog_product_details">
                                    
                                    <a class="product-name">
                                        <iaixsl:attribute name="href">
                                            <iaixsl:value-of select="/shop/action_alert/products/product/@link"/>
                                        </iaixsl:attribute>
                                        <iaixsl:attribute name="title">
                                            <iaixsl:value-of select="/shop/action_alert/products/product/name"/>
                                        </iaixsl:attribute>
                                        <iaixsl:value-of select="/shop/action_alert/products/product/name"/>
                                    </a>

                                    
                                    <div class="product_prices">
                                        <iaixsl:if test="/shop/action_alert/products/product/price/@max_price_formatted">
                                            <del class="max-price">
                                                <iaixsl:value-of select="/shop/action_alert/products/product/price/@max_price_formatted"/>
                                            </del>
                                        </iaixsl:if>
                                        <span class="price">
                                            <iaixsl:value-of select="/shop/action_alert/products/product/price/@price_formatted"/>
                                        </span>

                                        <iaixsl:if test="/shop/action_alert/products/product/price/@points != ''">
                                            <span class="point-price">
                                                <iaixsl:value-of select="/shop/action_alert/products/product/price/@points"/>
                                                <span class="currency">
                                                     PTS
                                                </span>
                                            </span>
                                        </iaixsl:if>

                                    </div>

                                    <div class="menu_preloader_add_btn">
                                        <a class="btn --solid --medium menu_preloader_btn_add" href="/basketedit.php?mode=1">
                                            Go to basket
                                        </a>

                                        <a class="btn --medium menu_preloader_add_btn_close" href="#close">
                                            Continue shopping
                                        </a>

                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>

                    
                        <iaixsl:if test="/shop/page/projector/products_associated_zone4">
                            <div class="main_hotspot clearfix" id="products_associated_zone4">
                                <iaixsl:if test="not(/shop/page/projector/products_associated_zone4/product)">
                                    <iaixsl:attribute name="data-ajaxLoad">true</iaixsl:attribute>
                                    <iaixsl:attribute name="data-pageType">menu</iaixsl:attribute>
                                </iaixsl:if>
                                <iaixsl:choose>
                                    <iaixsl:when test="/shop/page/projector/products_associated_zone4/product or /shop/page/projector/products_associated_zone4/opinion">

                                        <iaixsl:choose>
                                            <iaixsl:when test="/shop/page/projector/products_associated_zone4/@link">
                                                <a class="big_label">
                                                    <iaixsl:attribute name="href">
                                                        <iaixsl:value-of select="/shop/page/projector/products_associated_zone4/@link"/>
                                                    </iaixsl:attribute>
                                                    <iaixsl:attribute name="title">
                                                        Click here to view all products
                                                    </iaixsl:attribute>
                                                    <iaixsl:choose>
                                                        <iaixsl:when test="/shop/page/projector/products_associated_zone4/@name">
                                                            <iaixsl:value-of select="hotspot/products_zone1/@name"/>
                                                        </iaixsl:when>
                                                        <iaixsl:otherwise>
                                                            Other customers also bought
                                                        </iaixsl:otherwise>
                                                    </iaixsl:choose>
                                                    
                                                </a>
                                            </iaixsl:when>
                                            <iaixsl:otherwise>
                                                <div class="big_label">
                                                    <iaixsl:choose>
                                                        <iaixsl:when test="/shop/page/projector/products_associated_zone4/@name">
                                                            <iaixsl:value-of select="/shop/page/projector/products_associated_zone4/@name"/>
                                                        </iaixsl:when>
                                                        <iaixsl:otherwise>
                                                            Other customers also bought
                                                        </iaixsl:otherwise>
                                                    </iaixsl:choose>

                                                </div>
                                            </iaixsl:otherwise>
                                        </iaixsl:choose>

                                        <div class="col-bg-1 align_row main_hotspot_sub">
                                            <div class="products_wrapper row clearfix">

                                                <iaixsl:for-each select="/shop/page/projector/products_associated_zone4/*">

                                                    <iaixsl:variable name="var_name">
                                                        <iaixsl:choose>
                                                            <iaixsl:when test="product">
                                                                <iaixsl:value-of disable-output-escaping="yes" select="product/name/text()"/>
                                                            </iaixsl:when>
                                                            <iaixsl:otherwise>
                                                                <iaixsl:value-of disable-output-escaping="yes" select="name/text()"/>
                                                            </iaixsl:otherwise>
                                                        </iaixsl:choose>
                                                    </iaixsl:variable>

                                                    <iaixsl:variable name="var_icon">
                                                        <iaixsl:choose>
                                                            <iaixsl:when test="product">
                                                                <iaixsl:value-of select="product/icon"/>
                                                            </iaixsl:when>
                                                            <iaixsl:otherwise>
                                                                <iaixsl:value-of select="icon"/>
                                                            </iaixsl:otherwise>
                                                        </iaixsl:choose>
                                                    </iaixsl:variable>

                                                    <iaixsl:variable name="var_icon_small">
                                                        <iaixsl:choose>
                                                            <iaixsl:when test="product">
                                                                <iaixsl:value-of select="product/icon_small"/>
                                                            </iaixsl:when>
                                                            <iaixsl:otherwise>
                                                                <iaixsl:value-of select="icon_small"/>
                                                            </iaixsl:otherwise>
                                                        </iaixsl:choose>
                                                    </iaixsl:variable>

                                                    <iaixsl:variable name="var_link">
                                                        <iaixsl:choose>
                                                            <iaixsl:when test="product">
                                                                <iaixsl:value-of select="product/@link"/>
                                                            </iaixsl:when>
                                                            <iaixsl:otherwise>
                                                                <iaixsl:value-of select="@link"/>
                                                            </iaixsl:otherwise>
                                                        </iaixsl:choose>
                                                    </iaixsl:variable>


                                                    <div class="product_wrapper col-6 col-sm-3">
                                                    
                                                        
                                                        <a class="product-icon d-flex justify-content-center align-items-center">
                                                            <iaixsl:attribute name="data-product-id"><iaixsl:value-of select="@id"/></iaixsl:attribute>
                                                            <iaixsl:attribute name="href"><iaixsl:value-of select="$var_link"/></iaixsl:attribute>
                                                            <iaixsl:attribute name="title"><iaixsl:value-of select="$var_name"/></iaixsl:attribute>

                                                            <img src="/gfx/rum/loader.gif?r=1571748615" class="b-lazy">
                                                                <iaixsl:attribute name="data-src-small"><iaixsl:value-of disable-output-escaping="yes" select="$var_icon_small"/></iaixsl:attribute>
                                                                <iaixsl:attribute name="data-src"><iaixsl:value-of disable-output-escaping="yes" select="$var_icon"/></iaixsl:attribute>
                                                                <iaixsl:attribute name="alt"><iaixsl:value-of disable-output-escaping="yes" select="$var_name"/></iaixsl:attribute>
                                                            </img>
                                                        </a>

                                                        
                                                        <h3>
                                                            <a class="product-name">
                                                                <iaixsl:attribute name="href"><iaixsl:value-of select="$var_link"/></iaixsl:attribute>
                                                                <iaixsl:attribute name="title"><iaixsl:value-of select="$var_name"/></iaixsl:attribute>
                                                                <iaixsl:value-of select="$var_name"/>
                                                            </a>
                                                        </h3>

                                                        <iaixsl:variable name="main_hotspot_zone1_b2b_var"></iaixsl:variable>
                                                        <iaixsl:variable name="var_net_prices"></iaixsl:variable>
                                                        <iaixsl:choose>
                                                            <iaixsl:when test="$var_net_prices = ''">
                                                                <iaixsl:variable name="var_size_min_formatted"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/price/@size_min_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@size_min_formatted"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                                                <iaixsl:variable name="var_size_max_formatted"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/price/@size_max_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@size_max_formatted"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                                                <iaixsl:variable name="var_size_min_maxprice_formatted"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/price/@size_min_maxprice_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@size_min_maxprice_formatted"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                                                <iaixsl:variable name="var_size_max_maxprice_formatted"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/price/@size_max_maxprice_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@size_max_maxprice_formatted"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                                                <iaixsl:variable name="var_points"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/price/@points"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@points"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>

                                                                
                                                                <iaixsl:variable name="var_value"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/price/@size_min"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@size_min"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                                                <iaixsl:variable name="var_price_formatted">
                                                                    <iaixsl:choose>
                                                                        <iaixsl:when test="price/@price_unit_formatted and sizes/@unit"><iaixsl:value-of select="price/@price_unit_formatted"/><iaixsl:text> / </iaixsl:text><iaixsl:value-of select="sizes/@unit_sellby"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="sizes/@unit"/></iaixsl:when>
                                                                        <iaixsl:when test="product/price/@price_unit_formatted and product/sizes/@unit"><iaixsl:value-of select="product/price/@price_unit_formatted"/><iaixsl:text> / </iaixsl:text><iaixsl:value-of select="product/sizes/@unit_sellby"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="product/sizes/@unit"/></iaixsl:when>
                                                                        <iaixsl:otherwise><iaixsl:value-of select="$var_size_min_formatted"/></iaixsl:otherwise>
                                                                    </iaixsl:choose>
                                                                </iaixsl:variable>

                                                                <iaixsl:variable name="var_maxprice_formatted">
                                                                    <iaixsl:choose>
                                                                        <iaixsl:when test="price/@maxprice_unit_formatted"><iaixsl:value-of select="price/@maxprice_unit_formatted"/></iaixsl:when>
                                                                        <iaixsl:when test="product/price/@maxprice_unit_formatted"><iaixsl:value-of select="product/price/@maxprice_unit_formatted"/></iaixsl:when>
                                                                        <iaixsl:when test="product"><iaixsl:value-of select="product/price/@maxprice_formatted"/></iaixsl:when>
                                                                        <iaixsl:otherwise><iaixsl:value-of select="price/@maxprice_formatted"/></iaixsl:otherwise>
                                                                    </iaixsl:choose>
                                                                </iaixsl:variable>

                                                                
                                                                <div class="product_prices">
                                                                    <iaixsl:choose>
                                                                        <iaixsl:when test="$var_size_min_formatted != $var_size_max_formatted">
                                                                            <span class="price">
                                                                                <iaixsl:value-of select="$var_size_min_formatted"/><iaixsl:text> - </iaixsl:text><iaixsl:value-of select="$var_size_max_formatted"/>
                                                                            </span>

                                                                            <iaixsl:if test="$var_size_min_maxprice_formatted != ''">
                                                                                <del class="max-price">
                                                                                    <span><iaixsl:value-of select="$var_size_min_maxprice_formatted"/></span><b><iaixsl:text> - </iaixsl:text></b><span><iaixsl:value-of select="$var_size_max_maxprice_formatted"/></span>
                                                                                </del>
                                                                            </iaixsl:if>

                                                                            <iaixsl:if test="$var_points != ''">
                                                                                <span class="point-price">
                                                                                    <iaixsl:value-of select="$var_points"/><span class="currency"> PTS</span>
                                                                                </span>
                                                                            </iaixsl:if>
                                                                        </iaixsl:when>
                                                                        <iaixsl:when test="(($var_value = 0) and $var_points = '') or ($var_value = 0 and $main_hotspot_zone1_b2b_var and not($main_hotspot_zone1_b2b_var = '') and not(/shop/basket/@wholesaler = 'true'))">
                                                                            <a class="fon_price">
                                                                                <iaixsl:choose>
                                                                                    <iaixsl:when test="$main_hotspot_zone1_b2b_var and not($main_hotspot_zone1_b2b_var = '')">
                                                                                        <iaixsl:attribute name="title"><iaixsl:value-of select="$main_hotspot_zone1_b2b_var"/></iaixsl:attribute>
                                                                                        <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/signin/@url"/></iaixsl:attribute>
                                                                                        <iaixsl:value-of select="$main_hotspot_zone1_b2b_var"/>
                                                                                    </iaixsl:when>
                                                                                    <iaixsl:otherwise>
                                                                                        <iaixsl:attribute name="title">Click here to go to the contact form</iaixsl:attribute>
                                                                                        <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/contact/link/@url"/></iaixsl:attribute>
                                                                                        Call for Price
                                                                                    </iaixsl:otherwise>
                                                                                </iaixsl:choose>
                                                                            </a>
                                                                        </iaixsl:when>
                                                                        <iaixsl:otherwise>
                                                                            <span class="price">
                                                                                
                                                                                <iaixsl:value-of select="$var_price_formatted"/>
                                                                            </span>
                                                                            <iaixsl:if test="$var_maxprice_formatted != ''">
                                                                                <del class="max-price">
                                                                                    
                                                                                    <iaixsl:value-of select="$var_maxprice_formatted"/>
                                                                                </del>
                                                                            </iaixsl:if>
                                                                            <iaixsl:if test="$var_points != ''">
                                                                                <span class="point-price">
                                                                                    <iaixsl:value-of select="$var_points"/><span class="currency"> PTS</span>
                                                                                </span>
                                                                            </iaixsl:if>
                                                                        </iaixsl:otherwise>
                                                                    </iaixsl:choose>
                                                                    <iaixsl:if test="price/@unit_converted_price_formatted">
                                                                        <small class="s_unit_converted_price"><iaixsl:value-of select="price/@unit_converted_price_formatted"/><iaixsl:text> / </iaixsl:text><iaixsl:value-of select="price/@unit_converted_format"/></small>
                                                                    </iaixsl:if>
                                                                </div>
                                                            </iaixsl:when>
                                                            <iaixsl:otherwise>
                                                                

                                                                <iaixsl:variable name="var_size_min_net_formatted"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/price/@size_min_net_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@size_min_net_formatted"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                                                <iaixsl:variable name="var_size_max_net_formatted"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/price/@size_max_net_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@size_max_net_formatted"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                                                <iaixsl:variable name="var_size_min_net_maxprice_formatted"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/price/@size_min_maxprice_net_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@size_min_maxprice_net_formatted"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                                                <iaixsl:variable name="var_size_max_maxprice_net_formatted"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/price/@size_max_maxprice_net_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@size_max_maxprice_net_formatted"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                                                <iaixsl:variable name="var_points_net"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/price/@points"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@points"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                                                
                                                                
                                                                <iaixsl:variable name="var_net_value"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/price/@size_min_net"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@size_min_net"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                                                <iaixsl:variable name="var_price_formatted">
                                                                    <iaixsl:choose>
                                                                        <iaixsl:when test="price/@price_unit_net_formatted and sizes/@unit"><iaixsl:value-of select="price/@price_unit_net_formatted"/><iaixsl:text> / </iaixsl:text><iaixsl:value-of select="sizes/@unit_sellby"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="sizes/@unit"/></iaixsl:when>
                                                                        <iaixsl:when test="product/price/@price_unit_net_formatted and product/sizes/@unit"><iaixsl:value-of select="product/price/@price_unit_net_formatted"/><iaixsl:text> / </iaixsl:text><iaixsl:value-of select="product/sizes/@unit_sellby"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="product/sizes/@unit"/></iaixsl:when>
                                                                        <iaixsl:otherwise><iaixsl:value-of select="$var_size_min_net_formatted"/></iaixsl:otherwise>
                                                                    </iaixsl:choose>
                                                                </iaixsl:variable>

                                                                <iaixsl:variable name="var_maxprice_net_formatted">
                                                                    <iaixsl:choose>
                                                                        <iaixsl:when test="price/@maxprice_unit_net_formatted"><iaixsl:value-of select="price/@maxprice_unit_net_formatted"/></iaixsl:when>
                                                                        <iaixsl:when test="product/price/@maxprice_unit_net_formatted"><iaixsl:value-of select="product/price/@maxprice_unit_net_formatted"/></iaixsl:when>
                                                                        <iaixsl:when test="product"><iaixsl:value-of select="product/price/@maxprice_net_formatted"/></iaixsl:when>
                                                                        <iaixsl:otherwise><iaixsl:value-of select="price/@maxprice_net_formatted"/></iaixsl:otherwise>
                                                                    </iaixsl:choose>
                                                                </iaixsl:variable>

                                                                
                                                                <div class="product_prices">
                                                                    <iaixsl:choose>
                                                                        <iaixsl:when test="$var_size_min_net_formatted != $var_size_max_net_formatted">
                                                                            <span class="price">
                                                                                <iaixsl:value-of select="$var_size_min_net_formatted"/><iaixsl:text> - </iaixsl:text><iaixsl:value-of select="$var_size_max_net_formatted"/><iaixsl:value-of select="$var_net_prices"/>
                                                                            </span>

                                                                            <iaixsl:if test="$var_size_min_net_maxprice_formatted != ''">
                                                                                <del class="max-price">
                                                                                    <span><iaixsl:value-of select="$var_size_min_net_maxprice_formatted"/></span><b><iaixsl:text> - </iaixsl:text></b><span><iaixsl:value-of select="$var_size_max_maxprice_net_formatted"/></span><iaixsl:value-of select="$var_net_prices"/>
                                                                                </del>
                                                                            </iaixsl:if>

                                                                            <iaixsl:if test="$var_points_net != ''">
                                                                                <span class="point-price">
                                                                                    <iaixsl:value-of select="$var_points_net"/><span class="currency"> PTS</span>
                                                                                </span>
                                                                            </iaixsl:if>
                                                                        </iaixsl:when>
                                                                        <iaixsl:when test="(($var_net_value = 0) and $var_points_net = '') or ($var_net_value = 0 and $main_hotspot_zone1_b2b_var and not($main_hotspot_zone1_b2b_var = '') and not(/shop/basket/@wholesaler = 'true'))">
                                                                            <a class="fon_price">
                                                                                <iaixsl:choose>
                                                                                    <iaixsl:when test="$main_hotspot_zone1_b2b_var and not($main_hotspot_zone1_b2b_var = '')">
                                                                                        <iaixsl:attribute name="title"><iaixsl:value-of select="$main_hotspot_zone1_b2b_var"/></iaixsl:attribute>
                                                                                        <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/signin/@url"/></iaixsl:attribute>
                                                                                        <iaixsl:value-of select="$main_hotspot_zone1_b2b_var"/>
                                                                                    </iaixsl:when>
                                                                                    <iaixsl:otherwise>
                                                                                        <iaixsl:attribute name="title">Click here to go to the contact form</iaixsl:attribute>
                                                                                        <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/contact/link/@url"/></iaixsl:attribute>
                                                                                        Call for Price
                                                                                    </iaixsl:otherwise>
                                                                                </iaixsl:choose>
                                                                            </a>
                                                                        </iaixsl:when>
                                                                        <iaixsl:otherwise>
                                                                            <span class="price">
                                                                                
                                                                                <iaixsl:value-of select="$var_price_formatted"/><iaixsl:value-of select="$var_net_prices"/>
                                                                            </span>
                                                                            <iaixsl:if test="$var_maxprice_net_formatted != ''">
                                                                                <del class="max-price">
                                                                                    
                                                                                    <iaixsl:value-of select="$var_maxprice_net_formatted"/><iaixsl:value-of select="$var_net_prices"/>
                                                                                </del>
                                                                            </iaixsl:if>
                                                                            <iaixsl:if test="$var_points_net != ''">
                                                                                <span class="point-price">
                                                                                    <iaixsl:value-of select="$var_points_net"/><span class="currency"> PTS</span>
                                                                                </span>
                                                                            </iaixsl:if>
                                                                        </iaixsl:otherwise>
                                                                    </iaixsl:choose>
                                                                    <iaixsl:if test="price/@unit_converted_price_net_formatted">
                                                                        <small class="s_unit_converted_price"><iaixsl:value-of select="price/@unit_converted_price_net_formatted"/><iaixsl:text> / </iaixsl:text><iaixsl:value-of select="price/@unit_converted_format"/><iaixsl:value-of select="$var_net_prices"/></small>
                                                                    </iaixsl:if>
                                                                </div>

                                                                
                                                            </iaixsl:otherwise>
                                                        </iaixsl:choose>

                                                        <iaixsl:if test="client/@client">
                                                            <div class="client"><iaixsl:value-of disable-output-escaping="yes" select="client/@client"/></div>
                                                        </iaixsl:if>
                                                        <iaixsl:if test="@note">
                                                            <div class="note">
                                                                <span>
                                                                    <i class="icon-star">
                                                                        <iaixsl:if test="@note > 0.5"><iaixsl:attribute name="class">icon-star active</iaixsl:attribute></iaixsl:if>
                                                                    </i>
                                                                    <i class="icon-star">
                                                                        <iaixsl:if test="@note > 1.5"><iaixsl:attribute name="class">icon-star active</iaixsl:attribute></iaixsl:if>
                                                                    </i>
                                                                    <i class="icon-star">
                                                                        <iaixsl:if test="@note > 2.5"><iaixsl:attribute name="class">icon-star active</iaixsl:attribute></iaixsl:if>
                                                                    </i>
                                                                    <i class="icon-star">
                                                                        <iaixsl:if test="@note > 3.5"><iaixsl:attribute name="class">icon-star active</iaixsl:attribute></iaixsl:if>
                                                                    </i>
                                                                    <i class="icon-star">
                                                                        <iaixsl:if test="@note > 4.5"><iaixsl:attribute name="class">icon-star active</iaixsl:attribute></iaixsl:if>
                                                                    </i>
                                                                </span>
                                                                <small>
                                                                    Score:<iaixsl:value-of disable-output-escaping="yes" select="@note"/>/5
                                                                </small>
                                                            </div>
                                                        </iaixsl:if>
                                                        <iaixsl:if test="content">
                                                            <div class="cleardescription"><iaixsl:value-of disable-output-escaping="yes" select="content"/></div>
                                                        </iaixsl:if>
                                                    </div>
                                                </iaixsl:for-each>
                                            </div>
                                        </div>
                                    </iaixsl:when>
                                </iaixsl:choose>
                            </div>
                        </iaixsl:if>
                    
                </div>
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
            <script>
                  app_shop.runApp();
            </script>

            
            <iaixsl:if test="/shop/page/seolink_with_language_directory"/>

        
            <iaixsl:if test="(action/set_render/item/@name = 'popup') or not(action/set_render/item)">
                <iaixsl:value-of disable-output-escaping="yes" select="php:functionString('additionalContent', 'additional_body_scripts')"/>
                <iaixsl:text disable-output-escaping="yes">&lt;/body&gt;&lt;/html&gt;</iaixsl:text>
            </iaixsl:if>
        </iaixsl:template><iaixsl:template match="//image"><iaixsl:if test="@type='swf'"><object type="application/x-shockwave-flash"><iaixsl:attribute name="data"><iaixsl:value-of select="@src"/></iaixsl:attribute><iaixsl:attribute name="data"><iaixsl:value-of select="@src"/></iaixsl:attribute><iaixsl:attribute name="width"><iaixsl:value-of select="@width"/></iaixsl:attribute><iaixsl:attribute name="height"><iaixsl:value-of select="@height"/></iaixsl:attribute><param name="movie"><iaixsl:attribute name="value"><iaixsl:value-of select="@src"/></iaixsl:attribute></param><param name="bgcolor"><iaixsl:attribute name="bgcolor"><iaixsl:value-of select="@bgcolor"/></iaixsl:attribute></param></object></iaixsl:if><iaixsl:if test="not(@type='swf')"><img alt="" class="pic"><iaixsl:attribute name="src"><iaixsl:value-of select="@src"/></iaixsl:attribute><iaixsl:if test="@width &gt; 0"><iaixsl:attribute name="width"><iaixsl:value-of select="@width"/></iaixsl:attribute></iaixsl:if><iaixsl:if test="@height &gt; 0"><iaixsl:attribute name="height"><iaixsl:value-of select="@height"/></iaixsl:attribute></iaixsl:if></img></iaixsl:if></iaixsl:template><iaixsl:template name="escape-quote-string"><iaixsl:param name="str"/><iaixsl:param name="escape" select="'quot'"/><iaixsl:param name="quoting" select="'1'"/><iaixsl:variable name="escape_sign"><iaixsl:choose><iaixsl:when test="$escape=&quot;apos&quot;"><iaixsl:value-of select="&quot;'&quot;"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="string('&quot;')"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable><iaixsl:if test="$quoting"><iaixsl:value-of select="$escape_sign"/></iaixsl:if><iaixsl:choose><iaixsl:when test="contains($str,$escape_sign)"><iaixsl:variable name="before-first-apostrophe" select="substring-before($str,$escape_sign)"/><iaixsl:variable name="after-first-apostrophe" select="substring-after($str,$escape_sign)"/><iaixsl:value-of select="$before-first-apostrophe"/>\<iaixsl:value-of select="$escape_sign"/><iaixsl:text/><iaixsl:call-template name="escape-quote-string"><iaixsl:with-param name="str" select="$after-first-apostrophe"/><iaixsl:with-param name="escape" select="$escape"/><iaixsl:with-param name="quoting" select="0"/></iaixsl:call-template></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="$str"/></iaixsl:otherwise></iaixsl:choose><iaixsl:if test="$quoting"><iaixsl:value-of select="$escape_sign"/></iaixsl:if></iaixsl:template></iaixsl:stylesheet>