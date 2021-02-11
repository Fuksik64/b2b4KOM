<?xml version="1.0" encoding="UTF-8"?>
<iaixsl:stylesheet xmlns:php="http://php.net/xsl" xmlns:iaixsl="http://www.w3.org/1999/XSL/Transform" xmlns:iaielement="http://iai-system.com/ddd" xmlns:fb="http://www.facebook.com/2008/fbml" version="1.0" exclude-result-prefixes="php iaielement fb"><iaixsl:output indent="no" method="html" doctype-system="about:legacy-compat" version="1.0" encoding="UTF-8"/><iaixsl:strip-space elements="table tr td img"/><iaixsl:decimal-format name="yen" NaN="" grouping-separator="," decimal-separator="."/><iaixsl:template match="shop"><!--Typ strony (envelope, 107421.1)-->
            <iaixsl:variable name="meta_langcode_iso639">pl</iaixsl:variable>
            <iaixsl:variable name="html5_layout">1</iaixsl:variable>
            <iaixsl:variable name="asyncJS"></iaixsl:variable>
            <iaixsl:variable name="themeColor">#0090f6</iaixsl:variable>
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
                                    <link rel="stylesheet" type="text/css"><iaixsl:attribute name="href">/gfx/<iaixsl:value-of select="language/@id"/>/style.css.gzip?r=605202273</iaixsl:attribute></link>
                                </iaixsl:otherwise>
                            </iaixsl:choose>
                        </iaixsl:when>
                        <iaixsl:otherwise>
                            <iaixsl:choose>
                                <iaixsl:when test="/shop/@preview > 0">
                                    <link rel="stylesheet" type="text/css"><iaixsl:attribute name="href">/gfx/<iaixsl:value-of select="language/@id"/>/<iaixsl:value-of select="/shop/@preview"/>/style.css</iaixsl:attribute></link>
                                </iaixsl:when>
                                <iaixsl:otherwise>
                                    <link rel="stylesheet" type="text/css"><iaixsl:attribute name="href">/gfx/<iaixsl:value-of select="language/@id"/>/style.css.gzip?r=605202273</iaixsl:attribute></link>
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
                    <iaixsl:variable name="projector_script_bottom">true</iaixsl:variable>
                    <iaixsl:if test="not(/shop/page/@type = 'main') and not(/shop/page/@type = 'search') and not(/shop/page/@type = 'place-order') and not(/shop/page/@type = 'noproduct') and not($projector_script_bottom and /shop/page/@type = 'projector')">
                        <iaixsl:choose>
                            <iaixsl:when test="/shop/@preview > 0">
                                <script><iaixsl:attribute name="src">/gfx/<iaixsl:value-of select="language/@id"/>/<iaixsl:value-of select="/shop/@preview"/>/shop.js</iaixsl:attribute></script>
                            </iaixsl:when>
                            <iaixsl:otherwise>
                                <script><iaixsl:attribute name="src">/gfx/<iaixsl:value-of select="language/@id"/>/shop.js.gzip?r=1600678639</iaixsl:attribute></script>
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
                    <link rel="stylesheet" href="/data/include/cms/b2b4kom/JS/owl.carousel/owl.carousel.min.css" />
                </head>
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
            <div class="loader">
                    <div class="loader-container">
                        <div class="loader-img">
                                <img src="/data/gfx/mask/pol/logo_4_big.png" />
                        </div>
                        <div class="loader-bars">
                                <div></div>
                                <div></div>
                                <div></div>
                        </div>
                    </div>
            </div>
            <script src='/data/include/cms/b2b4kom/JS/loader.js'></script>
            <div id="over_header">
            <div class="container">
            <iaixsl:if test="/shop/commercial_button">
            
                                <iaixsl:for-each select="/shop/commercial_button/link">

                                    <iaixsl:if test="(html/@title='Komunikat') or (html/@title='Komunikat1') or (html/@title='Komunikat2') or (html/@title='Komunikat3')">
                                    <div class="komunikat-top">
                                    <iaixsl:value-of select="html" disable-output-escaping="yes" />
                                    </div>
                                    </iaixsl:if>
                                </iaixsl:for-each>
            </iaixsl:if>
            </div>

            </div>
            <!--Układ graficzny (layout, 107419.1)-->
            <div id="container">
                <iaixsl:attribute name="class"><iaixsl:value-of select="page/@type"/>_page <iaixsl:if test="/shop/page/login/@shop_registration = 'true'">registration_page </iaixsl:if>container</iaixsl:attribute>

                <iaixsl:if test="not(action/set_render/item) or (action/set_render/item/@name = 'head')">
<header>
                        <iaixsl:attribute name="class">d-flex flex-wrap container<iaixsl:if test="count(commercial_banner/link) > 0"> commercial_banner</iaixsl:if></iaixsl:attribute>
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
        <!--Sugerowany sklep dla języka (menu_suggested_shop_for_language, 112162.1)-->
      <iaixsl:variable name="redirection_language_active">redirection__language --active</iaixsl:variable>

      <iaixsl:if test="count(/shop/select_language/language/option) > 1">
        <div class="redirection d-none">
          <div class="redirection__background"/>
          <div class="redirection__suggestions row">
            <div class="redirection__close"/>
            <div class="redirection__wrapper --title col-12 col-md-6 ">
              <strong class="redirection__title">Choose your language<br />and country</strong>
            </div>
            <div class="redirection__wrapper --configurator col-12 col-md-6">
              <div class="redirection__selector --language">
                <div class="redirection__column">
                  <iaixsl:for-each select="/shop/select_language/language">
                    <div class="redirection__language">
                      <iaixsl:if test="option/@selected">
                        <iaixsl:attribute name="class"><iaixsl:value-of select="$redirection_language_active"/></iaixsl:attribute>
                      </iaixsl:if>
                      <strong>
                        <span>
                          <iaixsl:attribute name="class">flag flag_<iaixsl:value-of select="@id"/></iaixsl:attribute>
                        </span>
                        <span class="redirection__language_name"><iaixsl:value-of select="@name"/></span>
                      </strong>
                      <div class="redirection__selector --country">
                        <iaixsl:for-each select="option">
                          <div class="f-group --radio --small">
                            <input type="radio" name="shop_country" class="f-control">
                              <iaixsl:attribute name="id"><iaixsl:value-of select="../@id"/>_<iaixsl:value-of select="."/></iaixsl:attribute>
                              <iaixsl:attribute name="data-link"><iaixsl:value-of select="@site"/></iaixsl:attribute>
                              <iaixsl:if test="@selected">
                                <iaixsl:attribute name="checked">true</iaixsl:attribute>
                              </iaixsl:if>
                            </input>
                            <label class="f-label">
                              <iaixsl:attribute name="for"><iaixsl:value-of select="../@id"/>_<iaixsl:value-of select="."/></iaixsl:attribute>
                              <iaixsl:value-of select="."/>
                            </label>
                          </div>
                        </iaixsl:for-each>
                      </div>
                    </div>
                  </iaixsl:for-each>
                </div>
              </div>
              <div class="redirection__submit">
                <a class="redirection__button btn --medium --solid" href="#redirect">
                  <iaixsl:if test="/shop/select_language/language/option[@selected = 'true']">
                    <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/select_language/language/option[@selected = 'true']/@site"/></iaixsl:attribute>
                  </iaixsl:if>
                  <iaixsl:attribute name="title">OK</iaixsl:attribute>
                  OK
                </a>
              </div>
            </div>
          </div>
        </div>
      </iaixsl:if>
    <!--Górne menu (menu_top, 106526.1)-->
    <div class="top-header-wrapper">
        <div class="categories-mobile">
                <div class="button-mobile-categories">
                <i class="icon-bars"></i>
                <span>MENU</span>
                </div>
                
        </div>
        <div id="logo" class="col-md-4 col-lg-3 d-flex align-items-center">

            	<nav class="nav d-flex flex-column custom-nav-header custom-nav-header">
								<div class="d-flex nav-category-header">
									<i class="icon-bars"></i>
								
								</div>
                                <div class="categories-wrapper-ul-header">
								<ul class="d-flex flex-column ul-category-header col-12">
									<iaixsl:for-each select="navigation/item">
									<li class="li-depth-1-header">
										<a>                                            
											<iaixsl:attribute name="href">
												<iaixsl:value-of select="@link" />
											</iaixsl:attribute>
											<iaixsl:attribute name="target">
												<iaixsl:value-of select="@target" />
											</iaixsl:attribute>
                                            <iaixsl:if test="@gfx">
                                                    <img>
                                                    <iaixsl:attribute name="src">
                                                    <iaixsl:value-of select="@gfx"/>
                                                    </iaixsl:attribute>
                                                    <iaixsl:attribute name="class">
                                                    b2b-category-img
                                                    </iaixsl:attribute>
                                                    </img>
                                            </iaixsl:if>
                                            <!-- <img src="/data/include/cms/b2b4kom/B2B-IKONY-SVG/heart-regular.svg" alt="" class="icon-hearth-custom temporary"/> -->
											<span>
												<iaixsl:value-of select="@name" />
											</span>
                                            <iaixsl:choose>

                                                <iaixsl:when test="count(item) > 0">
											    <i class="icon-chevron-right"></i>
                                                </iaixsl:when>

                                                <iaixsl:otherwise>
                                                <i class="icon-chevron-right invisible"></i>
                                                </iaixsl:otherwise>

                                            </iaixsl:choose>
										
                                        </a>
                                        <iaixsl:if test="count(item) > 0">
											    <ul class="nested-ul-category-header nested-ul-category-1-header">
													<iaixsl:for-each select="item">
														<li class="li-depth-2-header">
															<a>
															<iaixsl:attribute name="href">
																<iaixsl:value-of select="@link"/>
															</iaixsl:attribute>
                                                            <span>
															<iaixsl:value-of select="@name" />
                                                            </span>
                                                            <iaixsl:if test="count(item) > 0">
											                 <i class="icon-chevron-right"></i>
                                                            </iaixsl:if>
															</a>
                                                            <iaixsl:if test="count(item) > 0">
                                                            <ul class="nested-ul-category-header nested-ul-category-2-header">
                                                                <iaixsl:for-each select="item">
                                                                    <li class="li-depth-3-header">
                                                                        <a>
                                                                        <iaixsl:attribute name="href">
                                                                            <iaixsl:value-of select="@link"/>
                                                                        </iaixsl:attribute>
                                                                        <span>
                                                                        <iaixsl:value-of select="@name" />
                                                                        </span>
                                                                        </a>
                                                                    </li>
                                                                </iaixsl:for-each>
                                                            </ul>
                                        </iaixsl:if>
														</li>
													</iaixsl:for-each>
												</ul>
                                        </iaixsl:if>

									</li>
									</iaixsl:for-each>
								</ul>
                                </div>
				</nav>

            <iaixsl:if test="mask/top2/link/image/@src and (mask/top2/link/image/@width>1 or mask/top2/link/image/@height > 1)"><iaixsl:attribute name="data-bg"><iaixsl:value-of select="mask/top2/link/image/@src"/></iaixsl:attribute></iaixsl:if>
            <a>
                <iaixsl:attribute name="href">
                <!-- <iaixsl:value-of select="/shop/mask/top/link/@href"/> -->
                <iaixsl:value-of select="/shop/@baseurl"/>
                </iaixsl:attribute>
                <iaixsl:attribute name="target">
                <!-- <iaixsl:value-of select="/shop/mask/top/link/@target"/> -->
                _self
                </iaixsl:attribute>
                <iaixsl:attribute name="class">
                d-flex
                </iaixsl:attribute>
                <iaixsl:if test="/shop/mask/top/link/image/@src">
                    <img>
                        <iaixsl:attribute name="src"><iaixsl:value-of select="/shop/mask/top/link/image/@src"/></iaixsl:attribute>
                        <iaixsl:attribute name="alt"><iaixsl:value-of select="/shop/mask/top/link/description"/></iaixsl:attribute>
                        <iaixsl:attribute name="width"><iaixsl:value-of select="mask/top/link/image/@width"/></iaixsl:attribute>
                        <iaixsl:attribute name="height"><iaixsl:value-of select="mask/top/link/image/@height"/></iaixsl:attribute>
                    </img>
                </iaixsl:if>
                <div class="logo-text">
                <!-- <iaixsl:attribute name="class">logo-text</iaixsl:attribute> -->
                <p>Hurtownia</p>
                <p>akcesoriów GSM</p>
                </div>
                
            </a>
        </div>
        
        <iaixsl:if test="/shop/mask/@rwd_pc">
            <iaixsl:if test="/shop/mask/@rwd_tablet"></iaixsl:if>
            <iaixsl:if test="/shop/mask/@rwd_smartphone"></iaixsl:if>
        </iaixsl:if>

        <!--Szybkie wyszukiwanie (menu_search, 106472.1)-->
	        <form action="/search.php" method="get" id="menu_search" class="col-md-4 col-lg-5">
	            <iaixsl:if test="/shop/action/search/@url"><iaixsl:attribute name="action"><iaixsl:value-of select="/shop/action/search/@url"/></iaixsl:attribute></iaixsl:if>

	            <label class="d-md-none"><i class="icon-search"/></label>
	            
            	<div>
                <div class="selectDiv">
                    <select name="menu_alt[1_1]" id="searching_category_select">
                                        <option value="">Wszystko</option>
                                        <iaixsl:for-each select="/shop/navigation/item">
                                            <option>
                                                <iaixsl:attribute name="value"><iaixsl:value-of select="@id"/></iaixsl:attribute>
                                                <iaixsl:value-of select="@name"/>
                                            </option>
                                        </iaixsl:for-each>
                    </select>
                </div>

		            <div class="form-group">
		                <input id="menu_search_text" type="text" name="text">
			                <iaixsl:attribute name="class">catcomplete</iaixsl:attribute>
			                <iaixsl:attribute name="placeholder">Czego szukasz?</iaixsl:attribute>
		                    
		                    <iaixsl:if test="/shop/page/search_params/text">
		                        <iaixsl:attribute name="placeholder"><iaixsl:value-of select="/shop/page/search_params/text/@value"/></iaixsl:attribute>
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

            <iaixsl:variable name="display_menu_additional">Zaloguj się</iaixsl:variable>
            <iaixsl:variable name="login_title"></iaixsl:variable>
            <iaixsl:variable name="account_title"></iaixsl:variable>
            <iaixsl:variable name="list_title"></iaixsl:variable>
    
        
        <div id="menu_settings" class="col-md-4 px-0 pr-0 d-flex align-items-center justify-content-center justify-content-lg-end m-0">
                <iaixsl:if test="(count(/shop/currency/option) > 1) or (count(/shop/language/option) > 1) or (count(/shop/countries/country) > 1)">
                    <div class="open_trigger d-none">
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

                <iaixsl:if test="$display_menu_additional">
                    <div id="menu_additional">
                        <div class="container-contact-div">
                        <a>
                        <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/contact/link/@url"/></iaixsl:attribute>
                        <iaixsl:attribute name="class">contact-link</iaixsl:attribute>
                        <img class="icon-phone-custom" src="/data/include/cms/b2b4kom/B2B-IKONY-SVG/call.svg" alt="" />
                        <span>Kontakt</span>
                        </a>
                                <iaixsl:if test="/shop/commercial_button">
                                    <iaixsl:for-each select="/shop/commercial_button/link">
                                        <iaixsl:if test="html/@title='Kontakt'">
                                        <iaixsl:value-of select="html" disable-output-escaping="yes" />
                                        </iaixsl:if>
                                    </iaixsl:for-each>
                                </iaixsl:if>
                       
                        </div>

                        <a class="account_link">
                            <iaixsl:if test="/shop/action/login/@url">
                                <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/login/@url"/></iaixsl:attribute>
                            </iaixsl:if>
                            <iaixsl:choose>
                                <iaixsl:when test="basket/@login and not(basket/@login = '')">
									<iaixsl:if test="$account_title != ''"><iaixsl:attribute name="title"><iaixsl:value-of select="$account_title"/></iaixsl:attribute></iaixsl:if>
                                    <img src="/data/include/cms/b2b4kom/B2B-IKONY-SVG/user.svg" class="icon-user-custom" />
                                    <span>Twoje konto</span>
                                </iaixsl:when>
                                <iaixsl:otherwise>
									<iaixsl:if test="$login_title != ''"><iaixsl:attribute name="title"><iaixsl:value-of select="$login_title"/></iaixsl:attribute></iaixsl:if>
                                    <img src="/data/include/cms/b2b4kom/B2B-IKONY-SVG/user.svg" class="icon-user-custom" />
                                    <span>
                                    <iaixsl:value-of disable-output-escaping="yes" select="$display_menu_additional"/>
                                    </span>
                                </iaixsl:otherwise>
                            </iaixsl:choose>
                        </a>
                        <a href="/basketedit.php?mode=2" class="wishlist_link wish-link">
                        <img src="/data/include/cms/b2b4kom/B2B-IKONY-SVG/heart-regular.svg" alt="" class="icon-hearth-custom"/>
                        <span>
                            Moja lista
                        </span>
							<iaixsl:if test="$list_title != ''"><iaixsl:attribute name="title"><iaixsl:value-of select="$list_title"/></iaixsl:attribute></iaixsl:if>
                            <span>
                            <iaixsl:attribute name="class">
                            wish-count
                            </iaixsl:attribute>
                            <iaixsl:choose>
                            <iaixsl:when test="wishes/@count">
                            <iaixsl:value-of select="wishes/@count"/>
                            </iaixsl:when>
                            <iaixsl:otherwise>0</iaixsl:otherwise></iaixsl:choose></span>
                        </a>
                    </div>
                </iaixsl:if>
             <!--Menu koszyka (menu_basket, 108216.4)-->
            <iaixsl:variable name="basket_title"></iaixsl:variable>
            <div id="menu_basket_wrapper" class="d-flex px-0 ">
                
                <div id="menu_balance" class="d-none">
                    <div>
                        Saldo 
                        <strong>
                             <iaixsl:attribute name="style">display: none;</iaixsl:attribute>
                            <iaixsl:if test="/shop/client_data/client_balance/balance[@currency_sign=/shop/currency/@name]/@value">
                                <iaixsl:value-of select="(/shop/client_data/client_balance/balance[@currency_sign=/shop/currency/@name]/@value_formatted)"/>
                            </iaixsl:if>
                        </strong>
                    </div>

                    <a href="/client-rebate.php|link_rabaty">
                    <iaixsl:if test="/shop/action/clientRebate/@url">
                        <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/clientRebate/@url"/></iaixsl:attribute>
                    </iaixsl:if>
                        Informacje o rabatach
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
                            
					        <iaixsl:if test="$basket_title != ''"><iaixsl:attribute name="title"><iaixsl:value-of select="$basket_title"/></iaixsl:attribute></iaixsl:if>
                            <iaixsl:attribute name="class">basket-link</iaixsl:attribute>

                            <iaixsl:if test="basket/@count = 0">
                                <iaixsl:attribute name="class">basket-link basket-link-empty</iaixsl:attribute>
                            </iaixsl:if>
                            <div class="img-counter-header">
                            <img class="icon-shopping-cart-custom" src="/data/include/cms/b2b4kom/B2B-IKONY-SVG/shopping-cart.svg" alt=""/>
                            <span class="counter"><iaixsl:value-of disable-output-escaping="yes" select="basket/@count"/></span>
                            </div>
                            <iaixsl:choose>
                            <iaixsl:when test="basket/@count &gt; 0">
                            <strong>
                               <iaixsl:if test="/shop/page/@cache_html = 'true' ">
                                  <iaixsl:attribute name="style">display: none;</iaixsl:attribute>
                               </iaixsl:if>
                                <b><iaixsl:value-of disable-output-escaping="yes" select="basket/@cost_net_formatted"/></b>
                                <span> netto</span>
                                <iaixsl:if test="basket/@points_used > 0">
                                    <small>
                                         + <iaixsl:value-of disable-output-escaping="yes" select="basket/@points_used"/>
                                         PKT
                                    </small>
                                </iaixsl:if>
                            </strong>
                            <span class="basket-empty has-product-mobile">Koszyk</span>
                            </iaixsl:when>
                            <iaixsl:otherwise>
                            <span class="basket-empty">Koszyk</span>
                            </iaixsl:otherwise>
                            </iaixsl:choose>
                            <span class="debug-span">
                            <iaixsl:value-of select="basket/@count"/>
                            </span>
                            <iaixsl:if test="basket/@count &gt; 0">
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
                                                    <td class="menu_basket_prices_label">Suma netto:</td>
                                                    <td class="menu_basket_prices_value"><span class="menu_basket_prices_netto"><iaixsl:value-of select="basket/@cost_net_formatted"/></span></td>
                                                </tr>
                                                <tr>
                                                    <td class="menu_basket_prices_label">Suma brutto:</td>
                                                    <td class="menu_basket_prices_value"><span class="menu_basket_prices_brutto"><iaixsl:value-of select="basket/@cost_formatted"/></span></td>
                                                </tr>
                                                <iaixsl:if test="(basket/@points_used) and not(basket/@points_used = '')">
                                                    <tr>
                                                        <td class="menu_basket_prices_label">Użyte punkty:</td>
                                                        <td class="menu_basket_prices_value"><span class="menu_basket_prices_points"><iaixsl:value-of select="basket/@points_used"/></span>pkt.</td>
                                                    </tr>
                                                </iaixsl:if>
                                                <iaixsl:if test="(basket/@shipping_undefined = 'false')">
                                                    <tr>
                                                        <td class="menu_basket_prices_label">Koszt dostawy:</td>
                                                        <td class="menu_basket_prices_value">
                                                            <iaixsl:choose>
                                                                <iaixsl:when test="not(basket/@shipping = '0')">od <span class="menu_basket_prices_shippingCost"><iaixsl:value-of select="basket/@shipping_formatted"/></span></iaixsl:when>
                                                                <iaixsl:otherwise><span class="menu_basket_shippingfree">gratis!</span></iaixsl:otherwise>
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
                                                        <span class="menu_basket_shippingfree_hit">Osiągnięto próg darmowej wysyłki.</span>
                                                    </iaixsl:when>
                                                    <iaixsl:otherwise>
                                                        Brakuje Ci 
                                                        <span class="menu_basket_toshippingfree"><span class="menu_basket_prices_shippingFree"><iaixsl:value-of select="basket/@toshippingfree_formatted"/></span></span>
                                                         by mieć<br />przesyłkę gratis.
                                                    </iaixsl:otherwise>
                                                </iaixsl:choose>
                                            </div>
                                        </div>
                                    </iaixsl:if>
                                    

                                    
                                    <iaixsl:if test="((rebatesLocal/@nextleft) and (rebatesLocal/@nextvalue)) and (not(rebatesLocal/@nextleft = '') and not(rebatesLocal/@nextvalue = '') and not(rebatesLocal/@nextvalue = '0.00'))">
                                        <div class="menu_basket_nextrabate">
                                            <div class="menu_basket_nextrabate_sub">
                                                Brakuje Ci 
                                                <span class="menu_basket_nextrabate_in"><iaixsl:value-of select="rebatesLocal/@nextleft_formatted"/></span>
                                                 do rabatu 
                                                <span class="menu_basket_nextrabate_value"><iaixsl:value-of select="rebatesLocal/@nextvalue"/>%</span>
                                            </div>
                                        </div>
                                    </iaixsl:if>
                                    

                                    
                                        <div class="menu_basket_buttons">
                                            <div class="menu_basket_buttons_sub">
                                                <a href="/basketedit.php" class="menu_basket_buttons_basket btn --solid --medium">
                                                    <iaixsl:attribute name="title">Przejdź na stronę koszyka</iaixsl:attribute>
                                                    <iaixsl:if test="/shop/action/basket/@url">
                                                        <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/basket/@url"/>?mode=1</iaixsl:attribute>
                                                    </iaixsl:if>
                                                    Przejdź do koszyka
                                                </a>

                                                <a href="/order1.php" class="menu_basket_buttons_order btn --solid --medium">
                                                    <iaixsl:attribute name="title">Przejdź do strony składania zamówienia</iaixsl:attribute>
                                                    <iaixsl:if test="/shop/action/order1/@url">
                                                        <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/order1/@url"/></iaixsl:attribute>
                                                    </iaixsl:if>
                                                    Złóż zamówienie
                                                </a>
                                            </div>
                                        </div>
                                    

                                </div>
                            </div>
                            

                            
                                <div id="menu_basket_productlist">
                                    <div class="menu_basket_productlist_sub">

                                        <table class="menu_basket_product_table">
                                            <thead>
                                                <tr>
                                                    <th class="icon-basket-details-custom"></th>
                                                    <th class="menu_basket_product_name">Nazwa produktu</th>
                                                    <!-- <th class="menu_basket_product_size">Rozmiar</th> -->
                                                    
                                                    <th class="menu_basket_product_quantity">Ilość </th>
                                                    <th class="menu_basket_product_price">Cena netto</th>
                                                    <th class="remove-from-basket"></th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <iaixsl:for-each select="basket/product">
                                                    <tr>
                                                        <td class="icon-basket-body">
                                                        <img>
                                                        <iaixsl:attribute name="src">
                                                        <iaixsl:value-of select="icon"/>
                                                        </iaixsl:attribute>
                                                        </img>
                                                        </td>
                                                        <td class="menu_basket_product_name">
                                                            <a class="menu_basket_product_name">
                                                                <iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
                                                                <iaixsl:attribute name="title"><iaixsl:value-of select="name"/></iaixsl:attribute>
                                                                <iaixsl:value-of select="name" disable-output-escaping="yes"/>
                                                            </a>
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
                                                                        <span class="menu_basket_product_points">+ <iaixsl:value-of select="price/@points"/>pkt.</span>
                                                                    </iaixsl:if>
                                                                </iaixsl:when>
                                                                <iaixsl:when test="(price/@worth_net = 0) and (price/@points)">
                                                                    <span class="menu_basket_product_points"><iaixsl:value-of select="price/@points"/>pkt.</span>
                                                                </iaixsl:when>
                                                            </iaixsl:choose>
                                                        </td>
                                                        <td class="remove-from-basket-body">
                                                                <iaixsl:if test="removeall">
                                                                	<a>
                                                                    <iaixsl:attribute name="href">
                                                                    <iaixsl:value-of select="removeall"/>
                                                                    </iaixsl:attribute>
                                                                    x</a>
                                                                </iaixsl:if>
                                                        </td>
                                                    </tr>
                                                </iaixsl:for-each>
                                            </tbody>
                                        </table>

                                    </div>
                                </div>
                                
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
                                    <span>Lista zakupowa(<iaixsl:value-of select="wishes/@count"/>)</span>

                                    <span class="badge badge-important d-md-none"><iaixsl:value-of select="wishes/@count"/></span>
                                </a>
                            </iaixsl:when>
                            <iaixsl:otherwise>
                                <a class="wishes_link link" href="/basketedit.php?mode=2" rel="nofollow">
                                    <iaixsl:attribute name="title"></iaixsl:attribute>
                                    <iaixsl:if test="/shop/action/basket/@url">
                                        <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/basket/@url"/>?mode=2</iaixsl:attribute>
                                    </iaixsl:if>

                                    <span>Lista zakupowa(0)</span>
                                </a>
                            </iaixsl:otherwise>
                        </iaixsl:choose>
                        <span class="hidden-tablet"> | </span>
                        <a class="basket_link link" href="/basketedit.php?mode=1" rel="nofollow">
                            <iaixsl:attribute name="title">Kliknij, by przejść do koszyka</iaixsl:attribute>
                            <iaixsl:if test="/shop/action/basket/@url">
                                <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/basket/@url"/>?mode=1</iaixsl:attribute>
                            </iaixsl:if>
                            <iaixsl:if test="basket/@count = '0'">
                                <iaixsl:attribute name="title">Twój koszyk jest pusty, najpierw dodaj do niego produkty z naszej oferty.</iaixsl:attribute>
                            </iaixsl:if>
                            Złóż zamówienie
                        </a>
                    </div>
                </div>
            </div>
        </div>
            
             </div>   
            <iaixsl:if test="not(/shop/client_data/client_balance/balance[@currency_sign=/shop/currency/@name]/@value)">
                <script>
                    app_shop.vars.formatBasket = true;
                </script>
            </iaixsl:if>
           <iaixsl:if test="/shop/page/@cache_html = 'true' ">
                <script>
                    app_shop.vars.cache_html = true;
                </script>
            </iaixsl:if>


                <iaixsl:if test="/shop/page/@cache_basketwishes"/>
                <iaixsl:if test="/shop/page/@cache_basket"/>
    
       <!--Menu - Drzewo 1 (menu_categories, 106527.1)-->
        <iaixsl:variable name="dlmenu_showall">+ Pokaż wszystkie</iaixsl:variable>
        <iaixsl:variable name="gfx_2lvl_show"></iaixsl:variable>
        <iaixsl:variable name="menu_categories_label"></iaixsl:variable>
        <iaixsl:variable name="current_item"><iaixsl:value-of select="/shop/navigation/current/@ni"/></iaixsl:variable>

        <nav id="menu_categories" class="col-md-12 px-0 px-md-3 d-none">
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
        <iaixsl:if test="/shop/page/navigation/item/@gfx_active_desktop"> </iaixsl:if>
         

</header>
                </iaixsl:if>
<div class="categories-wrapper-ul2 ">
                <div class="backButtonContainer">
                <i class="icon-x"></i>
                <span>MENU</span>
                </div>
                    <p class="categoriesMobileBreadcrumb">
                    <i class="icon-chevron-left"></i>
                    <span class="categoriesMobileSpan">Kategorie</span>
                    </p>
                    <div class="wrapper-div-ul-2">
                    
								<ul class="d-flex flex-column ul-category2 col-12">
									<iaixsl:for-each select="navigation/item">
									<li class="li-depth-11">
										<a>                            	<iaixsl:attribute name="href">
												<iaixsl:value-of select="@link" />
											</iaixsl:attribute>
											<iaixsl:attribute name="target">
												<iaixsl:value-of select="@target" />   </iaixsl:attribute>          <div>
										
											
                                               <iaixsl:if test="@gfx">
                                                    <img>
                                                    <iaixsl:attribute name="src">
                                                    <iaixsl:value-of select="@gfx"/>
                                                    </iaixsl:attribute>
                                                    <iaixsl:attribute name="class">
                                                    b2b-category-img
                                                    </iaixsl:attribute>
                                                    </img>
                                                    </iaixsl:if>
                                            <!-- <img src="/data/include/cms/b2b4kom/B2B-IKONY-SVG/heart-regular.svg" alt="" class="icon-hearth-custom temporary"/> -->
											<span>
												<iaixsl:value-of select="@name" />
											</span>
                                            </div>
										
                                        </a>
                                            <iaixsl:choose>

                                                <iaixsl:when test="count(item) > 0">
											    <i class="icon-chevron-right"></i>
                                                </iaixsl:when>

                                                <iaixsl:otherwise>
                                                <i class="icon-chevron-right invisible"></i>
                                                </iaixsl:otherwise>

                                            </iaixsl:choose>
                                        <iaixsl:if test="count(item) > 0">
											    <ul class="nested-ul-category2 nested-ul-category-12">
													<iaixsl:for-each select="item">
														<li class="li-depth-22">
                                                            <div>
															<a>
															<iaixsl:attribute name="href">
																<iaixsl:value-of select="@link"/>
															</iaixsl:attribute>
                                                            <span>
															<iaixsl:value-of select="@name" />
                                                            </span>
															</a>
                                                            <iaixsl:if test="count(item) > 0">
											                 <i class="icon-chevron-right"></i>
                                                            </iaixsl:if>
                                                            </div>
                                                            <iaixsl:if test="count(item) > 0">
                                                            <ul class="nested-ul-category2 nested-ul-category-22">
                                                                <iaixsl:for-each select="item">
                                                                    <li class="li-depth-33">
                                                                        <a>
                                                                        <iaixsl:attribute name="href">
                                                                            <iaixsl:value-of select="@link"/>
                                                                        </iaixsl:attribute>
                                                                        <span>
                                                                        <iaixsl:value-of select="@name" />
                                                                        </span>
                                                                        </a>
                                                                    </li>
                                                                </iaixsl:for-each>
                                                            </ul>
                                                            </iaixsl:if>
														</li>
													</iaixsl:for-each>
												</ul>
                                        </iaixsl:if>

									</li>
									</iaixsl:for-each>
								</ul>
                     
                    </div>

            <iaixsl:variable name="display_menu_additional">Zaloguj się</iaixsl:variable>
            <iaixsl:variable name="login_title"></iaixsl:variable>
            <iaixsl:variable name="account_title"></iaixsl:variable>
            <iaixsl:variable name="list_title"></iaixsl:variable>


         <div id="menu_settings2" class="">
            <iaixsl:comment>
                <iaixsl:if test="(count(/shop/currency/option) > 1) or (count(/shop/language/option) > 1) or (count(/shop/countries/country) > 1)">
                    <div class="open_trigger d-none">
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
            </iaixsl:comment>

                <iaixsl:if test="$display_menu_additional">
                    <div id="menu_additional2">
                        <a>
                        <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/contact/link/@url"/></iaixsl:attribute>
                        <iaixsl:attribute name="class">contact-link</iaixsl:attribute>
                        <img class="icon-phone-custom" src="/data/include/cms/b2b4kom/B2B-IKONY-SVG/call.svg" alt="" />
                        <span>Kontakt</span>
                        </a>
                        <a class="account_link">
                            <iaixsl:if test="/shop/action/login/@url">
                                <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/login/@url"/></iaixsl:attribute>
                            </iaixsl:if>
                            <iaixsl:choose>
                                <iaixsl:when test="basket/@login and not(basket/@login = '')">
									<iaixsl:if test="$account_title != ''"><iaixsl:attribute name="title"><iaixsl:value-of select="$account_title"/></iaixsl:attribute></iaixsl:if>
                                    <img src="/data/include/cms/b2b4kom/B2B-IKONY-SVG/user.svg" class="icon-user-custom" />
                                    <span>Twoje konto</span>
                                </iaixsl:when>
                                <iaixsl:otherwise>
									<iaixsl:if test="$login_title != ''"><iaixsl:attribute name="title"><iaixsl:value-of select="$login_title"/></iaixsl:attribute></iaixsl:if>
                                    <img src="https://4kom.pl/data/include/cms/b2b4kom/B2B-IKONY-SVG/user.svg" class="icon-user-custom" />
                                    <span>
                                    <iaixsl:value-of disable-output-escaping="yes" select="$display_menu_additional"/>
                                    </span>
                                </iaixsl:otherwise>
                            </iaixsl:choose>
                        </a> 
                        <a href="/basketedit.php?mode=2" class="wishlist_link wish-link">
                        <img src="https://4kom.pl/data/include/cms/b2b4kom/B2B-IKONY-SVG/heart-regular.svg" alt="" class="icon-hearth-custom"/>
                        <span>
                            Moja lista
                        </span>
							<!-- <iaixsl:if test="$list_title != ''"><iaixsl:attribute name="title"><iaixsl:value-of select="$list_title"/></iaixsl:attribute></iaixsl:if>
                            <span>
                            <iaixsl:attribute name="class">
                            wish-count
                            </iaixsl:attribute>
                            <iaixsl:choose>
                            <iaixsl:when test="wishes/@count">
                            <iaixsl:value-of select="wishes/@count"/>
                            </iaixsl:when>
                            <iaixsl:otherwise>0</iaixsl:otherwise></iaixsl:choose>
                            </span> -->
                        </a>
                    </div>
                </iaixsl:if>
             <!--Menu koszyka (menu_basket, 108216.4)-->
              <iaixsl:variable name="basket_title"></iaixsl:variable>
            <div id="menu_basket_wrapper2" class="d-flex px-0 ">
                
                <!-- <div id="menu_balance" class="d-none">
                    <div>
                        Saldo 
                        <strong>
                             <iaixsl:attribute name="style">display: none;</iaixsl:attribute>
                            <iaixsl:if test="/shop/client_data/client_balance/balance[@currency_sign=/shop/currency/@name]/@value">
                                <iaixsl:value-of select="(/shop/client_data/client_balance/balance[@currency_sign=/shop/currency/@name]/@value_formatted)"/>
                            </iaixsl:if>
                        </strong>
                    </div>

                    <a href="/client-rebate.php|link_rabaty">
                    <iaixsl:if test="/shop/action/clientRebate/@url">
                        <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/clientRebate/@url"/></iaixsl:attribute>
                    </iaixsl:if>
                        Informacje o rabatach
                    </a>
                </div> -->
                
                <div id="menu_basket2" class="menu_basket2">
             
                    <div class="menu_basket_list2">
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
					            <iaixsl:if test="$basket_title != ''"><iaixsl:attribute name="title"><iaixsl:value-of select="$basket_title"/></iaixsl:attribute></iaixsl:if>
                            <iaixsl:attribute name="class">basket-link</iaixsl:attribute>

                            <iaixsl:if test="basket/@count = 0">
                                <iaixsl:attribute name="class">basket-link basket-link-empty</iaixsl:attribute>
                            </iaixsl:if>
                            <!-- <div class="img-counter-header"> -->
                            <img class="icon-shopping-cart-custom" src="https://4kom.pl/data/include/cms/b2b4kom/B2B-IKONY-SVG/shopping-cart.svg" alt=""/>
                            <!-- <span class="counter"><iaixsl:value-of disable-output-escaping="yes" select="basket/@count"/></span> -->
                            <!-- </div> -->
                            <iaixsl:choose>
                            <iaixsl:when test="basket/@count &gt; 0">
                            <strong>
                               <iaixsl:if test="/shop/page/@cache_html = 'true' ">
                                  <iaixsl:attribute name="style">display: none;</iaixsl:attribute>
                               </iaixsl:if>
                                <b><iaixsl:value-of disable-output-escaping="yes" select="basket/@cost_net_formatted"/></b>
                                <span> netto</span>
                                <iaixsl:if test="basket/@points_used > 0">
                                    <small>
                                         + <iaixsl:value-of disable-output-escaping="yes" select="basket/@points_used"/>
                                         PKT
                                    </small>
                                </iaixsl:if>
                            </strong>
                            <span class="basket-empty has-product-mobile2">Koszyk</span>
                            </iaixsl:when>
                            <iaixsl:otherwise>
                            <span class="basket-empty2">Koszyk</span>
                            </iaixsl:otherwise>
                            </iaixsl:choose>
                            <span class="debug-span">
                            <iaixsl:value-of select="basket/@count"/>
                            </span>
                            <iaixsl:if test="basket/@count &gt; 0">
                                <span class="badge badge-important d-md-none"><iaixsl:value-of disable-output-escaping="yes" select="basket/@count"/></span>
                            </iaixsl:if>
                        </a>

                       
                    </div>

                    
                </div>
            </div>
         </div>
         <div class="contact-mobile-text">
                    <div>
                        <div>
                    <p><i class="icon-phone"></i><a href="tel:422987808">42 298 78 08</a></p>
                        
                        </div>
                        <div>

                    <p><i class="icon-envelope"></i><a href="mailto:sklep@4kom.pl">sklep@4kom.pl</a></p>
                        </div>
         </div>
         <div>
         <p>Obsługa sklepu dostępna jest od poniedziałku do piątku, w godzinach 8:00 - 16:00
         </p>
         </div>
         </div>
            
</div>
                <div id="layout">
                <div class="row row-project">
                    <iaixsl:attribute name="class">row container clearfix</iaixsl:attribute>

                    
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
<div class="col-3-height">

					
							<nav class="nav d-flex flex-column custom-nav custom-nav-desktop">
								<div class="d-flex nav-category">
									<i class="icon-bars"></i>
									<p class="m-0">KATEGORIE</p>
                                    <div class="nav-breadcrumb">
                                     <span></span>
                                    </div>
								</div>
                                <div class="categories-wrapper-ul init">
                       
								<ul class="d-flex flex-column ul-category col-12">
									<iaixsl:for-each select="navigation/item">
									<li class="li-depth-1">
										<a>                                            
											<iaixsl:attribute name="href">
												<iaixsl:value-of select="@link" />
											</iaixsl:attribute>
											<iaixsl:attribute name="target">
												<iaixsl:value-of select="@target" />
											</iaixsl:attribute>

                                            <iaixsl:if test="@gfx">
                                                    <img>
                                                    <iaixsl:attribute name="src">
                                                    <iaixsl:value-of select="@gfx"/>
                                                    </iaixsl:attribute>
                                                    <iaixsl:attribute name="class">
                                                    b2b-category-img
                                                    </iaixsl:attribute>
                                                    </img>
                                            </iaixsl:if> 
                                            <!-- <img src="/data/include/cms/b2b4kom/B2B-IKONY-SVG/heart-regular.svg" alt="" class="icon-hearth-custom temporary"/> -->
											<span>
												<iaixsl:value-of select="@name" />
											</span>
                                            <iaixsl:choose>

                                                <iaixsl:when test="count(item) > 0">
											    <i class="icon-chevron-right"></i>
                                                </iaixsl:when>

                                                <iaixsl:otherwise>
                                                <i class="icon-chevron-right invisible"></i>
                                                </iaixsl:otherwise>

                                            </iaixsl:choose>
										
                                        </a>
                                        <iaixsl:if test="count(item) > 0">
											    <ul class="nested-ul-category nested-ul-category-1">
													<iaixsl:for-each select="item">
														<li class="li-depth-2">
															<a>
															<iaixsl:attribute name="href">
																<iaixsl:value-of select="@link"/>
															</iaixsl:attribute>
                                                            <span>
															<iaixsl:value-of select="@name" />
                                                            </span>
                                                            <iaixsl:if test="count(item) > 0">
											                 <i class="icon-chevron-right"></i>
                                                            </iaixsl:if>
															</a>
                                                            <iaixsl:if test="count(item) > 0">
                                                            <ul class="nested-ul-category nested-ul-category-2">
                                                                <iaixsl:for-each select="item">
                                                                    <li class="li-depth-3">
                                                                        <a>
                                                                        <iaixsl:attribute name="href">
                                                                            <iaixsl:value-of select="@link"/>
                                                                        </iaixsl:attribute>
                                                                        <span>
                                                                        <iaixsl:value-of select="@name" />
                                                                        </span>
                                                                        </a>
                                                                    </li>
                                                                </iaixsl:for-each>
                                                            </ul>
                                        </iaixsl:if>
														</li>
													</iaixsl:for-each>
												</ul>
                                        </iaixsl:if>

									</li>
									</iaixsl:for-each>
								</ul>
                                </div>
                            </nav>
</div>
                            <!--Dodatkowe linki (strefa 1) (menu_additional1, 106528.1)-->
            <iaixsl:variable name="SET_filters"></iaixsl:variable>
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
                            <i class="icon-cog"></i>  <span>Twoje konto</span>
                            
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
                            <span class='font_icon'>%</span> <span>Moje rabaty</span>
                            
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
                        <a class="registration_link" href="/client-new.php?register&amp;wholesaler=true">
                            <iaixsl:attribute name="title">
                                
                                
                            </iaixsl:attribute>
                            <i class="icon-lock"></i>  <span>Zarejestruj się</span>
                            
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
            <!-- <div class="setMobileGrid" data-item="#menu_settings"/> -->
            <iaixsl:if test="$SET_filters and not($SET_filters = '')">
                <div class="setMobileGrid">
                  <iaixsl:attribute name="data-item"><iaixsl:value-of select="$SET_filters"/></iaixsl:attribute>
                </div>
            </iaixsl:if>
        
                        </aside>
                    </iaixsl:if>
                    <div class="col-9">
                    	<div class="b2b-category">
									<iaixsl:if test="navigation2/item">
										<ul class="b2b-category-ul main-category-2">
											<iaixsl:for-each select="navigation2/item">
												<li class="navigation-2-item">
                                                    <iaixsl:if test="@gfx">
                                                    <img>
                                                    <iaixsl:attribute name="src">
                                                    <iaixsl:value-of select="@gfx"/>
                                                    </iaixsl:attribute>
                                                    <iaixsl:attribute name="class">
                                                    b2b-category-img
                                                    </iaixsl:attribute>
                                                    </img>
                                                    </iaixsl:if>
													<a>
                                                        <iaixsl:attribute name="href">
                                                            <iaixsl:value-of select="@link"/>
                                                        </iaixsl:attribute>
														<iaixsl:value-of select="@name"/>
													</a>
												</li>
											</iaixsl:for-each>
										</ul>
									</iaixsl:if>
								</div>
                             </div>
                    </div>

                    <div class="breadcrumb-search d-flex col-12 py-2">
                        <div class="bc-projector-before"></div>

                        <a>
                        <iaixsl:attribute name="href">
                        <iaixsl:value-of select="/shop/bc/@link"/>
                        </iaixsl:attribute>
                        <iaixsl:attribute name="class">
                            mr-2
                        </iaixsl:attribute>
                        <div class="icon-home-custom"></div>
                        </a>
                        <iaixsl:for-each select="/shop/bc/item">
                            <i class="icon-angle-right"></i>
                            <a>
                            <iaixsl:attribute name="href">
                                <iaixsl:value-of select="@link"/>
                            </iaixsl:attribute>
                            <iaixsl:attribute name="class">
                                mr-2 ml-2
                            </iaixsl:attribute>
                            <iaixsl:value-of select="@title"/>
                            </a>
                        </iaixsl:for-each>
                             <i class="icon-angle-right"></i>
                            <a>
                            <iaixsl:attribute name="href">
                                <iaixsl:value-of select="/shop/page/projector/product/@link"/>
                            </iaixsl:attribute>
                            <iaixsl:attribute name="class">
                                mr-2 ml-2
                            </iaixsl:attribute>
                            <iaixsl:value-of select="/shop/page/projector/product/name"/>
                            </a>
                        <div class="bc-projector-after"></div>
                        
                    </div>

                    
                    <iaixsl:if test="not(action/set_render/item) or (action/set_render/item/@name = 'content')">
                        <div id="content" class="span9">
                            <iaixsl:choose>
                                <iaixsl:when test="page/@type = 'projector'">
                                     <iaixsl:attribute name="class">col-12 px-0 d-flex flex-wrap pt-5</iaixsl:attribute>
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
                                <iaixsl:when test="@type='incorect login'">Wybrany login jest niepoprawny. Login musi mieć minimum 3, a maksimum 40 znaków (tylko litery lub cyfry).</iaixsl:when>
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

        <!--Warianty produktu (projector_productversions, 110590.1)-->
        <iaixsl:if test="compare/@count > 0 or /shop/page/@cache_html = 'true'">
            <div id="menu_compare_product" class="compare mb-2 pt-sm-3 pb-sm-3 mb-sm-3 mx-3">
                <iaixsl:if test="/shop/page/@cache_html = 'true'">
                    <iaixsl:attribute name="style">display: none;</iaixsl:attribute>
                </iaixsl:if>

                <div class="compare__label d-none d-sm-block">Dodane do porównania</div>

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
                            <iaixsl:attribute name="title">Porównaj wszystkie produkty</iaixsl:attribute>
                            <iaixsl:attribute name="target">_blank</iaixsl:attribute>
                            <span>Porównaj produkty </span><span class="d-sm-none">(<iaixsl:value-of select="compare/@count"/>)</span>
                        </a>
                    </iaixsl:if>

                    <a class="compare__button --remove btn d-none d-sm-block">
                        <iaixsl:attribute name="href"><iaixsl:choose><iaixsl:when test="/shop/action/settings/@url"><iaixsl:value-of select="/shop/action/settings/@url"/></iaixsl:when><iaixsl:otherwise>settings.php</iaixsl:otherwise></iaixsl:choose>?comparers=remove&amp;product=<iaixsl:choose><iaixsl:when test="/shop/page/@cache_html = 'true'">###</iaixsl:when><iaixsl:otherwise><iaixsl:for-each select="compare/product"><iaixsl:value-of select="@id"/><iaixsl:if test="not(count(../product) = position())">,</iaixsl:if></iaixsl:for-each></iaixsl:otherwise></iaixsl:choose></iaixsl:attribute>

                        <iaixsl:attribute name="title">Usuń wszystkie produkty</iaixsl:attribute>
                        Usuń produkty
                    </a>
                </div>

                <iaixsl:if test="/shop/page/@cache_html = 'true'">
                    <script>
                        var cache_html = true;
                    </script>
                </iaixsl:if>
            </div>
        </iaixsl:if>
    <!--Nazwa produktu na karcie (projector_productname, 111557.1)-->
			<!-- <section id="projector_productname" class="product_name d-flex mb-2 mb-sm-4 justify-content-between col-12">
				<div class="product_name__wrapper pr-md-2">
					
					<h1 class="product_name__name m-0">
						<iaixsl:value-of disable-output-escaping="yes" select="/shop/page/projector/product/name"/>
					</h1>

					
					<iaixsl:if test="page/projector/product/description and page/projector/product/description != ''">
						<div class="product_name__description d-none d-sm-block ">
							<iaixsl:value-of disable-output-escaping="yes" select="page/projector/product/description/text()"/>
						</div>
					</iaixsl:if>
				</div>

				
				<iaixsl:if test="/shop/page/projector/product/firm/@icon and not(/shop/page/projector/product/firm/@icon = '')">
					<div class="product_name__firm_logo d-none d-md-flex justify-content-end align-items-center">
						<a class="firm_logo">
							<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/page/projector/product/firm/@productslink"/></iaixsl:attribute>

							<img>
								<iaixsl:attribute name="src"><iaixsl:value-of select="/shop/page/projector/product/firm/@icon"/></iaixsl:attribute>
								<iaixsl:attribute name="title"><iaixsl:value-of select="/shop/page/projector/product/firm/@name"/></iaixsl:attribute>
								<iaixsl:attribute name="alt"><iaixsl:value-of select="/shop/page/projector/product/firm/@name"/></iaixsl:attribute>
							</img>
						</a>
					</div>
				</iaixsl:if>
			</section> -->
		<!--Zdjęcia produktu (projector_photos, 111709.1)-->
    <div class="row col-12">
        
			<section id="projector_photos" class="photos col-12 col-md-6 col-lg-7 d-flex align-items-start mb-2 mb-md-4">
				<iaixsl:choose>
					<iaixsl:when test="count(/shop/page/projector/product/enclosures/images/enclosure) > 0 or /shop/page/projector/bundled/product[enclosures/images/enclosure[1]/@icon]">
						
						<iaixsl:variable name="magnify"></iaixsl:variable>
						
						<iaixsl:variable name="thumbnailsCount">100</iaixsl:variable>
						<iaixsl:variable name="enclosureCount"><iaixsl:value-of select="count(/shop/page/projector/product/enclosures/images/enclosure)"/></iaixsl:variable>
						<iaixsl:variable name="bundledCount"><iaixsl:value-of select="count(/shop/page/projector/bundled/product[enclosures/images/enclosure[1]/@icon])"/></iaixsl:variable>
						<iaixsl:variable name="imagesSum"><iaixsl:value-of select="$enclosureCount + $bundledCount"/></iaixsl:variable>
						<iaixsl:if test="$imagesSum > 1">
							
							<div id="photos_nav" class="photos__nav d-flex slider-nav">
								<iaixsl:if test="$imagesSum > $thumbnailsCount">
									<iaixsl:attribute name="data-more-slides"><iaixsl:value-of select="$imagesSum - $thumbnailsCount"/></iaixsl:attribute>
								</iaixsl:if>
								<iaixsl:for-each select="page/projector/product/enclosures/images/enclosure">
									<iaixsl:if test="not(position() - 1 > $thumbnailsCount)">
										<figure class="photos__figure --nav">
											<iaixsl:choose>
												<iaixsl:when test="(position() - 1 = $thumbnailsCount) and ($imagesSum > $thumbnailsCount)">
													<iaixsl:attribute name="class">photos__figure --nav --more</iaixsl:attribute>
													<a class="photos__link --nav --more">
														<iaixsl:attribute name="data-more"><iaixsl:value-of select="$imagesSum - $thumbnailsCount"/></iaixsl:attribute>
														<iaixsl:attribute name="data-slick-index"><iaixsl:value-of select="position() - 1"/></iaixsl:attribute>
														<iaixsl:attribute name="href"><iaixsl:value-of disable-output-escaping="yes" select="@url"/></iaixsl:attribute>
														<span class="photos__more_top">+<span class="photos__more_count"><iaixsl:value-of select="$imagesSum - $thumbnailsCount"/></span></span>
														<span class="photos__more_bottom">zdjęcia</span>
													</a>
												</iaixsl:when>
												<iaixsl:otherwise>
													<a class="photos__link --nav">
														<iaixsl:attribute name="href"><iaixsl:value-of disable-output-escaping="yes" select="@url"/></iaixsl:attribute>
														<iaixsl:attribute name="data-slick-index"><iaixsl:value-of select="position() - 1"/></iaixsl:attribute>
														<iaixsl:attribute name="data-width"><iaixsl:value-of select="@icon_width"/></iaixsl:attribute>
														<iaixsl:attribute name="data-height"><iaixsl:value-of select="@icon_height"/></iaixsl:attribute>
														<img class="photos__photo b-lazy --nav">
															<iaixsl:attribute name="alt"><iaixsl:value-of disable-output-escaping="yes" select="/shop/page/projector/product/name"/></iaixsl:attribute>
															<iaixsl:attribute name="src"><iaixsl:value-of select="@icon"/></iaixsl:attribute>
														</img>
													</a>
												</iaixsl:otherwise>
											</iaixsl:choose>
										</figure>
									</iaixsl:if>
								</iaixsl:for-each>
								<iaixsl:for-each select="page/projector/bundled/product[enclosures/images/enclosure[1]/@icon]">
									<iaixsl:variable name="positionCount"><iaixsl:value-of select="$enclosureCount + position()"/></iaixsl:variable>
									<iaixsl:if test="not($positionCount - 1 > $thumbnailsCount)">
										<figure class="photos__figure --nav">
											<iaixsl:choose>
												<iaixsl:when test="($positionCount - 1 = $thumbnailsCount) and ($imagesSum > $thumbnailsCount)">
													<iaixsl:attribute name="class">photos__figure --nav --more</iaixsl:attribute>
													<a class="photos__link --nav --more">
														<iaixsl:attribute name="data-more"><iaixsl:value-of select="$imagesSum - $thumbnailsCount"/></iaixsl:attribute>
														<iaixsl:attribute name="data-slick-index"><iaixsl:value-of select="$positionCount - 1"/></iaixsl:attribute>
														<iaixsl:attribute name="href"><iaixsl:value-of disable-output-escaping="yes" select="enclosures/images/enclosure[1]/@url"/></iaixsl:attribute>
														<span class="photos__more_top">+<span class="photos__more_count"><iaixsl:value-of select="$imagesSum - $thumbnailsCount"/></span></span>
														<span class="photos__more_bottom">zdjęcia</span>
													</a>
												</iaixsl:when>
												<iaixsl:otherwise>
													<a class="photos__link --nav">
														<iaixsl:attribute name="href"><iaixsl:value-of disable-output-escaping="yes" select="enclosures/images/enclosure[1]/@url"/></iaixsl:attribute>
														<iaixsl:attribute name="data-slick-index"><iaixsl:value-of select="$positionCount - 1"/></iaixsl:attribute>
														<iaixsl:attribute name="data-width"><iaixsl:value-of select="enclosures/images/enclosure[1]/@icon_width"/></iaixsl:attribute>
														<iaixsl:attribute name="data-height"><iaixsl:value-of select="enclosures/images/enclosure[1]/@icon_height"/></iaixsl:attribute>
														<img class="photos__photo b-lazy --nav">
															<iaixsl:attribute name="alt"><iaixsl:value-of disable-output-escaping="yes" select="name"/></iaixsl:attribute>
															<iaixsl:attribute name="src"><iaixsl:value-of select="enclosures/images/enclosure[1]/@icon"/></iaixsl:attribute>
														</img>
													</a>
												</iaixsl:otherwise>
											</iaixsl:choose>
										</figure>
									</iaixsl:if>
								</iaixsl:for-each>
							</div>
						</iaixsl:if>

						
						<div id="photos_slider" class="photos__slider">
							<iaixsl:if test="$imagesSum > 1">
								<iaixsl:attribute name="data-nav">true</iaixsl:attribute>
							</iaixsl:if>

							<div class="photos___slider_wrapper slider-for">
								<iaixsl:for-each select="page/projector/product/enclosures/images/enclosure">
									<figure class="photos__figure">
										<a class="photos__link">
											<iaixsl:attribute name="href"><iaixsl:value-of disable-output-escaping="yes" select="@url"/></iaixsl:attribute>
											<iaixsl:attribute name="data-width"><iaixsl:value-of select="@width"/></iaixsl:attribute>
											<iaixsl:attribute name="data-height"><iaixsl:value-of select="@height"/></iaixsl:attribute>
											<img class="photos__photo slick-loading">
												<iaixsl:attribute name="alt"><iaixsl:value-of disable-output-escaping="yes" select="/shop/page/projector/product/name"/></iaixsl:attribute>
												<iaixsl:attribute name="data-lazy"><iaixsl:value-of select="@medium"/></iaixsl:attribute>
												<iaixsl:if test="$magnify"><iaixsl:attribute name="data-zoom-image"><iaixsl:value-of select="@url"/></iaixsl:attribute></iaixsl:if>
											</img>
										</a>
									</figure>
								</iaixsl:for-each>
								<iaixsl:for-each select="page/projector/bundled/product[enclosures/images/enclosure[1]/@icon]">
									<figure class="photos__figure">
										<a class="photos__link">
											<iaixsl:attribute name="href"><iaixsl:value-of disable-output-escaping="yes" select="enclosures/images/enclosure[1]/@url"/></iaixsl:attribute>
											<iaixsl:attribute name="data-width"><iaixsl:value-of select="enclosures/images/enclosure[1]/@width"/></iaixsl:attribute>
											<iaixsl:attribute name="data-height"><iaixsl:value-of select="enclosures/images/enclosure[1]/@height"/></iaixsl:attribute>
											<img class="photos__photo slick-loading">
												<iaixsl:attribute name="alt"><iaixsl:value-of disable-output-escaping="yes" select="name"/></iaixsl:attribute>
												<iaixsl:attribute name="data-lazy"><iaixsl:value-of select="enclosures/images/enclosure[1]/@medium"/></iaixsl:attribute>
												<iaixsl:if test="$magnify"><iaixsl:attribute name="data-zoom-image"><iaixsl:value-of select="enclosures/images/enclosure[1]/@url"/></iaixsl:attribute></iaixsl:if>
											</img>
										</a>
									</figure>
								</iaixsl:for-each>
							</div>

							
							<iaixsl:if test="$magnify"><span class="photos__magnify"><iaixsl:value-of select="$magnify"/></span></iaixsl:if>

							
							<iaixsl:if test="/shop/page/projector/product/@promotion or /shop/page/projector/product/@new or /shop/page/projector/product/@bestseller or /shop/page/projector/product/@discount or (/shop/page/projector/product/@distinguished and not(/shop/page/projector/product/@bestseller and /shop/page/projector/product/@discount))">
								<strong class="label_icons">
									<iaixsl:if test="/shop/page/projector/product/@promotion">
										<span class="label --promo">
                                            <img>
                                                <iaixsl:attribute name="src">/data/include/cms/b2b4kom/B2B-IKONY-SVG/promo.svg</iaixsl:attribute>
                                            </img>
										</span>
                                        
									</iaixsl:if>
									<iaixsl:if test="/shop/page/projector/product/@new">
										<span class="label --new">
											 <img>
                                                <iaixsl:attribute name="src">/data/include/cms/b2b4kom/B2B-IKONY-SVG/new.svg</iaixsl:attribute>
                                            </img>
										</span>
									</iaixsl:if>
									<iaixsl:choose>
										<iaixsl:when test="/shop/page/projector/product/@promotion and /shop/page/projector/product/@new">
										</iaixsl:when>
										<iaixsl:when test="/shop/page/projector/product/@promotion or /shop/page/projector/product/@new">
											<iaixsl:choose>
												<iaixsl:when test="/shop/page/projector/product/@bestseller">
													<span class="label --bestseller">
                                                        <img>
                                                            <iaixsl:attribute name="src">/data/include/cms/b2b4kom/B2B-IKONY-SVG/best.svg</iaixsl:attribute>
                                                        </img>
													</span>
												</iaixsl:when>
												<iaixsl:when test="/shop/page/projector/product/@discount">
													<span class="label --discount">
                                                        <img>
                                                            <iaixsl:attribute name="src">/data/include/cms/b2b4kom/B2B-IKONY-SVG/sale.svg</iaixsl:attribute>
                                                        </img>
													</span>
												</iaixsl:when>
												<iaixsl:when test="/shop/page/projector/product/@distinguished">
													<span class="label --distinguished">
														Polecany
													</span>
												</iaixsl:when>
											</iaixsl:choose>
										</iaixsl:when>
										<iaixsl:otherwise>
											<iaixsl:if test="/shop/page/projector/product/@bestseller">
												<span class="label --bestseller">
                                                        <img>
                                                            <iaixsl:attribute name="src">/data/include/cms/b2b4kom/B2B-IKONY-SVG/best.svg</iaixsl:attribute>
                                                        </img>
												</span>
											</iaixsl:if>
											<iaixsl:if test="/shop/page/projector/product/@discount">
												<span class="label --discount">
                                                        <img>
                                                            <iaixsl:attribute name="src">/data/include/cms/b2b4kom/B2B-IKONY-SVG/sale.svg</iaixsl:attribute>
                                                        </img>
												</span>
											</iaixsl:if>
											<iaixsl:if test="/shop/page/projector/product/@distinguished and not(/shop/page/projector/product/@bestseller and /shop/page/projector/product/@discount)">
												<span class="label --distinguished">
													Polecany
												</span>
											</iaixsl:if>
										</iaixsl:otherwise>
									</iaixsl:choose>
								</strong>
							</iaixsl:if>
						</div>
					</iaixsl:when>
					<iaixsl:otherwise>
						<div id="photos_default" class="photos__default d-flex justify-content-center">
							<figure class="photos__default_figure">
								<img class="photos__default_img">
									<iaixsl:attribute name="src"><iaixsl:value-of select="/shop/page/projector/product/icon"/></iaixsl:attribute>
									<iaixsl:attribute name="alt"><iaixsl:value-of disable-output-escaping="yes" select="/shop/page/projector/product/name"/></iaixsl:attribute>
								</img>
							</figure>
						</div>
					</iaixsl:otherwise>
				</iaixsl:choose>
			</section>

			
			<div class="pswp" tabindex="-1" role="dialog" aria-hidden="true">
				<div class="pswp__bg"/>
				<div class="pswp__scroll-wrap">
					<div class="pswp__container">
						<div class="pswp__item"/>
						<div class="pswp__item"/>
						<div class="pswp__item"/>
					</div>
					<div class="pswp__ui pswp__ui--hidden">
						<div class="pswp__top-bar">
							<div class="pswp__counter"/>
							<button class="pswp__button pswp__button--close" title="Close (Esc)"/>
							<button class="pswp__button pswp__button--share" title="Share"/>
							<button class="pswp__button pswp__button--fs" title="Toggle fullscreen"/>
							<button class="pswp__button pswp__button--zoom" title="Zoom in/out"/>

							<div class="pswp__preloader">
								<div class="pswp__preloader__icn">
								<div class="pswp__preloader__cut">
									<div class="pswp__preloader__donut"/>
								</div>
								</div>
							</div>
						</div>
						<div class="pswp__share-modal pswp__share-modal--hidden pswp__single-tap">
							<div class="pswp__share-tooltip"/>
						</div>

						<button class="pswp__button pswp__button--arrow--left" title="Previous (arrow left)">
						</button>

						<button class="pswp__button pswp__button--arrow--right" title="Next (arrow right)">
						</button>

						<div class="pswp__caption">
							<div class="pswp__caption__center"/>
						</div>
					</div>
				</div>
			</div>
		<!--Dokładne dane o produkcie (projector_details, 113285.1)-->

            
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
            <iaixsl:variable name="advanceprice_txt">Przed realizacją zamówienia z tym produktem, może być konieczne opłacenie zaliczki w kwocie </iaixsl:variable>
            <iaixsl:variable name="suma_cen_txt"></iaixsl:variable>
            <iaixsl:variable name="wysylka_bundle_txt">Wysyłka zaznaczonych &lt;span class="bundle_item_count"&gt;&lt;/span&gt; produktów:</iaixsl:variable>
            <iaixsl:variable name="cena_bundle_txt">Cena wybranych produktów:</iaixsl:variable>
            <iaixsl:variable name="brutto_bundle_txt"> wybranych produktów brutto </iaixsl:variable>
            <iaixsl:variable name="taniej_bundle_txt">Kupując &lt;span class="bundle_item_count"&gt;&lt;/span&gt; produkty jako kolekcję zaoszczędzasz </iaixsl:variable>
            <iaixsl:variable name="projector_form_privacy_info_text1">Dane są przetwarzane zgodnie z </iaixsl:variable>
            <iaixsl:variable name="projector_form_privacy_info_text2">. Przesyłając je, akceptujesz jej postanowienia. </iaixsl:variable>
            <iaixsl:variable name="dokoszyka_bundle_txt">Do koszyka:</iaixsl:variable>
            <iaixsl:variable name="dokoszykabu_bundle_txt">Dodaj wybrane produkty do koszyka</iaixsl:variable>

            
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
                     col-12 col-md-6 col-lg-5 mb-2 mb-md-4 
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

                
                <div id="projector_details" class="product_info">
                    <iaixsl:if test="page/projector/product/traits/trait[not(contains(@groupdescription, 'gs1:'))] and not($param_projector)">
                        <div class="product_info_top">
                            
                            <iaixsl:for-each select="page/projector/product/traits/trait">
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
                            </iaixsl:for-each>
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
                                                    Wybierz ...
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
                                                            <p class="conflict_txt">Wybór tej pozycji spowoduje konieczność dostosowania innych opcji. </p>
                                                        </span>
                                                    </a>
                                                </li>
                                            </iaixsl:for-each>
                                        </ul>
                                        <p class="conflict_txt">Wybierz inną opcję</p>
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

                    
             

                    
                    <div class="product_section sizes mb-sm-0" id="projector_sizes_cont">
                        <iaixsl:if test="/shop/page/projector/product/sizes/size/@type = 'onesize' or /shop/page/projector/product/sizes/size/@type = 'uniw'">
                            <iaixsl:attribute name="style">display:none;</iaixsl:attribute>
                        </iaixsl:if>
                        <iaixsl:if test="((page/projector/text_sizesgroup) and (page/projector/text_sizesgroup != '')) or /shop/page/projector/product/sizes_chart">
                            <iaixsl:attribute name="data-show_size">true</iaixsl:attribute>
                        </iaixsl:if>
                    <div class="sizes__sub row mx-0">
                        <iaixsl:choose>
                            <iaixsl:when test="(count(/shop/page/projector/product/sizes/size) > 6) and (not($sizes_projector = '0') or not($fashion_view = '0'))">
                                    <iaixsl:attribute name="class">sizes__sub row select</iaixsl:attribute>
                                <select name="projector_sizes" id="projector_sizes_select" class="col py-1">
                                    <option value="">Wybierz rozmiar</option>
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
                                    <div class="col-3 p-1">
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
                    </div>

                    <iaixsl:if test="((page/projector/text_sizesgroup) and (page/projector/text_sizesgroup != '')) or /shop/page/projector/product/sizes_chart">
                        <div class="product_section show_size" id="projector_show_size">
                            <a href="#show_size_cms" class="show_size_cms btn --icon-left --medium icon-pencil-and-ruler">Sprawdź jaki rozmiar wybrać.</a>
                        </div>
                    </iaixsl:if>

                  

                    <iaixsl:choose>
                        <iaixsl:when test="/shop/basket/@wholesaler = 'true' or /shop/page/projector/product/price/@value != 0">
                            

                            <section id="projector_productname" class="product_name d-flex mb-2 mb-sm-4 justify-content-between col-12">
                                <div class="product_name__wrapper pr-md-2">
                                    
                                    <h1 class="product_name__name m-0">
                                        <iaixsl:value-of disable-output-escaping="yes" select="/shop/page/projector/product/name"/>
                                    </h1>

                                    <iaixsl:if test="/shop/basket/@login != ''">

                                    <div id="projector_prices_wrapper">
                                        
                                        <div class="product_section" id="projector_price_srp_wrapper">
                                            <iaixsl:if test="not(page/projector/product/price/@srp_net) and not(/shop/page/projector/product/sizes/size[@selected='true']/price/@srp_net_formatted)">
                                                <iaixsl:attribute name="style">display:none;</iaixsl:attribute>
                                            </iaixsl:if>
                                            <label class="projector_label">Cena katalogowa:</label>
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
                                                        Nasza cena:
                                                    </iaixsl:otherwise>
                                                </iaixsl:choose>
                                            </label>
                                            <div class="projector_price_subwrapper">
                                                   <iaixsl:if test="not(page/projector/product/price/@maxprice_net_formatted) and not(/shop/page/projector/product/sizes/size[@selected='true']/price/@maxprice_net_formatted)">
                                                        <iaixsl:attribute name="class">projector_price_subwrapper no-discount</iaixsl:attribute>
                                                    </iaixsl:if>
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
                                                            <a href="wholesaler.php" target="_blank">
                                                                <iaixsl:attribute name="title">Kliknij, by przejść do formularza kontaktu</iaixsl:attribute>
                                                                Cena na telefon
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
                                                                <span>
                                                                    <iaixsl:value-of select="page/projector/product/price/@price_net_formatted"/>
                                                                </span>
                                                                <span>
                                                                    netto
                                                                </span>
                                                                </iaixsl:otherwise>
                                                            </iaixsl:choose>
                                                        </strong>
                                                        <iaixsl:if test="(page/projector/product/sizes/@unit_sellby != '1') and (page/projector/product/sizes/size > 1)">
                                                            <script class="ajaxLoad">
                                                                $('#projector_price_value').html(format_price("<iaixsl:value-of select="/shop/page/projector/product/sizes/prices/@minprice * page/projector/product/sizes/@unit_sellby"/>",{mask: app_shop.vars.currency_format,currency: "<iaixsl:value-of select="/shop/currency/@name"/>",currency_space: app_shop.vars.currency_space,currency_before_price: app_shop.vars.currency_before_value})+' - '+format_price("<iaixsl:value-of select="/shop/page/projector/product/sizes/prices/@maxprice * page/projector/product/sizes/@unit_sellby"/>",{mask: app_shop.vars.currency_format,currency: "<iaixsl:value-of select="/shop/currency/@name"/>",currency_space: app_shop.vars.currency_space,currency_before_price: app_shop.vars.currency_before_value}));
                                                            </script>
                                                        </iaixsl:if>

                                                        <!-- <div class="price_gross_info">
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
                                                                    <iaixsl:choose>
                                                                        <iaixsl:when test="/shop/page/projector/bundled/@collection = 'true' and $brutto_bundle_txt">
                                                                            <iaixsl:value-of disable-output-escaping="yes" select="$brutto_bundle_txt"/>
                                                                        </iaixsl:when>
                                                                        <iaixsl:otherwise>
                                                                            netto
                                                                        </iaixsl:otherwise>
                                                                    </iaixsl:choose>
                                                                </iaixsl:if>
                                                            </span>
                                                        </div> -->
                                                    </iaixsl:otherwise>
                                                </iaixsl:choose>

                                                
                                                <iaixsl:if test="page/projector/product/sizes/size[1]/price/rebateNumber">
                                                    <div class="rebate_number pt-3" id="projector_rebateNumber">
                                                        <iaixsl:for-each select="page/projector/product/sizes/size[1]/price/rebateNumber/rebate">
                                                            <div class="rebate_number__item">
                                                                <span class="rebate_number__literal --first">Kup </span>
                                                                <span class="rebate_number__from"><iaixsl:choose><iaixsl:when test="contains(@threshold, '.00')"><iaixsl:value-of select="format-number(@threshold, '#')"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="@threshold"/></iaixsl:otherwise></iaixsl:choose></span>
                                                                <span class="rebate_number__literal --second">&#160;</span>
                                                                <span class="rebate_number__unit"><iaixsl:value-of select="/shop/page/projector/product/sizes/@unit"/></span>
                                                                <iaixsl:if test="$thresholdEnd_enable and not(@threshold = @threshold_end)">
                                                                    <span class="rebate_number__literal --third"> do </span>
                                                                    <span class="rebate_number__to"><iaixsl:value-of select="format-number(@threshold_end, '#')"/></span>
                                                                    <span class="rebate_number__literal --fourth">&#160;</span>
                                                                    <span class="rebate_number__unit"><iaixsl:value-of select="/shop/page/projector/product/sizes/@unit"/></span>
                                                                </iaixsl:if>
                                                                <span class="rebate_number__literal --fifth">, oszczędź </span>
                                                                <span class="rebate_number__percent"><iaixsl:choose><iaixsl:when test="contains(@value, '.00')"><iaixsl:value-of select="format-number(@value, '#')"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="@value"/></iaixsl:otherwise></iaixsl:choose></span>
                                                                <span class="rebate_number__literal --sixth">%<span class="rebate_number__literal --eighth"> - </span></span>
                                                                <span class="rebate_number__price"><iaixsl:value-of select="@price_net_formatted"/></span>
                                                                <span class="rebate_number__literal --seventh"> / </span>
                                                                <span class="rebate_number__unit"><iaixsl:value-of select="/shop/page/projector/product/sizes/@unit"/></span>
                                                            </div>
                                                        </iaixsl:for-each>
                                                    </div>
                                                </iaixsl:if>

                                                <div class="instalment_yousave">
                                                <span id="projector_instalment_wrapper"/>

                                                <iaixsl:choose>
                                                    <iaixsl:when test="/shop/page/projector/product/bundle_price/@amount_diff_gross and /shop/page/projector/bundled/@collection = 'true' and $taniej_bundle_txt">
                                                        <span class="projector_price_yousave" id="projector_price_yousave_bundle">
                                                            <iaixsl:if test="/shop/page/projector/product/bundle_price/@amount_diff_gross = '0.00'">
                                                                <iaixsl:attribute name="style">display:none;</iaixsl:attribute>
                                                            </iaixsl:if>
                                                            <iaixsl:value-of disable-output-escaping="yes" select="$taniej_bundle_txt"/><span class="percent_diff"><iaixsl:value-of select="/shop/page/projector/product/bundle_price/@percent_diff"/></span>%<span class="rebate_number__literal --eighth"> - </span>
                                                            (<span class="amount_diff_gross"><iaixsl:value-of select="/shop/page/projector/product/bundle_price/@amount_diff_gross_formatted"/></span>)
                                                        </span>
                                                    </iaixsl:when>
                                                    <iaixsl:otherwise>
                                                        <span class="projector_price_yousave" id="projector_price_yousave">
                                                            <iaixsl:choose>
                                                                <iaixsl:when test="/shop/page/projector/product/bundle_price/@amount_diff_gross">
                                                                    <span class="projector_price_save_text">
                                                                        Oszczędzasz 
                                                                    </span>
                                                                    <span class="projector_price_save_percent">
                                                                        <iaixsl:value-of select="/shop/page/projector/product/bundle_price/@percent_diff"/>% 
                                                                    </span>
                                                                    <span class="projector_price_save_value">
                                                                        (<span class="projector_price"><iaixsl:value-of select="/shop/page/projector/product/bundle_price/@amount_diff_gross"/><span class="projector_currency"><iaixsl:value-of select="/shop/currency/@name"/></span></span>), kupując w zestawie. 
                                                                    </span>
                                                                </iaixsl:when>
                                                                <iaixsl:when test="/shop/page/projector/product/sizes/size[@selected='true']/price/@yousave_percent">
                                                                    <span class="projector_price_save_text">
                                                                        Oszczędzasz 
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
                                                                        Oszczędzasz 
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
                                                <label class="projector_label">Cena zasadnicza:</label>
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
                                                <label class="projector_label">Sprzedawane po:</label>
                                                <span>
                                                    <iaixsl:value-of select="page/projector/product/sizes/@unit_sellby"/>&#160;<iaixsl:value-of select="page/projector/product/sizes/@unit"/>
                                                    <span id="projector_sellbyprice_wrapper" style="display:none;"> ( <span id="projector_sellbyprice"><iaixsl:value-of select="/shop/page/projector/product/price/@price_net_formatted"/></span> / 1<iaixsl:value-of select="page/projector/product/sizes/@unit"/> )</span>
                                                </span>
                                            </div>
                                        </iaixsl:if>

                                        <iaixsl:if test="$advanceprice_txt and page/projector/product/price/@advanceprice_formatted">
                                            <div id="projector_advanceprice_wrapper">
                                                <iaixsl:value-of disable-output-escaping="yes" select="$advanceprice_txt"/><b id="projector_advanceprice"><iaixsl:value-of select="page/projector/product/price/@advanceprice_formatted"/></b>. Dokładne informacje zostaną podane w podsumowaniu zamówienia, przed jego złożeniem.
                                            </div>
                                        </iaixsl:if>
                                    </div>
                                    
                                    </iaixsl:if>

                                    
                                    <iaixsl:if test="page/projector/product/description and page/projector/product/description != ''">
                                        <div class="product_name__description d-none d-sm-block ">
                                            <iaixsl:value-of disable-output-escaping="yes" select="page/projector/product/description/text()"/>
                                        </div>
                                    </iaixsl:if>
                                </div>

                                





                                <!-- <iaixsl:if test="/shop/page/projector/product/firm/@icon and not(/shop/page/projector/product/firm/@icon = '')">
                                    <div class="product_name__firm_logo d-none d-md-flex justify-content-end align-items-center">
                                        <a class="firm_logo">
                                            <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/page/projector/product/firm/@productslink"/></iaixsl:attribute>

                                            <img>
                                                <iaixsl:attribute name="src"><iaixsl:value-of select="/shop/page/projector/product/firm/@icon"/></iaixsl:attribute>
                                                <iaixsl:attribute name="title"><iaixsl:value-of select="/shop/page/projector/product/firm/@name"/></iaixsl:attribute>
                                                <iaixsl:attribute name="alt"><iaixsl:value-of select="/shop/page/projector/product/firm/@name"/></iaixsl:attribute>
                                            </img>
                                        </a>
                                    </div>
                                </iaixsl:if> -->
                            </section>


























                <!--!  -->
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
                                <div class="product_section versions row mx-n1">
                                    <iaixsl:for-each select="page/projector/product/versions/version">
                                        <div class="col-4 col-md-2 p-1 select_link">
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
                <!--!  -->





                    

                            
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
                                    Powiadomienie:
                                </label>
                                <div class="product_section_sub">
                                    <div class="form-group">
                                        <div class="input-group has-feedback has-required">
                                            <div class="input-group-addon"><i class="icon-envelope-alt"/></div>
                                            <input type="text" class="form-control validate" name="email" data-validation-url="/ajax/client-new.php?validAjax=true" data-validation="client_email" required="required" disabled="disabled">
                                                <iaixsl:attribute name="placeholder">Twój adres e-mail</iaixsl:attribute>
                                            </input>
                                            <span class="form-control-feedback"/>
                                        </div>
                                    </div>
                                    <div class="checkbox" style="display:none;" id="sms_active_checkbox">
                                        <label>
                                            <input type="checkbox"/>Chcę dodatkowo otrzymać wiadomość SMS z powiadomieniem 
                                        </label>
                                    </div>
                                    <div class="form-group" style="display:none;" id="sms_active_group">
                                        <div class="input-group has-feedback has-required">
                                            <div class="input-group-addon"><i class="icon-phone"/></div>
                                            <input type="text" class="form-control validate" name="phone" data-validation-url="/ajax/client-new.php?validAjax=true" data-validation="client_phone" required="required" disabled="disabled">
                                                <iaixsl:attribute name="placeholder">Twój numer telefonu</iaixsl:attribute>
                                            </input>
                                            <span class="form-control-feedback"/>
                                        </div>
                                    </div>

                                    <iaixsl:if test="$projector_form_privacy_info_text1">
                                        <p class="form-privacy-info"><iaixsl:value-of select="$projector_form_privacy_info_text1"/><a><iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/private_policy/@url"/></iaixsl:attribute>polityką prywatności</a><iaixsl:value-of select="$projector_form_privacy_info_text2"/></p>
                                    </iaixsl:if>

                                    <div class="form-group">
                                        <button type="submit" class="btn --solid --large">
                                            Powiadom o dostępności
                                        </button>
                                    </div>
                                    <div class="form-group">
                                        <p> Powyższe dane nie są używane do przesyłania newsletterów lub innych reklam. Włączając powiadomienie zgadzasz się jedynie na wysłanie jednorazowo informacji o ponownej dostępności tego produktu. </p>
                                    </div>
                                </div>
                            </div>

            <iaixsl:if test="/shop/basket/@login != ''">
                            
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
                                            Ilość: 
                                        </iaixsl:otherwise>
                                    </iaixsl:choose>
                                </label>
                                <div class="projector_buttons" id="projector_buttons">
                                    <iaixsl:if test="not(/shop/page/projector/product/@product_type = 'product_virtual')">
                                        <div class="projector_number" id="projector_number_cont">
                                          
                                            <input class="projector_number" name="number" id="projector_number">
                                                <iaixsl:attribute name="value"><iaixsl:value-of select="/shop/page/projector/product/sizes/@unit_sellby"/></iaixsl:attribute>
                                                <iaixsl:if test="page/projector/product/exchange/@exchange_id">
                                                    <iaixsl:attribute name="disabled">disabled</iaixsl:attribute>
                                                </iaixsl:if>
                                            </input>
                                            <div class="buttons-projector-input">
                                                <iaixsl:if test="not(page/projector/product/exchange/@exchange_id)">
                                                    <button id="projector_number_up" class="projector_number_up" type="button">
                                                        <i class="icon-chevron-up"></i>
                                                    </button>
                                                </iaixsl:if>
                                                <iaixsl:if test="not(page/projector/product/exchange/@exchange_id)">
                                            
                                                    <button id="projector_number_down" class="projector_number_down" type="button">
                                                        <i class="icon-chevron-down"></i>
                                                    </button>
                                                </iaixsl:if>
                                             </div>
                                        </div>
                                    </iaixsl:if>

                                    <button class="btn --solid --large projector_butttons_buy" id="projector_button_basket" type="submit">
                                        
                                        <iaixsl:attribute name="title">Dodaj produkt do koszyka</iaixsl:attribute>
                                        <iaixsl:choose>
                                            <iaixsl:when test="page/projector/product/exchange/@exchange_id">
                                                Wymień produkt
                                            </iaixsl:when>
                                            <iaixsl:when test="/shop/page/projector/bundled/@collection = 'true' and $dokoszykabu_bundle_txt">
                                                <iaixsl:value-of disable-output-escaping="yes" select="$dokoszykabu_bundle_txt"/>
                                            </iaixsl:when>
                                            <iaixsl:otherwise>
                                            <i class="icon-shopping-cart"></i>
                                                Dodaj do koszyka
                                            </iaixsl:otherwise>
                                        </iaixsl:choose>
                                    </button>

                                    <a href="#add_favorite" class="projector_buttons_obs" id="projector_button_observe">
                                    
                                        <iaixsl:attribute name="title">Dodaj do listy zakupów</iaixsl:attribute>
                                        <i class="icon-heart"></i>
                                        Dodaj do listy zakupów
                                    </a>
                                    <iaixsl:if test="/shop/compare/@active = 'y'">
                                        <a class="projector_prodstock_compare">
                                            <iaixsl:attribute name="href">settings.php?comparers=add&amp;product=<iaixsl:value-of select="page/projector/product/@id"/></iaixsl:attribute>
                                            <iaixsl:if test="/shop/action/settings/@url">
                                                <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/settings/@url"/>?comparers=add&amp;product=<iaixsl:value-of select="page/projector/product/@id"/></iaixsl:attribute>
                                            </iaixsl:if>
                                            <iaixsl:attribute name="title">Dodaj do porównania</iaixsl:attribute>
                                            Dodaj do porównania
                                        </a>
                                    </iaixsl:if>
                                </div>
                            </div>
            </iaixsl:if>
                        <div class="projector_product_status_wrapper pt-2">
                        <iaixsl:if test="not(/shop/page/projector/product/sizes/size[@selected='true'])"><iaixsl:attribute name="style">display:none</iaixsl:attribute></iaixsl:if>
                        
                        <div id="projector_status_description_wrapper">
                            <iaixsl:if test="not(/shop/page/projector/product/sizes/size[@selected='true'])"><iaixsl:attribute name="style">display:none</iaixsl:attribute></iaixsl:if>
                            <label>
                                Dostępność:
                            </label>
                            <div>
                                
                                     <img  class="projector-desc-img mr-2" alt="status_icon">
                                        <iaixsl:attribute name="src">
                                        <iaixsl:choose>
                                        <iaixsl:when test="/shop/page/projector/product/sizes/size/availability/@status = 'enable'">/data/include/cms/b2b4kom/B2B-IKONY-SVG/dostepnosc_tak.svg</iaixsl:when>
                                        <iaixsl:otherwise>/data/include/cms/b2b4kom/B2B-IKONY-SVG/dostepnosc_nie.svg</iaixsl:otherwise>
                                        </iaixsl:choose>
                                   
                                        </iaixsl:attribute>
                                        </img> 
				         <strong class="projector_status_gfx_wrapper">
                                    Dostępność: 
    				  </strong>
                              
                                
                                <iaixsl:if test="$amount_txt and not(/shop/page/projector/product/@product_type = 'product_bundle')">
                                    <span class="projector_amount d-flex" id="projector_amount">
                                        <!-- <iaixsl:if test="/shop/page/projector/product/sizes/size[@selected='true']">
                                        <iaixsl:attribute name="style">
                                        display:none
                                        </iaixsl:attribute></iaixsl:if> -->
                                        <iaixsl:if test="/shop/page/projector/product/sizes/size/availability/@status_gfx">
                                        <!-- <img id="projector_status_gfx" class="projector_status_gfx" alt="status_icon">
                                        <iaixsl:attribute name="src"><iaixsl:choose><iaixsl:when test="/shop/page/projector/product/sizes/size[@selected='true']/availability/@status_gfx"><iaixsl:value-of select="/shop/page/projector/product/sizes/size[@selected='true']/availability/@status_gfx"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="/shop/page/projector/product/sizes/size/availability/@status_gfx"/></iaixsl:otherwise></iaixsl:choose></iaixsl:attribute>
                                        </img>  -->
                                        </iaixsl:if>
                                        <span>
                                            <iaixsl:choose>
                                                <iaixsl:when test="$fashion_view and not($fashion_view = '0')">
                                                dostępny (
                                                    <iaixsl:value-of disable-output-escaping="yes" select="$amount_txt2"/>
                                                )
                                                </iaixsl:when>
                                                <iaixsl:otherwise>
                                                    <iaixsl:value-of disable-output-escaping="yes" select="$amount_txt"/>
                                                </iaixsl:otherwise>
                                            </iaixsl:choose>
                                        </span>
                                        <iaixsl:if test="$fashion_view and not($fashion_view = '0')">
                                             w magazynie
                                        </iaixsl:if>
                                    </span>
                                </iaixsl:if>
                                
          
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
                                        Skontaktuj się z obsługą sklepu,
                                    </a>
                                    aby oszacować czas przygotowania tego produktu do wysyłki.
                                </span>
                            </div>
                        </iaixsl:if>

                        
                        <iaixsl:if test="not(/shop/page/projector/product/@product_type = 'product_service')">
                            <div id="projector_shipping_info">
                                <iaixsl:if test="not(/shop/page/projector/product/sizes/size[@selected='true'])"><iaixsl:attribute name="style">display:none</iaixsl:attribute></iaixsl:if>
                                <div>
                                    <img src="/data/include/cms/b2b4kom/B2B-IKONY-SVG/wysylka.svg" alt="" class="mr-2 projector-desc-img"/>
                                    <strong>
                                        <iaixsl:choose>
                                            <iaixsl:when test="/shop/page/projector/bundled/@collection = 'true' and $wysylka_bundle_txt">
                                                <iaixsl:value-of disable-output-escaping="yes" select="$wysylka_bundle_txt"/>
                                            </iaixsl:when>
                                            <iaixsl:otherwise>
                                                Wysyłka: 
                                            </iaixsl:otherwise>
                                        </iaixsl:choose>
                                    </strong>
                              
                                    <span class="projector_delivery_days" id="projector_delivery_days">
                                        <iaixsl:choose>
                                            <iaixsl:when test="/shop/page/projector/product/sizes/size[@selected='true']">
                                                <iaixsl:choose>
                                                    <iaixsl:when test="(/shop/page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@week_amount = 0) and (/shop/page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@hours = 0) and (/shop/page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@minutes = 0)">
                                                        <iaixsl:choose>
                                                            <iaixsl:when test="/shop/page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@today = 'true'">
                                                                 dzisiaj
                                                            </iaixsl:when>
                                                            <iaixsl:when test="/shop/page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@week_day = 1">
                                                                 w poniedziałek 
                                                            </iaixsl:when>
                                                            <iaixsl:when test="/shop/page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@week_day = 2">
                                                                 we wtorek 
                                                            </iaixsl:when>
                                                            <iaixsl:when test="/shop/page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@week_day = 3">
                                                                 w środę 
                                                            </iaixsl:when>
                                                            <iaixsl:when test="/shop/page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@week_day = 4">
                                                                 w czwartek 
                                                            </iaixsl:when>
                                                            <iaixsl:when test="/shop/page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@week_day = 5">
                                                                 w piątek 
                                                            </iaixsl:when>
                                                            <iaixsl:when test="/shop/page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@week_day = 6">
                                                                 w sobotę 
                                                            </iaixsl:when>
                                                            <iaixsl:when test="/shop/page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@week_day = 7">
                                                                 w niedzielę 
                                                            </iaixsl:when>
                                                        </iaixsl:choose>
                                                    </iaixsl:when>
                                                    <iaixsl:when test="page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@days">
                                                         w ciągu 
                                                        <iaixsl:if test="page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@days > 0">
                                                            <iaixsl:value-of select="page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@days"/>
                                                            <iaixsl:choose>
                                                            <iaixsl:when test="page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@days ='1'">
                                                                     dzień 
                                                                </iaixsl:when>
                                                                <iaixsl:otherwise>
                                                                     dni  
                                                                </iaixsl:otherwise>
                                                            </iaixsl:choose>
                                                        </iaixsl:if>
                                                        <iaixsl:if test="page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@hours > 0">
                                                            <iaixsl:value-of select="page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@hours"/>
                                                             godz. 
                                                        </iaixsl:if>
                                                        <iaixsl:if test="page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@minutes > 0">
                                                            <iaixsl:value-of select="page/projector/product/sizes/size[@selected='true']/availability/shipping_time/@minutes"/>
                                                             min. 
                                                        </iaixsl:if>
                                                    </iaixsl:when>
                                                </iaixsl:choose>
                                            </iaixsl:when>
                                            <iaixsl:otherwise>
                                                <iaixsl:choose>
                                                    <iaixsl:when test="(/shop/page/projector/product/sizes/size/availability/shipping_time/@week_amount = 0) and (/shop/page/projector/product/sizes/size/availability/shipping_time/@hours = 0) and (/shop/page/projector/product/sizes/size/availability/shipping_time/@minutes = 0)">
                                                        <iaixsl:choose>
                                                            <iaixsl:when test="/shop/page/projector/product/sizes/size/availability/shipping_time/@today = 'true'">
                                                                 dzisiaj
                                                            </iaixsl:when>
                                                            <iaixsl:when test="/shop/page/projector/product/sizes/size/availability/shipping_time/@week_day = 1">
                                                                 w poniedziałek 
                                                            </iaixsl:when>
                                                            <iaixsl:when test="/shop/page/projector/product/sizes/size/availability/shipping_time/@week_day = 2">
                                                                 we wtorek 
                                                            </iaixsl:when>
                                                            <iaixsl:when test="/shop/page/projector/product/sizes/size/availability/shipping_time/@week_day = 3">
                                                                 w środę 
                                                            </iaixsl:when>
                                                            <iaixsl:when test="/shop/page/projector/product/sizes/size/availability/shipping_time/@week_day = 4">
                                                                 w czwartek 
                                                            </iaixsl:when>
                                                            <iaixsl:when test="/shop/page/projector/product/sizes/size/availability/shipping_time/@week_day = 5">
                                                                 w piątek 
                                                            </iaixsl:when>
                                                            <iaixsl:when test="/shop/page/projector/product/sizes/size/availability/shipping_time/@week_day = 6">
                                                                 w sobotę 
                                                            </iaixsl:when>
                                                            <iaixsl:when test="/shop/page/projector/product/sizes/size/availability/shipping_time/@week_day = 7">
                                                                 w niedzielę 
                                                            </iaixsl:when>
                                                        </iaixsl:choose>
                                                    </iaixsl:when>
                                                    <iaixsl:when test="page/projector/product/sizes/size/availability/shipping_time/@days">
                                                         w ciągu 
                                                        <iaixsl:if test="page/projector/product/sizes/size/availability/shipping_time/@days > 0">
                                                            <iaixsl:value-of select="page/projector/product/sizes/size/availability/shipping_time/@days"/>
                                                            <iaixsl:choose>
                                                                <iaixsl:when test="page/projector/product/sizes/size/availability/shipping_time/@days ='1'">
                                                                     dzień 
                                                                </iaixsl:when>
                                                                <iaixsl:otherwise>
                                                                     dni  
                                                                </iaixsl:otherwise>
                                                            </iaixsl:choose>
                                                        </iaixsl:if>
                                                        <iaixsl:if test="page/projector/product/sizes/size/availability/shipping_time/@hours > 0">
                                                            <iaixsl:value-of select="page/projector/product/sizes/size/availability/shipping_time/@hours"/>
                                                             godz. 
                                                        </iaixsl:if>
                                                        <iaixsl:if test="page/projector/product/sizes/size/availability/shipping_time/@minutes > 0">
                                                            <iaixsl:value-of select="page/projector/product/sizes/size/availability/shipping_time/@minutes"/>
                                                             min. 
                                                        </iaixsl:if>
                                                    </iaixsl:when>
                                                </iaixsl:choose>
                                            </iaixsl:otherwise>
                                        </iaixsl:choose>
                                    </span>
                                </div>
                                <div class="shipping-custom-info">
                                <img src="/data/include/cms/b2b4kom/B2B-IKONY-SVG/koszt_wysylki.svg" alt="" class="mr-2 projector-desc-img"/>
                                <strong>
                                
                                Koszt wysyłki: </strong>
                                <a class="shipping_info" href="#shipping_info">
                                    <iaixsl:attribute name="title">Sprawdź czasy i koszty wysyłki</iaixsl:attribute>
                                    sprawdź
                                </a>
                                </div>
                            </div>
                        </iaixsl:if>
                    </div>


            <iaixsl:if test="page/projector/product/warranty and not(page/projector/product/warranty= '')">
            

                    
                    <div class="pb-2 shipping-info-projector">
                        <img src="/data/include/cms/b2b4kom/B2B-IKONY-SVG/darmowa_dostawa.svg" alt="" class="mr-2 projector-desc-img"/>
                        <strong>Darmowa wysyłka </strong>
                        <p> od kwoty 500zł</p>

                    </div>
                <section id="projector_warranty" class="warranty mb-5 col-12 d-none">
                    <iaixsl:attribute name="data-type"><iaixsl:value-of select="page/projector/product/warranty/@type"/></iaixsl:attribute>
                    <iaixsl:attribute name="data-period"><iaixsl:value-of select="page/projector/product/warranty/@period"/></iaixsl:attribute>

                    
             
                    
                    <iaixsl:if test="page/projector/product/warranty/@gfx">
                        <div class="warranty__img_wrapper mb-3">
                            <img class="warranty__img">
                                <iaixsl:attribute name="src"><iaixsl:value-of select="page/projector/product/warranty/@gfx"/></iaixsl:attribute>
                                <iaixsl:attribute name="alt"><iaixsl:value-of select="page/projector/product/warranty/@name"/></iaixsl:attribute>
                            </img>
                        </div>
                    </iaixsl:if>

                    
                    <div class="warranty__description col-12 col-md-7 mx-auto"><iaixsl:value-of disable-output-escaping="yes" select="page/projector/product/warranty/text()"/></div>
                </section>
            </iaixsl:if>

                            
                            <iaixsl:if test="$points_in_prices_section">
                                <div id="projector_points_wrapper" class="points_price_section">
                                    <iaixsl:if test="not(/shop/page/projector/product/@for_points='true' or page/projector/product/price/@points > 0 )"><iaixsl:attribute name="style">display:none;</iaixsl:attribute></iaixsl:if>
                                    <div class="product_points_wrapper">
                                        <iaixsl:if test="page/projector/product/price/@points">
                                            <div class="product_points_section">
                                                <label class="projector_label">
                                                    Cena w punktach: 
                                                </label>
                                                <span class="point_price" id="projector_price_points">
                                                    <iaixsl:value-of select="page/projector/product/price/@points"/><span class="projector_currency"> pkt.</span></span>
                                            </div>
                                        </iaixsl:if>
                                        <iaixsl:if test="page/projector/product/price/@points_recive">
                                            <div class="product_points_section">
                                                <iaixsl:if test="not(page/projector/product/price/@points_recive and page/projector/product/price/@points_recive > 0)">
                                                    <iaixsl:attribute name="style">display:none;</iaixsl:attribute>
                                                </iaixsl:if>
                                                <label class="projector_label">
                                                    Po zakupie otrzymasz: 
                                                </label>
                                                <span class="point_price" id="projector_points_recive_points">
                                                    <iaixsl:value-of select="page/projector/product/price/@points_recive"/><span class="projector_currency"> pkt.</span>
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
                                                Kup za punkty
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
                                                    Cena w punktach: 
                                                </label>
                                                <span class="projector_price_points" id="projector_price_points">
                                                    <iaixsl:value-of select="page/projector/product/price/@points"/><span class="projector_currency"> pkt.</span>                                   </span>
                                            </div>
                                            <div class="projector_price_points_recive_wrapper" id="projector_price_points_recive_wrapper">
                                                <iaixsl:if test="not(page/projector/product/price/@points_recive and page/projector/product/price/@points_recive > 0)">
                                                    <iaixsl:attribute name="style">display:none;</iaixsl:attribute>
                                                </iaixsl:if>
                                                <label class="projector_label">
                                                    Po zakupie otrzymasz: 
                                                </label>
                                                <span class="projector_points_recive_points" id="projector_points_recive_points">
                                                    <iaixsl:value-of select="page/projector/product/price/@points_recive"/><span class="projector_currency"> pkt.</span>
                                                </span>
                                            </div>
                                        </div>

                                        <button id="projector_button_points_basket" type="submit" name="forpoints" value="1" class="btn --solid">
                                            <iaixsl:if test="not(/shop/page/projector/product/@for_points='true')">
                                                <iaixsl:attribute name="style">display:none;</iaixsl:attribute>
                                            </iaixsl:if>
                                            Kup za punkty
                                        </button>
                                    </div>
                                </div>
                            </iaixsl:if>
                        </iaixsl:when>
                        <iaixsl:otherwise>
                            <a class="btn --solid --large show_hurt_price_search" href="/login.php">
                                Produkt niedostępny w sprzedaży detalicznej. Zarejestruj się, aby zobaczyć ceny hurtowe.
                            </a>
                        </iaixsl:otherwise>
                    </iaixsl:choose>
                </div>

                
                <iaixsl:if test="/shop/@trust_level = '1'">
                    <div id="superfairshop_info">
                        <div class="superfairshop_info_wrapper">
                            <div>
                                <img src="/gfx/pol/iai_security_supershop.png?r=1600678639" alt="SuperFair.Shop badge"/>
                                <strong>
                                    Wysyłamy wszystkie paczki w deklarowanym czasie
                                </strong>
                                <p>
                                    Posiadamy wyróżnienie SuperFair.Shop™ w ramach którego nasze wysyłki są codziennie automatycznie monitorowane pod względem zgodności z deklarowanym czasem wysyłki.
                                </p>
                                <p>
                                    Przyznane wyróżnienie oznacza, że nasze przesyłki są wysyłane zgodnie z planem. Dbamy też o Twoje bezpieczeństwo i wygodę.
                                </p>
                            </div>
                        </div>
                    </div>
                </iaixsl:if>

                    


            </form>
    </div>
    <div class="row col-12">
    
        <div class="col-12 col-md-6 px-0">
        
            <iaixsl:if test="page/projector/products_associated_zone1">

                        <section id="products_associated_zone1" class="hotspot mb-5 --list col-12">
                            
                            <iaixsl:variable name="headline_after_products_associated_zone1"></iaixsl:variable>
                            
                            <iaixsl:if test="not(page/projector/products_associated_zone1/product or page/projector/products_associated_zone1/opinion)">
                                <iaixsl:attribute name="data-ajaxLoad">true</iaixsl:attribute>
                                <iaixsl:attribute name="data-pageType">projector</iaixsl:attribute>
                            </iaixsl:if>
                            <iaixsl:choose>
                                <iaixsl:when test="page/projector/products_associated_zone1/product or page/projector/products_associated_zone1/opinion">

                                
                                <h2>
                                    <iaixsl:choose>
                                        <iaixsl:when test="page/projector/products_associated_zone1/@link">
                                            <a class="headline">
                                                <iaixsl:attribute name="href"><iaixsl:value-of select="page/projector/products_associated_zone1/@link"/></iaixsl:attribute>
                                                <iaixsl:attribute name="title"></iaixsl:attribute>

                                                <span class="headline__name">
                                                    <iaixsl:choose>
                                                        <iaixsl:when test="page/projector/products_associated_zone1/@name"><iaixsl:value-of select="page/projector/products_associated_zone1/@name"/></iaixsl:when>
                                                        <iaixsl:otherwise>Produkty kupione z tym produktem</iaixsl:otherwise>
                                                    </iaixsl:choose>
                                                </span>
                                                <iaixsl:if test="$headline_after_products_associated_zone1">
                                                    <span class="headline__after"><iaixsl:value-of select="$headline_after_products_associated_zone1"/></span>
                                                </iaixsl:if>
                                            </a>
                                        </iaixsl:when>
                                        <iaixsl:otherwise>
                                            <span class="headline">
                                                <span class="headline__name">
                                                    <iaixsl:choose>
                                                        <iaixsl:when test="page/projector/products_associated_zone1/@name">
                                                        
                                                        <iaixsl:value-of select="page/projector/products_associated_zone1/@name"/>
                                                        
                                                        </iaixsl:when>


                                                        <iaixsl:otherwise>Produkty kupione z tym produktem</iaixsl:otherwise>
                                                    </iaixsl:choose>
                                                </span>
                                            </span>
                                        </iaixsl:otherwise>
                                    </iaixsl:choose>
                                </h2>

                                <div class="products d-flex flex-wrap">
                                    <iaixsl:for-each select="page/projector/products_associated_zone1/*">
                                        
                                        <iaixsl:variable name="var_name"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of disable-output-escaping="yes" select="product/name/text()"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of disable-output-escaping="yes" select="name/text()"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                        <iaixsl:variable name="var_icon"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/icon"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="icon"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                        <iaixsl:variable name="var_icon_small"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/icon_small"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="icon_small"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                        <iaixsl:variable name="var_link"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/@link"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="@link"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                        <iaixsl:variable name="var_yousave"></iaixsl:variable>
                                        <iaixsl:variable name="var_net_prices"> netto</iaixsl:variable>
                                        <iaixsl:variable name="var_b2b">Produkt niedostępny w sprzedaży detalicznej. Zarejestruj się, aby zobaczyć ceny hurtowe.</iaixsl:variable>

                                        <div class="product col-12 px-0 py-1 mb-1 mb-md-0 d-flex">

                                            
                                            <iaixsl:if test="$var_yousave and not($var_yousave = '') and price/@yousave_formatted != ''">
                                                <div class="product__yousave">
                                                    <span class="product__yousave --label"><iaixsl:value-of select="$var_yousave"/></span>
                                                    <span class="product__yousave --value"><iaixsl:value-of select="price/@yousave_formatted"/></span>
                                                </div>
                                            </iaixsl:if>

                                            
                                            <a class="product__icon d-flex justify-content-center align-items-center p-1 m-0">
                                                <iaixsl:attribute name="data-product-id"><iaixsl:value-of select="@id"/></iaixsl:attribute>
                                                <iaixsl:attribute name="href"><iaixsl:value-of select="$var_link"/></iaixsl:attribute>
                                                <iaixsl:attribute name="title"><iaixsl:value-of select="$var_name"/></iaixsl:attribute>

                                                <img src="/gfx/pol/loader.gif?r=1600678639" class="b-lazy">
                                                    <iaixsl:attribute name="data-src-small"><iaixsl:value-of disable-output-escaping="yes" select="$var_icon_small"/></iaixsl:attribute>
                                                    <iaixsl:attribute name="src"><iaixsl:value-of disable-output-escaping="yes" select="$var_icon"/></iaixsl:attribute>
                                                    <iaixsl:attribute name="alt"><iaixsl:value-of disable-output-escaping="yes" select="$var_name"/></iaixsl:attribute>
                                                </img>
                                            </a>

                                            <div class="product__wrapper pl-2 d-flex flex-column justify-content-between flex-md-row align-items-md-center">
                                                
                                                <h3>
                                                    <a class="product__name mb-1 mb-md-0">
                                                        <iaixsl:attribute name="href"><iaixsl:value-of select="$var_link"/></iaixsl:attribute>
                                                        <iaixsl:attribute name="title"><iaixsl:value-of select="$var_name"/></iaixsl:attribute>
                                                        <iaixsl:value-of select="$var_name"/>
                                                    </a>
                                                </h3>

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

                                                        <div class="product__prices ml-md-auto flex-md-row align-items-md-center">
                                                            <iaixsl:choose>
                                                                
                                                                <iaixsl:when test="$var_size_min_formatted != $var_size_max_formatted">
                                                                    <iaixsl:if test="$var_size_min_maxprice_formatted != ''">
                                                                        <div class="product__promo d-flex flex-wrap justify-content-md-end">
                                                                            <del class="price --max">
                                                                                <span><iaixsl:value-of select="$var_size_min_maxprice_formatted"/></span><b><iaixsl:text> - </iaixsl:text></b><span><iaixsl:value-of select="$var_size_max_maxprice_formatted"/></span>
                                                                            </del>
                                                                            <span class="product__promo_info">(-<iaixsl:value-of select="price/@max_diff_percent"/>% Promocja czasowa)</span>
                                                                        </div>
                                                                    </iaixsl:if>
                                                                    <div class="product__price_wrapper">
                                                                        <strong class="price">
                                                                            <iaixsl:value-of select="$var_size_min_formatted"/><iaixsl:text> - </iaixsl:text><iaixsl:value-of select="$var_size_max_formatted"/>
                                                                        </strong>
                                                                        <iaixsl:if test="$var_points != ''">
                                                                            <span class="price --points">
                                                                                <iaixsl:value-of select="$var_points"/><span class="currency"> pkt.</span>
                                                                            </span>
                                                                        </iaixsl:if>
                                                                    </div>
                                                                </iaixsl:when>

                                                                
                                                                <iaixsl:when test="(($var_value = 0) and $var_points = '') or ($var_value = 0 and $var_b2b and not($var_b2b = '') and not(/shop/basket/@wholesaler = 'true'))">
                                                                    <iaixsl:choose>
                                                                        <iaixsl:when test="$var_b2b and not($var_b2b = '')">
                                                                        <a class="price --phone" href="/signin.php">
                                                                            <iaixsl:attribute name="title"><iaixsl:value-of select="$var_b2b"/></iaixsl:attribute>
                                                                            <iaixsl:value-of select="$var_b2b"/>
                                                                        </a>
                                                                        </iaixsl:when>
                                                                        <iaixsl:otherwise>
                                                                        <a class="price --phone" href="/contact.php">
                                                                            <iaixsl:attribute name="title">Kliknij, by przejść do formularza kontaktu</iaixsl:attribute>
                                                                            Cena na telefon
                                                                        </a>
                                                                        </iaixsl:otherwise>
                                                                    </iaixsl:choose>
                                                                </iaixsl:when>

                                                                
                                                                <iaixsl:otherwise>
                                                                    <iaixsl:if test="$var_maxprice_formatted != ''">
                                                                        <div class="product__promo d-flex flex-wrap justify-content-md-end">
                                                                            <del class="price --max">
                                                                                <iaixsl:value-of select="$var_maxprice_formatted"/>
                                                                            </del>
                                                                            <span class="product__promo_info">(-<iaixsl:value-of select="price/@max_diff_percent"/>% Promocja czasowa)</span>
                                                                        </div>
                                                                    </iaixsl:if>
                                                                    <div class="product__price_wrapper">
                                                                        <strong class="price">
                                                                            <iaixsl:value-of select="$var_price_formatted"/>
                                                                        </strong>
                                                                        <iaixsl:if test="$var_points != ''">
                                                                            <span class="price --points">
                                                                                <iaixsl:value-of select="$var_points"/><span class="currency"> pkt.</span>
                                                                            </span>
                                                                        </iaixsl:if>
                                                                    </div>
                                                                </iaixsl:otherwise>
                                                            </iaixsl:choose>
                                                        </div>
                                                        <iaixsl:if test="price/@unit_converted_price_formatted">
                                                            <small class="s_unit_converted_price"><iaixsl:value-of select="price/@unit_converted_price_formatted"/><iaixsl:text> / </iaixsl:text><iaixsl:value-of select="price/@unit_converted_format"/></small>
                                                        </iaixsl:if>

                                                        
                                                        <a class="product__see d-none d-md-block">
                                                            <iaixsl:attribute name="href"><iaixsl:value-of select="$var_link"/></iaixsl:attribute>
                                                            Zobacz
                                                        </a>
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

                                                        <div class="product__prices ml-md-auto flex-md-row align-items-md-center">
                                                            <iaixsl:choose>
                                                                
                                                                <iaixsl:when test="$var_size_min_net_formatted != $var_size_max_net_formatted">
                                                                    <iaixsl:if test="$var_size_min_net_maxprice_formatted != ''">
                                                                        <div class="product__promo d-flex flex-wrap justify-content-md-end">
                                                                            <del class="price --max">
                                                                                <span><iaixsl:value-of select="$var_size_min_net_maxprice_formatted"/></span><b><iaixsl:text> - </iaixsl:text></b><span><iaixsl:value-of select="$var_size_max_maxprice_net_formatted"/></span><iaixsl:value-of select="$var_net_prices"/>
                                                                            </del>
                                                                            <span class="product__promo_info">(-<iaixsl:value-of select="price/@max_diff_percent"/>% Promocja czasowa)</span>
                                                                        </div>
                                                                    </iaixsl:if>
                                                                    <div class="product__price_wrapper">
                                                                        <strong class="price">
                                                                            <iaixsl:value-of select="$var_size_min_net_formatted"/><iaixsl:text> - </iaixsl:text><iaixsl:value-of select="$var_size_max_net_formatted"/><iaixsl:value-of select="$var_net_prices"/>
                                                                        </strong>
                                                                        <iaixsl:if test="$var_points_net != ''">
                                                                            <span class="price --points">
                                                                                <iaixsl:value-of select="$var_points_net"/><span class="currency"> pkt.</span>
                                                                            </span>
                                                                        </iaixsl:if>
                                                                    </div>
                                                                </iaixsl:when>

                                                                
                                                                <iaixsl:when test="(($var_net_value = 0) and $var_points_net = '') or ($var_net_value = 0 and $var_b2b and not($var_b2b = '') and not(/shop/basket/@wholesaler = 'true'))">
                                                                    <iaixsl:choose>
                                                                        <iaixsl:when test="$var_b2b and not($var_b2b = '')">
                                                                        <a class="price --phone" href="/signin.php">
                                                                            <iaixsl:attribute name="title"><iaixsl:value-of select="$var_b2b"/></iaixsl:attribute>
                                                                            <iaixsl:value-of select="$var_b2b"/>
                                                                        </a>
                                                                        </iaixsl:when>
                                                                        <iaixsl:otherwise>
                                                                        <a class="price --phone" href="/contact.php">
                                                                            <iaixsl:attribute name="title">Kliknij, by przejść do formularza kontaktu</iaixsl:attribute>
                                                                            Cena na telefon
                                                                        </a>
                                                                        </iaixsl:otherwise>
                                                                    </iaixsl:choose>
                                                                </iaixsl:when>

                                                                
                                                                <iaixsl:otherwise>
                                                                    <iaixsl:if test="$var_maxprice_net_formatted != ''">
                                                                        <div class="product__promo d-flex flex-wrap justify-content-md-end">
                                                                            <del class="price --max">
                                                                                                                                                        <iaixsl:value-of select="$var_maxprice_net_formatted"/><iaixsl:value-of select="$var_net_prices"/>
                                                                            </del>
                                                                            <span class="product__promo_info">(-<iaixsl:value-of select="price/@max_diff_percent"/>% Promocja czasowa)</span>
                                                                        </div>
                                                                    </iaixsl:if>
                                                                    <div class="product__price_wrapper">
                                                                        <strong class="price">
                                                                            <iaixsl:value-of select="$var_price_formatted"/><iaixsl:value-of select="$var_net_prices"/>
                                                                        </strong>
                                                                        <iaixsl:if test="$var_points_net != ''">
                                                                            <span class="price --points">
                                                                                <iaixsl:value-of select="$var_points_net"/><span class="currency"> pkt.</span>
                                                                            </span>
                                                                        </iaixsl:if>
                                                                    </div>
                                                                </iaixsl:otherwise>
                                                            </iaixsl:choose>
                                                            <iaixsl:if test="price/@unit_converted_price_net_formatted">
                                                                <small class="s_unit_converted_price"><iaixsl:value-of select="price/@unit_converted_price_net_formatted"/><iaixsl:text> / </iaixsl:text><iaixsl:value-of select="price/@unit_converted_format"/><iaixsl:value-of select="$var_net_prices"/></small>
                                                            </iaixsl:if>
                                                        </div>

                                                        
                                                        <a class="product__see d-none d-md-block">
                                                            <iaixsl:attribute name="href"><iaixsl:value-of select="$var_link"/></iaixsl:attribute>
                                                            Zobacz
                                                        </a>
                                                    </iaixsl:otherwise>
                                                </iaixsl:choose>

                                                
                                                <iaixsl:if test="client/@client or @note or content">
                                                    <div class="product__opinion">
                                                        
                                                        <iaixsl:if test="client/@client">
                                                            <div class="product__opinion_client"><iaixsl:value-of disable-output-escaping="yes" select="client/@client"/></div>
                                                        </iaixsl:if>

                                                        
                                                        <iaixsl:if test="@note">
                                                            <div class="note">
                                                                <span>
                                                                    <i class="icon-star">
                                                                        <iaixsl:if test="@note > 0.5"><iaixsl:attribute name="class">icon-star --active</iaixsl:attribute></iaixsl:if>
                                                                    </i>
                                                                    <i class="icon-star">
                                                                        <iaixsl:if test="@note > 1.5"><iaixsl:attribute name="class">icon-star --active</iaixsl:attribute></iaixsl:if>
                                                                    </i>
                                                                    <i class="icon-star">
                                                                        <iaixsl:if test="@note > 2.5"><iaixsl:attribute name="class">icon-star --active</iaixsl:attribute></iaixsl:if>
                                                                    </i>
                                                                    <i class="icon-star">
                                                                        <iaixsl:if test="@note > 3.5"><iaixsl:attribute name="class">icon-star --active</iaixsl:attribute></iaixsl:if>
                                                                    </i>
                                                                    <i class="icon-star">
                                                                        <iaixsl:if test="@note > 4.5"><iaixsl:attribute name="class">icon-star --active</iaixsl:attribute></iaixsl:if>
                                                                    </i>
                                                                </span>
                                                                <small>
                                                                    Ocena: <iaixsl:value-of disable-output-escaping="yes" select="@note"/>/5
                                                                </small>
                                                            </div>
                                                        </iaixsl:if>

                                                        
                                                        <iaixsl:if test="content">
                                                            <div class="product__opinion_content"><iaixsl:value-of disable-output-escaping="yes" select="content"/></div>
                                                        </iaixsl:if>
                                                    </div>
                                                </iaixsl:if>
                                            </div>
                                        </div>
                                    </iaixsl:for-each>
                                </div>
                            </iaixsl:when>
                            <iaixsl:otherwise>
                                <div class="hotspot mb-5 skeleton">
                                    <span class="headline"/>
                                    <div class="products d-flex flex-wrap">
                                        <div class="product col-12 px-0 py-3 d-sm-flex align-items-sm-center py-sm-1">
                                            <span class="product__icon d-flex justify-content-center align-items-center p-1 m-0"/>
                                            <span class="product__name mb-1 mb-md-0"/>
                                            <div class="product__prices"/>
                                        </div>
                                        <div class="product col-12 px-0 py-3 d-sm-flex align-items-sm-center py-sm-1">
                                            <span class="product__icon d-flex justify-content-center align-items-center p-1 m-0"/>
                                            <span class="product__name mb-1 mb-md-0"/>
                                            <div class="product__prices"/>
                                        </div>
                                        <div class="product col-12 px-0 py-3 d-sm-flex align-items-sm-center py-sm-1">
                                            <span class="product__icon d-flex justify-content-center align-items-center p-1 m-0"/>
                                            <span class="product__name mb-1 mb-md-0"/>
                                            <div class="product__prices"/>
                                        </div>
                                        <div class="product col-12 px-0 py-3 d-sm-flex align-items-sm-center py-sm-1">
                                            <span class="product__icon d-flex justify-content-center align-items-center p-1 m-0"/>
                                            <span class="product__name mb-1 mb-md-0"/>
                                            <div class="product__prices"/>
                                        </div>
                                    </div>
                                </div>
                            </iaixsl:otherwise>
                            </iaixsl:choose>
                        </section>
                    </iaixsl:if>

                    <iaixsl:if test="/shop/page/projector/products_associated_zone1/@iairs_ajax"> </iaixsl:if>
                    <iaixsl:if test="/shop/page/projector/products_associated_zone1/@hotspot_ajax"> </iaixsl:if>

        </div>
        <div class="col-12 col-md-6 px-0 overflowHidden">
            			<iaixsl:variable name="product_producer_label">Producent</iaixsl:variable>
			<iaixsl:variable name="product_code_label">Kod produktu</iaixsl:variable>
			<iaixsl:variable name="product_series_label">Seria</iaixsl:variable>
			<iaixsl:variable name="product_warranty_label">Gwarancja</iaixsl:variable>

			<iaixsl:if test="(count(/shop/page/projector/product/dictionary/items) > 0) or ($product_producer_label and not(/shop/page/projector/product/firm/@name = '')) or ($product_code_label and /shop/page/projector/product/@code) or ($product_series_label and /shop/page/projector/product/series)">
				
				<iaixsl:variable name="label_no_group"></iaixsl:variable>

				<section id="projector_dictionary" class="dictionary col-12 mb-1 mb-sm-4">
                <h2 class="label-specyfikacja">
                Specyfikacja
                </h2>
					<div class="dictionary__group --first">
						<iaixsl:if test="(($product_producer_label and not(/shop/page/projector/product/firm/@name = '')) or ($product_code_label and /shop/page/projector/product/@code) or ($product_series_label and /shop/page/projector/product/series)) or not(/shop/page/projector/product/dictionary/items/item[1]/type = 'group')">
							<iaixsl:attribute name="class">dictionary__group --first --no-group</iaixsl:attribute>
							<iaixsl:if test="$label_no_group">
								
								<div class="dictionary__label mb-3 d-flex align-items-center justify-content-center">
									<span class="dictionary__label_txt"><iaixsl:value-of select="$label_no_group"/></span>
								</div>
							</iaixsl:if>
						</iaixsl:if>
						
						<iaixsl:if test="$product_producer_label and not(/shop/page/projector/product/firm/@name = '')">
							<div class="dictionary__param row mb-2">
								
								<div class="dictionary__name col-6 col-md-3 d-flex align-items-center justify-content-start">
									<span class="dictionary__name_txt"><iaixsl:value-of disable-output-escaping="yes" select="$product_producer_label"/></span>
								</div>
								
								<div class="dictionary__values col-6 col-md-9 d-flex align-items-center justify-content-start">
									<div class="dictionary__value">
										<a class="dictionary__value_txt">
											<iaixsl:attribute name="href"><iaixsl:value-of select="page/projector/product/firm/@productslink"/></iaixsl:attribute>
											<iaixsl:attribute name="title">Kliknij, by zobaczyć wszystkie produkty tego producenta</iaixsl:attribute>
											<iaixsl:value-of disable-output-escaping="yes" select="/shop/page/projector/product/firm/@name"/>
										</a>
									</div>
								</div>
							</div>
						</iaixsl:if>
						
						<iaixsl:if test="$product_code_label and /shop/page/projector/product/@code">
							<div class="dictionary__param row mb-2">
								
								<div class="dictionary__name col-6 col-md-3 d-flex align-items-center justify-content-start">
									<span class="dictionary__name_txt"><iaixsl:value-of disable-output-escaping="yes" select="$product_code_label"/></span>
								</div>
								
								<div class="dictionary__values col-6 col-md-9 d-flex align-items-center justify-content-start">
									<div class="dictionary__value">
										<span class="dictionary__value_txt"><iaixsl:value-of disable-output-escaping="yes" select="/shop/page/projector/product/@code"/></span>
									</div>
								</div>
							</div>
						</iaixsl:if>
						
						<iaixsl:if test="$product_series_label and /shop/page/projector/product/series">
							<div class="dictionary__param row mb-2">
								
								<div class="dictionary__name col-6 col-md-3 d-flex align-items-center justify-content-start">
									<span class="dictionary__name_txt"><iaixsl:value-of disable-output-escaping="yes" select="$product_series_label"/></span>
								</div>
								
								<div class="dictionary__values col-6 col-md-9 d-flex align-items-center justify-content-start">
									<div class="dictionary__value">
										<a class="dictionary__value_txt">
											<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/page/projector/product/series/@link"/></iaixsl:attribute>
											<iaixsl:attribute name="title">Kliknij, by zobaczyć wszystkie produkty z tej serii</iaixsl:attribute>
											<iaixsl:value-of disable-output-escaping="yes" select="/shop/page/projector/product/series/@name"/>
										</a>
									</div>
								</div>
							</div>
						</iaixsl:if>
						
						<iaixsl:if test="$product_warranty_label and /shop/page/projector/product/warranty/@name">
							<div class="dictionary__param row mb-2">
								
								<div class="dictionary__name col-6 col-md-3 d-flex align-items-center justify-content-start">
									<span class="dictionary__name_txt"><iaixsl:value-of disable-output-escaping="yes" select="$product_warranty_label"/></span>
								</div>
								
								<div class="dictionary__values col-6 col-md-9 d-flex align-items-center justify-content-start">
									<div class="dictionary__value">
										<span class="dictionary__value_txt warrantyLink" href="#projector_warranty">
											<iaixsl:attribute name="title">Kliknij, aby przeczytać warunki gwarancji</iaixsl:attribute>
											<iaixsl:value-of disable-output-escaping="yes" select="/shop/page/projector/product/warranty/@period"/> miesięcy
										</span>
									</div>
								</div>
							</div>
						</iaixsl:if>
						<iaixsl:for-each select="/shop/page/projector/product/dictionary/items/item">
							<iaixsl:choose>
								<iaixsl:when test="@type = 'group'">
									<iaixsl:if test="position() > 1 or (($product_code_label and /shop/page/projector/product/@code) or ($product_series_label and /shop/page/projector/product/series))">
										<iaixsl:text disable-output-escaping="yes">&lt;/div&gt;&lt;div class="dictionary__group"&gt;</iaixsl:text>
									</iaixsl:if>
									
									<div class="dictionary__label mb-3 d-flex align-items-center justify-content-center">
										<span class="dictionary__label_txt"><iaixsl:value-of disable-output-escaping="yes" select="@name"/></span>
										<iaixsl:if test="desc != ''">
											<i class="icon-question showTip"></i>
											<div class="tooltipContent"><iaixsl:value-of disable-output-escaping="yes" select="desc"/></div>
										</iaixsl:if>
									</div>
								</iaixsl:when>
								<iaixsl:otherwise>
									
									<div class="dictionary__param row mb-2">
										
										<div class="dictionary__name col-6 col-md-3 d-flex align-items-center justify-content-start">
											<span class="dictionary__name_txt"><iaixsl:value-of disable-output-escaping="yes" select="@name"/></span>
											<iaixsl:if test="desc != ''">
												<i class="icon-question showTip"></i>
												<div class="tooltipContent"><iaixsl:value-of disable-output-escaping="yes" select="desc"/></div>
											</iaixsl:if>
										</div>
										
										<div class="dictionary__values col-6 col-md-9 d-flex align-items-center justify-content-start">
											<iaixsl:for-each select="values/value">
												<iaixsl:if test="position() > 1">, </iaixsl:if>
												<div class="dictionary__value">
													<span class="dictionary__value_txt"><iaixsl:value-of disable-output-escaping="yes" select="@value"/></span>
													<iaixsl:if test="@gfx">
														<img class="dictionary__value_img">
															<iaixsl:attribute name="src"><iaixsl:value-of select="@gfx"/></iaixsl:attribute>
															<iaixsl:attribute name="alt"><iaixsl:value-of select="@value"/></iaixsl:attribute>
														</img>
													</iaixsl:if>
													<iaixsl:if test="desc != ''">
														<i class="icon-question showTip"></i>
														<div class="tooltipContent"><iaixsl:value-of disable-output-escaping="yes" select="desc"/></div>
													</iaixsl:if>
												</div>
											</iaixsl:for-each>
										</div>
									</div>
								</iaixsl:otherwise>
							</iaixsl:choose>
						</iaixsl:for-each>

                        <iaixsl:if test="/shop/page/projector/product/@id">

                            <div class="dictionary__param row mb-2">
								
								<div class="dictionary__name col-6 col-md-3 d-flex align-items-center justify-content-start">
									<span class="dictionary__name_txt">ID produktu</span>
								</div>
								
								<div class="dictionary__values col-6 col-md-9 d-flex align-items-center justify-content-start">
									<div class="dictionary__value">
										<span class="dictionary__value_txt">                                       <iaixsl:value-of disable-output-escaping="yes" select="/shop/page/projector/product/@id" />
										</span>
									</div>
								</div>
						    </div>

                        </iaixsl:if>

                        <iaixsl:if test="/shop/page/projector/product/sizes/size/@code_producer">

                            <div class="dictionary__param row mb-2">
								
								<div class="dictionary__name col-6 col-md-3 d-flex align-items-center justify-content-start">
									<span class="dictionary__name_txt">Kod EAN</span>
								</div>
								
								<div class="dictionary__values col-6 col-md-9 d-flex align-items-center justify-content-start">
									<div class="dictionary__value">
										<span class="dictionary__value_txt">
											
											<iaixsl:value-of disable-output-escaping="yes" select="/shop/page/projector/product/sizes/size/@code_producer"/>
										</span>
									</div>
								</div>
						    </div>

                        </iaixsl:if>
					</div>
				</section>
			</iaixsl:if>
        </div>

    </div>        
            <div id="alert_cover" class="projector_alert_55916" style="display:none" onclick="Alertek.hide_alert();"></div>
            <script class="ajaxLoad">
                app_shop.vars.contact_link = "<iaixsl:value-of select="/shop/contact/link/@url"/>";
            </script>

            
            <iaixsl:if test="/shop/@get_ajax_projector_xml"> </iaixsl:if>
            <iaixsl:if test="/shop/page/projector/bookmarklets/item/@icon_small"> </iaixsl:if>
            <iaixsl:if test="/shop/page/projector/product/products_other_founds"> </iaixsl:if>
            <iaixsl:if test="/shop/page/projector/product/payment/instalment/@src"> </iaixsl:if>
        <!--Karta produktu - Zestawy (projector_bundle_zone, 111992.1)-->
			<iaixsl:if test="page/projector/bundled/product">
				<div id="projector_bundle_product" >
					<iaixsl:if test="/shop/page/projector/bundled/@left_quantity and not(/shop/page/projector/product/bundle_price/@amount_diff_gross = '0.00')">
						<div class="bundle_rabat bg_alter">
							<h2>Zyskaj rabat kupując produkty z kolekcji </h2>
							<div>
								<span>
									Wybierz przynajmniej 
									<iaixsl:value-of select="/shop/page/projector/bundled/@left_quantity"/>
									 produkty aby otrzymać rabat!

								</span>
							</div>
						</div>
					</iaixsl:if>

					<h2 class="big_label product_bundle">
						<iaixsl:choose>
							<iaixsl:when test="/shop/page/projector/bundled/@collection='true'">
								W kolekcji
							</iaixsl:when>
							<iaixsl:otherwise>
								W zestawie
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
												Cena:
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
													Produkt niedostępny.
												</iaixsl:when>
												<iaixsl:otherwise>
													Produkt niedostępny.
												</iaixsl:otherwise>
											</iaixsl:choose>
										</div>
									</div>
									<div>
										<iaixsl:if test="sizes/size/@type='onesize' and not(multiversions and versions/@version_choice='true') and not(sizes_chart)">
											<iaixsl:attribute name="class">only_onesize</iaixsl:attribute>
										</iaixsl:if>
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
																					<p class="conflict_txt">Wybór tej pozycji spowoduje konieczność dostosowania innych</p>
																				</span>
																			</a>
																		</li>
																	</iaixsl:for-each>
																</ul>
																<p class="conflict_txt">Wybierz inną opcję</p>
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

														<iaixsl:attribute name="data-label">Rozmiar: </iaixsl:attribute>
														<iaixsl:for-each select="sizes/size">
															<option class="enabled">
																<iaixsl:if test="@amount != 0 and (@type = ../size[@amount!=0][1]/@type)">
																	<iaixsl:attribute name="selected">selected</iaixsl:attribute>
																</iaixsl:if>
																<iaixsl:if test="@amount = 0"><iaixsl:attribute name="class">disabled</iaixsl:attribute></iaixsl:if>
																<iaixsl:attribute name="value"><iaixsl:value-of select="@type"/></iaixsl:attribute>
																<iaixsl:attribute name="data-amount"><iaixsl:value-of select="@amount"/></iaixsl:attribute>
																<iaixsl:value-of select="@description"/><iaixsl:if test="@amount = 0"> (brak)</iaixsl:if>
															</option>
														</iaixsl:for-each>
													</select>
												</iaixsl:otherwise>
											</iaixsl:choose>
										</div>
										

										<iaixsl:if test="sizes_chart">
											<a href="#show_size_bundle" class="show_size_bundle">
												<iaixsl:attribute name="data-id">#component_colection_sizes_chart_<iaixsl:value-of select="sizes_chart/@id"/>_<iaixsl:value-of select="../@id"/></iaixsl:attribute>
												<i class="icon-table"></i> Tabela rozmiarów
											</a>

											<div class="component_projector_sizes_chart" style="display:none;">

												<iaixsl:attribute name="id">component_colection_sizes_chart_<iaixsl:value-of select="sizes_chart/@id"/>_<iaixsl:value-of select="../@id"/></iaixsl:attribute>
												<iaixsl:if test="sizes_chart/descriptions/description">
													<h2></h2>
													<table class="table-condensed">
														<iaixsl:attribute name="class">ui-responsive table-stroke ui-table ui-table-reflow table-condensed</iaixsl:attribute>
														<thead>
															<tr>
																<th class="table-first-column">Rozmiar </th>
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

			<script class="ajaxLoad">
				var bundle_title =   "Cena produktów poza zestawem";
			</script>
		<!--Karta produktu - bannery (projector_banner, 113303.1)-->
			
			<iaixsl:variable name="allow_returns_projector"><iaixsl:choose><iaixsl:when test="/shop/basket/@wholesaler = 'true' and /shop/basket/@blocked_wholesale_returns = 'true'">false</iaixsl:when><iaixsl:otherwise>true</iaixsl:otherwise></iaixsl:choose></iaixsl:variable>

			<iaixsl:if test="(/shop/page/projector/returns_config/@active='y' and not(page/projector/product/@product_type = 'product_virtual' or page/projector/product/@product_type = 'product_service') and $allow_returns_projector = 'true') or /shop/page/projector/product/payment/instalment or /shop/page/projector/product/sizes_version/@stocks_link or /shop/page/projector/product/sizes/@stocks_link or /shop/basket/@toshippingfree != '' and not(/shop/page/projector/product/price/@value = 0)">
            <iaixsl:comment>
				<section id="projector_benefits" class="benefits mb-4">

					
					<iaixsl:if test="page/projector/returns_config/@active='y' and not(page/projector/product/@product_type = 'product_virtual' or page/projector/product/@product_type = 'product_service') and $allow_returns_projector = 'true'">
						<div class="benefits__block --returns">
							<span class="benefits__item --return">Łatwy zwrot towaru w ciągu <span class="benefits__return_days"><iaixsl:value-of select="page/projector/returns_config/@days_to_return"/></span> dni od zakupu bez podania przyczyny</span>
						</div>
					</iaixsl:if>

					
					<iaixsl:if test="/shop/basket/@toshippingfree != ''">
						<div class="benefits__block --shippings">
							<span class="benefits__item --shipping">Darmowa dostawa od <span class="benefits__shipping_free"><iaixsl:value-of select="/shop/basket/@shippinglimitfree_formatted"/></span></span>
						</div>
					</iaixsl:if>

					
					<iaixsl:if test="not(page/projector/product/@product_type = 'product_service') and (page/projector/product/sizes_version/@stocks_link or page/projector/product/sizes/@stocks_link)">
						<div class="benefits__block --stocks">
							<a class="benefits__item --stock">
								<iaixsl:choose>
									<iaixsl:when test="page/projector/product/sizes_version/@stocks_link">
										<iaixsl:attribute name="href"><iaixsl:value-of select="page/projector/product/sizes_version/@stocks_link"/></iaixsl:attribute>
									</iaixsl:when>
									<iaixsl:otherwise>
										<iaixsl:attribute name="href"><iaixsl:value-of select="page/projector/product/sizes/@stocks_link"/></iaixsl:attribute>
									</iaixsl:otherwise>
								</iaixsl:choose>
								<iaixsl:attribute name="title">Sprawdź, w którym sklepie obejrzysz i kupisz od ręki</iaixsl:attribute>
								Sprawdź, w którym sklepie obejrzysz i kupisz od ręki
							</a>
						</div>
						<div id="product_stocks" class="product_stocks">
							<div class="product_stocks__product mb-3 mb-sm-5 px-1 px-sm-4">
								<h2 class="px-0 mb-3">Dostępność produktu w sklepach</h2>
								<div class="d-flex align-items-center">
									<iaixsl:if test="/shop/page/projector/product/icon">
										<img class="product_stocks__icon mr-4">
											<iaixsl:attribute name="src"><iaixsl:value-of select="/shop/page/projector/product/icon"/></iaixsl:attribute>
											<iaixsl:attribute name="alt"><iaixsl:value-of select="/shop/page/projector/product/name"/></iaixsl:attribute>
										</img>
									</iaixsl:if>
									<div class="d-flex flex-column">
										<strong><iaixsl:value-of select="/shop/page/projector/product/name"/></strong>
										<div class="product_stocks__sizes row mx-n1">
											<iaixsl:for-each select="/shop/page/projector/product/sizes/size">
												<a class="col m-1 flex-grow-0 flex-shrink-0 select_button">
													<iaixsl:if test="@amount = '0'">
														<iaixsl:attribute name="data-disabled">true</iaixsl:attribute>
													</iaixsl:if>
													<iaixsl:attribute name="href">#<iaixsl:value-of select="@type"/></iaixsl:attribute>
													<iaixsl:attribute name="data-type"><iaixsl:value-of select="@type"/></iaixsl:attribute>
													<iaixsl:value-of select="@description"/>
												</a>
											</iaixsl:for-each>
										</div>
									</div>
								</div>
							</div>
							<div class="product_stocks__stocks bg_alter mx-n2 mb-n2 px-2 py-2 px-sm-5 py-sm-5 skeleton"/>
						</div>
					</iaixsl:if>

					
					<iaixsl:if test="page/projector/product/payment/instalment">
						<div class="benefits__block --instalments">
							<iaixsl:for-each select="page/projector/product/payment/instalment">
								<a class="benefits__item --instalment">
									<iaixsl:attribute name="data-instalments"><iaixsl:value-of disable-output-escaping="yes" select="@name"/></iaixsl:attribute>
									<iaixsl:attribute name="onclick"> calculate_instalments('<iaixsl:value-of select="@minprice"/>','<iaixsl:value-of select="@maxprice"/>','<iaixsl:value-of select="@priceTotal"/>','<iaixsl:value-of select="@alert"/>',$(this).attr('data-window'),'<iaixsl:value-of select="@maxquantity"/>','<iaixsl:value-of select="@name"/>'); return false;</iaixsl:attribute>
									<iaixsl:attribute name="href">javascript:<iaixsl:value-of select="@calculate"/></iaixsl:attribute>
									<iaixsl:attribute name="data-window"><iaixsl:value-of select="@calculatePrice"/></iaixsl:attribute>
									<iaixsl:if test="@gfx">
										<img class="benefits__instalment_img">
											<iaixsl:attribute name="src"><iaixsl:value-of select="@gfx"/></iaixsl:attribute>
											<iaixsl:attribute name="alt"><iaixsl:value-of select="@name"/></iaixsl:attribute>
										</img>
									</iaixsl:if>
									<span class="benefits__instalment_txt">Oblicz ratę <iaixsl:value-of disable-output-escaping="yes" select="@name"/></span>
								</a>
							</iaixsl:for-each>
						</div>
					</iaixsl:if>
				</section>
            </iaixsl:comment>
			</iaixsl:if>
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
        <!--Karta produktu - w zestawiaj taniej (projector_in_bundle, 111660.1)-->
			<iaixsl:if test="page/projector/bundle/product">
				<section id="projector_in_bundle" class="hotspot mb-5 --list col-12">
					<h2>
						<span class="headline"><span class="headline__name">Oszczędź kupując więcej</span></span>
					</h2>

					<div class="products d-flex flex-wrap">
						<iaixsl:for-each select="page/projector/bundle/product">
							
							<iaixsl:variable name="var_name"><iaixsl:value-of disable-output-escaping="yes" select="name/text()"/></iaixsl:variable>
							<iaixsl:variable name="var_icon"><iaixsl:value-of select="icon"/></iaixsl:variable>
							<iaixsl:variable name="var_link"><iaixsl:value-of select="@link"/></iaixsl:variable>
							<iaixsl:variable name="var_net_prices"> netto</iaixsl:variable>

							<div class="product col-12 px-0 py-1 mb-1 mb-md-0 d-flex">
								
								<a class="product__icon d-flex justify-content-center align-items-center p-1 m-0">
									<iaixsl:attribute name="data-product-id"><iaixsl:value-of select="@id"/></iaixsl:attribute>
									<iaixsl:attribute name="href"><iaixsl:value-of select="$var_link"/></iaixsl:attribute>
									<iaixsl:attribute name="title"><iaixsl:value-of select="$var_name"/></iaixsl:attribute>

									<img src="/gfx/pol/loader.gif?r=1600678639" class="b-lazy">
										<iaixsl:attribute name="src"><iaixsl:value-of disable-output-escaping="yes" select="$var_icon"/></iaixsl:attribute>
										<iaixsl:attribute name="alt"><iaixsl:value-of disable-output-escaping="yes" select="$var_name"/></iaixsl:attribute>
									</img>
								</a>

								<div class="product__wrapper pl-2 d-flex flex-column justify-content-between flex-md-row align-items-md-center">
									
									<h3>
										<a class="product__name mb-1 mb-md-0">
											<iaixsl:attribute name="href"><iaixsl:value-of select="$var_link"/></iaixsl:attribute>
											<iaixsl:attribute name="title"><iaixsl:value-of select="$var_name"/></iaixsl:attribute>
											<iaixsl:value-of select="$var_name"/>
										</a>
									</h3>

									<iaixsl:choose>
										
										<iaixsl:when test="$var_net_prices = ''">
											<div class="product__prices ml-md-auto flex-md-row align-items-md-center">
												<iaixsl:choose>
													<iaixsl:when test="price/@value > 0">
														<div class="product__promo d-flex flex-wrap justify-content-md-end">
															<del class="price --max">
																<iaixsl:value-of select="bundle_price/@price_gross_formatted"/>
															</del>
															<span class="product__promo_info">(Taniej w zestawie o <iaixsl:value-of select="bundle_price/@percent_diff"/>%)</span>
														</div>
														<div class="product__price_wrapper">
															<strong class="price">
																<iaixsl:value-of select="price/@price_formatted"/>
															</strong>
														</div>
													</iaixsl:when>
													<iaixsl:otherwise>
														<a class="price --phone">
															<iaixsl:attribute name="title">Kliknij, by przejść do formularza kontaktu</iaixsl:attribute>
															<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/contact/link/@url"/></iaixsl:attribute>
															Cena na telefon
														</a>
													</iaixsl:otherwise>
												</iaixsl:choose>
											</div>
										</iaixsl:when>

										
										<iaixsl:otherwise>
											<div class="product__prices ml-md-auto flex-md-row align-items-md-center">
												<iaixsl:choose>
													<iaixsl:when test="price/@price_net > 0">
														<div class="product__promo d-flex flex-wrap justify-content-md-end">
															<del class="price --max">
																<iaixsl:value-of select="bundle_price/@price_net_formatted"/>
															</del>
															<span class="product__promo_info">(Taniej w zestawie o <iaixsl:value-of select="bundle_price/@percent_diff"/>%)</span>
														</div>
														<div class="product__price_wrapper">
															<strong class="price">
																<iaixsl:value-of select="price/@price_net_formatted"/><iaixsl:value-of select="$var_net_prices"/>
															</strong>
														</div>
													</iaixsl:when>
													<iaixsl:otherwise>
														<a class="price --phone">
															<iaixsl:attribute name="title">Kliknij, by przejść do formularza kontaktu</iaixsl:attribute>
															<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/contact/link/@url"/></iaixsl:attribute>
															Cena na telefon
														</a>
													</iaixsl:otherwise>
												</iaixsl:choose>
											</div>
										</iaixsl:otherwise>
									</iaixsl:choose>

									
									<a class="product__see d-none d-md-block">
										<iaixsl:attribute name="href"><iaixsl:value-of select="$var_link"/></iaixsl:attribute>
										Zobacz zestaw
									</a>
								</div>
							</div>
						</iaixsl:for-each>
					</div>
				</section>
			</iaixsl:if>
		<!--Długi opis produktu z HTML (projector_longdescription, 111555.1)-->
            <iaixsl:if test="page/projector/product/vlongdescription and not(page/projector/product/vlongdescription = '')">
                <section id="projector_longdescription" class="longdescription cm  col-12"><iaixsl:value-of disable-output-escaping="yes" select="page/projector/product/vlongdescription/text()"/></section>
            </iaixsl:if>
        <!--Karta produktu - załączniki (projector_enclosures, 111598.1)-->
			<iaixsl:if test="(/shop/page/projector/product/enclosures/documents/item) or (/shop/page/projector/product/enclosures/audio/item)  or (/shop/page/projector/product/enclosures/other)  or (/shop/page/projector/product/enclosures/images_attachments/item) or (/shop/page/projector/product/enclosures/video/item)">
				
				<iaixsl:variable name="label_enclosures">Do pobrania</iaixsl:variable>

				<section id="projector_enclosures" class="enclosures mb-5 col-12">
					<iaixsl:if test="$label_enclosures">
						<div class="enclosures__label mb-3">
							<span class="enclosures__label_txt"><iaixsl:value-of select="$label_enclosures"/></span>
						</div>
					</iaixsl:if>
					<ul class="enclosures__list row">
						<iaixsl:for-each select="/shop/page/projector/product/enclosures/*/item">
							<li class="enclosures__item col-12 col-sm-4 col-md-3 mb-2">
								<a>
									<iaixsl:choose>
										<iaixsl:when test="@extension = 'swf'">
											<iaixsl:attribute name="class">enclosures__name --swf</iaixsl:attribute>
										</iaixsl:when>
										<iaixsl:when test="@type = 'video'">
											<iaixsl:attribute name="class">enclosures__name --video</iaixsl:attribute>
										</iaixsl:when>
										<iaixsl:when test="@type = 'audio/mpeg'">
											<iaixsl:attribute name="class">enclosures__name --audio</iaixsl:attribute>
										</iaixsl:when>
										<iaixsl:when test="@type = 'image/image'">
											<iaixsl:attribute name="class">enclosures__name --image</iaixsl:attribute>
										</iaixsl:when>
										<iaixsl:when test="@type = 'doc'">
											<iaixsl:attribute name="class">enclosures__name --document</iaixsl:attribute>
										</iaixsl:when>
										<iaixsl:otherwise>
											<iaixsl:attribute name="class">enclosures__name --download</iaixsl:attribute>
										</iaixsl:otherwise>
									</iaixsl:choose>
									<iaixsl:if test="@type = 'doc' or @extension = 'swf' or @type='other'"><iaixsl:attribute name="target">_blank</iaixsl:attribute></iaixsl:if>
									<iaixsl:attribute name="href"><iaixsl:value-of select="@url"/></iaixsl:attribute>
									<iaixsl:value-of select="@name"/>
								</a>
							</li>
						</iaixsl:for-each>
					</ul>
				</section>
			</iaixsl:if>
		<!--Karta produktu - słownik opisu (projector_dictionary, 113223.1)-->
			

		<!--Karta produktu - gwarancja (projector_warranty, 111609.1)-->
        <iaixsl:comment>
            <iaixsl:if test="page/projector/product/warranty and not(page/projector/product/warranty= '')">
                <section id="projector_warranty" class="warranty mb-5 col-12">
                    <iaixsl:attribute name="data-type"><iaixsl:value-of select="page/projector/product/warranty/@type"/></iaixsl:attribute>
                    <iaixsl:attribute name="data-period"><iaixsl:value-of select="page/projector/product/warranty/@period"/></iaixsl:attribute>

                    
                    <div class="warranty__label mb-3">
                        <span class="warranty__label_txt"><iaixsl:value-of disable-output-escaping="yes" select="page/projector/product/warranty/@name"/></span>
                    </div>

                    
                    <iaixsl:if test="page/projector/product/warranty/@gfx">
                        <div class="warranty__img_wrapper mb-3">
                            <img class="warranty__img">
                                <iaixsl:attribute name="src"><iaixsl:value-of select="page/projector/product/warranty/@gfx"/></iaixsl:attribute>
                                <iaixsl:attribute name="alt"><iaixsl:value-of select="page/projector/product/warranty/@name"/></iaixsl:attribute>
                            </img>
                        </div>
                    </iaixsl:if>

                    
                    <div class="warranty__description col-12 col-md-7 mx-auto"><iaixsl:value-of disable-output-escaping="yes" select="page/projector/product/warranty/text()"/></div>
                </section>
            </iaixsl:if>
        </iaixsl:comment>
        <!--Produkty powiązane z tym produktem - strefa 1 (projector_associated_zone1, 111594.1)-->
            
         

            
        <!--Product questions (projector_product_questions, 111614.1)-->
			<iaixsl:if test="count(page/projector/questions/question)">
				
				<iaixsl:variable name="label_questions">Pytania innych klientów</iaixsl:variable>

				<section id="product_questions_list" class="questions mb-5 col-12">
					
					<iaixsl:if test="$label_questions">
						<div class="questions__label headline">
							<span class="questions__label_txt headline__name"><iaixsl:value-of select="$label_questions"/></span>
						</div>
					</iaixsl:if>

					<div class="questions__wrapper row align-items-start">
						
						<div class="questions__block --questions col-12 col-md-6 col-lg-7 mb-2 mb-md-0">
							<iaixsl:for-each select="page/projector/questions/question">
								<div class="questions__item">
									<a href="#showAnswer" class="questions__question d-flex align-items-center justify-content-between">
										<span class="questions__question_txt py-2"><iaixsl:value-of disable-output-escaping="yes" select="@question"/></span>
									</a>
									<div class="questions__answer pb-2">
										<span class="questions__answer_txt"><iaixsl:value-of disable-output-escaping="yes" select="@answer"/></span>
									</div>
								</div>
							</iaixsl:for-each>
						</div>
						
						<div class="questions__block --banner col-12 col-md-6 col-lg-5">
							<div class="questions__banner">
								<strong class="questions__txt1">Potrzebujesz pomocy? Masz pytania?</strong>
								<div class="questions__button_wrapper">
									<div class="questions__txt_wrapper">
										<span class="questions__txt2">Skorzystaj z formularza zapytania lub zadzwoń pod numer</span>
										<iaixsl:choose>
											<iaixsl:when test="/shop/contact/contact_nodes/node[@type='phone'][1]/@link">
												<a class="questions__phone --link">
													<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/contact/contact_nodes/node[@type='phone'][1]/@link"/></iaixsl:attribute>
													<iaixsl:value-of select="/shop/contact/contact_nodes/node[@type='phone'][1]/@value"/>
												</a>
											</iaixsl:when>
											<iaixsl:otherwise>
												<span class="questions__phone"><iaixsl:value-of select="/shop/contact/contact_nodes/node[@type='phone'][1]/@value"/></span>
											</iaixsl:otherwise>
										</iaixsl:choose>
									</div>
									<a class="btn --solid --medium questions__button">Zadaj pytanie</a>
								</div>
							</div>
						</div>
					</div>
				</section>
			</iaixsl:if>

                <section id="product_askforproduct" class="askforproduct mb-5 col-12 col-md-6">
                    <iaixsl:if test="count(page/projector/questions/question)">
                        <iaixsl:attribute name="data-questions">true</iaixsl:attribute>
                    </iaixsl:if>

                    
                    <iaixsl:variable name="label_askforproduct">Zapytaj o produkt</iaixsl:variable>
                    <iaixsl:variable name="privacy_text1_askforproduct">Dane są przetwarzane zgodnie z </iaixsl:variable>
                    <iaixsl:variable name="privacy_text2_askforproduct">polityką prywatności</iaixsl:variable>
                    <iaixsl:variable name="privacy_text3_askforproduct">. Przesyłając je, akceptujesz jej postanowienia. </iaixsl:variable>
                    <iaixsl:variable name="button_legend_askforproduct"></iaixsl:variable>

                    
                    <iaixsl:if test="$label_askforproduct">
                        <div class="askforproduct__label headline  big_label custom-label">
                            <span class="askforproduct__label_txt headline__name"><iaixsl:value-of select="$label_askforproduct"/></span>
                        </div>
                    </iaixsl:if>

                    <form action="/settings.php" class="askforproduct__form row flex-column align-items-center" method="post" novalidate="novalidate">
                        
                        <div class="askforproduct__description col-12 mb-4">
                            <span class="askforproduct__description_txt">Jeżeli powyższy opis jest dla Ciebie niewystarczający, prześlij nam swoje pytanie odnośnie tego produktu. Postaramy się odpowiedzieć tak szybko jak tylko będzie to możliwe.
                            </span>
                            <span class="askforproduct__privacy"><iaixsl:value-of select="$privacy_text1_askforproduct"/><a><iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/private_policy/@url"/></iaixsl:attribute><iaixsl:value-of select="$privacy_text2_askforproduct"/></a><iaixsl:value-of select="$privacy_text3_askforproduct"/></span>
                        </div>

                        <input type="hidden" name="question_product_id"><iaixsl:attribute name="value"><iaixsl:value-of select="page/projector/product/@id"/></iaixsl:attribute></input>
                        <input type="hidden" name="question_action" value="add"/>

                        <div class="askforproduct__inputs col-12 row">
                            
                            <div class="f-group askforproduct__question col-6">
                                <div class="f-feedback askforproduct__feedback --question">
                                    <textarea id="askforproduct__question_input" rows="6" cols="52" type="question" class="f-control --validate" name="product_question" minlength="3" required="required"/>
                                    <label for="askforproduct__question_input" class="f-label">
                                        Pytanie
                                    </label>
                                    <span class="f-control-feedback"/>
                                </div>
                            </div>
                            <div class="col-6">
                            <div class="f-group askforproduct__email">
                                <div class="f-feedback askforproduct__feedback --email">
                                    <input id="askforproduct__email_input" type="email" class="f-control --validate" name="question_email" required="required">
                                        <iaixsl:if test="page/projector/sender/@email and not(page/projector/sender/@email = '') ">
                                            <iaixsl:attribute name="class">f-control --validate --focused</iaixsl:attribute>
                                            <iaixsl:attribute name="value"><iaixsl:value-of select="page/projector/sender/@email"/></iaixsl:attribute>
                                        </iaixsl:if>
                                    </input>
                                    <label for="askforproduct__email_input" class="f-label">
                                        E-mail
                                    </label>
                                    <span class="f-control-feedback"/>
                                </div>
                            </div>
                            <div class="askforproduct__submit col-12 px-0">
                            <button class="btn --solid --medium px-5 mb-2 askforproduct__button">
                                Wyślij
                            </button>
                            <iaixsl:if test="$button_legend_askforproduct">
                                <div class="askforproduct__button_legend">
                                    <iaixsl:value-of select="$button_legend_askforproduct"/>
                                </div>
                            </iaixsl:if>
                            </div>
                            </div>

                            
                        </div>

                        
                        
                    </form>
                </section>
			
			<iaixsl:if test="/shop/@projector_askforproduct"> </iaixsl:if>
		<!--Karta towaru - opinie (projector_projector_opinons_form, 111948.1)-->
                <section id="opinions_section" class="row mb-4 mx-0 col-12 col-md-6">

                    <iaixsl:variable name="count_opinions">3</iaixsl:variable>
                    <iaixsl:variable name="more_opinions">Zobacz więcej</iaixsl:variable>

                    <iaixsl:if test="/shop/page/projector/comments/@all > '0'">
                        <div class="col-12">
                            <h2 class="headline big_label custom-label">
                                <span class="headline__name">Opinie o <iaixsl:value-of disable-output-escaping="yes" select="/shop/page/projector/product/name"/></span>
                            </h2>
                        </div>

                        <div class="average_opinions_container col-12">
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
                                            Liczba wystawionych opinii: <iaixsl:value-of select="page/projector/comments/@all"/>
                                        </div>
                                    </div>
                                    <div class="opinions_add">
                                        <iaixsl:choose>
                                            <iaixsl:when test="(page/projector/comments/opinionClient/opinion/@stat = 'y')">
                                                <div class="opinions_avg_info menu_messages_message small">
                                                    Twoja opinia jest już zatwierdzona. Nie możesz dodać więcej opinii do tego produktu.
                                                </div>
                                            </iaixsl:when>
                                            <iaixsl:otherwise>
                                                <iaixsl:if test="(page/projector/comments/opinionClient/opinion/@stat = 'n')">
                                                    <div class="opinions_avg_info menu_messages_message small">
                                                        Przed opublikowaniem Twoja opinia zostanie sprawdzona pod względem obyczajowym.
                                                    </div>
                                                </iaixsl:if>
                                                <a href="#showOpinionForm" id="show_opinion_form" class="btn --solid --medium">
                                                    <iaixsl:choose>
                                                        <iaixsl:when test="(page/projector/comments/opinionClient/opinion/@stat = 'n')">
                                                            Zmień swoją opinię
                                                        </iaixsl:when>
                                                        <iaixsl:otherwise>
                                                            Napisz swoją opinię
                                                        </iaixsl:otherwise>
                                                    </iaixsl:choose>
                                                </a>
                                                <iaixsl:if test="/shop/page/projector/comments/opinionClient/@points">
                                                    <div class="opinions_affiliate_points">
                                                        <iaixsl:choose>
                                                            <iaixsl:when test="/shop/page/projector/comments/opinionClient/image/@points">
                                                                Za opinię ze zdjęciem otrzymasz
                                                            </iaixsl:when>
                                                            <iaixsl:otherwise>
                                                                Za opinię otrzymasz
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

                                                            <iaixsl:text> </iaixsl:text>pkt.</strong>
                                                        <br/>w naszym programie lojalnościowym.
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
                                            <span class="opinion_number">5</span><span class="opinion_number_star"><i class="icon-star"> </i></span>
                                            <div class="opinions_bar_container">
                                                <div class="opinions_bar_active">
                                                    <iaixsl:variable name="total5"><iaixsl:value-of select="count(/shop/page/projector/comments/opinions/opinion[@note='5'])"/></iaixsl:variable>
                                                    <iaixsl:attribute name="style">width: <iaixsl:value-of select="$total5 div $totalOpinionsAll * 100"/>%</iaixsl:attribute>
                                                </div>
                                            </div>
                                            <span class="rate_count"><iaixsl:value-of select="count(page/projector/comments/opinions/opinion[@note='5'])"/></span>
                                        </div>
                                        <div class="opinion_rate" id="shop-opinion_rate_4">
                                            <span class="opinion_number">4</span><span class="opinion_number_star"><i class="icon-star"> </i></span>
                                            <div class="opinions_bar_container">
                                                <div class="opinions_bar_active">
                                                    <iaixsl:variable name="total4"><iaixsl:value-of select="count(/shop/page/projector/comments/opinions/opinion[@note='4'])"/></iaixsl:variable>
                                                    <iaixsl:attribute name="style">width: <iaixsl:value-of select="$total4 div $totalOpinionsAll * 100"/>%</iaixsl:attribute>
                                                </div>
                                            </div>
                                            <span class="rate_count"><iaixsl:value-of select="count(page/projector/comments/opinions/opinion[@note='4'])"/></span>
                                        </div>
                                        <div class="opinion_rate" id="shop-opinion_rate_3">
                                            <span class="opinion_number">3</span><span class="opinion_number_star"><i class="icon-star"> </i></span>
                                            <div class="opinions_bar_container">
                                                <div class="opinions_bar_active">
                                                    <iaixsl:variable name="total3"><iaixsl:value-of select="count(/shop/page/projector/comments/opinions/opinion[@note='3'])"/></iaixsl:variable>
                                                    <iaixsl:attribute name="style">width: <iaixsl:value-of select="$total3 div $totalOpinionsAll * 100"/>%</iaixsl:attribute>
                                                </div>
                                            </div>
                                            <span class="rate_count"><iaixsl:value-of select="count(page/projector/comments/opinions/opinion[@note='3'])"/></span>
                                        </div>
                                        <div class="opinion_rate" id="shop-opinion_rate_2">
                                            <span class="opinion_number">2</span><span class="opinion_number_star"><i class="icon-star"> </i></span>
                                            <div class="opinions_bar_container">
                                                <div class="opinions_bar_active">
                                                    <iaixsl:variable name="total2"><iaixsl:value-of select="count(/shop/page/projector/comments/opinions/opinion[@note='2'])"/></iaixsl:variable>
                                                    <iaixsl:attribute name="style">width: <iaixsl:value-of select="$total2 div $totalOpinionsAll * 100"/>%</iaixsl:attribute>
                                                </div>
                                            </div>
                                            <span class="rate_count"><iaixsl:value-of select="count(page/projector/comments/opinions/opinion[@note='2'])"/></span>
                                        </div>
                                        <div class="opinion_rate" id="shop-opinion_rate_1">
                                            <span class="opinion_number">1</span><span class="opinion_number_star"><i class="icon-star"> </i></span>
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
                                        Kliknij ocenę aby filtrować opinie
                                    </div>
                                </div>
                            </div>
                        </div>

                        
                        <div class="opinions_list col-12 ml-md-auto">
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
                                        <iaixsl:if test="position() > $count_opinions">
                                            <iaixsl:attribute name="data-hide">true</iaixsl:attribute>
                                        </iaixsl:if>
                                        <div class="opinions_element_holder d-flex mb-4 pb-4 align-items-start">
                                            <iaixsl:if test="@image_small and not(@image_small = '')">
                                                <div class="opinions_element_photo">
                                                    <a data-imagelightbox="o" target="_blank">
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
                                                </div>
                                                
                                                <div class="opinions_element_text">
                                                    <iaixsl:value-of select="text" disable-output-escaping="yes"/>
                                                </div>
                                                <div class="opinions_element_opinion_bottom">
                                                    <span class="opinion_date"><iaixsl:value-of select="@date"/></span>
                                                    
                                                    <div class="opinion_author">
                                                        <b class="opinions_element_author_title">
                                                            
                                                        </b>
                                                        <span class="opinions_element_author_desc">
                                                            <iaixsl:value-of select="@client"/>
                                                        </span>
                                                    </div>
                                                    <div class="rate_opinion">

                                                        <span>Czy opinia była pomocna?</span>
                                                        <a href="" class="opinion_rate_yes">
                                                            <input name="opinionState" type="hidden">
                                                                <iaixsl:attribute name="value">positive</iaixsl:attribute>
                                                            </input>
                                                            <i class="icon-thumbs-up-empty"></i> Tak <span class="rate_count"><iaixsl:value-of select="@rate_yes"/></span>
                                                        </a>
                                                        <a href="" class="opinion_rate_no">
                                                            <input name="opinionState" type="hidden">
                                                                <iaixsl:attribute name="value">negative</iaixsl:attribute>
                                                            </input>
                                                            <i class="icon-thumbs-down"></i> Nie <span class="rate_count"><iaixsl:value-of select="@rate_no"/></span>
                                                        </a>
                                                        <input name="opinionId" type="hidden">
                                                            <iaixsl:attribute name="value"><iaixsl:value-of select="@opinionId"/></iaixsl:attribute>
                                                        </input>
                                                    </div>
                                                </div>
                                                <iaixsl:if test="response and response != ''">
                                                    <div class="opinion_response">
                                                        <div class="opinion_response_top">
                                                            <b>Odpowiedź sklepu</b>
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
                                Brak opinii z taką liczbą gwiazdek.
                            </div>
                            
                            <iaixsl:if test="$more_opinions and count(/shop/page/projector/comments/opinions/opinion) > $count_opinions">
                                <div class="opinions__more">
                                    <a href="#more_opinions" class="opinions__more_txt"><iaixsl:value-of select="$more_opinions"/></a>
                                </div>
                            </iaixsl:if>
                        </div>
                    </iaixsl:if>

                    
                    <iaixsl:if test="not(page/projector/comments/opinionClient/opinion/@stat = 'y')">
                        <div class="opinions_add_form col-12">
                            <iaixsl:if test="/shop/page/projector/comments/@all > '0'">
                                <iaixsl:attribute name="class">opinions_add_form d-none</iaixsl:attribute>
                            </iaixsl:if>

                            <div class="big_label custom-label">
                                <span>
                                <iaixsl:choose>
                                    <iaixsl:when test="(/shop/page/projector/comments/opinionClient/opinion/@stat = 'n')">
                                        Zmień swoją opinię
                                    </iaixsl:when>
                                    <iaixsl:otherwise>
                                        Napisz swoją opinię
                                    </iaixsl:otherwise>
                                </iaixsl:choose>
                                </span>

                            </div>
                            <form class="row flex-column align-items-center shop_opinion_form" enctype="multipart/form-data" id="shop_opinion_form" action="/settings.php" method="post">
                                <input type="hidden" name="product">
                                    <iaixsl:attribute name="value"><iaixsl:value-of select="page/projector/product/@id"/></iaixsl:attribute>
                                </input>

                                
                                

                                
                                
                                <div class="row">
                                <iaixsl:if test="(page/projector/comments/opinionClient/image/@enabled='true')">
                                    <div class="opinion_add_photos col-6">
                                        <div class="opinion_add_photos_wrapper d-flex align-items-center">
                                            <span class="opinion_add_photos_text">
                                                <i class="icon-file-image"></i>  Dodaj własne zdjęcie produktu:
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
                                                    pkt.
                                                </strong>
                                            </iaixsl:if>
                                        </div>
                                        <iaixsl:if test="/shop/page/projector/comments/opinionClient/image/@points">
                                            <div class="opinions_points_picture">
                                                Dodaj zrobione przez siebie zdjęcie tego produktu <br/> i zdobądź dodatkowe
                                                <strong>
                                                    <iaixsl:choose>
                                                        <iaixsl:when test="substring-after(/shop/page/projector/comments/opinionClient/image/@points, '.') = '00'">
                                                            <iaixsl:value-of select="substring-before(/shop/page/projector/comments/opinionClient/image/@points, '.')"/>
                                                        </iaixsl:when>
                                                        <iaixsl:otherwise>
                                                            <iaixsl:value-of select="/shop/page/projector/comments/opinionClient/image/@points"/>
                                                        </iaixsl:otherwise>
                                                    </iaixsl:choose>
                                                    pkt.
                                                </strong>
                                                w naszym programie lojalnościowym.
                                            </div>
                                        </iaixsl:if>
                                    </div>
                                </iaixsl:if>

                                <div class="col-6">
                                <iaixsl:if test="/shop/page/projector/sender/@opinion_unregistered = 'true'">
                                    <div class="form-group  ">
                                        <div class="has-feedback has-required">
                                            <input id="addopinion_name" class="form-control" type="text" name="addopinion_name" value="">
                                                <iaixsl:attribute name="required">required</iaixsl:attribute>
                                            </input>
                                            <label for="addopinion_name" class="control-label">
                                                Twoje imię
                                            </label>
                                            <span class="form-control-feedback"/>
                                        </div>
                                    </div>
                                    <div class="form-group  ">
                                        <div class="has-feedback has-required">
                                            <input id="addopinion_email" class="form-control" type="email" name="addopinion_email" value="">
                                                <iaixsl:attribute name="required">required</iaixsl:attribute>
                                            </input>
                                            <label for="addopinion_email" class="control-label">
                                                Twój email
                                            </label>
                                            <span class="form-control-feedback"/>
                                        </div>
                                    </div>
                                </iaixsl:if>
                                </div>

                                </div>

                                <div class="form-group col-12 px-0">
                                    <div class="has-feedback">
                                        <textarea id="addopp" class="form-control" name="opinion">
                                            <iaixsl:if test="/shop/page/projector/comments/opinionClient/opinion and not(/shop/page/projector/comments/opinionClient/opinion = '')">
                                                <iaixsl:attribute name="class">form-control focused</iaixsl:attribute>
                                            </iaixsl:if>
                                            <iaixsl:value-of select="/shop/page/projector/comments/opinionClient/opinion"/>
                                        </textarea>
                                        <label for="opinion" class="control-label">
                                            Treść twojej opinii
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
                                                pkt.
                                            </strong>
                                        </iaixsl:if>
                                    </div>
                                </div>


                                <div class="shop_opinions_button col-12 row">
                                    <div class="shop_opinions_notes col-6">
                                    <div class="shop_opinions_name">
                                        Twoja ocena:
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
                                                        <i class="icon-star"> </i>
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


                                    <button type="submit" class="btn --solid --medium opinions-shop_opinions_button px-5 col-6">
                                        <iaixsl:choose>
                                            <iaixsl:when test="/shop/page/projector/comments/opinionClient/opinion and not(/shop/page/projector/comments/opinionClient/opinion = '')">
                                                <iaixsl:attribute name="title">Zmień swoją opinię</iaixsl:attribute>
                                                <iaixsl:attribute name="data-button_edit">true</iaixsl:attribute>
                                                Zmień opinię
                                            </iaixsl:when>
                                            <iaixsl:otherwise>
                                                <iaixsl:attribute name="title">Dodaj opinię</iaixsl:attribute>
                                                Wyślij opinię
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

		<!--Produkty powiązane z tym produktem - strefa 2 (projector_associated_zone2, 111439.1)-->
            
                <iaixsl:if test="page/projector/products_associated_zone2">
                    <section id="products_associated_zone2" class="hotspot mb-5 --slider col-12 p-0 px-sm-3">
                        
                        <iaixsl:variable name="headline_after_products_associated_zone2"></iaixsl:variable>
                        
                        <iaixsl:if test="not(page/projector/products_associated_zone2/product or page/projector/products_associated_zone2/opinion)">
                            <iaixsl:attribute name="data-ajaxLoad">true</iaixsl:attribute>
                            <iaixsl:attribute name="data-pageType">projector</iaixsl:attribute>
                        </iaixsl:if>

             
                        <iaixsl:choose>
                            <iaixsl:when test="page/projector/products_associated_zone2/product or page/projector/products_associated_zone2/opinion">

                            
                            <h2>
                                <iaixsl:choose>
                                    <iaixsl:when test="page/projector/products_associated_zone2/@link">
                                        <a class="headline">
                                            <iaixsl:attribute name="href"><iaixsl:value-of select="page/projector/products_associated_zone2/@link"/></iaixsl:attribute>
                                            <iaixsl:attribute name="title"></iaixsl:attribute>

                                            <span class="headline__name">
                                                <iaixsl:choose>
                                                    <iaixsl:when test="page/projector/products_associated_zone2/@name"><iaixsl:value-of select="page/projector/products_associated_zone2/@name"/></iaixsl:when>
                                                    <iaixsl:otherwise>Produkty kupione z tym produktem</iaixsl:otherwise>
                                                </iaixsl:choose>
                                            </span>
                                            <iaixsl:if test="$headline_after_products_associated_zone2">
                                                <span class="headline__after"><iaixsl:value-of select="$headline_after_products_associated_zone2"/></span>
                                            </iaixsl:if>
                                        </a>
                                    </iaixsl:when>
                                    <iaixsl:otherwise>
                                        <span class="headline">
                                            <span class="headline__name">
                                                <iaixsl:choose>
                                                    <iaixsl:when test="page/projector/products_associated_zone2/@name">
                                                    <!-- <iaixsl:value-of select="page/projector/products_associated_zone2/@name"/> -->
                                                    </iaixsl:when>
                                                    <iaixsl:otherwise>Produkty kupione z tym produktem</iaixsl:otherwise>
                                                </iaixsl:choose>
                                            </span>
                                        </span>
                                    </iaixsl:otherwise>
                                </iaixsl:choose>
                            </h2>

                            <div class="products d-flex flex-wrap justify-content-center">
                                <iaixsl:for-each select="page/projector/products_associated_zone2/*">
                                    
                                    <iaixsl:variable name="var_name"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of disable-output-escaping="yes" select="product/name/text()"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of disable-output-escaping="yes" select="name/text()"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                    <iaixsl:variable name="var_icon"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/icon"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="icon"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                    <iaixsl:variable name="var_icon_small"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/icon_small"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="icon_small"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                    <iaixsl:variable name="var_link"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/@link"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="@link"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                    <iaixsl:variable name="var_yousave"></iaixsl:variable>
                                    <iaixsl:variable name="var_net_prices"> netto</iaixsl:variable>
                                    <iaixsl:variable name="var_b2b">Produkt niedostępny w sprzedaży detalicznej. Zarejestruj się, aby zobaczyć ceny hurtowe.</iaixsl:variable>

                                    <div class="product col-lg-2 col-sm-3 py-3">

                                        
                                        <iaixsl:if test="$var_yousave and not($var_yousave = '') and price/@yousave_formatted != ''">
                                            <div class="product__yousave">
                                                <span class="product__yousave --label"><iaixsl:value-of select="$var_yousave"/></span>
                                                <span class="product__yousave --value"><iaixsl:value-of select="price/@yousave_formatted"/></span>
                                            </div>
                                        </iaixsl:if>

                                        
                                        <a class="product__icon d-flex justify-content-center align-items-center">
                                            <iaixsl:attribute name="data-product-id"><iaixsl:value-of select="@id"/></iaixsl:attribute>
                                            <iaixsl:attribute name="href"><iaixsl:value-of select="$var_link"/></iaixsl:attribute>
                                            <iaixsl:attribute name="title"><iaixsl:value-of select="$var_name"/></iaixsl:attribute>

                                            <img src="/gfx/pol/loader.gif?r=1600678639" class="b-lazy">
                                                <iaixsl:attribute name="data-src-small"><iaixsl:value-of disable-output-escaping="yes" select="$var_icon_small"/></iaixsl:attribute>
                                                <iaixsl:attribute name="src"><iaixsl:value-of disable-output-escaping="yes" select="$var_icon"/></iaixsl:attribute>
                                                <iaixsl:attribute name="alt"><iaixsl:value-of disable-output-escaping="yes" select="$var_name"/></iaixsl:attribute>
                                            </img>
                                        </a>

                                        
                                        <h3>
                                            <a class="product__name">
                                                <iaixsl:attribute name="href"><iaixsl:value-of select="$var_link"/></iaixsl:attribute>
                                                <iaixsl:attribute name="title"><iaixsl:value-of select="$var_name"/></iaixsl:attribute>
                                                <iaixsl:value-of select="$var_name"/>
                                            </a>
                                        </h3>

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

                                                <div class="product__prices">
                                                    <iaixsl:choose>
                                                        
                                                        <iaixsl:when test="$var_size_min_formatted != $var_size_max_formatted">
                                                            <iaixsl:if test="$var_size_min_maxprice_formatted != ''">
                                                                <del class="price --max">
                                                                    <span><iaixsl:value-of select="$var_size_min_maxprice_formatted"/></span><b><iaixsl:text> - </iaixsl:text></b><span><iaixsl:value-of select="$var_size_max_maxprice_formatted"/></span>
                                                                </del>
                                                            </iaixsl:if>
                                                            <strong class="price">
                                                                <iaixsl:value-of select="$var_size_min_formatted"/><iaixsl:text> - </iaixsl:text><iaixsl:value-of select="$var_size_max_formatted"/>
                                                            </strong>
                                                            <iaixsl:if test="$var_points != ''">
                                                                <span class="price --points">
                                                                    <iaixsl:value-of select="$var_points"/><span class="currency"> pkt.</span>
                                                                </span>
                                                            </iaixsl:if>
                                                        </iaixsl:when>

                                                        
                                                        <iaixsl:when test="(($var_value = 0) and $var_points = '') or ($var_value = 0 and $var_b2b and not($var_b2b = '') and not(/shop/basket/@wholesaler = 'true'))">
                                                            <iaixsl:choose>
                                                                <iaixsl:when test="$var_b2b and not($var_b2b = '')">
                                                                  <a class="price --phone" href="/signin.php">
                                                                    <iaixsl:attribute name="title"><iaixsl:value-of select="$var_b2b"/></iaixsl:attribute>
                                                                    <iaixsl:value-of select="$var_b2b"/>
                                                                  </a>
                                                                </iaixsl:when>
                                                                <iaixsl:otherwise>
                                                                  <a class="price --phone" href="/contact.php">
                                                                    <iaixsl:attribute name="title">Kliknij, by przejść do formularza kontaktu</iaixsl:attribute>
                                                                    Cena na telefon
                                                                  </a>
                                                                </iaixsl:otherwise>
                                                            </iaixsl:choose>
                                                        </iaixsl:when>

                                                        
                                                        <iaixsl:otherwise>
                                                            <iaixsl:if test="$var_maxprice_formatted != ''">
                                                                <del class="price --max">
                                                                    <iaixsl:value-of select="$var_maxprice_formatted"/>
                                                                </del>
                                                            </iaixsl:if>
                                                            <strong class="price">
                                                                <iaixsl:value-of select="$var_price_formatted"/>
                                                            </strong>
                                                            <iaixsl:if test="$var_points != ''">
                                                                <span class="price --points">
                                                                    <iaixsl:value-of select="$var_points"/><span class="currency"> pkt.</span>
                                                                </span>
                                                            </iaixsl:if>
                                                        </iaixsl:otherwise>
                                                    </iaixsl:choose>
                                                </div>
                                                <iaixsl:if test="price/@unit_converted_price_formatted">
                                                    <small class="s_unit_converted_price"><iaixsl:value-of select="price/@unit_converted_price_formatted"/><iaixsl:text> / </iaixsl:text><iaixsl:value-of select="price/@unit_converted_format"/></small>
                                                </iaixsl:if>
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

                                                <div class="product__prices">
                                                    <iaixsl:choose>
                                                        
                                                        <iaixsl:when test="$var_size_min_net_formatted != $var_size_max_net_formatted">
                                                            <iaixsl:if test="$var_size_min_net_maxprice_formatted != ''">
                                                                <del class="price --max">
                                                                    <span><iaixsl:value-of select="$var_size_min_net_maxprice_formatted"/></span><b><iaixsl:text> - </iaixsl:text></b><span><iaixsl:value-of select="$var_size_max_maxprice_net_formatted"/></span><iaixsl:value-of select="$var_net_prices"/>
                                                                </del>
                                                            </iaixsl:if>
                                                            <strong class="price">
                                                                <iaixsl:value-of select="$var_size_min_net_formatted"/><iaixsl:text> - </iaixsl:text><iaixsl:value-of select="$var_size_max_net_formatted"/><iaixsl:value-of select="$var_net_prices"/>
                                                            </strong>
                                                            <iaixsl:if test="$var_points_net != ''">
                                                                <span class="price --points">
                                                                    <iaixsl:value-of select="$var_points_net"/><span class="currency"> pkt.</span>
                                                                </span>
                                                            </iaixsl:if>
                                                        </iaixsl:when>

                                                        
                                                        <iaixsl:when test="(($var_net_value = 0) and $var_points_net = '') or ($var_net_value = 0 and $var_b2b and not($var_b2b = '') and not(/shop/basket/@wholesaler = 'true'))">
                                                            <iaixsl:choose>
                                                                <iaixsl:when test="$var_b2b and not($var_b2b = '')">
                                                                  <a class="price --phone" href="/signin.php">
                                                                    <iaixsl:attribute name="title"><iaixsl:value-of select="$var_b2b"/></iaixsl:attribute>
                                                                    <iaixsl:value-of select="$var_b2b"/>
                                                                  </a>
                                                                </iaixsl:when>
                                                                <iaixsl:otherwise>
                                                                  <a class="price --phone" href="/contact.php">
                                                                    <iaixsl:attribute name="title">Kliknij, by przejść do formularza kontaktu</iaixsl:attribute>
                                                                    Cena na telefon
                                                                  </a>
                                                                </iaixsl:otherwise>
                                                            </iaixsl:choose>
                                                        </iaixsl:when>

                                                        
                                                        <iaixsl:otherwise>
                                                            <iaixsl:if test="$var_maxprice_net_formatted != ''">
                                                                <del class="price --max">
                                                                    <iaixsl:value-of select="$var_maxprice_net_formatted"/><iaixsl:value-of select="$var_net_prices"/>
                                                                </del>
                                                            </iaixsl:if>
                                                            <strong class="price">
                                                                <iaixsl:value-of select="$var_price_formatted"/><iaixsl:value-of select="$var_net_prices"/>
                                                            </strong>
                                                            <iaixsl:if test="$var_points_net != ''">
                                                                <span class="price --points">
                                                                    <iaixsl:value-of select="$var_points_net"/><span class="currency"> pkt.</span>
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

                                        
                                        <iaixsl:if test="client/@client or @note or content">
                                            <div class="product__opinion">
                                                
                                                <iaixsl:if test="client/@client">
                                                    <div class="product__opinion_client"><iaixsl:value-of disable-output-escaping="yes" select="client/@client"/></div>
                                                </iaixsl:if>

                                                
                                                <iaixsl:if test="@note">
                                                    <div class="note">
                                                        <span>
                                                            <i class="icon-star">
                                                                <iaixsl:if test="@note > 0.5"><iaixsl:attribute name="class">icon-star --active</iaixsl:attribute></iaixsl:if>
                                                            </i>
                                                            <i class="icon-star">
                                                                <iaixsl:if test="@note > 1.5"><iaixsl:attribute name="class">icon-star --active</iaixsl:attribute></iaixsl:if>
                                                            </i>
                                                            <i class="icon-star">
                                                                <iaixsl:if test="@note > 2.5"><iaixsl:attribute name="class">icon-star --active</iaixsl:attribute></iaixsl:if>
                                                            </i>
                                                            <i class="icon-star">
                                                                <iaixsl:if test="@note > 3.5"><iaixsl:attribute name="class">icon-star --active</iaixsl:attribute></iaixsl:if>
                                                            </i>
                                                            <i class="icon-star">
                                                                <iaixsl:if test="@note > 4.5"><iaixsl:attribute name="class">icon-star --active</iaixsl:attribute></iaixsl:if>
                                                            </i>
                                                        </span>
                                                        <small>
                                                            Ocena: <iaixsl:value-of disable-output-escaping="yes" select="@note"/>/5
                                                        </small>
                                                    </div>
                                                </iaixsl:if>

                                                
                                                <iaixsl:if test="content">
                                                    <div class="product__opinion_content"><iaixsl:value-of disable-output-escaping="yes" select="content"/></div>
                                                </iaixsl:if>
                                            </div>
                                        </iaixsl:if>
                                    </div>
                                </iaixsl:for-each>
                            </div>
                        </iaixsl:when>
                        <iaixsl:otherwise>
                            <div class="hotspot mb-5 skeleton">
                                <span class="headline"/>
                                <div class="products d-flex flex-wrap">
                                    <div class="product col-6 col-sm-3 py-3">
                                        <span class="product__icon d-flex justify-content-center align-items-center"/>
                                        <span class="product__name"/>
                                        <div class="product__prices"/>
                                    </div>
                                    <div class="product col-6 col-sm-3 py-3">
                                        <span class="product__icon d-flex justify-content-center align-items-center"/>
                                        <span class="product__name"/>
                                        <div class="product__prices"/>
                                    </div>
                                    <div class="product col-6 col-sm-3 py-3">
                                        <span class="product__icon d-flex justify-content-center align-items-center"/>
                                        <span class="product__name"/>
                                        <div class="product__prices"/>
                                    </div>
                                    <div class="product col-6 col-sm-3 py-3">
                                        <span class="product__icon d-flex justify-content-center align-items-center"/>
                                        <span class="product__name"/>
                                        <div class="product__prices"/>
                                    </div>
                                </div>
                            </div>
                        </iaixsl:otherwise>
                        </iaixsl:choose>
                    </section>
                </iaixsl:if>

                <iaixsl:if test="/shop/page/projector/products_associated_zone2/@iairs_ajax"> </iaixsl:if>
                <iaixsl:if test="/shop/page/projector/products_associated_zone2/@hotspot_ajax"> </iaixsl:if>
                

              
            
        <!--Produkty powiązane z tym produktem - strefa 3 (projector_associated_zone3, 111440.1)-->
            
                <iaixsl:if test="page/projector/products_associated_zone3">

                    <section id="products_associated_zone3" class="hotspot mb-5 col-12">
                        
                        <iaixsl:variable name="headline_after_products_associated_zone3"></iaixsl:variable>
                        
                        <iaixsl:if test="not(page/projector/products_associated_zone3/product or page/projector/products_associated_zone3/opinion)">
                            <iaixsl:attribute name="data-ajaxLoad">true</iaixsl:attribute>
                            <iaixsl:attribute name="data-pageType">projector</iaixsl:attribute>
                        </iaixsl:if>
                        <iaixsl:choose>
                            <iaixsl:when test="page/projector/products_associated_zone3/product or page/projector/products_associated_zone3/opinion">

                            
                            <h2>
                                <iaixsl:choose>
                                    <iaixsl:when test="page/projector/products_associated_zone3/@link">
                                        <a class="headline">
                                            <iaixsl:attribute name="href"><iaixsl:value-of select="page/projector/products_associated_zone3/@link"/></iaixsl:attribute>
                                            <iaixsl:attribute name="title"></iaixsl:attribute>

                                            <span class="headline__name">
                                                <iaixsl:choose>
                                                    <iaixsl:when test="page/projector/products_associated_zone3/@name"><iaixsl:value-of select="page/projector/products_associated_zone3/@name"/></iaixsl:when>
                                                    <iaixsl:otherwise>Produkty kupione z tym produktem</iaixsl:otherwise>
                                                </iaixsl:choose>
                                            </span>
                                            <iaixsl:if test="$headline_after_products_associated_zone3">
                                                <span class="headline__after"><iaixsl:value-of select="$headline_after_products_associated_zone3"/></span>
                                            </iaixsl:if>
                                        </a>
                                    </iaixsl:when>
                                    <iaixsl:otherwise>
                                        <span class="headline">
                                            <span class="headline__name">
                                                <iaixsl:choose>
                                                    <iaixsl:when test="page/projector/products_associated_zone3/@name"><iaixsl:value-of select="page/projector/products_associated_zone3/@name"/></iaixsl:when>
                                                    <iaixsl:otherwise>Produkty kupione z tym produktem</iaixsl:otherwise>
                                                </iaixsl:choose>
                                            </span>
                                        </span>
                                    </iaixsl:otherwise>
                                </iaixsl:choose>
                            </h2>

                            <div class="products d-flex flex-wrap">
                                <iaixsl:for-each select="page/projector/products_associated_zone3/*">
                                    
                                    <iaixsl:variable name="var_name"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of disable-output-escaping="yes" select="product/name/text()"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of disable-output-escaping="yes" select="name/text()"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                    <iaixsl:variable name="var_icon"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/icon"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="icon"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                    <iaixsl:variable name="var_icon_small"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/icon_small"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="icon_small"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                    <iaixsl:variable name="var_link"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/@link"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="@link"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                    <iaixsl:variable name="var_yousave"></iaixsl:variable>
                                    <iaixsl:variable name="var_net_prices"> netto</iaixsl:variable>
                                    <iaixsl:variable name="var_b2b">Produkt niedostępny w sprzedaży detalicznej. Zarejestruj się, aby zobaczyć ceny hurtowe.</iaixsl:variable>

                                    <div class="product col-6 col-sm-3 py-3">

                                        
                                        <iaixsl:if test="$var_yousave and not($var_yousave = '') and price/@yousave_formatted != ''">
                                            <div class="product__yousave">
                                                <span class="product__yousave --label"><iaixsl:value-of select="$var_yousave"/></span>
                                                <span class="product__yousave --value"><iaixsl:value-of select="price/@yousave_formatted"/></span>
                                            </div>
                                        </iaixsl:if>

                                        
                                        <a class="product__icon d-flex justify-content-center align-items-center">
                                            <iaixsl:attribute name="data-product-id"><iaixsl:value-of select="@id"/></iaixsl:attribute>
                                            <iaixsl:attribute name="href"><iaixsl:value-of select="$var_link"/></iaixsl:attribute>
                                            <iaixsl:attribute name="title"><iaixsl:value-of select="$var_name"/></iaixsl:attribute>

                                            <img src="/gfx/pol/loader.gif?r=1600678639" class="b-lazy">
                                                <iaixsl:attribute name="data-src-small"><iaixsl:value-of disable-output-escaping="yes" select="$var_icon_small"/></iaixsl:attribute>
                                                <iaixsl:attribute name="src"><iaixsl:value-of disable-output-escaping="yes" select="$var_icon"/></iaixsl:attribute>
                                                <iaixsl:attribute name="alt"><iaixsl:value-of disable-output-escaping="yes" select="$var_name"/></iaixsl:attribute>
                                            </img>
                                        </a>

                                        
                                        <h3>
                                            <a class="product__name">
                                                <iaixsl:attribute name="href"><iaixsl:value-of select="$var_link"/></iaixsl:attribute>
                                                <iaixsl:attribute name="title"><iaixsl:value-of select="$var_name"/></iaixsl:attribute>
                                                <iaixsl:value-of select="$var_name"/>
                                            </a>
                                        </h3>

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

                                                <div class="product__prices">
                                                    <iaixsl:choose>
                                                        
                                                        <iaixsl:when test="$var_size_min_formatted != $var_size_max_formatted">
                                                            <iaixsl:if test="$var_size_min_maxprice_formatted != ''">
                                                                <del class="price --max">
                                                                    <span><iaixsl:value-of select="$var_size_min_maxprice_formatted"/></span><b><iaixsl:text> - </iaixsl:text></b><span><iaixsl:value-of select="$var_size_max_maxprice_formatted"/></span>
                                                                </del>
                                                            </iaixsl:if>
                                                            <strong class="price">
                                                                <iaixsl:value-of select="$var_size_min_formatted"/><iaixsl:text> - </iaixsl:text><iaixsl:value-of select="$var_size_max_formatted"/>
                                                            </strong>
                                                            <iaixsl:if test="$var_points != ''">
                                                                <span class="price --points">
                                                                    <iaixsl:value-of select="$var_points"/><span class="currency"> pkt.</span>
                                                                </span>
                                                            </iaixsl:if>
                                                        </iaixsl:when>

                                                        
                                                        <iaixsl:when test="(($var_value = 0) and $var_points = '') or ($var_value = 0 and $var_b2b and not($var_b2b = '') and not(/shop/basket/@wholesaler = 'true'))">
                                                          <iaixsl:choose>
                                                              <iaixsl:when test="$var_b2b and not($var_b2b = '')">
                                                                <a class="price --phone" href="/signin.php">
                                                                  <iaixsl:attribute name="title"><iaixsl:value-of select="$var_b2b"/></iaixsl:attribute>
                                                                  <iaixsl:value-of select="$var_b2b"/>
                                                                </a>
                                                              </iaixsl:when>
                                                              <iaixsl:otherwise>
                                                                <a class="price --phone" href="/contact.php">
                                                                  <iaixsl:attribute name="title">Kliknij, by przejść do formularza kontaktu</iaixsl:attribute>
                                                                  Cena na telefon
                                                                </a>
                                                              </iaixsl:otherwise>
                                                          </iaixsl:choose>
                                                        </iaixsl:when>

                                                        
                                                        <iaixsl:otherwise>
                                                            <iaixsl:if test="$var_maxprice_formatted != ''">
                                                                <del class="price --max">
                                                                    <iaixsl:value-of select="$var_maxprice_formatted"/>
                                                                </del>
                                                            </iaixsl:if>
                                                            <strong class="price">
                                                                <iaixsl:value-of select="$var_price_formatted"/>
                                                            </strong>
                                                            <iaixsl:if test="$var_points != ''">
                                                                <span class="price --points">
                                                                    <iaixsl:value-of select="$var_points"/><span class="currency"> pkt.</span>
                                                                </span>
                                                            </iaixsl:if>
                                                        </iaixsl:otherwise>
                                                    </iaixsl:choose>
                                                </div>
                                                <iaixsl:if test="price/@unit_converted_price_formatted">
                                                    <small class="s_unit_converted_price"><iaixsl:value-of select="price/@unit_converted_price_formatted"/><iaixsl:text> / </iaixsl:text><iaixsl:value-of select="price/@unit_converted_format"/></small>
                                                </iaixsl:if>
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

                                                <div class="product__prices">
                                                    <iaixsl:choose>
                                                        
                                                        <iaixsl:when test="$var_size_min_net_formatted != $var_size_max_net_formatted">
                                                            <iaixsl:if test="$var_size_min_net_maxprice_formatted != ''">
                                                                <del class="price --max">
                                                                    <span><iaixsl:value-of select="$var_size_min_net_maxprice_formatted"/></span><b><iaixsl:text> - </iaixsl:text></b><span><iaixsl:value-of select="$var_size_max_maxprice_net_formatted"/></span><iaixsl:value-of select="$var_net_prices"/>
                                                                </del>
                                                            </iaixsl:if>
                                                            <strong class="price">
                                                                <iaixsl:value-of select="$var_size_min_net_formatted"/><iaixsl:text> - </iaixsl:text><iaixsl:value-of select="$var_size_max_net_formatted"/><iaixsl:value-of select="$var_net_prices"/>
                                                            </strong>
                                                            <iaixsl:if test="$var_points_net != ''">
                                                                <span class="price --points">
                                                                    <iaixsl:value-of select="$var_points_net"/><span class="currency"> pkt.</span>
                                                                </span>
                                                            </iaixsl:if>
                                                        </iaixsl:when>

                                                        
                                                        <iaixsl:when test="(($var_net_value = 0) and $var_points_net = '') or ($var_net_value = 0 and $var_b2b and not($var_b2b = '') and not(/shop/basket/@wholesaler = 'true'))">
                                                           <iaixsl:choose>
                                                              <iaixsl:when test="$var_b2b and not($var_b2b = '')">
                                                                <a class="price --phone" href="/signin.php">
                                                                  <iaixsl:attribute name="title"><iaixsl:value-of select="$var_b2b"/></iaixsl:attribute>
                                                                  <iaixsl:value-of select="$var_b2b"/>
                                                                </a>
                                                              </iaixsl:when>
                                                              <iaixsl:otherwise>
                                                                <a class="price --phone" href="/contact.php">
                                                                  <iaixsl:attribute name="title">Kliknij, by przejść do formularza kontaktu</iaixsl:attribute>
                                                                  Cena na telefon
                                                                </a>
                                                              </iaixsl:otherwise>
                                                          </iaixsl:choose>
                                                        </iaixsl:when>

                                                        
                                                        <iaixsl:otherwise>
                                                            <iaixsl:if test="$var_maxprice_net_formatted != ''">
                                                                <del class="price --max">
                                                                    <iaixsl:value-of select="$var_maxprice_net_formatted"/><iaixsl:value-of select="$var_net_prices"/>
                                                                </del>
                                                            </iaixsl:if>
                                                            <strong class="price">
                                                                <iaixsl:value-of select="$var_price_formatted"/><iaixsl:value-of select="$var_net_prices"/>
                                                            </strong>
                                                            <iaixsl:if test="$var_points_net != ''">
                                                                <span class="price --points">
                                                                    <iaixsl:value-of select="$var_points_net"/><span class="currency"> pkt.</span>
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

                                        
                                        <iaixsl:if test="client/@client or @note or content">
                                            <div class="product__opinion">
                                                
                                                <iaixsl:if test="client/@client">
                                                    <div class="product__opinion_client"><iaixsl:value-of disable-output-escaping="yes" select="client/@client"/></div>
                                                </iaixsl:if>

                                                
                                                <iaixsl:if test="@note">
                                                    <div class="note">
                                                        <span>
                                                            <i class="icon-star">
                                                                <iaixsl:if test="@note > 0.5"><iaixsl:attribute name="class">icon-star --active</iaixsl:attribute></iaixsl:if>
                                                            </i>
                                                            <i class="icon-star">
                                                                <iaixsl:if test="@note > 1.5"><iaixsl:attribute name="class">icon-star --active</iaixsl:attribute></iaixsl:if>
                                                            </i>
                                                            <i class="icon-star">
                                                                <iaixsl:if test="@note > 2.5"><iaixsl:attribute name="class">icon-star --active</iaixsl:attribute></iaixsl:if>
                                                            </i>
                                                            <i class="icon-star">
                                                                <iaixsl:if test="@note > 3.5"><iaixsl:attribute name="class">icon-star --active</iaixsl:attribute></iaixsl:if>
                                                            </i>
                                                            <i class="icon-star">
                                                                <iaixsl:if test="@note > 4.5"><iaixsl:attribute name="class">icon-star --active</iaixsl:attribute></iaixsl:if>
                                                            </i>
                                                        </span>
                                                        <small>
                                                            Ocena: <iaixsl:value-of disable-output-escaping="yes" select="@note"/>/5
                                                        </small>
                                                    </div>
                                                </iaixsl:if>

                                                
                                                <iaixsl:if test="content">
                                                    <div class="product__opinion_content"><iaixsl:value-of disable-output-escaping="yes" select="content"/></div>
                                                </iaixsl:if>
                                            </div>
                                        </iaixsl:if>
                                    </div>
                                </iaixsl:for-each>
                            </div>
                        </iaixsl:when>
                        <iaixsl:otherwise>
                            <div class="hotspot mb-5 skeleton">
                                <span class="headline"/>
                                <div class="products d-flex flex-wrap">
                                    <div class="product col-6 col-sm-3 py-3">
                                        <span class="product__icon d-flex justify-content-center align-items-center"/>
                                        <span class="product__name"/>
                                        <div class="product__prices"/>
                                    </div>
                                    <div class="product col-6 col-sm-3 py-3">
                                        <span class="product__icon d-flex justify-content-center align-items-center"/>
                                        <span class="product__name"/>
                                        <div class="product__prices"/>
                                    </div>
                                    <div class="product col-6 col-sm-3 py-3">
                                        <span class="product__icon d-flex justify-content-center align-items-center"/>
                                        <span class="product__name"/>
                                        <div class="product__prices"/>
                                    </div>
                                    <div class="product col-6 col-sm-3 py-3">
                                        <span class="product__icon d-flex justify-content-center align-items-center"/>
                                        <span class="product__name"/>
                                        <div class="product__prices"/>
                                    </div>
                                </div>
                            </div>
                        </iaixsl:otherwise>
                        </iaixsl:choose>
                    </section>
                </iaixsl:if>

                <iaixsl:if test="/shop/page/projector/products_associated_zone3/@iairs_ajax"> </iaixsl:if>
                <iaixsl:if test="/shop/page/projector/products_associated_zone3/@hotspot_ajax"> </iaixsl:if>

            
        <!--Produkty powiązane z tym produktem - strefa 4 (projector_associated_zone4, 88393.1)-->

            <iaixsl:if test="/shop/page/projector/products_associated_zone4/@name"> </iaixsl:if>
            <iaixsl:if test="page/projector/products_associated_zone4/opinion"> </iaixsl:if>
            <iaixsl:if test="/shop/page/projector/products_associated_zone4"> </iaixsl:if>

        <!--Blog - wpisy powiązane z tym produktem (projector_blog_items, 111180.1)-->
		<iaixsl:variable name="projector_blog_date"></iaixsl:variable>
		<iaixsl:variable name="projector_blog_after_label"></iaixsl:variable>
		<iaixsl:variable name="projector_blog_see_more">Czytaj więcej</iaixsl:variable>

		<iaixsl:if test="count(/shop/page/projector/blog_entries/item) > 0">
			<section id="projector_blog" class="article mb-4 col-12">
				<h2>
					<a href="/blog-list.php" class="headline">
						<iaixsl:if test="/shop/page/mainpage2/@link and /shop/page/mainpage2/@link!=''">
							<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/page/mainpage2/@link"/></iaixsl:attribute>
						</iaixsl:if>
						<iaixsl:attribute name="title">Kliknij, by zobaczyć wszystkie wpisy bloga</iaixsl:attribute>
						<span class="headline__name">Z naszego bloga</span>
						<iaixsl:if test="$projector_blog_after_label">
							<span class="headline__after"><iaixsl:value-of select="$projector_blog_after_label"/></span>
						</iaixsl:if>
					</a>
				</h2>

				<div class="article__block row">
					<iaixsl:for-each select="/shop/page/projector/blog_entries/item">
						<article class="article__item col-12 col-md-6">

							
							<iaixsl:if test="image/@src and image/@src!=''">
								<iaixsl:choose>
									<iaixsl:when test="(link/@href) != ''">
										<iaixsl:text disable-output-escaping="yes">&lt;a class="article__image_wrapper" href="</iaixsl:text>
										<iaixsl:value-of select="link/@href"/><iaixsl:text disable-output-escaping="yes">" </iaixsl:text>
									</iaixsl:when>
									<iaixsl:otherwise>
										<iaixsl:text disable-output-escaping="yes">&lt;span class="article__image_wrapper" </iaixsl:text>
									</iaixsl:otherwise>
								</iaixsl:choose>
								<iaixsl:text disable-output-escaping="yes">&gt;</iaixsl:text>

								<img src="/gfx/pol/loader.gif?r=1600678639" class="article__image b-lazy">
									<iaixsl:attribute name="data-src-small"><iaixsl:value-of disable-output-escaping="yes" select="image/@src"/></iaixsl:attribute>
									<iaixsl:attribute name="src"><iaixsl:value-of disable-output-escaping="yes" select="image/@src"/></iaixsl:attribute>
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

							
							<div class="article__date_name">
								<iaixsl:if test="$projector_blog_date">
									<div class="article__date datasquare"><iaixsl:value-of disable-output-escaping="yes" select="date"/></div>
								</iaixsl:if>

								<iaixsl:choose>
									<iaixsl:when test="(link/@href) != ''">
										<h3 class="article__name_wrapper">
											<a class="article__name">
												<iaixsl:attribute name="href"><iaixsl:value-of select="link/@href"/></iaixsl:attribute>
												<iaixsl:attribute name="title"><iaixsl:value-of disable-output-escaping="yes" select="title"/></iaixsl:attribute>
												<iaixsl:value-of disable-output-escaping="yes" select="title"/>
											</a>
										</h3>
									</iaixsl:when>
									<iaixsl:otherwise>
										<iaixsl:if test="title != ''">
											<h3 class="article__name_wrapper">
												<span class="article__name"><iaixsl:value-of disable-output-escaping="yes" select="title"/></span>
											</h3>
										</iaixsl:if>
									</iaixsl:otherwise>
								</iaixsl:choose>
							</div>

							
							<div class="article__text">
								<iaixsl:if test="$projector_blog_date">
									<iaixsl:attribute name="class">article__text --date</iaixsl:attribute>
								</iaixsl:if>
								<div class="article__description"><iaixsl:value-of disable-output-escaping="yes" select="description"/></div>
								<iaixsl:if test="more/@href and $projector_blog_see_more">
									<div class="article__more">
										<a class="article__more_link">
											<iaixsl:attribute name="href"><iaixsl:value-of select="more/@href"/></iaixsl:attribute>
											<iaixsl:attribute name="title"><iaixsl:value-of disable-output-escaping="yes" select="title"/></iaixsl:attribute>
											<iaixsl:value-of select="$projector_blog_see_more"/>
										</a>
									</div>
								</iaixsl:if>
							</div>
						</article>
					</iaixsl:for-each>
				</div>
			</section>
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
                                <th class="table-first-column">Rozmiar</th>
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

        <!--Menu - Drzewo 5 (menu_tree5, 63237.1)-->
		<iaixsl:if test="/shop/navigation5/item/@display_all_link"/>
        
                        </div>
                    </iaixsl:if>
                </div>
             </div>

            
 <iaixsl:if test="not(action/set_render/item) or (action/set_render/item/@name = 'footer')">
                <footer>
                    <iaixsl:attribute name="class"></iaixsl:attribute>
        <!-- NEWSLETTER -->
            <iaixsl:variable name="account_email_info">Jesteś już zapisany do naszego newslettera. Adres e-mail przypisany do Twojego konta to</iaixsl:variable>
            <div id="newsletter_form" class="newsletter-custom">
                <img src="/data/include/cms/b2b4kom/B2B-IKONY-SVG/wave.png" alt=""/>
                <div class="container">
                    <!-- <div class="newsletter_form_label">
                    <iaixsl:attribute name="class">newsletter_form_label big_label</iaixsl:attribute>
                    <span class="newsletter_form_label">Newsletter</span>
                    </div> -->


                    <iaixsl:if test="/shop/page/communicates_newsletter/message">
                    <div class="newsletter_message_wrapper">
                        <div class="newsletter_message n54531_outline">
                            <iaixsl:choose>
                                <iaixsl:when test="(/shop/page/communicates_newsletter/message/@type = 'mailing_maileregerror') or (/shop/page/communicates_newsletter/message/@type = 'mailing_nosuchemail')">
                                    <iaixsl:attribute name="id">return_error</iaixsl:attribute>
                                    <iaixsl:attribute name="class">newsletter_message n54531_outline menu_messages_error</iaixsl:attribute>
                                </iaixsl:when>
                                <iaixsl:when test="(/shop/page/communicates_newsletter/message/@type = 'mailing_addsuccess') or (/shop/page/communicates_newsletter/message/@type = 'mailing_removesuccess')">
                                    <iaixsl:attribute name="id">return_success</iaixsl:attribute>
                                    <iaixsl:attribute name="class">newsletter_message n54531_outline menu_messages_success</iaixsl:attribute>
                                </iaixsl:when>
                                <iaixsl:otherwise>
                                    <iaixsl:attribute name="id">return_message</iaixsl:attribute>
                                    <iaixsl:attribute name="class">newsletter_message n54531_outline menu_messages_message</iaixsl:attribute>
                                </iaixsl:otherwise>
                            </iaixsl:choose>

                            <div class="n54531_outline_sub">
                                <iaixsl:choose>
                                    <iaixsl:when test="/shop/page/communicates_newsletter/message/@type = 'mailing_addsuccess'">Dziękujemy za zapisanie się na nasz newsletter. Kolejne newslettery będą przychodziły prosto na Twoją skrzynkę e-mail. Aby upewnić się, że dostaniesz wszystkie, proponujemy dodać e-mail naszego sklepu do książki adresowej.</iaixsl:when>

                                    <iaixsl:when test="/shop/page/communicates_newsletter/message/@type = 'mailing_maileregerror'">Podany adres e-mail jest błędny.</iaixsl:when>

                                    <iaixsl:when test="/shop/page/communicates_newsletter/message/@type = 'mailing_removesuccess'">Twój e-mail został wypisany z bazy newslettera.</iaixsl:when>

                                    <iaixsl:when test="/shop/page/communicates_newsletter/message/@type = 'mailing_nosuchemail'">Podany adres e-mail nie został odnaleziony w bazie newslettera.</iaixsl:when>

                                    <iaixsl:when test="/shop/page/communicates_newsletter/message/@type = 'mailing_sendingconfirm'">Na podany adres został wysłany e-mail zawierający link do potwierdzenia zapisania się do newslettera.</iaixsl:when>

                                    <iaixsl:when test="/shop/page/communicates_newsletter/message/@type = 'mailing_emailexist'">Podany adres e-mail znajduje się już w naszej bazie.</iaixsl:when>

                                    <iaixsl:when test="/shop/page/communicates_newsletter/message/@type = 'mailing_sendingconfirm_remove'">Na podany adres został wysłany e-mail zawierający link do potwierdzenia wypisania się z newslettera.</iaixsl:when>
                                </iaixsl:choose>
                            </div>
                        </div>
                    </div>
                    </iaixsl:if>

                    <iaixsl:choose>
                    <iaixsl:when test="not(/shop/page/communicates_newsletter/message) or (/shop/page/communicates_newsletter/message/@type = 'mailing_maileregerror') or (/shop/page/communicates_newsletter/message/@type = 'mailing_emailexist') or (/shop/page/communicates_newsletter/message/@type = 'mailing_nosuchemail')">
                        <iaixsl:choose>
                            
                            <iaixsl:when test="page/client/@login != ''">
                                <iaixsl:choose>
                                    
                                    <iaixsl:when test="/shop/page/client/@newsletter = 'yes'">
                                        <form action="/settings.php" method="post" class="newsletter_form row flex-column align-items-center">
                                            <input id="mailing_action_contact" name="mailing_action" value="remove" type="hidden"/>
                                            <iaixsl:choose>
                                                <iaixsl:when test="$account_email_info">
                                                    <p class="col-md-6 col-12">Jesteś już zapisany do naszego newslettera. Adres e-mail przypisany do Twojego konta to <b><iaixsl:value-of select="/shop/page/client/@email"/></b>.<br />W każdej chwili możesz się z niego wypisać klikając poniższy przycisk.</p>
                                                </iaixsl:when>
                                                <iaixsl:otherwise>
                                                    <p class="col-md-6 col-12">Jesteś już zapisany do naszego newslettera. W każdej chwili możesz się z niego wypisać klikając poniższy przycisk.</p>
                                                </iaixsl:otherwise>
                                            </iaixsl:choose>
                                            <input name="mailing_email" type="hidden">
                                                <iaixsl:attribute name="value"><iaixsl:value-of select="page/client/@email"/></iaixsl:attribute>
                                            </input>
                                            <div class="newsletter_button_wrapper col-md-6 col-12">
                                                <button id="newsletter_button_remove" type="submit" class="btn --solid --secondary">
                                                    <iaixsl:attribute name="value">Wypisz się</iaixsl:attribute>Wypisz się
                                                </button>
                                            </div>
                                        </form>
                                    </iaixsl:when>

                                    
                                    <iaixsl:when test="page/client/@newsletter= 'no'">
                                        <iaixsl:choose>
                                            
                                            <iaixsl:when test="/shop/page/client/@email != ''">
                                                <form action="/settings.php" method="post" class="newsletter_form row flex-column align-items-center">
                                                    <input id="mailing_action_contact" name="mailing_action" value="add" type="hidden"/>
                                                    <p id="newsletter_longdesc" class="col-md-6 col-12">Nie jesteś zapisany do naszego newslettera. Jeżeli chcesz być informowany o nowościach i promocjach w sklepie, kliknij na przycisk poniżej. Newsletter będzie wysyłany na adres <strong><iaixsl:value-of select="page/client/@email"/></strong>, który podałeś jako swój adres kontaktowy. Jeśli chcesz zmienić adres e-mail, na który będzie przychodzić newsletter, przejdź do <a href="/loginedit.php?operation=edit">edycji danych kontaktowych</a></p>
                                                    <input name="mailing_email" type="hidden">
                                                        <iaixsl:attribute name="value"><iaixsl:value-of select="page/client/@email"/></iaixsl:attribute>
                                                    </input>

                                                    <div id="newsletter_privacy_consent" class="form-group col-md-6 col-12">
                                                        <div class="has-feedback">
                                                            <label class="control-label d-flex align-items-center">
                                                                <div class="text_to_right">
                                                                    <input class="newsletter_form_field validate" name="newsletter_consent" id="newsletter_consent" type="checkbox"/>
                                                                </div>
                                                                <div class="text_to_left">
                                                                    Chcę otrzymywać E-mail Newsletter. Wyrażam zgodę na przetwarzanie moich danych osobowych do celów marketingowych zgodnie z <a><iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/private_policy/@url"/></iaixsl:attribute>polityką prywatności</a>
                                                                </div>
                                                            </label>
                                                        </div>
                                                    </div>

                                                    <div class="newsletter_button_wrapper col-md-6 col-12">
                                                        <button id="newsletter_button_add" type="submit" class="btn --solid">
                                                            <iaixsl:attribute name="value">Zapisz się</iaixsl:attribute>Zapisz się
                                                        </button>
                                                    </div>
                                                </form>
                                            </iaixsl:when>
                                            
                                            <iaixsl:otherwise>
                                                <form action="/settings.php" method="post" class="newsletter_form row flex-column align-items-center">
                                                    <input id="mailing_action_contact" name="mailing_action" value="add" type="hidden"/>
                                                    <p id="newsletter_longdesc" class="col-md-6 col-12">Nie jesteś zapisany do naszego newslettera. Jeżeli chcesz być informowany o nowościach i promocjach w sklepie, wpisz adres e-mail na który chcesz otrzymywać newsletter i kliknij na przycisk poniżej. Podany adres e-mail zostanie przypisany do danych kontaktowych w Twoim profilu. W każdej chwili będziesz mógł go zmienić korzystając z <a href="/loginedit.php?operation=edit">edycji danych kontaktowych</a></p>
                            <div class="top-newsletter">
                                <iaixsl:if test="not($hideLabel)">
                                    <div class="">
                                        <iaixsl:choose>
                                            <iaixsl:when test="/shop/client_data/@mailing = '1'">
                                                <label></label>   
                                                
                                            </iaixsl:when>
                                            <iaixsl:otherwise>
                                                <label><b>Newsletter</b></label>
                                            </iaixsl:otherwise>
                                        </iaixsl:choose>
                                    </div>  
                                </iaixsl:if>
                                <iaixsl:if test="/shop/commercial_button">
                
                                    <iaixsl:for-each select="/shop/commercial_button/link">
                                        <iaixsl:if test="html/@title='Newsletter'">
                                        <iaixsl:value-of select="html" disable-output-escaping="yes" />
                                        </iaixsl:if>
                                    </iaixsl:for-each>
                                  </iaixsl:if>
                               

                            </div>
                            <div class="bottom-newsletter">
                                                    <div class="form-group col-md-6 col-12">
                                                        <div class="has-feedback">
                                                            <input class="newsletter_form_field form-control validate" name="mailing_name" id="mailing_name" type="text" maxlength="50" minlength="3"/>
                                                            <label for="mailing_name" class="control-label">
                                                                Twoje imię
                                                            </label>
                                                            <span class="form-control-feedback"/>
                                                        </div>
                                                    </div>
                                                    
                                                    <div class="form-group col-md-6 col-12">
                                                        <div class="has-feedback">
                                                            <input class="newsletter_form_field form-control validate" name="mailing_email" id="mailing_email" type="text" data-validate="email"/>
                                                            <label for="mailing_email" class="control-label">
                                                            E-mail
                                                            </label>
                                                            <span class="form-control-feedback"/>
                                                        </div>
                                                    </div>

                            </div>


                                                    <div id="newsletter_privacy_consent" class="form-group col-md-6 col-12">
                                                        <div class="has-feedback">
                                                            <label class="control-label d-flex align-items-center">
                                                                <div class="text_to_right">
                                                                    <input class="newsletter_form_field validate" name="newsletter_consent" id="newsletter_consent" type="checkbox"/>
                                                                </div>
                                                                <div class="text_to_left">
                                                                    Chcę otrzymywać E-mail Newsletter. Wyrażam zgodę na przetwarzanie moich danych osobowych do celów marketingowych zgodnie z <a><iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/private_policy/@url"/></iaixsl:attribute>polityką prywatności</a>
                                                                </div>
                                                            </label>
                                                        </div>
                                                    </div>


                                                    <div class="newsletter_button_wrapper col-md-6 col-12">
                                                        <button id="newsletter_button_add" type="submit" class="btn --solid">
                                                            <iaixsl:attribute name="value">Zapisz się</iaixsl:attribute>Zapisz się
                                                        </button>
                                                    </div>
                                                </form>
                                            </iaixsl:otherwise>
                                        </iaixsl:choose>
                                    </iaixsl:when>
                                </iaixsl:choose>
                            </iaixsl:when>
                            
                            <iaixsl:otherwise>
                                <form action="/settings.php" method="post" class="newsletter_form row flex-column align-items-center">
                                    <input id="mailing_action_contact" name="mailing_action" value="add" type="hidden"/>
                                    <!-- <p class="col-md-6 col-12">Wpisz swój adres e-mail i kliknij odpowiedni przycisk, aby zapisać się lub wypisać z naszego newslettera.</p> -->
                            <div class="top-newsletter">
                                    <div class="">
                                                <label><b>Newsletter</b></label>
                                    </div>  
                
                                    <iaixsl:for-each select="/shop/commercial_button/link">
                                        <iaixsl:if test="html/@title='Newsletter'">
                                        <iaixsl:value-of select="html" disable-output-escaping="yes" />
                                        </iaixsl:if>
                                    </iaixsl:for-each>

                            </div>
                            <div class="bottom-newsletter">
                                    <div class="form-group col-md-6 col-lg-4 col-12">
                                        <div class="has-feedback">
                                            <input class="newsletter_form_field form-control validate" name="mailing_name" id="mailing_name" type="text" maxlength="50"  minlength="3" required="required"/>
                                            <label for="mailing_name" class="control-label">
                                                Twoje imię
                                            </label>
                                            <span class="form-control-feedback"/>
                                        </div>
                                    </div>
                                    <div class="form-group col-lg-4 col-md-6 col-12">
                                        <div class="has-feedback">
                                            <input class="newsletter_form_field form-control validate" name="mailing_email" id="mailing_email" type="text" data-validate="email" required="required" />
                                            <label for="mailing_email" class="control-label">
                                                E-mail
                                            </label>
                                            <span class="form-control-feedback"/>
                                        </div>
                                    </div>
                                    <div class="newsletter_button_wrapper col-12 col-lg-4 ">
                                        <button type="submit" style="display: none;"/>

                                        <button id="newsletter_button_add" type="submit" class="btn --solid">
                                            <iaixsl:attribute name="value">Zapisz się</iaixsl:attribute>Zapisz się
                                            <i class="icon-chevron-right"></i>
                                        </button>

                                        <button id="newsletter_button_remove" type="submit" class="btn --solid --secondary">
                                            <iaixsl:attribute name="value">Wypisz się</iaixsl:attribute>Wypisz się
                                        </button>
                                    </div>

                            </div>

                                    <div id="newsletter_privacy_consent" class="form-group col-12">
                                        <div class="has-feedback">
                                            <label class="control-label d-flex align-items-center d-flex flex-row">
                                                <div class="text_to_right">
                                                    <input class="newsletter_form_field validate" name="newsletter_consent" id="newsletter_consent" type="checkbox"/>
                                                </div>
                                                <div class="text_to_left">
                                                    Chcę otrzymywać E-mail Newsletter. Wyrażam zgodę na przetwarzanie moich danych osobowych do celów marketingowych zgodnie z <a><iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/private_policy/@url"/></iaixsl:attribute>polityką prywatności</a>
                                                </div>
                                            </label>
                                        </div>
                                    </div>
                                </form>
                            </iaixsl:otherwise>
                        </iaixsl:choose>
                    </iaixsl:when>
                    <iaixsl:otherwise>
                        <iaixsl:variable name="newsletter_mainpage_txt">Strona główna</iaixsl:variable>
                        <div class="newsletter_button_wrapper news_btn">
                            <a class="btn --solid" href="/">
                                <iaixsl:choose>
                                    <iaixsl:when test="$newsletter_mainpage_txt">
                                        <iaixsl:attribute name="title"><iaixsl:value-of select="$newsletter_mainpage_txt"/></iaixsl:attribute>
                                        <iaixsl:value-of select="$newsletter_mainpage_txt"/>
                                    </iaixsl:when>
                                    
                                    <iaixsl:otherwise>
                                        <iaixsl:attribute name="title">Strona główna</iaixsl:attribute>
                                        Strona główna
                                    </iaixsl:otherwise>
                                </iaixsl:choose>
                            </a>
                        </div>
                    </iaixsl:otherwise>
                    </iaixsl:choose>
                </div>
            </div>

            
            <iaixsl:if test="/shop/@newsletter_form_remove"> </iaixsl:if>
        <!-- NEWSLETTER -->

                     
                    <!--Buttony reklamowe (menu_buttons, 112160.1)-->
			
		<!--Menu - Drzewo 4 (menu_tree4, 113290.1)-->
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

				<ul id="menu_orders" class="footer_links col-md-3 col-sm-6 col-12">
					<iaixsl:choose>
						<iaixsl:when test="count(navigation4/item) = 1 and (/shop/action/shop_information/@order_link_active='y' or /shop/action/shipping_cost/@order_link_active='y' or /shop/action/payment_methods/@order_link_active='y' or /shop/action/terms/@order_link_active='y' or /shop/action/private_policy/@order_link_active='y' or /shop/action/order_cancel/@order_link_active='y')">
							<iaixsl:attribute name="class">footer_links col-md-3 col-sm-6 col-12 orders_bg</iaixsl:attribute>
						</iaixsl:when>
						
						<iaixsl:when test="count(navigation4/item) = 2 and (/shop/action/shop_information/@order_link_active='n' and /shop/action/shipping_cost/@order_link_active='n' and /shop/action/payment_methods/@order_link_active='n' and /shop/action/terms/@order_link_active='n' and /shop/action/private_policy/@order_link_active='n' and /shop/action/order_cancel/@order_link_active='n')">
							<iaixsl:attribute name="class">footer_links col-md-3 col-sm-6 col-12 orders_bg</iaixsl:attribute>
						</iaixsl:when>
						<iaixsl:when test="count(navigation4/item) = 0">
							<iaixsl:attribute name="class">footer_links col-md-3 col-sm-6 col-12 orders_bg</iaixsl:attribute>
						</iaixsl:when>
					</iaixsl:choose>
					<li>
						<a id="menu_orders_header" class=" footer_links_label">
							<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/login/@url"/></iaixsl:attribute>
							<iaixsl:attribute name="title"></iaixsl:attribute>
							Moje zamówienie
							<!-- Moje konto -->
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
							<iaixsl:variable name="order_contact_literal">true</iaixsl:variable>
							<iaixsl:if test="$order_contact_literal">
								<li id="order_contact" class="menu_orders_item">
									<i class="icon-phone"></i>
									<a>
										<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/contact/link/@url"/></iaixsl:attribute>
										Kontakt
									</a>
								</li>
							</iaixsl:if>
							
						</ul>
					</li>
				</ul>
				</iaixsl:if>
				
				<ul id="menu_account" class="footer_links col-md-3 col-sm-6 col-12">
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
							<li id="account_boughts" class="menu_orders_item">
								<i class="icon-menu-lines"></i>
								<a>
									<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/productsBought/@url"/></iaixsl:attribute>
									Lista zakupionych produktów
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

					<ul id="menu_regulations" class="footer_links col-md-3 col-sm-6 col-12">
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
						<ul class="footer_links col-md-3 col-sm-6 col-12">
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
		<!--Dane kontaktowe w menu (menu_contact, 113288.1)-->
            
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
                                                        <img src="/gfx/pol/loader.gif?r=1600678639">
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
                                                    <img src="/gfx/pol/loader.gif?r=1600678639">
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
                                        Zamknij okno
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
                                        Zamknij okno
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
                                        Zamknij okno
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
                                        Zamknij okno
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
                                        Zamknij okno
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
                                        Zamknij okno
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
                                        Zamknij okno
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
                                        Zamknij okno
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
                            Zamknij okno
                        </button>
                        <button class="btn --solid  prepaid_confirm">
                            Anuluj zamówienie
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
            <iaixsl:variable name="hideAdress"></iaixsl:variable>
            <div id="menu_contact" class="container d-md-flex align-items-md-center justify-content-md-between">
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

                
</iaixsl:if>
            <iaixsl:variable name="projector_script_bottom">true</iaixsl:variable>
            <iaixsl:if test="/shop/page/@type = 'main' or /shop/page/@type = 'search' or /shop/page/@type = 'place-order' or /shop/page/@type = 'noproduct' or ($projector_script_bottom and /shop/page/@type = 'projector')">
                <iaixsl:choose>
                    <iaixsl:when test="/shop/@preview > 0">
                        <script><iaixsl:attribute name="src">/gfx/<iaixsl:value-of select="language/@id"/>/<iaixsl:value-of select="/shop/@preview"/>/shop.js</iaixsl:attribute></script>
                    </iaixsl:when>
                    <iaixsl:otherwise>
                        <script><iaixsl:attribute name="src">/gfx/<iaixsl:value-of select="language/@id"/>/shop.js.gzip?r=1600678639</iaixsl:attribute></script>
                    </iaixsl:otherwise>
                </iaixsl:choose>
            </iaixsl:if>
            <script src="/gfx/pol/menu_alert.js.gzip?r=1600678639"></script>
            <script src="/gfx/pol/projector_photos.js.gzip?r=1600678639"></script><script src="/gfx/pol/projector_details.js.gzip?r=1600678639"></script><script src="/gfx/pol/projector_bundle_zone.js.gzip?r=1600678639"></script><script src="/gfx/pol/projector_banner.js.gzip?r=1600678639"></script><script src="/gfx/pol/projector_projector_opinons_form.js.gzip?r=1600678639"></script>
            <script>
                app_shop.runApp();
            </script>

            

<!-- !CUSTOM SCRIPT -->

            <script src="/data/include/cms/b2b4kom/JS/app.js" >
                <iaixsl:attribute name="defer"></iaixsl:attribute>
                <iaixsl:attribute name="type">module</iaixsl:attribute>
            </script>
            <script src="/data/include/cms/b2b4kom/JS/projector/warrantyPopup.js" >
                <iaixsl:attribute name="defer"></iaixsl:attribute>
                <iaixsl:attribute name="type">module</iaixsl:attribute>
            </script>
            <script src="/data/include/cms/b2b4kom/JS/projector/projectorSliders.js" >
                <iaixsl:attribute name="defer"></iaixsl:attribute>
                <iaixsl:attribute name="type">module</iaixsl:attribute>
            </script>
            <script src="/data/include/cms/b2b4kom/JS/projector/projectorBreadcrumb.js" >
                <iaixsl:attribute name="defer"></iaixsl:attribute>
                <iaixsl:attribute name="type">module</iaixsl:attribute>
            </script>

          
<!-- !CUSTOM SCRIPT -->





            <iaixsl:if test="/shop/page/seolink_with_language_directory"/>

        
            <iaixsl:if test="(action/set_render/item/@name = 'popup') or not(action/set_render/item)">
                <iaixsl:value-of disable-output-escaping="yes" select="php:functionString('additionalContent', 'additional_body_scripts')"/>
                <iaixsl:text disable-output-escaping="yes">&lt;/body&gt;&lt;/html&gt;</iaixsl:text>
            </iaixsl:if>
        </iaixsl:template><iaixsl:template match="//image"><iaixsl:if test="@type='swf'"><object type="application/x-shockwave-flash"><iaixsl:attribute name="data"><iaixsl:value-of select="@src"/></iaixsl:attribute><iaixsl:attribute name="data"><iaixsl:value-of select="@src"/></iaixsl:attribute><iaixsl:attribute name="width"><iaixsl:value-of select="@width"/></iaixsl:attribute><iaixsl:attribute name="height"><iaixsl:value-of select="@height"/></iaixsl:attribute><param name="movie"><iaixsl:attribute name="value"><iaixsl:value-of select="@src"/></iaixsl:attribute></param><param name="bgcolor"><iaixsl:attribute name="bgcolor"><iaixsl:value-of select="@bgcolor"/></iaixsl:attribute></param></object></iaixsl:if><iaixsl:if test="not(@type='swf')"><img alt="" class="pic"><iaixsl:attribute name="src"><iaixsl:value-of select="@src"/></iaixsl:attribute><iaixsl:if test="@width &gt; 0"><iaixsl:attribute name="width"><iaixsl:value-of select="@width"/></iaixsl:attribute></iaixsl:if><iaixsl:if test="@height &gt; 0"><iaixsl:attribute name="height"><iaixsl:value-of select="@height"/></iaixsl:attribute></iaixsl:if></img></iaixsl:if></iaixsl:template><iaixsl:template name="escape-quote-string"><iaixsl:param name="str"/><iaixsl:param name="escape" select="'quot'"/><iaixsl:param name="quoting" select="'1'"/><iaixsl:variable name="escape_sign"><iaixsl:choose><iaixsl:when test="$escape=&quot;apos&quot;"><iaixsl:value-of select="&quot;'&quot;"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="string('&quot;')"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable><iaixsl:if test="$quoting"><iaixsl:value-of select="$escape_sign"/></iaixsl:if><iaixsl:choose><iaixsl:when test="contains($str,$escape_sign)"><iaixsl:variable name="before-first-apostrophe" select="substring-before($str,$escape_sign)"/><iaixsl:variable name="after-first-apostrophe" select="substring-after($str,$escape_sign)"/><iaixsl:value-of select="$before-first-apostrophe"/>\<iaixsl:value-of select="$escape_sign"/><iaixsl:text/><iaixsl:call-template name="escape-quote-string"><iaixsl:with-param name="str" select="$after-first-apostrophe"/><iaixsl:with-param name="escape" select="$escape"/><iaixsl:with-param name="quoting" select="0"/></iaixsl:call-template></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="$str"/></iaixsl:otherwise></iaixsl:choose><iaixsl:if test="$quoting"><iaixsl:value-of select="$escape_sign"/></iaixsl:if></iaixsl:template></iaixsl:stylesheet>