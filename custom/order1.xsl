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
                    <iaixsl:attribute name="class">row clearfix</iaixsl:attribute>
                    <div class="row mb-3 col-12 menu_not_main_wrapper container">
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

                    
                    <iaixsl:if test="not(action/set_render/item) or (action/set_render/item/@name = 'content')">
                        <div id="content" class="span9">
                            <iaixsl:choose>
                                <iaixsl:when test="page/@type = 'projector'">
                                     <iaixsl:attribute name="class">col-12 px-0 d-flex flex-wrap</iaixsl:attribute>
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
                                <strong class="progress__name pink-before">Koszyk</strong>
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
                                    <strong class="progress__name">Potwierdzenie</strong>
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
                                    <strong class="progress__name">Potwierdzenie</strong>
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
                                    <strong class="progress__name">Gotowe</strong>
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
                                <strong class="progress__name">Potwierdzenie</strong>
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
                                <strong class="progress__name">Potwierdzenie</strong>
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
                        
                        <div class="progress__item --first --shopping-cart --active">
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
                                <strong class="progress__name">Potwierdzenie</strong>
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
                                        <strong class="progress__name">Gotowe</strong>
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
                                <strong class="progress__name">Potwierdzenie</strong>
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
                                        <strong class="progress__name">Gotowe</strong>
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
                                <strong class="progress__name">Potwierdzenie</strong>
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
                                        <strong class="progress__name">Gotowe</strong>
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
                                <strong class="progress__name">Potwierdzenie</strong>
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
                                        <strong class="progress__name">Gotowe</strong>
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
                                <strong class="progress__name">Potwierdzenie</strong>
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
                                <strong class="progress__name">Gotowe</strong>
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
                                <strong class="progress__name">Potwierdzenie</strong>
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
                                <strong class="progress__name">Potwierdzenie</strong>
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

        <!--CMS na stronie Order1 (order1_cms, 55417.1)-->
    <iaixsl:if test="page/order1/text/body">
        <div class="n55417">
            <div class="n55417_sub">
              <iaixsl:attribute name="class">n55417_sub cm</iaixsl:attribute>
                    <iaixsl:value-of disable-output-escaping="yes" select="page/order1/text/body"/>
                </div>
       
        </div>
   </iaixsl:if>
   <!--Wybór sposobu dostawy i płatności (order1, 117025.1)-->
      
      <form method="POST" class="order">
        <iaixsl:attribute name="action">
          <iaixsl:value-of select="page/order1/formaction"/><iaixsl:if test="(page/order1/formaction = 'order2.php')">?preview=true</iaixsl:if>
        </iaixsl:attribute>

        <div class="row">
          
           <div class="col-12 ">
            <section class="order__delivery --normal mb-3 mb-md-5">
              <iaixsl:if test="count(page/order1/shipping/delivery) = 0">
                  <iaixsl:attribute name="data-no_delivery">true</iaixsl:attribute>
              </iaixsl:if>
                    <h2 class="big_label custom-label">
                        <span>
                        Sposoby dostawy
                        </span>
                    </h2>
              <div class="headline row d-none">
                <iaixsl:choose>
                  <iaixsl:when test="/shop/page/order1/shipping_division">
                    <span class="headline__name --prepaid">
                      <iaixsl:if test="not(/shop/page/order1/shipping/delivery[@type = 'dvp' and @checked = 'true'])">
                        <iaixsl:attribute name="class">headline__name --prepaid --active</iaixsl:attribute>
                      </iaixsl:if>
                      <span class="headline__name_txt">Opcje dostawy dla produktów dostępnych od ręki, do wysłania </span>
                      <span class="headline__division_time">
                        <iaixsl:choose>
                          <iaixsl:when test="/shop/basket/shipping_time/@today = 'true'">
                            <iaixsl:attribute name="data-shipping_time">0</iaixsl:attribute>
                          </iaixsl:when>
                          <iaixsl:otherwise>
                            <iaixsl:attribute name="data-shipping_time"><iaixsl:value-of select="/shop/basket/shipping_time/@week_day"/></iaixsl:attribute>
                          </iaixsl:otherwise>
                        </iaixsl:choose>
                      </span>
                    </span>
                    <span class="headline__name --dvp">
                      <iaixsl:if test="not(/shop/page/order1/shipping/delivery[@type = 'prepaid']) or /shop/page/order1/shipping/delivery[@type = 'dvp' and @checked = 'true'] and not(/shop/page/order1/balance/@active='y' and /shop/page/order1/balance/@onlyPrepaid='y')">
                        <iaixsl:attribute name="class">headline__name --dvp --active</iaixsl:attribute>
                      </iaixsl:if>
                      <span class="headline__name_txt">Opcje dostawy za pobraniem dla produktów dostępnych od ręki, do wysłania </span>
                      <span class="headline__division_time">
                        <iaixsl:choose>
                          <iaixsl:when test="/shop/basket/shipping_time/@today = 'true'">
                            <iaixsl:attribute name="data-shipping_time">0</iaixsl:attribute>
                          </iaixsl:when>
                          <iaixsl:otherwise>
                            <iaixsl:attribute name="data-shipping_time"><iaixsl:value-of select="/shop/basket/shipping_time/@week_day"/></iaixsl:attribute>
                          </iaixsl:otherwise>
                        </iaixsl:choose>
                      </span>
                    </span>
                  </iaixsl:when>
                  <iaixsl:otherwise>
                  
                    
                   
                  </iaixsl:otherwise>
                </iaixsl:choose>
              </div>

            <div class="row">
              
              <iaixsl:if test="count(/shop/page/order1/shipping/delivery[@type = 'prepaid']) > 0">
                <div class="order__delivery_section --prepaid col-12 col-md-6">
                  <iaixsl:if test="not(/shop/page/order1/shipping/delivery[@type = 'dvp' and @checked = 'true'])">
                    <iaixsl:attribute name="class">order__delivery_section --prepaid --active col-12 col-md-6</iaixsl:attribute>
                  </iaixsl:if>

                  <span class="headline__name --prepaid">
                      <iaixsl:if test="not(/shop/page/order1/shipping/delivery[@type = 'dvp' and @checked = 'true'])">
                        <iaixsl:attribute name="class">headline__name --prepaid --active col-12 col-md-6</iaixsl:attribute>
                      </iaixsl:if>
                       <span class="big_label-custom">
                       Płatność z góry
                        </span>
                    </span>
                  <iaixsl:for-each select="/shop/page/order1/shipping/delivery[@type = 'prepaid']">
                    <div class="order__delivery_group f-group --radio mb-0 px-2  px-sm-3">
                      
                      <iaixsl:if test="@sameday='true'">
                          <iaixsl:attribute name="data-sameday">true</iaixsl:attribute>
                          <iaixsl:attribute name="data-xpress_type"><iaixsl:value-of select="@express_courier_type"/></iaixsl:attribute>
                      </iaixsl:if>

                      
                      <iaixsl:attribute name="data-working_days">[<iaixsl:for-each select="working_days/item"><iaixsl:if test="position() != 1">,</iaixsl:if><iaixsl:value-of select="translate(.,'7','0')"/></iaixsl:for-each>]</iaixsl:attribute>

                      
                      <iaixsl:attribute name="data-id"><iaixsl:value-of select="@id"/></iaixsl:attribute>

                      
                      <iaixsl:attribute name="data-calendar"><iaixsl:choose><iaixsl:when test="@sameday = 'true'">n</iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="@calendar"/></iaixsl:otherwise></iaixsl:choose></iaixsl:attribute>

                      
                      <iaixsl:attribute name="data-delivery_time"><iaixsl:value-of select="@deliverytime"/></iaixsl:attribute>

                      
                      <iaixsl:attribute name="data-prepaid">1</iaixsl:attribute>

                      
                      <iaixsl:attribute name="data-total_time"><iaixsl:value-of select="@time"/></iaixsl:attribute>

                      
                      <iaixsl:attribute name="data-minute"><iaixsl:choose><iaixsl:when test="@id = '0-1' or @id='0-0'"><iaixsl:value-of select="/shop/page/order1/stocks/stock[@selected = 'selected']/@pickup_days"/>#<iaixsl:value-of select="/shop/page/order1/stocks/stock[@selected = 'selected']/@pickup_hours"/>#<iaixsl:value-of select="/shop/page/order1/stocks/stock[@selected = 'selected']/@pickup_minutes"/>#<iaixsl:choose><iaixsl:when test="@today='true'">0</iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="@week_day"/></iaixsl:otherwise></iaixsl:choose>#<iaixsl:value-of select="@week_amount"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="@time_days"/>#<iaixsl:value-of select="@time_hours"/>#<iaixsl:value-of select="@time_minutes"/>#<iaixsl:choose><iaixsl:when test="@today='true'">0</iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="@week_day"/></iaixsl:otherwise></iaixsl:choose>#<iaixsl:value-of select="@week_amount"/></iaixsl:otherwise></iaixsl:choose></iaixsl:attribute>

                      
                      <iaixsl:if test="@checked = 'true'">
                        <iaixsl:attribute name="data-active">true</iaixsl:attribute>
                      </iaixsl:if>

                      
                      <iaixsl:if test="@minworthreached = 'false'">
                        <iaixsl:attribute name="data-disabled">true</iaixsl:attribute>
                      </iaixsl:if>

                      
                      <iaixsl:if test="@loadCourierServicesUrl">
                        <iaixsl:attribute name="data-services"><iaixsl:value-of select="@loadCourierServicesUrl"/></iaixsl:attribute>
                      </iaixsl:if>

                      
                      <input type="radio" name="shipping" class="order__radio_delivery f-control">
                        <iaixsl:attribute name="value"><iaixsl:value-of select="@id"/></iaixsl:attribute>
                        <iaixsl:attribute name="id">delivery_<iaixsl:value-of select="@id"/></iaixsl:attribute>
                        <iaixsl:if test="@checked = 'true'">
                          <iaixsl:attribute name="checked">checked</iaixsl:attribute>
                        </iaixsl:if>
                        <iaixsl:if test="@minworthreached = 'false'">
                          <iaixsl:attribute name="disabled">disabled</iaixsl:attribute>
                        </iaixsl:if>
                      </input>

                      
                      <label class="order__delivery_label f-label d-flex align-items-center pr-0 py-2">
                        <iaixsl:attribute name="for">delivery_<iaixsl:value-of select="@id"/></iaixsl:attribute>
                        <span class="order__delivery_names d-flex flex-column mr-2 align-items-md-center flex-md-row">
                          <strong class="order__delivery_name d-block"><iaixsl:value-of select="@name"/></strong>
                          <span class="order__delivery_desc mt-1">
                            <iaixsl:choose>
                              <iaixsl:when test="@id = '93-1'">
                              </iaixsl:when>
                              <iaixsl:when test="@loadCourierServicesUrl">
                                Wybierz dzień dostawy
                              </iaixsl:when>
                              <iaixsl:when test="@minworthreached = 'false'">
                                Forma dostawy dostępna od <iaixsl:value-of select="@minworth_formatted"/>
                              </iaixsl:when>
                              <iaixsl:when test="not(@sameday='true')">
                                <iaixsl:choose>
                                  <iaixsl:when test="@id = '0-1' or @id='0-0'">
                                    <iaixsl:choose>
                                      <iaixsl:when test="count(/shop/page/order1/stocks/stock) > 0">
                                        <iaixsl:for-each select="/shop/page/order1/stocks/stock[@selected = 'selected']">
                                          <iaixsl:choose>
                                            <iaixsl:when test="@undefinded_time = 'true'">
                                              Nieznany
                                            </iaixsl:when>
                                            <iaixsl:otherwise>
                                              <iaixsl:choose>
                                                <iaixsl:when test="(@pickup_days = 0) and (@pickup_hours = 0) and (@pickup_minutes = 0)">
                                                  Zamówienie będzie gotowe do odbioru natychmiast po przyjęciu zamówienia
                                                </iaixsl:when>
                                                <iaixsl:otherwise>
                                                  Przygotowanie do odbioru osobistego zajmie 

                                                  
                                                  <iaixsl:if test="@pickup_days > 0">
                                                    <iaixsl:value-of select="@pickup_days"/>
                                                    <iaixsl:choose>
                                                      <iaixsl:when test="@pickup_days = '1'">
                                                         dzień 
                                                      </iaixsl:when>
                                                      <iaixsl:otherwise>
                                                         dni 
                                                      </iaixsl:otherwise>
                                                    </iaixsl:choose>
                                                  </iaixsl:if>

                                                  
                                                  <iaixsl:if test="@pickup_hours > 0">
                                                    <iaixsl:value-of select="@pickup_hours"/>
                                                    <iaixsl:choose>
                                                      <iaixsl:when test="@pickup_hours > 1">
                                                         godz. 
                                                      </iaixsl:when>
                                                      <iaixsl:otherwise>
                                                         godz. 
                                                      </iaixsl:otherwise>
                                                    </iaixsl:choose>
                                                  </iaixsl:if>

                                                  
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
                                            <iaixsl:when test="@deliverytime_days = '1'">
                                               dzień 
                                            </iaixsl:when>
                                            <iaixsl:otherwise>
                                               dni 
                                            </iaixsl:otherwise>
                                          </iaixsl:choose>
                                        </iaixsl:if>

                                        
                                        <iaixsl:if test="@deliverytime_hours > 0">
                                          <iaixsl:value-of select="@deliverytime_hours"/>
                                          <iaixsl:choose>
                                            <iaixsl:when test="@deliverytime_hours > 1">
                                               godz. 
                                            </iaixsl:when>
                                            <iaixsl:otherwise>
                                               godz. 
                                            </iaixsl:otherwise>
                                          </iaixsl:choose>
                                        </iaixsl:if>

                                        
                                        <iaixsl:if test="@deliverytime_minutes > 0">
                                          <iaixsl:value-of select="@deliverytime_minutes"/>
                                           min
                                        </iaixsl:if>
                                      </iaixsl:otherwise>
                                    </iaixsl:choose>
                                  </iaixsl:otherwise>
                                </iaixsl:choose>
                              </iaixsl:when>
                            </iaixsl:choose>
                            <iaixsl:if test="@comment != ''">
                              <span class="order__delivery_comment"><iaixsl:value-of select="@comment"/></span>
                            </iaixsl:if>
                          </span>
                        </span>

                        <!-- <span class="order__delivery_sub d-flex flex-column align-items-center justify-content-center flex-md-row"> -->
                          
                          <iaixsl:if test="not(/shop/page/order1/shipping/@hide_cost='true')">
                            <span class="order__delivery_cost mb-1 mb-md-0 mr-md-3 mr-lg-4 d-flex flex-column">
                              <iaixsl:choose>
                                
                                <iaixsl:when test="@points_enabled">
                                  <iaixsl:attribute name="data-points">true</iaixsl:attribute>
                                  <strong class="order__delivery_price --points f-group --small --radio mb-0">
                                    <input type="radio" name="shipping_for_points" value="0" class="order__radio_points f-control"/>
                                    <label class="order__points_label f-label pr-0"><iaixsl:value-of select="@cost_formatted"/></label>
                                  </strong>
                                  <span class="order__delivery_points f-group --small --radio mb-0">
                                    <input type="radio" name="shipping_for_points" value="1" class="order__radio_points f-control">
                                      <iaixsl:if test="@points_enabled = 'false'">
                                        <iaixsl:attribute name="disabled">disabled</iaixsl:attribute>
                                      </iaixsl:if>
                                    </input>
                                    <label class="order__points_label f-label pr-0">
                                      <iaixsl:if test="@points_enabled = 'false'">
                                        <iaixsl:attribute name="title">Nie masz wystarczającej ilości punktów.</iaixsl:attribute>
                                      </iaixsl:if>
                                      <iaixsl:value-of select="@points_cost"/> pkt.
                                    </label>
                                  </span>
                                </iaixsl:when>
                                
                                <iaixsl:otherwise>
                                  <iaixsl:if test="@beforerebate_formatted">
                                    <del class="order__delivery_price_max">
                                        <iaixsl:value-of select="@beforerebate_formatted"/>
                                    </del>
                                  </iaixsl:if>
                                  <strong class="order__delivery_price">
                                    <iaixsl:choose>
                                      <iaixsl:when test="@cost > 0">
                                        <iaixsl:if test="@limitfree > 0"><iaixsl:attribute name="title">Od <iaixsl:value-of select="@limitfree_formatted"/> gratis</iaixsl:attribute></iaixsl:if>
                                        <iaixsl:value-of select="@cost_formatted"/>
                                      </iaixsl:when>
                                      <iaixsl:otherwise>
                                        Gratis!
                                      </iaixsl:otherwise>
                                    </iaixsl:choose>
                                  </strong>
                                </iaixsl:otherwise>
                              </iaixsl:choose>
                            </span>
                          </iaixsl:if>

                          
                          <span class="order__delivery_icons d-flex justify-content-end">
                            <iaixsl:choose>
                                <iaixsl:when test="@id = '93-1'">
                                    <img class="order__delivery_img" src="/gfx/pol/online_delivery.png?r=1600678639">
                                        <iaixsl:attribute name="alt"><iaixsl:value-of select="@name"/></iaixsl:attribute>
                                        <iaixsl:attribute name="title"><iaixsl:value-of select="@name"/></iaixsl:attribute>
                                    </img>
                                </iaixsl:when>
                                <iaixsl:otherwise>
                                    <iaixsl:if test="@icon">
                                        <img class="order__delivery_img"><iaixsl:attribute name="src"><iaixsl:value-of select="@icon"/></iaixsl:attribute><iaixsl:attribute name="alt"><iaixsl:value-of select="@name"/></iaixsl:attribute><iaixsl:attribute name="title"><iaixsl:value-of select="@name"/></iaixsl:attribute></img>
                                    </iaixsl:if>
                                </iaixsl:otherwise>
                            </iaixsl:choose>
                          </span>
                        <!-- </span> -->
                      </label>
                    </div>
                  </iaixsl:for-each>
                </div>
              </iaixsl:if>

              
              <iaixsl:if test="count(/shop/page/order1/shipping/delivery[@type = 'dvp']) > 0">
                <div class="order__delivery_section --dvp col-12 col-md-6">
                  <iaixsl:if test="not(/shop/page/order1/shipping/delivery[@type = 'prepaid']) or /shop/page/order1/shipping/delivery[@type = 'dvp' and @checked = 'true'] and not(/shop/page/order1/balance/@active='y' and /shop/page/order1/balance/@onlyPrepaid='y')">
                    <iaixsl:attribute name="class">order__delivery_section --dvp --active col-12 col-md-6</iaixsl:attribute>
                  </iaixsl:if>
                     <span class="headline__name --dvp">
                      <iaixsl:if test="not(/shop/page/order1/shipping/delivery[@type = 'prepaid']) or /shop/page/order1/shipping/delivery[@type = 'dvp' and @checked = 'true'] and not(/shop/page/order1/balance/@active='y' and /shop/page/order1/balance/@onlyPrepaid='y')">
                        <iaixsl:attribute name="class">headline__name --dvp --active col-12 col-md-6</iaixsl:attribute>
                      </iaixsl:if>
                       <span class="big_label-custom">
                        Płatność za pobraniem
                        </span>
                    </span>
                  <iaixsl:for-each select="/shop/page/order1/shipping/delivery[@type = 'dvp']">
                    <div class="order__delivery_group f-group --radio mb-0 px-2  px-sm-3">
                      
                      <iaixsl:if test="@sameday='true'">
                          <iaixsl:attribute name="data-sameday">true</iaixsl:attribute>
                          <iaixsl:attribute name="data-xpress_type"><iaixsl:value-of select="@express_courier_type"/></iaixsl:attribute>
                      </iaixsl:if>

                      
                      <iaixsl:attribute name="data-working_days">[<iaixsl:for-each select="working_days/item"><iaixsl:if test="position() != 1">,</iaixsl:if><iaixsl:value-of select="translate(.,'7','0')"/></iaixsl:for-each>]</iaixsl:attribute>

                      
                      <iaixsl:attribute name="data-id"><iaixsl:value-of select="@id"/></iaixsl:attribute>

                      
                      <iaixsl:attribute name="data-calendar"><iaixsl:choose><iaixsl:when test="@sameday = 'true'">n</iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="@calendar"/></iaixsl:otherwise></iaixsl:choose></iaixsl:attribute>

                      
                      <iaixsl:attribute name="data-delivery_time"><iaixsl:value-of select="@deliverytime"/></iaixsl:attribute>

                      
                      <iaixsl:attribute name="data-prepaid">1</iaixsl:attribute>

                      
                      <iaixsl:attribute name="data-total_time"><iaixsl:value-of select="@time"/></iaixsl:attribute>

                      
                      <iaixsl:attribute name="data-minute"><iaixsl:choose><iaixsl:when test="@id = '0-1' or @id='0-0'"><iaixsl:value-of select="/shop/page/order1/stocks/stock[@selected = 'selected']/@pickup_days"/>#<iaixsl:value-of select="/shop/page/order1/stocks/stock[@selected = 'selected']/@pickup_hours"/>#<iaixsl:value-of select="/shop/page/order1/stocks/stock[@selected = 'selected']/@pickup_minutes"/>#<iaixsl:choose><iaixsl:when test="@today='true'">0</iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="@week_day"/></iaixsl:otherwise></iaixsl:choose>#<iaixsl:value-of select="@week_amount"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="@time_days"/>#<iaixsl:value-of select="@time_hours"/>#<iaixsl:value-of select="@time_minutes"/>#<iaixsl:choose><iaixsl:when test="@today='true'">0</iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="@week_day"/></iaixsl:otherwise></iaixsl:choose>#<iaixsl:value-of select="@week_amount"/></iaixsl:otherwise></iaixsl:choose></iaixsl:attribute>

                      
                      <iaixsl:if test="@checked = 'true'">
                        <iaixsl:attribute name="data-active">true</iaixsl:attribute>
                      </iaixsl:if>

                      
                      <iaixsl:if test="@minworthreached = 'false'">
                        <iaixsl:attribute name="data-disabled">true</iaixsl:attribute>
                      </iaixsl:if>

                      
                      <iaixsl:if test="@loadCourierServicesUrl">
                        <iaixsl:attribute name="data-services"><iaixsl:value-of select="@loadCourierServicesUrl"/></iaixsl:attribute>
                      </iaixsl:if>

                      
                      <input type="radio" name="shipping" class="order__radio_delivery f-control">
                        <iaixsl:attribute name="value"><iaixsl:value-of select="@id"/></iaixsl:attribute>
                        <iaixsl:attribute name="id">delivery_<iaixsl:value-of select="@id"/></iaixsl:attribute>
                        <iaixsl:if test="@checked = 'true' and not(/shop/page/order1/balance/@active='y' and /shop/page/order1/balance/@onlyPrepaid='y')">
                          <iaixsl:attribute name="checked">checked</iaixsl:attribute>
                        </iaixsl:if>
                        <iaixsl:if test="@minworthreached = 'false'">
                          <iaixsl:attribute name="disabled">disabled</iaixsl:attribute>
                        </iaixsl:if>
                      </input>

                      
                      <label class="order__delivery_label f-label d-flex align-items-center pr-0 py-2">
                        <iaixsl:attribute name="for">delivery_<iaixsl:value-of select="@id"/></iaixsl:attribute>
                        <span class="order__delivery_names d-flex flex-column mr-2 align-items-md-center flex-md-row">
                          <strong class="order__delivery_name d-block"><iaixsl:value-of select="@name"/></strong>
                          <span class="order__delivery_desc mt-1">
                            <iaixsl:choose>
                              <iaixsl:when test="@loadCourierServicesUrl">
                                Wybierz dzień dostawy
                              </iaixsl:when>
                              <iaixsl:when test="@minworthreached = 'false'">
                                Forma dostawy dostępna od <iaixsl:value-of select="@minworth_formatted"/>
                              </iaixsl:when>
                              <iaixsl:when test="not(@sameday='true')">
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
                                                <iaixsl:when test="(@pickup_days = 0) and (@pickup_hours = 0) and (@pickup_minutes = 0)">
                                                  Zamówienie będzie gotowe do odbioru natychmiast po przyjęciu zamówienia
                                                </iaixsl:when>
                                                <iaixsl:otherwise>
                                                  Przygotowanie do odbioru osobistego zajmie 

                                                  
                                                  <iaixsl:if test="@pickup_days > 0">
                                                    <iaixsl:value-of select="@pickup_days"/>
                                                    <iaixsl:choose>
                                                      <iaixsl:when test="@pickup_days = '1'">
                                                         dzień 
                                                      </iaixsl:when>
                                                      <iaixsl:otherwise>
                                                         dni 
                                                      </iaixsl:otherwise>
                                                    </iaixsl:choose>
                                                  </iaixsl:if>

                                                  
                                                  <iaixsl:if test="@pickup_hours > 0">
                                                    <iaixsl:value-of select="@pickup_hours"/>
                                                    <iaixsl:choose>
                                                      <iaixsl:when test="@pickup_hours > 1">
                                                         godz. 
                                                      </iaixsl:when>
                                                      <iaixsl:otherwise>
                                                         godz. 
                                                      </iaixsl:otherwise>
                                                    </iaixsl:choose>
                                                  </iaixsl:if>

                                                  
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
                                            <iaixsl:when test="@deliverytime_days = '1'">
                                               dzień 
                                            </iaixsl:when>
                                            <iaixsl:otherwise>
                                               dni 
                                            </iaixsl:otherwise>
                                          </iaixsl:choose>
                                        </iaixsl:if>

                                        
                                        <iaixsl:if test="@deliverytime_hours > 0">
                                          <iaixsl:value-of select="@deliverytime_hours"/>
                                          <iaixsl:choose>
                                            <iaixsl:when test="@deliverytime_hours > 1">
                                               godz. 
                                            </iaixsl:when>
                                            <iaixsl:otherwise>
                                               godz. 
                                            </iaixsl:otherwise>
                                          </iaixsl:choose>
                                        </iaixsl:if>

                                        
                                        <iaixsl:if test="@deliverytime_minutes > 0">
                                          <iaixsl:value-of select="@deliverytime_minutes"/>
                                           min
                                        </iaixsl:if>
                                      </iaixsl:otherwise>
                                    </iaixsl:choose>
                                  </iaixsl:otherwise>
                                </iaixsl:choose>
                              </iaixsl:when>
                            </iaixsl:choose>
                            <iaixsl:if test="@comment != ''">
                              <span class="order__delivery_comment"><iaixsl:value-of select="@comment"/></span>
                            </iaixsl:if>
                          </span>
                        </span>

                        <!-- <span class="order__delivery_sub d-flex flex-column align-items-center justify-content-center flex-md-row"> -->
                          
                          <iaixsl:if test="not(/shop/page/order1/shipping/@hide_cost='true')">
                            <span class="order__delivery_cost mb-1 mb-md-0 mr-md-3 mr-lg-4 d-flex flex-column">
                              <iaixsl:choose>
                                
                                <iaixsl:when test="@points_enabled">
                                  <iaixsl:attribute name="data-points">true</iaixsl:attribute>
                                  <strong class="order__delivery_price --points f-group --small --radio mb-0">
                                    <input type="radio" name="shipping_for_points" value="0" class="order__radio_points f-control"/>
                                    <label class="order__points_label f-label pr-0"><iaixsl:value-of select="@cost_formatted"/></label>
                                  </strong>
                                  <span class="order__delivery_points f-group --small --radio mb-0">
                                    <input type="radio" name="shipping_for_points" value="1" class="order__radio_points f-control">
                                      <iaixsl:if test="@points_enabled = 'false'">
                                        <iaixsl:attribute name="disabled">disabled</iaixsl:attribute>
                                      </iaixsl:if>
                                    </input>
                                    <label class="order__points_label f-label pr-0">
                                      <iaixsl:if test="@points_enabled = 'false'">
                                        <iaixsl:attribute name="title">Nie masz wystarczającej ilości punktów.</iaixsl:attribute>
                                      </iaixsl:if>
                                      <iaixsl:value-of select="@points_cost"/> pkt.
                                    </label>
                                  </span>
                                </iaixsl:when>
                                
                                <iaixsl:otherwise>
                                  <iaixsl:if test="@beforerebate_formatted">
                                    <del class="order__delivery_price_max">
                                        <iaixsl:value-of select="@beforerebate_formatted"/>
                                    </del>
                                  </iaixsl:if>
                                  <strong class="order__delivery_price">
                                    <iaixsl:choose>
                                      <iaixsl:when test="@cost > 0">
                                        <iaixsl:if test="@limitfree > 0"><iaixsl:attribute name="title">Od <iaixsl:value-of select="@limitfree_formatted"/> gratis</iaixsl:attribute></iaixsl:if>
                                        <iaixsl:value-of select="@cost_formatted"/>
                                      </iaixsl:when>
                                      <iaixsl:otherwise>
                                        Gratis!
                                      </iaixsl:otherwise>
                                    </iaixsl:choose>
                                  </strong>
                                </iaixsl:otherwise>
                              </iaixsl:choose>
                            </span>
                          </iaixsl:if>

                          
                          <span class="order__delivery_icons d-flex justify-content-end">
                            <iaixsl:choose>
                                <iaixsl:when test="@id = '93-1'">
                                    <img class="order__delivery_img" src="/gfx/pol/online_delivery.png?r=1600678639">
                                        <iaixsl:attribute name="alt"><iaixsl:value-of select="@name"/></iaixsl:attribute>
                                        <iaixsl:attribute name="title"><iaixsl:value-of select="@name"/></iaixsl:attribute>
                                    </img>
                                </iaixsl:when>
                                <iaixsl:otherwise>
                                    <iaixsl:if test="@icon">
                                        <img class="order__delivery_img"><iaixsl:attribute name="src"><iaixsl:value-of select="@icon"/></iaixsl:attribute><iaixsl:attribute name="alt"><iaixsl:value-of select="@name"/></iaixsl:attribute><iaixsl:attribute name="title"><iaixsl:value-of select="@name"/></iaixsl:attribute></img>
                                    </iaixsl:if>
                                </iaixsl:otherwise>
                            </iaixsl:choose>
                          </span>
                        <!-- </span> -->
                      </label>
                    </div>
                  </iaixsl:for-each>
                </div>
              </iaixsl:if>

              <iaixsl:comment>
              <div class="order__time d-flex align-items-center p-2 flex-wrap justify-content-center px-sm-3 d-none">
                <iaixsl:if test="/shop/basket/delay_time/@unknown_delivery_time = 'true' or /shop/page/order1/shipping/delivery[@id = '93-1']">
                  <iaixsl:attribute name="data-unknown">true</iaixsl:attribute>
                </iaixsl:if>
                <div class="order__time_pick d-inline-flex align-items-center">
                  <strong class="order__time_sub">
                    <span class="order__time_item --txt"/>
                    <span class="order__time_item --value"/>
                    <span class="order__time_item --de"/>
                    <span class="order__time_item --hour"/>
                  </strong>
                </div>
                
                <div class="order__time_calendar mt-1 mt-sm-0 ml-sm-3">
                  <a href="#preferred_delivery_day" class="order__time_btn d-block">Wybierz inny dzień dostawy</a>
                </div>
              </div>
              </iaixsl:comment>
            </div>
              
              <div class="order__calendar p-2 mt-3 p-md-3">
                <strong class="order__calendar_label d-block mb-1 mb-sm-2">Wybierz preferowany dzień doręczenia</strong>
                <div class="order__calendar_block row mx-n1">
                  
                  <iaixsl:if test="/shop/page/order1/deliverytime_own/@use = 'true'">
                    <iaixsl:attribute name="data-own"><iaixsl:for-each select="/shop/page/order1/deliverytime_own/date"><iaixsl:value-of select="@date"/><iaixsl:if test="not(position() = count(/shop/page/order1/deliverytime_own/date))">,</iaixsl:if></iaixsl:for-each></iaixsl:attribute>
                  </iaixsl:if>

                  
                  <iaixsl:if test="/shop/page/order1/order_calendar">
                    <iaixsl:attribute name="data-calendar"><iaixsl:value-of select="/shop/page/order1/order_calendar/@date_y"/>-<iaixsl:value-of select="/shop/page/order1/order_calendar/@date_m"/>-<iaixsl:value-of select="/shop/page/order1/order_calendar/@date_d"/></iaixsl:attribute>
                    <iaixsl:attribute name="data-calendar_select"><iaixsl:value-of select="/shop/page/order1/order_calendar/@select_y"/>-<iaixsl:value-of select="/shop/page/order1/order_calendar/@select_m"/>-<iaixsl:value-of select="/shop/page/order1/order_calendar/@select_d"/></iaixsl:attribute>
                    <iaixsl:if test="/shop/page/order1/order_calendar/holiday">
                      <iaixsl:attribute name="data-holiday"><iaixsl:for-each select="/shop/page/order1/order_calendar/holiday"><iaixsl:value-of select="@date"/><iaixsl:if test="not(position() = count(/shop/page/order1/order_calendar/holiday))">,</iaixsl:if></iaixsl:for-each></iaixsl:attribute>
                    </iaixsl:if>
                  </iaixsl:if>

                  
                  <div class="order__date col-4 p-1 col-sm-3 col-md-2">
                    <input type="radio" name="calendar_select_date" class="order__date_radio d-none"/>
                    <label class="order__date_label d-flex flex-column align-items-center justify-content-around p-2">
                      <iaixsl:attribute name="title">Kliknij, aby wybrać dostawę tego dnia</iaixsl:attribute>
                      <strong class="order__date_day"/>
                      <span class="order__date_month"/>
                      <strong class="order__services_cost"/>
                    </label>
                  </div>

                  
                  <div class="order__date --other col-4 p-1 col-sm-3 col-md-2">
                    <label class="order__date_label d-flex flex-column align-items-center justify-content-around p-2">
                      <iaixsl:attribute name="title">Kliknij, aby wybrać dostawę innego dnia</iaixsl:attribute>
                      <span class="order__date_other">Inny dzień</span>
                    </label>
                    <div class="order__datepicker"/>
                  </div>
                </div>

                
                <div class="order__calendar_hour flex-column mt-2 flex-sm-row align-items-sm-center justify-content-sm-center">
                  <span class="order__hour_txt mb-1 mb-sm-0 mr-sm-2">Możesz również podać preferowany przedział godzin (np. 13.00 - 16.00)</span>
                  <input type="text" name="calendar_select_hour" class="order__hour_input" maxlength="50"/>
                </div>

                
                <div class="order__calendar_services flex-column mt-2 flex-sm-row align-items-sm-center justify-content-sm-center">
                  <span class="order__services_txt mb-1 mb-sm-0 mr-sm-2">Dodatkowa usługa</span>
                  <input type="hidden" class="order__calendar_services_points" name="calendar_services_points" value="0"/>
                  <select name="calendar_services" class="order__services_select f-select mb-0 --small">
                  </select>
                </div>
                <input type="hidden" name="calendar_select_active" class="order__select_day" value="0"/>
              </div>

              
              <iaixsl:if test="/shop/page/order1/shipping/delivery/@sameday = 'true'">
                <div class="order__xpress p-2 p-md-3">
                  <div class="order__xpress_show d-flex flex-column align-items-center">
                    <a class="order__xpress_button btn --solid --medium  mb-2" href="#showSameday">Wybierz preferowany termin dostawy</a>
                    <span class="order__xpress_info">* wybór jest wymagany, aby przejść dalej </span>
                  </div>
                  <div class="order__xpress_choice mt-2 pt-2 flex-column align-items-center mt-md-3 pt-md-3">
                    <div class="order__xpress_group f-group --radio">
                      <input type="radio" name="sameDayServiceId" class="order__xpress_radio f-control" value=""/>
                      <label class="order__xpress_label f-label"/>
                    </div>
                  </div>
                  <div class="order__xpress_not mt-2 pt-2 mt-md-3 pt-md-3">Niestety w tej chwili nie ma dostępnych dostaw</div>
                </div>
              </iaixsl:if>

              
            </section>
            
            <iaixsl:if test="/shop/page/order1/shipping_division">
              <section class="order__delivery --division mb-3 mb-md-5">

                <div class="headline">
                  <span class="headline__name --prepaid">
                    <iaixsl:if test="not(/shop/page/order1/shipping_division/delivery[@type = 'dvp' and @checked = 'true'])">
                      <iaixsl:attribute name="class">headline__name --prepaid --active</iaixsl:attribute>
                    </iaixsl:if>
                    <span class="headline__name_txt">Opcje dostawy dla produktów dostępnych za  </span>
                    <span class="headline__division_time">
                      <iaixsl:attribute name="data-shipping_week"><iaixsl:value-of select="/shop/basket/shipping_division_time/@week_amount"/></iaixsl:attribute>
                      <iaixsl:attribute name="data-shipping_day"><iaixsl:value-of select="/shop/basket/shipping_division_time/@week_day"/></iaixsl:attribute>
                    </span>
                  </span>
                  <span class="headline__name --dvp">
                    <iaixsl:if test="not(/shop/page/order1/shipping_division/delivery[@type = 'prepaid']) or /shop/page/order1/shipping_division/delivery[@type = 'dvp' and @checked = 'true'] and not(/shop/page/order1/balance/@active='y' and /shop/page/order1/balance/@onlyPrepaid='y')">
                      <iaixsl:attribute name="class">headline__name --dvp --active</iaixsl:attribute>
                    </iaixsl:if>
                    <span class="headline__name_txt">Opcje dostawy za pobraniem dla produktów dostępnych za </span>
                    <span class="headline__division_time">
                      <iaixsl:attribute name="data-shipping_week"><iaixsl:value-of select="/shop/basket/shipping_division_time/@week_amount"/></iaixsl:attribute>
                      <iaixsl:attribute name="data-shipping_day"><iaixsl:value-of select="/shop/basket/shipping_division_time/@week_day"/></iaixsl:attribute>
                    </span>
                  </span>
                </div>

                
                <iaixsl:if test="count(/shop/page/order1/shipping_division/delivery[@type = 'prepaid']) > 0">
                  <div class="order__delivery_section --prepaid">
                    <iaixsl:if test="not(/shop/page/order1/shipping_division/delivery[@type = 'dvp' and @checked = 'true'])">
                      <iaixsl:attribute name="class">order__delivery_section --prepaid --active</iaixsl:attribute>
                    </iaixsl:if>
                    <iaixsl:for-each select="/shop/page/order1/shipping_division/delivery[@type = 'prepaid']">
                      <div class="order__delivery_group f-group --radio mb-0 px-2  px-sm-3">
                        
                        <iaixsl:if test="@sameday='true'">
                            <iaixsl:attribute name="data-sameday">true</iaixsl:attribute>
                            <iaixsl:attribute name="data-xpress_type"><iaixsl:value-of select="@express_courier_type"/></iaixsl:attribute>
                        </iaixsl:if>

                        
                        <iaixsl:attribute name="data-working_days">[<iaixsl:for-each select="working_days/item"><iaixsl:if test="position() != 1">,</iaixsl:if><iaixsl:value-of select="translate(.,'7','0')"/></iaixsl:for-each>]</iaixsl:attribute>

                        
                        <iaixsl:attribute name="data-id"><iaixsl:value-of select="@id"/></iaixsl:attribute>

                        
                        <iaixsl:attribute name="data-calendar"><iaixsl:choose><iaixsl:when test="@sameday = 'true'">n</iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="@calendar"/></iaixsl:otherwise></iaixsl:choose></iaixsl:attribute>

                        
                        <iaixsl:attribute name="data-delivery_time"><iaixsl:value-of select="@deliverytime"/></iaixsl:attribute>

                        
                        <iaixsl:attribute name="data-prepaid">1</iaixsl:attribute>

                        
                        <iaixsl:attribute name="data-total_time"><iaixsl:value-of select="@time"/></iaixsl:attribute>

                        
                        <iaixsl:attribute name="data-minute"><iaixsl:choose><iaixsl:when test="@id = '0-1' or @id='0-0'"><iaixsl:value-of select="/shop/page/order1/stocks/stock[@selected = 'selected']/@pickup_days"/>#<iaixsl:value-of select="/shop/page/order1/stocks/stock[@selected = 'selected']/@pickup_hours"/>#<iaixsl:value-of select="/shop/page/order1/stocks/stock[@selected = 'selected']/@pickup_minutes"/>#<iaixsl:choose><iaixsl:when test="@today='true'">0</iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="@week_day"/></iaixsl:otherwise></iaixsl:choose>#<iaixsl:value-of select="@week_amount"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="@time_days"/>#<iaixsl:value-of select="@time_hours"/>#<iaixsl:value-of select="@time_minutes"/>#<iaixsl:choose><iaixsl:when test="@today='true'">0</iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="@week_day"/></iaixsl:otherwise></iaixsl:choose>#<iaixsl:value-of select="@week_amount"/></iaixsl:otherwise></iaixsl:choose></iaixsl:attribute>

                        
                        <iaixsl:if test="@checked = 'true'">
                          <iaixsl:attribute name="data-active">true</iaixsl:attribute>
                        </iaixsl:if>

                        
                        <iaixsl:if test="@minworthreached = 'false'">
                          <iaixsl:attribute name="data-disabled">true</iaixsl:attribute>
                        </iaixsl:if>

                        
                        <iaixsl:if test="@loadCourierServicesUrl">
                          <iaixsl:attribute name="data-services"><iaixsl:value-of select="@loadCourierServicesUrl"/></iaixsl:attribute>
                        </iaixsl:if>

                        
                        <input type="radio" name="shipping_division" class="order__radio_delivery f-control">
                          <iaixsl:attribute name="value"><iaixsl:value-of select="@id"/></iaixsl:attribute>
                          <iaixsl:attribute name="id">delivery_division_<iaixsl:value-of select="@id"/></iaixsl:attribute>
                          <iaixsl:if test="@checked = 'true'">
                            <iaixsl:attribute name="checked">checked</iaixsl:attribute>
                          </iaixsl:if>
                          <iaixsl:if test="@minworthreached = 'false'">
                            <iaixsl:attribute name="disabled">disabled</iaixsl:attribute>
                          </iaixsl:if>
                        </input>

                        
                        <label class="order__delivery_label f-label d-flex align-items-center pr-0 py-2">
                          <iaixsl:attribute name="for">delivery_division_<iaixsl:value-of select="@id"/></iaixsl:attribute>
                          <span class="order__delivery_names d-flex flex-column mr-2 align-items-md-center flex-md-row">
                            <strong class="order__delivery_name d-block"><iaixsl:value-of select="@name"/></strong>
                            <span class="order__delivery_desc mt-1">
                              <iaixsl:choose>
                                <iaixsl:when test="@id = '93-1'">
                                </iaixsl:when>
                                <iaixsl:when test="@loadCourierServicesUrl">
                                  Wybierz dzień dostawy
                                </iaixsl:when>
                                <iaixsl:when test="@minworthreached = 'false'">
                                  Forma dostawy dostępna od <iaixsl:value-of select="@minworth_formatted"/>
                                </iaixsl:when>
                                <iaixsl:when test="not(@sameday='true')">
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
                                                  <iaixsl:when test="(@pickup_days = 0) and (@pickup_hours = 0) and (@pickup_minutes = 0)">
                                                    Zamówienie będzie gotowe do odbioru natychmiast po przyjęciu zamówienia
                                                  </iaixsl:when>
                                                  <iaixsl:otherwise>
                                                    Przygotowanie do odbioru osobistego zajmie 

                                                    
                                                    <iaixsl:if test="@pickup_days > 0">
                                                      <iaixsl:value-of select="@pickup_days"/>
                                                      <iaixsl:choose>
                                                        <iaixsl:when test="@pickup_days = '1'">
                                                           dzień 
                                                        </iaixsl:when>
                                                        <iaixsl:otherwise>
                                                           dni 
                                                        </iaixsl:otherwise>
                                                      </iaixsl:choose>
                                                    </iaixsl:if>

                                                    
                                                    <iaixsl:if test="@pickup_hours > 0">
                                                      <iaixsl:value-of select="@pickup_hours"/>
                                                      <iaixsl:choose>
                                                        <iaixsl:when test="@pickup_hours > 1">
                                                           godz. 
                                                        </iaixsl:when>
                                                        <iaixsl:otherwise>
                                                           godz. 
                                                        </iaixsl:otherwise>
                                                      </iaixsl:choose>
                                                    </iaixsl:if>

                                                    
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
                                              <iaixsl:when test="@deliverytime_days = '1'">
                                                 dzień 
                                              </iaixsl:when>
                                              <iaixsl:otherwise>
                                                 dni 
                                              </iaixsl:otherwise>
                                            </iaixsl:choose>
                                          </iaixsl:if>

                                          
                                          <iaixsl:if test="@deliverytime_hours > 0">
                                            <iaixsl:value-of select="@deliverytime_hours"/>
                                            <iaixsl:choose>
                                              <iaixsl:when test="@deliverytime_hours > 1">
                                                 godz. 
                                              </iaixsl:when>
                                              <iaixsl:otherwise>
                                                 godz. 
                                              </iaixsl:otherwise>
                                            </iaixsl:choose>
                                          </iaixsl:if>

                                          
                                          <iaixsl:if test="@deliverytime_minutes > 0">
                                            <iaixsl:value-of select="@deliverytime_minutes"/>
                                             min
                                          </iaixsl:if>
                                        </iaixsl:otherwise>
                                      </iaixsl:choose>
                                    </iaixsl:otherwise>
                                  </iaixsl:choose>
                                </iaixsl:when>
                              </iaixsl:choose>
                              <iaixsl:if test="@comment != ''">
                                <span class="order__delivery_comment"><iaixsl:value-of select="@comment"/></span>
                              </iaixsl:if>
                            </span>
                          </span>

                          <!-- <span class="order__delivery_sub d-flex flex-column align-items-center justify-content-center flex-md-row"> -->
                            
                            <iaixsl:if test="not(/shop/page/order1/shipping_division/@hide_cost='true')">
                              <span class="order__delivery_cost mb-1 mb-md-0 mr-md-3 mr-lg-4 d-flex flex-column">
                                <iaixsl:choose>
                                  
                                  <iaixsl:when test="@points_enabled">
                                    <iaixsl:attribute name="data-points">true</iaixsl:attribute>
                                    <strong class="order__delivery_price --points f-group --small --radio mb-0">
                                      <input type="radio" name="shipping_for_points_division" value="0" class="order__radio_points f-control"/>
                                      <label class="order__points_label f-label pr-0"><iaixsl:value-of select="@cost_formatted"/></label>
                                    </strong>
                                    <span class="order__delivery_points f-group --small --radio mb-0">
                                      <input type="radio" name="shipping_for_points_division" value="1" class="order__radio_points f-control">
                                        <iaixsl:if test="@points_enabled = 'false'">
                                          <iaixsl:attribute name="disabled">disabled</iaixsl:attribute>
                                        </iaixsl:if>
                                      </input>
                                      <label class="order__points_label f-label pr-0">
                                        <iaixsl:if test="@points_enabled = 'false'">
                                          <iaixsl:attribute name="title">Nie masz wystarczającej ilości punktów.</iaixsl:attribute>
                                        </iaixsl:if>
                                        <iaixsl:value-of select="@points_cost"/> pkt.
                                      </label>
                                    </span>
                                  </iaixsl:when>
                                  
                                  <iaixsl:otherwise>
                                    <iaixsl:if test="@beforerebate_formatted">
                                      <del class="order__delivery_price_max">
                                          <iaixsl:value-of select="@beforerebate_formatted"/>
                                      </del>
                                    </iaixsl:if>
                                    <strong class="order__delivery_price">
                                      <iaixsl:choose>
                                        <iaixsl:when test="@cost > 0">
                                          <iaixsl:if test="@limitfree > 0"><iaixsl:attribute name="title">Od <iaixsl:value-of select="@limitfree_formatted"/> gratis</iaixsl:attribute></iaixsl:if>
                                          <iaixsl:value-of select="@cost_formatted"/>
                                        </iaixsl:when>
                                        <iaixsl:otherwise>
                                          Gratis!
                                        </iaixsl:otherwise>
                                      </iaixsl:choose>
                                    </strong>
                                  </iaixsl:otherwise>
                                </iaixsl:choose>
                              </span>
                            </iaixsl:if>

                            
                            <span class="order__delivery_icons d-flex justify-content-end">
                              <iaixsl:choose>
                                  <iaixsl:when test="@id = '93-1'">
                                      <img class="order__delivery_img" src="/gfx/pol/online_delivery.png?r=1600678639">
                                          <iaixsl:attribute name="alt"><iaixsl:value-of select="@name"/></iaixsl:attribute>
                                          <iaixsl:attribute name="title"><iaixsl:value-of select="@name"/></iaixsl:attribute>
                                      </img>
                                  </iaixsl:when>
                                  <iaixsl:otherwise>
                                      <iaixsl:if test="@icon">
                                          <img class="order__delivery_img"><iaixsl:attribute name="src"><iaixsl:value-of select="@icon"/></iaixsl:attribute><iaixsl:attribute name="alt"><iaixsl:value-of select="@name"/></iaixsl:attribute><iaixsl:attribute name="title"><iaixsl:value-of select="@name"/></iaixsl:attribute></img>
                                      </iaixsl:if>
                                  </iaixsl:otherwise>
                              </iaixsl:choose>
                            </span>
                          <!-- </span> -->
                        </label>
                      </div>
                    </iaixsl:for-each>
                  </div>
                </iaixsl:if>

                
                <iaixsl:if test="count(/shop/page/order1/shipping_division/delivery[@type = 'dvp']) > 0">
                  <div class="order__delivery_section --dvp">
                    <iaixsl:if test="not(/shop/page/order1/shipping_division/delivery[@type = 'prepaid']) or /shop/page/order1/shipping_division/delivery[@type = 'dvp' and @checked = 'true'] and not(/shop/page/order1/balance/@active='y' and /shop/page/order1/balance/@onlyPrepaid='y')">
                      <iaixsl:attribute name="class">order__delivery_section --dvp --active</iaixsl:attribute>
                    </iaixsl:if>

                    <iaixsl:for-each select="/shop/page/order1/shipping_division/delivery[@type = 'dvp']">
                      <div class="order__delivery_group f-group --radio mb-0 px-2  px-sm-3">
                        
                        <iaixsl:if test="@sameday='true'">
                            <iaixsl:attribute name="data-sameday">true</iaixsl:attribute>
                            <iaixsl:attribute name="data-xpress_type"><iaixsl:value-of select="@express_courier_type"/></iaixsl:attribute>
                        </iaixsl:if>

                        
                        <iaixsl:attribute name="data-working_days">[<iaixsl:for-each select="working_days/item"><iaixsl:if test="position() != 1">,</iaixsl:if><iaixsl:value-of select="translate(.,'7','0')"/></iaixsl:for-each>]</iaixsl:attribute>

                        
                        <iaixsl:attribute name="data-id"><iaixsl:value-of select="@id"/></iaixsl:attribute>

                        
                        <iaixsl:attribute name="data-calendar"><iaixsl:choose><iaixsl:when test="@sameday = 'true'">n</iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="@calendar"/></iaixsl:otherwise></iaixsl:choose></iaixsl:attribute>

                        
                        <iaixsl:attribute name="data-delivery_time"><iaixsl:value-of select="@deliverytime"/></iaixsl:attribute>

                        
                        <iaixsl:attribute name="data-prepaid">1</iaixsl:attribute>

                        
                        <iaixsl:attribute name="data-total_time"><iaixsl:value-of select="@time"/></iaixsl:attribute>

                        
                        <iaixsl:attribute name="data-minute"><iaixsl:choose><iaixsl:when test="@id = '0-1' or @id='0-0'"><iaixsl:value-of select="/shop/page/order1/stocks/stock[@selected = 'selected']/@pickup_days"/>#<iaixsl:value-of select="/shop/page/order1/stocks/stock[@selected = 'selected']/@pickup_hours"/>#<iaixsl:value-of select="/shop/page/order1/stocks/stock[@selected = 'selected']/@pickup_minutes"/>#<iaixsl:choose><iaixsl:when test="@today='true'">0</iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="@week_day"/></iaixsl:otherwise></iaixsl:choose>#<iaixsl:value-of select="@week_amount"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="@time_days"/>#<iaixsl:value-of select="@time_hours"/>#<iaixsl:value-of select="@time_minutes"/>#<iaixsl:choose><iaixsl:when test="@today='true'">0</iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="@week_day"/></iaixsl:otherwise></iaixsl:choose>#<iaixsl:value-of select="@week_amount"/></iaixsl:otherwise></iaixsl:choose></iaixsl:attribute>

                        
                        <iaixsl:if test="@checked = 'true'">
                          <iaixsl:attribute name="data-active">true</iaixsl:attribute>
                        </iaixsl:if>

                        
                        <iaixsl:if test="@minworthreached = 'false'">
                          <iaixsl:attribute name="data-disabled">true</iaixsl:attribute>
                        </iaixsl:if>

                        
                        <iaixsl:if test="@loadCourierServicesUrl">
                          <iaixsl:attribute name="data-services"><iaixsl:value-of select="@loadCourierServicesUrl"/></iaixsl:attribute>
                        </iaixsl:if>

                        
                        <input type="radio" name="shipping_division" class="order__radio_delivery f-control">
                          <iaixsl:attribute name="value"><iaixsl:value-of select="@id"/></iaixsl:attribute>
                          <iaixsl:attribute name="id">delivery_division_<iaixsl:value-of select="@id"/></iaixsl:attribute>
                          <iaixsl:if test="@checked = 'true' and not(/shop/page/order1/balance/@active='y' and /shop/page/order1/balance/@onlyPrepaid='y')">
                            <iaixsl:attribute name="checked">checked</iaixsl:attribute>
                          </iaixsl:if>
                          <iaixsl:if test="@minworthreached = 'false'">
                            <iaixsl:attribute name="disabled">disabled</iaixsl:attribute>
                          </iaixsl:if>
                        </input>

                        
                        <label class="order__delivery_label f-label d-flex align-items-center pr-0 py-2">
                          <iaixsl:attribute name="for">delivery_division_<iaixsl:value-of select="@id"/></iaixsl:attribute>
                          <span class="order__delivery_names d-flex flex-column mr-2 align-items-md-center flex-md-row">
                            <strong class="order__delivery_name d-block"><iaixsl:value-of select="@name"/></strong>
                            <span class="order__delivery_desc mt-1">
                              <iaixsl:choose>
                                <iaixsl:when test="@loadCourierServicesUrl">
                                  Wybierz dzień dostawy
                                </iaixsl:when>
                                <iaixsl:when test="@minworthreached = 'false'">
                                  Forma dostawy dostępna od <iaixsl:value-of select="@minworth_formatted"/>
                                </iaixsl:when>
                                <iaixsl:when test="not(@sameday='true')">
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
                                                  <iaixsl:when test="(@pickup_days = 0) and (@pickup_hours = 0) and (@pickup_minutes = 0)">
                                                    Zamówienie będzie gotowe do odbioru natychmiast po przyjęciu zamówienia
                                                  </iaixsl:when>
                                                  <iaixsl:otherwise>
                                                    Przygotowanie do odbioru osobistego zajmie 

                                                    
                                                    <iaixsl:if test="@pickup_days > 0">
                                                      <iaixsl:value-of select="@pickup_days"/>
                                                      <iaixsl:choose>
                                                        <iaixsl:when test="@pickup_days = '1'">
                                                           dzień 
                                                        </iaixsl:when>
                                                        <iaixsl:otherwise>
                                                           dni 
                                                        </iaixsl:otherwise>
                                                      </iaixsl:choose>
                                                    </iaixsl:if>

                                                    
                                                    <iaixsl:if test="@pickup_hours > 0">
                                                      <iaixsl:value-of select="@pickup_hours"/>
                                                      <iaixsl:choose>
                                                        <iaixsl:when test="@pickup_hours > 1">
                                                           godz. 
                                                        </iaixsl:when>
                                                        <iaixsl:otherwise>
                                                           godz. 
                                                        </iaixsl:otherwise>
                                                      </iaixsl:choose>
                                                    </iaixsl:if>

                                                    
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
                                              <iaixsl:when test="@deliverytime_days = '1'">
                                                 dzień 
                                              </iaixsl:when>
                                              <iaixsl:otherwise>
                                                 dni 
                                              </iaixsl:otherwise>
                                            </iaixsl:choose>
                                          </iaixsl:if>

                                          
                                          <iaixsl:if test="@deliverytime_hours > 0">
                                            <iaixsl:value-of select="@deliverytime_hours"/>
                                            <iaixsl:choose>
                                              <iaixsl:when test="@deliverytime_hours > 1">
                                                 godz. 
                                              </iaixsl:when>
                                              <iaixsl:otherwise>
                                                 godz. 
                                              </iaixsl:otherwise>
                                            </iaixsl:choose>
                                          </iaixsl:if>

                                          
                                          <iaixsl:if test="@deliverytime_minutes > 0">
                                            <iaixsl:value-of select="@deliverytime_minutes"/>
                                             min
                                          </iaixsl:if>
                                        </iaixsl:otherwise>
                                      </iaixsl:choose>
                                    </iaixsl:otherwise>
                                  </iaixsl:choose>
                                </iaixsl:when>
                              </iaixsl:choose>
                              <iaixsl:if test="@comment != ''">
                                <span class="order__delivery_comment"><iaixsl:value-of select="@comment"/></span>
                              </iaixsl:if>
                            </span>
                          </span>

                          <!-- <span class="order__delivery_sub d-flex flex-column align-items-center justify-content-center flex-md-row"> -->
                            
                            <iaixsl:if test="not(/shop/page/order1/shipping_division/@hide_cost='true')">
                              <span class="order__delivery_cost mb-1 mb-md-0 mr-md-3 mr-lg-4 d-flex flex-column">
                                <iaixsl:choose>
                                  
                                  <iaixsl:when test="@points_enabled">
                                    <iaixsl:attribute name="data-points">true</iaixsl:attribute>
                                    <strong class="order__delivery_price --points f-group --small --radio mb-0">
                                      <input type="radio" name="shipping_for_points_division" value="0" class="order__radio_points f-control"/>
                                      <label class="order__points_label f-label pr-0"><iaixsl:value-of select="@cost_formatted"/></label>
                                    </strong>
                                    <span class="order__delivery_points f-group --small --radio mb-0">
                                      <input type="radio" name="shipping_for_points_division" value="1" class="order__radio_points f-control">
                                        <iaixsl:if test="@points_enabled = 'false'">
                                          <iaixsl:attribute name="disabled">disabled</iaixsl:attribute>
                                        </iaixsl:if>
                                      </input>
                                      <label class="order__points_label f-label pr-0">
                                        <iaixsl:if test="@points_enabled = 'false'">
                                          <iaixsl:attribute name="title">Nie masz wystarczającej ilości punktów.</iaixsl:attribute>
                                        </iaixsl:if>
                                        <iaixsl:value-of select="@points_cost"/> pkt.
                                      </label>
                                    </span>
                                  </iaixsl:when>
                                  
                                  <iaixsl:otherwise>
                                    <iaixsl:if test="@beforerebate_formatted">
                                      <del class="order__delivery_price_max">
                                          <iaixsl:value-of select="@beforerebate_formatted"/>
                                      </del>
                                    </iaixsl:if>
                                    <strong class="order__delivery_price">
                                      <iaixsl:choose>
                                        <iaixsl:when test="@cost > 0">
                                          <iaixsl:if test="@limitfree > 0"><iaixsl:attribute name="title">Od <iaixsl:value-of select="@limitfree_formatted"/> gratis</iaixsl:attribute></iaixsl:if>
                                          <iaixsl:value-of select="@cost_formatted"/>
                                        </iaixsl:when>
                                        <iaixsl:otherwise>
                                          Gratis!
                                        </iaixsl:otherwise>
                                      </iaixsl:choose>
                                    </strong>
                                  </iaixsl:otherwise>
                                </iaixsl:choose>
                              </span>
                            </iaixsl:if>

                            
                            <span class="order__delivery_icons d-flex justify-content-end">
                              <iaixsl:choose>
                                  <iaixsl:when test="@id = '93-1'">
                                      <img class="order__delivery_img" src="/gfx/pol/online_delivery.png?r=1600678639">
                                          <iaixsl:attribute name="alt"><iaixsl:value-of select="@name"/></iaixsl:attribute>
                                          <iaixsl:attribute name="title"><iaixsl:value-of select="@name"/></iaixsl:attribute>
                                      </img>
                                  </iaixsl:when>
                                  <iaixsl:otherwise>
                                      <iaixsl:if test="@icon">
                                          <img class="order__delivery_img"><iaixsl:attribute name="src"><iaixsl:value-of select="@icon"/></iaixsl:attribute><iaixsl:attribute name="alt"><iaixsl:value-of select="@name"/></iaixsl:attribute><iaixsl:attribute name="title"><iaixsl:value-of select="@name"/></iaixsl:attribute></img>
                                      </iaixsl:if>
                                  </iaixsl:otherwise>
                              </iaixsl:choose>
                            </span>
                          <!-- </span> -->
                        </label>
                      </div>
                    </iaixsl:for-each>
                  </div>
                </iaixsl:if>

                
                <div class="order__time d-flex align-items-center p-2 flex-wrap justify-content-center px-sm-3">
                  <iaixsl:if test="/shop/basket/delay_time/@unknown_delivery_time = 'true' or /shop/page/order1/shipping_division/delivery[@id = '93-1']">
                    <iaixsl:attribute name="data-unknown">true</iaixsl:attribute>
                  </iaixsl:if>
                  <div class="order__time_pick d-inline-flex align-items-center">
                    <strong class="order__time_sub">
                      <span class="order__time_item --txt"/>
                      <span class="order__time_item --value"/>
                      <span class="order__time_item --de"/>
                      <span class="order__time_item --hour"/>
                    </strong>
                  </div>
                  
                  <div class="order__time_calendar mt-1 mt-sm-0 ml-sm-3">
                    <a href="#preferred_delivery_day" class="order__time_btn d-block">Wybierz inny dzień dostawy</a>
                  </div>
                </div>

                
                <div class="order__calendar p-2 mt-3 p-md-3">
                  <strong class="order__calendar_label d-block mb-1 mb-sm-2">Wybierz preferowany dzień doręczenia</strong>
                  <div class="order__calendar_block row mx-n1">
                    
                    <iaixsl:if test="/shop/page/order1/deliverytime_own/@use = 'true'">
                      <iaixsl:attribute name="data-own"><iaixsl:for-each select="/shop/page/order1/deliverytime_own/date"><iaixsl:value-of select="@date"/><iaixsl:if test="not(position() = count(/shop/page/order1/deliverytime_own/date))">,</iaixsl:if></iaixsl:for-each></iaixsl:attribute>
                    </iaixsl:if>

                    
                    <iaixsl:if test="/shop/page/order1/order_calendar">
                      <iaixsl:attribute name="data-calendar"><iaixsl:value-of select="/shop/page/order1/order_calendar/@date_y"/>-<iaixsl:value-of select="/shop/page/order1/order_calendar/@date_m"/>-<iaixsl:value-of select="/shop/page/order1/order_calendar/@date_d"/></iaixsl:attribute>
                      <iaixsl:attribute name="data-calendar_select"><iaixsl:value-of select="/shop/page/order1/order_calendar/@select_y"/>-<iaixsl:value-of select="/shop/page/order1/order_calendar/@select_m"/>-<iaixsl:value-of select="/shop/page/order1/order_calendar/@select_d"/></iaixsl:attribute>
                      <iaixsl:if test="/shop/page/order1/order_calendar/holiday">
                        <iaixsl:attribute name="data-holiday"><iaixsl:for-each select="/shop/page/order1/order_calendar/holiday"><iaixsl:value-of select="@date"/><iaixsl:if test="not(position() = count(/shop/page/order1/order_calendar/holiday))">,</iaixsl:if></iaixsl:for-each></iaixsl:attribute>
                      </iaixsl:if>
                    </iaixsl:if>

                    
                    <div class="order__date col-4 p-1 col-sm-3 col-md-2">
                      <input type="radio" name="calendar_select_date_division" class="order__date_radio d-none"/>
                      <label class="order__date_label d-flex flex-column align-items-center justify-content-around p-2">
                        <iaixsl:attribute name="title">Kliknij, aby wybrać dostawę tego dnia</iaixsl:attribute>
                        <strong class="order__date_day"/>
                        <span class="order__date_month"/>
                        <strong class="order__services_cost"/>
                      </label>
                    </div>

                    
                    <div class="order__date --other col-4 p-1 col-sm-3 col-md-2">
                      <label class="order__date_label d-flex flex-column align-items-center justify-content-around p-2">
                        <iaixsl:attribute name="title">Kliknij, aby wybrać dostawę innego dnia</iaixsl:attribute>
                        <span class="order__date_other">Inny dzień</span>
                      </label>
                      <div class="order__datepicker"/>
                    </div>
                  </div>

                  
                  <div class="order__calendar_hour flex-column mt-2 flex-sm-row align-items-sm-center justify-content-sm-center">
                    <span class="order__hour_txt mb-1 mb-sm-0 mr-sm-2">Możesz również podać preferowany przedział godzin (np. 13.00 - 16.00)</span>
                    <input type="text" name="calendar_select_hour_division" class="order__hour_input" maxlength="50"/>
                  </div>

                  
                  <div class="order__calendar_services flex-column mt-2 flex-sm-row align-items-sm-center justify-content-sm-center">
                    <span class="order__services_txt mb-1 mb-sm-0 mr-sm-2">Dodatkowa usługa</span>
                    <input type="hidden" class="order__calendar_services_points" name="calendar_services_points_division" value="0"/>
                    <select name="calendar_services_division" class="order__services_select f-select mb-0 --small">
                    </select>
                  </div>
                  <input type="hidden" name="calendar_select_active_division" class="order__select_day" value="0"/>
                </div>

                
                <iaixsl:if test="/shop/page/order1/shipping_division/delivery/@sameday = 'true'">
                  <div class="order__xpress p-2 p-md-3">
                    <div class="order__xpress_show d-flex flex-column align-items-center">
                      <a class="order__xpress_button btn --solid --medium  mb-2" href="#showSameday">Wybierz preferowany termin dostawy</a>
                      <span class="order__xpress_info">* wybór jest wymagany, aby przejść dalej </span>
                    </div>
                    <div class="order__xpress_choice mt-2 pt-2 flex-column align-items-center mt-md-3 pt-md-3">
                      <div class="order__xpress_group f-group --radio">
                        <input type="radio" name="sameDayServiceId_division" class="order__xpress_radio f-control" value=""/>
                        <label class="order__xpress_label f-label"/>
                      </div>
                    </div>
                    <div class="order__xpress_not mt-2 pt-2 mt-md-3 pt-md-3">Niestety w tej chwili nie ma dostępnych dostaw</div>
                  </div>
                </iaixsl:if>
              </section>
            </iaixsl:if>
           </div>

          <div class="col-12 ">
            <section class="order__payments mb-3 mb-md-5 row">
              <div class="headline col-12">
                <h2 class="big_label-custom">
                Metoda płatności
                </h2>
              </div>
              <iaixsl:if test="/shop/page/order1/groupList/item or /shop/page/order1/prepaid_methods/item[@id = '153'] or (/shop/page/order1/balance/@limit != 0 and /shop/page/order1/balance/@onlyPrepaid='y' and /shop/page/order1/balance/@tradeCredit='y') or count(/shop/page/order1/shipping_division/delivery[@type = 'dvp']) > 0 or /shop/page/order1/prepaid_methods/item/@single_group_payment_method = 'true'">
                <div class="order__payments_section col-12 col-md-6">
                  
                  <iaixsl:for-each select="/shop/page/order1/prepaid_methods/item[@single_group_payment_method = 'true']">
                    <div class="order__payments_group f-group --radio mb-0 px-2  px-sm-3">
                      <iaixsl:attribute name="id">single_group_<iaixsl:value-of select="@id"/></iaixsl:attribute>
                      <input type="radio" name="payform_id" class="order__radio d-none">
                        <iaixsl:attribute name="value"><iaixsl:value-of select="@id"/></iaixsl:attribute>
                        <iaixsl:attribute name="id">payform_<iaixsl:value-of select="@id"/></iaixsl:attribute>
                        <iaixsl:if test="not(/shop/page/order1/balance/@active='y' and /shop/page/order1/balance/@onlyPrepaid='y')">
                          <iaixsl:if test="@checked='true' and not(@id = '190' or @id = '2') and not(/shop/page/order1/shipping/delivery[@type = 'dvp' and @checked = 'true'])">
                              <iaixsl:attribute name="checked">checked</iaixsl:attribute>
                          </iaixsl:if>
                        </iaixsl:if>
                      </input>

                      <input type="radio" name="selected_group" class="order__radio_payments f-control">
                        <iaixsl:attribute name="id">single_group_payment_method_<iaixsl:value-of select="@id"/></iaixsl:attribute>
                        <iaixsl:if test="not(/shop/page/order1/balance/@active='y' and /shop/page/order1/balance/@onlyPrepaid='y')">
                          <iaixsl:if test="@checked='true' and not(@id = '190' or @id = '2') and not(/shop/page/order1/shipping/delivery[@type = 'dvp' and @checked = 'true'])">
                              <iaixsl:attribute name="checked">checked</iaixsl:attribute>
                          </iaixsl:if>
                        </iaixsl:if>
                        <iaixsl:attribute name="value"><iaixsl:value-of select="@id"/></iaixsl:attribute>
                      </input>

                      <label class="order__payments_label f-label d-flex align-items-center pr-0 py-2">
                        <iaixsl:attribute name="for">single_group_payment_method_<iaixsl:value-of select="@id"/></iaixsl:attribute>
                        <span class="order__payments_names d-flex flex-column mr-2 align-items-md-center flex-md-row">
                          <strong class="order__payments_name d-block"><iaixsl:value-of disable-output-escaping="yes" select="@name"/></strong>
                        </span>
                        <span class="order__payments_sub d-flex flex-row align-items-center justify-content-end">
                          <span class="order__payments_icons d-flex justify-content-end flex-wrap align-items-center">
                            <iaixsl:if test="@icon != ''">
                              <img class="order__payment_icon"><iaixsl:attribute name="src"><iaixsl:value-of select="@icon"/></iaixsl:attribute><iaixsl:attribute name="alt"><iaixsl:value-of select="@name"/></iaixsl:attribute></img>
                            </iaixsl:if>
                          </span>
                        </span>
                      </label>
                    </div>
                  </iaixsl:for-each>

                  
                  <iaixsl:if test="(/shop/page/order1/prepaid_methods/item[@id = '153'] or (/shop/page/order1/balance/@limit != 0 and /shop/page/order1/balance/@onlyPrepaid='y' and /shop/page/order1/balance/@tradeCredit='y')) and not(/shop/page/order1/prepaid_methods/item[@id = '153']/@single_group_payment_method = 'true')">
                    <div class="order__payments_group f-group --radio mb-0 px-2  px-sm-3" id="credit_payment">

                      <input value="153" type="radio" name="payform_id" class="order__radio d-none" id="payform_153">
                        <iaixsl:if test="not(/shop/page/order1/balance/@active='y' and /shop/page/order1/balance/@onlyPrepaid='y')">
                          <iaixsl:if test="/shop/page/order1/prepaid_methods/item[@id = '153']/@checked = 'true' or not(/shop/page/order1/shipping/delivery[@type = 'dvp' and @checked = 'true'] and (/shop/page/order1/balance/@limit != 0 and /shop/page/order1/balance/@onlyPrepaid='y' and /shop/page/order1/balance/@tradeCredit='y'))">
                            <iaixsl:attribute name="checked">checked</iaixsl:attribute>
                          </iaixsl:if>
                        </iaixsl:if>
                      </input>

                      <input type="radio" name="selected_group" class="order__radio_payments f-control" id="credit_input">
                        <iaixsl:attribute name="value">153</iaixsl:attribute>
                        <iaixsl:if test="not(/shop/page/order1/balance/@active='y' and /shop/page/order1/balance/@onlyPrepaid='y')">
                          <iaixsl:if test="/shop/page/order1/prepaid_methods/item[@id = '153']/@checked = 'true' or not(/shop/page/order1/shipping/delivery[@type = 'dvp' and @checked = 'true'] and (/shop/page/order1/balance/@limit != 0 and /shop/page/order1/balance/@onlyPrepaid='y' and /shop/page/order1/balance/@tradeCredit='y'))">
                              <iaixsl:attribute name="checked">checked</iaixsl:attribute>
                          </iaixsl:if>
                        </iaixsl:if>
                      </input>

                      <label class="order__payments_label f-label d-flex align-items-center pr-0 py-2" for="credit_input">
                        <span class="order__payments_names d-flex flex-column mr-2 align-items-md-center flex-md-row">
                          <strong class="order__payments_name d-block">
                            <iaixsl:choose>
                              <iaixsl:when test="/shop/page/order1/prepaid_methods/item[@id = '153']/@name">
                                <iaixsl:value-of select="/shop/page/order1/prepaid_methods/item[@id = '153']/@name"/>
                              </iaixsl:when>
                              <iaixsl:otherwise>
                                Faktura na termin
                              </iaixsl:otherwise>
                            </iaixsl:choose>
                          </strong>
                          <span class="order__payments_desc mt-1">Płatność przelewem po dostawie</span>
                        </span>

                        <span class="order__payments_sub d-flex flex-row align-items-center justify-content-end">
                          <span class="order__payments_icons d-flex justify-content-end flex-wrap align-items-center">
                            <img class="order__payments_img" src="//:0">
                              <iaixsl:attribute name="alt">
                                <iaixsl:choose>
                                  <iaixsl:when test="/shop/page/order1/prepaid_methods/item[@id = '153']/@name">
                                    <iaixsl:value-of select="/shop/page/order1/prepaid_methods/item[@id = '153']/@name"/>
                                  </iaixsl:when>
                                  <iaixsl:otherwise>
                                    Faktura na termin
                                  </iaixsl:otherwise>
                                </iaixsl:choose>
                              </iaixsl:attribute>
                            </img>
                            <span class="order__payments_icon"><svg id="calendar" xmlns="http://www.w3.org/2000/svg" width="25.5" height="25.5" viewBox="0 0 25.5 25.5"><g id="Group_425" data-name="Group 425"><g id="Group_424" data-name="Group 424"><path id="Path_75" data-name="Path 75" d="M22.512,1.992h-1.2V0H19.324V1.992H6.176V0H4.184V1.992h-1.2A2.992,2.992,0,0,0,0,4.98V22.512A2.992,2.992,0,0,0,2.988,25.5H22.512A2.992,2.992,0,0,0,25.5,22.512V4.98A2.992,2.992,0,0,0,22.512,1.992Zm1,20.52a1,1,0,0,1-1,1H2.988a1,1,0,0,1-1-1V9.363H23.508Zm0-15.141H1.992V4.98a1,1,0,0,1,1-1h1.2V5.977H6.176V3.984H19.324V5.977h1.992V3.984h1.2a1,1,0,0,1,1,1Z"/></g></g><g id="Group_427" data-name="Group 427" transform="translate(4.397 11.431)"><g id="Group_426" data-name="Group 426" transform="translate(0 0)"><rect id="Rectangle_196" data-name="Rectangle 196" width="2" height="2" transform="translate(-0.147 -0.181)"/></g></g><g id="Group_429" data-name="Group 429" transform="translate(7.914 11.431)"><g id="Group_428" data-name="Group 428" transform="translate(0 0)"><rect id="Rectangle_197" data-name="Rectangle 197" width="2" height="2" transform="translate(0.336 -0.181)"/></g></g><g id="Group_431" data-name="Group 431" transform="translate(12.31 11.431)"><g id="Group_430" data-name="Group 430" transform="translate(0 0)"><rect id="Rectangle_198" data-name="Rectangle 198" width="1" height="2" transform="translate(-0.06 -0.181)"/></g></g><g id="Group_433" data-name="Group 433" transform="translate(14.948 11.431)"><g id="Group_432" data-name="Group 432" transform="translate(0 0)"><rect id="Rectangle_199" data-name="Rectangle 199" width="2" height="2" transform="translate(0.302 -0.181)"/></g></g><g id="Group_435" data-name="Group 435" transform="translate(19.345 11.431)"><g id="Group_434" data-name="Group 434" transform="translate(0 0)"><rect id="Rectangle_200" data-name="Rectangle 200" width="2" height="2" transform="translate(-0.095 -0.181)"/></g></g><g id="Group_437" data-name="Group 437" transform="translate(4.397 14.948)"><g id="Group_436" data-name="Group 436" transform="translate(0 0)"><rect id="Rectangle_201" data-name="Rectangle 201" width="2" height="2" transform="translate(-0.147 0.302)"/></g></g><g id="Group_439" data-name="Group 439" transform="translate(7.914 14.948)"><g id="Group_438" data-name="Group 438" transform="translate(0 0)"><rect id="Rectangle_202" data-name="Rectangle 202" width="2" height="2" transform="translate(0.336 0.302)"/></g></g><g id="Group_441" data-name="Group 441" transform="translate(12.31 14.948)"><g id="Group_440" data-name="Group 440" transform="translate(0 0)"><rect id="Rectangle_203" data-name="Rectangle 203" width="1" height="2" transform="translate(-0.06 0.302)"/></g></g><g id="Group_443" data-name="Group 443" transform="translate(14.948 14.948)"><g id="Group_442" data-name="Group 442" transform="translate(0 0)"><rect id="Rectangle_204" data-name="Rectangle 204" width="2" height="2" transform="translate(0.302 0.302)"/></g></g><g id="Group_445" data-name="Group 445" transform="translate(4.397 19.345)"><g id="Group_444" data-name="Group 444" transform="translate(0 0)"><rect id="Rectangle_205" data-name="Rectangle 205" width="2" height="2" transform="translate(-0.147 -0.095)"/></g></g><g id="Group_447" data-name="Group 447" transform="translate(7.914 19.345)"><g id="Group_446" data-name="Group 446" transform="translate(0 0)"><rect id="Rectangle_206" data-name="Rectangle 206" width="2" height="2" transform="translate(0.336 -0.095)"/></g></g><g id="Group_449" data-name="Group 449" transform="translate(12.31 19.345)"><g id="Group_448" data-name="Group 448" transform="translate(0 0)"><rect id="Rectangle_207" data-name="Rectangle 207" width="1" height="2" transform="translate(-0.06 -0.095)"/></g></g><g id="Group_451" data-name="Group 451" transform="translate(14.948 19.345)"><g id="Group_450" data-name="Group 450" transform="translate(0 0)"><rect id="Rectangle_208" data-name="Rectangle 208" width="2" height="2" transform="translate(0.302 -0.095)"/></g></g><g id="Group_453" data-name="Group 453" transform="translate(19.345 14.948)"><g id="Group_452" data-name="Group 452" transform="translate(0 0)"><rect id="Rectangle_209" data-name="Rectangle 209" width="2" height="2" transform="translate(-0.095 0.302)"/></g></g></svg></span>
                          </span>
                        </span>
                      </label>
                    </div>
                  </iaixsl:if>

                  <iaixsl:for-each select="/shop/page/order1/groupList/item">
                    <iaixsl:variable name="groupID"><iaixsl:value-of select="@id"/></iaixsl:variable>

                    <iaixsl:if test="count(/shop/page/order1/prepaid_methods/item[@group = $groupID][not(@single_group_payment_method = 'true')]) > 0">
                      <div class="order__payments_group f-group --radio mb-0 px-2  px-sm-3">
                        <iaixsl:attribute name="id"><iaixsl:value-of select="@id"/>_payment</iaixsl:attribute>
                        <iaixsl:if test="not(/shop/page/order1/balance/@active='y' and /shop/page/order1/balance/@onlyPrepaid='y')">
                            <iaixsl:if test="/shop/page/order1/prepaid_methods/item[@group = $groupID]/@checked = 'true' and not(/shop/page/order1/shipping/delivery[@type = 'dvp' and @checked = 'true'])">
                                <iaixsl:attribute name="data-open">true</iaixsl:attribute>
                            </iaixsl:if>
                        </iaixsl:if>

                        <iaixsl:if test="@id = 'simple_transfer'">
                          <input value="110" type="radio" name="payform_id" class="order__radio d-none" id="payform_110">
                            <iaixsl:if test="not(/shop/page/order1/balance/@active='y' and /shop/page/order1/balance/@onlyPrepaid='y')">
                              <iaixsl:if test="/shop/page/order1/prepaid_methods/item[@group = $groupID]/@checked = 'true' and not(/shop/page/order1/shipping/delivery[@type = 'dvp' and @checked = 'true'])">
                                <iaixsl:attribute name="checked">checked</iaixsl:attribute>
                              </iaixsl:if>
                            </iaixsl:if>
                          </input>
                        </iaixsl:if>

                        <iaixsl:if test="@id = 'blik'">
                          <input value="177" type="radio" name="payform_id" class="order__radio d-none" id="payform_177">
                            <iaixsl:if test="not(/shop/page/order1/balance/@active='y' and /shop/page/order1/balance/@onlyPrepaid='y')">
                              <iaixsl:if test="/shop/page/order1/prepaid_methods/item[@group = $groupID]/@checked = 'true' and not(/shop/page/order1/shipping/delivery[@type = 'dvp' and @checked = 'true'])">
                                <iaixsl:attribute name="checked">checked</iaixsl:attribute>
                              </iaixsl:if>
                            </iaixsl:if>
                          </input>
                        </iaixsl:if>

                        <iaixsl:if test="@id = 'paypal'">
                          <input value="52" type="radio" name="payform_id" class="order__radio d-none" id="payform_52">
                            <iaixsl:if test="not(/shop/page/order1/balance/@active='y' and /shop/page/order1/balance/@onlyPrepaid='y')">
                              <iaixsl:if test="/shop/page/order1/prepaid_methods/item[@group = $groupID]/@checked = 'true' and not(/shop/page/order1/shipping/delivery[@type = 'dvp' and @checked = 'true'])">
                                <iaixsl:attribute name="checked">checked</iaixsl:attribute>
                              </iaixsl:if>
                            </iaixsl:if>
                          </input>
                        </iaixsl:if>

                        <input type="radio" name="selected_group" class="order__radio_payments f-control">
                          <iaixsl:attribute name="value"><iaixsl:value-of select="@id"/></iaixsl:attribute>
                          <iaixsl:attribute name="id"><iaixsl:value-of select="@id"/>_input</iaixsl:attribute>
                          <iaixsl:if test="not(/shop/page/order1/balance/@active='y' and /shop/page/order1/balance/@onlyPrepaid='y')">
                            <iaixsl:if test="/shop/page/order1/prepaid_methods/item[@group = $groupID]/@checked = 'true' and not(/shop/page/order1/shipping/delivery[@type = 'dvp' and @checked = 'true'])">
                                <iaixsl:attribute name="checked">checked</iaixsl:attribute>
                            </iaixsl:if>
                          </iaixsl:if>
                        </input>

                        <label class="order__payments_label f-label d-flex align-items-center pr-0 py-2">
                          <iaixsl:attribute name="for"><iaixsl:value-of select="@id"/>_input</iaixsl:attribute>
                          <span class="order__payments_names d-flex flex-column mr-2 align-items-md-center flex-md-row">
                            <strong class="order__payments_name d-block"><iaixsl:value-of select="@name"/></strong>
                          </span>

                          <span class="order__payments_sub d-flex flex-row align-items-center justify-content-end">
                            <span class="order__payments_icons d-flex justify-content-end flex-wrap align-items-center">
                              <iaixsl:for-each select="/shop/page/order1/prepaid_methods/item[@group = $groupID][not(@single_group_payment_method = 'true')][not(position() > 6)]">
                                <iaixsl:if test="@icon != ''">
                                  <div class="order__ingroup_payment_icon"><img><iaixsl:attribute name="src"><iaixsl:value-of select="@icon"/></iaixsl:attribute><iaixsl:attribute name="alt"><iaixsl:value-of select="@name"/></iaixsl:attribute></img></div>
                                </iaixsl:if>
                              </iaixsl:for-each>
                            </span>
                          </span>
                        </label>

                        <iaixsl:if test="count(/shop/page/order1/prepaid_methods/item[@group = $groupID][not(@single_group_payment_method = 'true')]) > 0 and not(@id = 'blik') and not(@id = 'simple_transfer') and not(@id = 'paypal') and not(/shop/page/order1/@only-groups)">
                          <div class="order__payments_content row mx-n1 pb-1 pb-sm-2">
                            <iaixsl:for-each select="/shop/page/order1/prepaid_methods/item[@group = $groupID][not(@single_group_payment_method = 'true')]">
                              <div class="order__payment col-4 p-1">
                                <iaixsl:attribute name="id">payment_<iaixsl:value-of select="@id"/></iaixsl:attribute>
                                <iaixsl:attribute name="title"></iaixsl:attribute>

                                <input name="payform_id" type="radio" class="order__radio d-none">
                                    <iaixsl:attribute name="value"><iaixsl:value-of select="@id"/></iaixsl:attribute>
                                    <iaixsl:attribute name="id">payform_<iaixsl:value-of select="@id"/></iaixsl:attribute>
                                    <iaixsl:if test="not(/shop/page/order1/balance/@active='y' and /shop/page/order1/balance/@onlyPrepaid='y')">
                                      <iaixsl:if test="@checked='true' and not(@id = '190' or @id = '2') and not(/shop/page/order1/shipping/delivery[@type = 'dvp' and @checked = 'true'])">
                                          <iaixsl:attribute name="checked">checked</iaixsl:attribute>
                                      </iaixsl:if>
                                    </iaixsl:if>
                                </input>

                                <label class="order__payment_label d-flex flex-column align-items-center justify-content-around p-2">
                                  <iaixsl:attribute name="for">payform_<iaixsl:value-of select="@id"/></iaixsl:attribute>

                                  <strong class="order__payment_name d-none pb-2 d-md-block">
                                    <iaixsl:value-of disable-output-escaping="yes" select="@name"/>
                                  </strong>

                                  <iaixsl:if test="@icon != ''">
                                    <img class="order__payment_icon"><iaixsl:attribute name="src"><iaixsl:value-of select="@icon"/></iaixsl:attribute><iaixsl:attribute name="alt"><iaixsl:value-of select="@name"/></iaixsl:attribute></img>
                                  </iaixsl:if>
                                </label>
                              </div>
                            </iaixsl:for-each>
                          </div>
                        </iaixsl:if>
                      </div>
                    </iaixsl:if>
                  </iaixsl:for-each>

                  
                  <iaixsl:if test="count(/shop/page/order1/shipping/delivery[@type = 'dvp']) > 0">
                    <div class="order__payments_group f-group --radio mb-0 px-2  px-sm-3">
                      <iaixsl:attribute name="id">dvp_payment</iaixsl:attribute>

                      <input type="radio" name="selected_group" class="order__radio_payments f-control" id="cash_input">
                        <iaixsl:attribute name="value">cash</iaixsl:attribute>
                        <iaixsl:if test="not(/shop/page/order1/balance/@active='y' and /shop/page/order1/balance/@onlyPrepaid='y')">
                          <iaixsl:if test="/shop/page/order1/shipping/delivery[@type = 'dvp' and @checked = 'true']">
                              <iaixsl:attribute name="checked">checked</iaixsl:attribute>
                          </iaixsl:if>
                        </iaixsl:if>
                      </input>

                      <label class="order__payments_label f-label d-flex align-items-center pr-0 py-2" for="cash_input">
                        <span class="order__payments_names d-flex flex-column mr-2 align-items-md-center flex-md-row">
                          <strong class="order__payments_name d-block">Pobranie</strong>
                        </span>

                        <span class="order__payments_sub d-flex flex-row align-items-center justify-content-end">
                          <span class="order__payments_icons d-flex justify-content-end flex-wrap align-items-center">
                            <img class="order__payments_img" src="//:0">
                                <iaixsl:attribute name="alt">Pobranie</iaixsl:attribute>
                            </img>
                            <span class="order__payments_icon"><svg xmlns="http://www.w3.org/2000/svg" width="35.75" height="28.264" viewBox="0 0 35.75 28.264"><g id="dollar" transform="translate(0 -49.067)"><g id="Group_456" data-name="Group 456" transform="translate(0 49.067)"><g id="Group_455" data-name="Group 455"><path id="Path_76" data-name="Path 76" d="M156.809,61.872a6.4,6.4,0,1,0-6.4-6.4A6.41,6.41,0,0,0,156.809,61.872Zm0-11.6a5.2,5.2,0,1,1-5.2,5.2A5.207,5.207,0,0,1,156.809,50.269Z" transform="translate(-138.934 -49.067)"/><circle id="Ellipse_30" data-name="Ellipse 30" cx="1.105" cy="1.105" r="1.105" transform="translate(2.497 22.128)"/><path id="Path_77" data-name="Path 77" d="M35.619,202.2l-.018-.046a4.364,4.364,0,0,0-5.484-2.5l-4.5,1.561a4.132,4.132,0,0,0-4.026-1.2l-4.775,1.215a4.271,4.271,0,0,1-3.226-.472,8.722,8.722,0,0,0-4.479-1.238H7.2v-1.8a.6.6,0,0,0-.6-.6H.6a.6.6,0,0,0-.6.6V213.5a.6.6,0,0,0,.6.6h6a.6.6,0,0,0,.6-.6v-2.975H9.114a7.6,7.6,0,0,1,3.064.641l1.191.521a8.113,8.113,0,0,0,6.8-.13c4.264-2.064,11.827-5.725,14.571-7.051A1.812,1.812,0,0,0,35.619,202.2ZM6,200.136V212.9H1.2V198.335H6Zm28.211,3.291c-2.744,1.326-10.307,4.987-14.571,7.051a6.912,6.912,0,0,1-5.791.111l-1.191-.521a8.788,8.788,0,0,0-3.546-.742H7.2v-8.589H9.113a7.52,7.52,0,0,1,3.861,1.067,5.482,5.482,0,0,0,4.14.6l4.775-1.215a2.92,2.92,0,0,1,3.393,1.691l.1.248.068.164.042.1-8.228,3.312.449,1.115,8.792-3.539h.007l.025-.012.026-.012.031-.018.02-.012.032-.023.015-.012.031-.027.013-.012.027-.03.012-.014.023-.031.012-.017.019-.031.011-.019c.006-.011.011-.023.016-.034l.008-.018v0c.006-.014.011-.029.016-.044l0-.011a.6.6,0,0,0-.02-.407l-.446-1.07,0-.007-.07-.168L30.51,200.8a3.163,3.163,0,0,1,3.976,1.809l.018.046A.6.6,0,0,1,34.214,203.427Z" transform="translate(0 -185.838)"/><path id="Path_78" data-name="Path 78" d="M207.755,91.354a3.462,3.462,0,0,1-.482-.176,2.438,2.438,0,0,1-.4-.223,2.2,2.2,0,0,1-.29-.239l-.337.6a3.406,3.406,0,0,0,1.9.767v.8h.893v-.823a2.9,2.9,0,0,0,.317-.067,1.882,1.882,0,0,0,.615-.286,1.338,1.338,0,0,0,.407-.478,1.475,1.475,0,0,0,.149-.682,1.409,1.409,0,0,0-.129-.635,1.208,1.208,0,0,0-.376-.439,2.276,2.276,0,0,0-.6-.3c-.122-.042-.251-.082-.388-.119V87.144a2.252,2.252,0,0,1,.349.121,2.008,2.008,0,0,1,.325.18,1.435,1.435,0,0,1,.235.2l.329-.572a2.7,2.7,0,0,0-.748-.439,2.651,2.651,0,0,0-.49-.138v-.842h-.893v.8a2.545,2.545,0,0,0-.619.132,1.758,1.758,0,0,0-.568.325,1.445,1.445,0,0,0-.372.5,1.6,1.6,0,0,0-.133.67,1.324,1.324,0,0,0,.11.564,1.064,1.064,0,0,0,.325.4,2.026,2.026,0,0,0,.537.282,6.776,6.776,0,0,0,.721.213v1.894A2.719,2.719,0,0,1,207.755,91.354Zm1.292-1.559.032.011a1.655,1.655,0,0,1,.384.2.825.825,0,0,1,.239.259.7.7,0,0,1,.082.349.709.709,0,0,1-.321.635,1.217,1.217,0,0,1-.415.164ZM207.8,88.73a1.246,1.246,0,0,1-.345-.176.655.655,0,0,1-.2-.243.783.783,0,0,1-.067-.337.8.8,0,0,1,.266-.635,1.237,1.237,0,0,1,.7-.255v1.754Q207.959,88.785,207.8,88.73Z" transform="translate(-190.518 -82.864)"/></g></g></g></svg></span>
                          </span>
                        </span>
                      </label>
                    </div>
                  </iaixsl:if>
                </div>
              </iaixsl:if>
              <section class="summary --order1 p-2 p-md-0 col-12 col-md-6">
				<div class="summary__block --top d-flex flex-column p-md-3 flex-md-row justify-content-md-between">
					<div class="summary__sub --left">
						<iaixsl:if test="/shop/client_data/client_balance/limit/@value > '0'">
							<div class="summary__limits pb-2 mb-2 pb-md-0 mb-md-0">
								<div class="summary__limit --total d-flex justify-content-between align-items-center limit-order">
									<span class="summary__limit_label">Limit zadłużenia:</span>
									<strong class="summary__limit_value"><iaixsl:value-of select="/shop/client_data/client_balance/limit/@value_formatted"/></strong>
								</div>
								<div class="summary__limit --touse d-flex justify-content-between align-items-center limit-order">
									<span class="summary__limit_label">Pozostały limit kredytowy:</span>
									<strong class="summary__limit_value"><iaixsl:value-of select="/shop/client_data/client_balance/limit/@to_use_formatted"/></strong>
								</div>
							</div>
						</iaixsl:if>
					</div>

					<div class="summary__sub --right">
						<div class="summary__calculations">
							
							<div class="summary__calculation --active --worth">
								<span class="summary__calculation_label">Łączna wartość:</span>
								<strong class="summary__calculation_value --worth"/>
							</div>
							
							<div class="summary__calculation --active --shipping">
								<span class="summary__calculation_label">Koszt przesyłki:</span>
								<strong class="summary__calculation_value --shipping --plus"/>
							</div>
							
							<div class="summary__calculation --active --paymentcost">
								<span class="summary__calculation_label">Koszt formy płatności:</span>
								<strong class="summary__calculation_value --paymentcost --plus"/>
							</div>
							
							<div class="summary__calculation --active --insurance">
								<span class="summary__calculation_label">Koszt ubezpieczenia:</span>
								<strong class="summary__calculation_value --insurance --plus"/>
							</div>
							
							<div class="summary__calculation --active --rebate">
								<span class="summary__calculation_label">Rabat:</span>
								<strong class="summary__calculation_value --rebate --minus"/>
							</div>
							
							
							<iaixsl:if test="/shop/client_data/client_balance/balance/@is_selected_and_allowed_order='true' and /shop/client_data/client_balance/balance[@is_selected_and_allowed_order='true']/@value != 0">
								<div class="summary__calculation --active --balance">
									<span class="summary__calculation_label">Opłacone z salda:<br />(nadpłaty na koncie klienta)</span>
									<strong class="summary__calculation_value --balance --minus"><iaixsl:value-of select="/shop/client_data/client_balance/balance[@is_selected_and_allowed_order='true']/@currency_value_formatted"/></strong>
								</div>
							</iaixsl:if>
							
							<div class="summary__calculation --active --prepaid_discount">
								<span class="summary__calculation_label">Jeśli opłacisz zamówienia przez <span class="summary__prepaid_discount"/> otrzymasz dodatkowy rabat:</span>
								<strong class="summary__calculation_value --prepaid_discount --minus"/>
							</div>
							
							<iaixsl:if test="/shop/page/order1/additional/advance/@value > 0">
								<div class="summary__calculation --advance">
									<span class="summary__calculation_label">Wymagana zaliczka:</span>
									<strong class="summary__calculation_value --advance">
										<iaixsl:attribute name="data-dvp"><iaixsl:value-of select="/shop/page/order1/additional/advance/@cash_on_delivery"/></iaixsl:attribute>
										<iaixsl:attribute name="data-prepaid"><iaixsl:value-of select="/shop/page/order1/additional/advance/@prepaid"/></iaixsl:attribute>
										<iaixsl:value-of select="/shop/page/order1/additional/advance/@value_formatted"/>
									</strong>
								</div>
							</iaixsl:if>
							
							<div class="summary__calculation --active --total total-custom">
								<span class="summary__calculation_label">Do zapłaty:</span>
								<strong class="summary__calculation_value --total">--
									<iaixsl:if test="(/shop/basket/@points_used) and (/shop/basket/@points_used != 0)">
										<small class="summary__points --plus"><iaixsl:value-of select="/shop/basket/@points_used"/>pkt.</small>
									</iaixsl:if>
								</strong>
							</div>
						</div>
					</div>
				</div>

				<div class="summary__block --bottom d-flex flex-column flex-sm-row justify-content-sm-end align-items-sm-center p-md-3 flex-md-row">
					
					<div class="summary__time mb-2 mb-sm-0 mr-sm-3">
						<iaixsl:if test="/shop/basket/delay_time/@unknown_delivery_time = 'true'">
							<iaixsl:attribute name="data-unknown">true</iaixsl:attribute>
						</iaixsl:if>
						<iaixsl:if test="/shop/page/order1/shipping_division">
							<iaixsl:attribute name="data-division">true</iaixsl:attribute>
						</iaixsl:if>
						<div class="summary__time_item --shipping">
							<iaixsl:if test="not(/shop/basket/shipping_time/@week_amount = 0) or not(/shop/basket/shipping_time/@hours = 0) or not(/shop/basket/shipping_time/@minutes = 0) or /shop/page/order1/shipping/delivery[@id = '93-1']">
								<iaixsl:attribute name="data-hide">true</iaixsl:attribute>
							</iaixsl:if>
							<span class="summary__shipping">
								<span class="summary__shipping_item --txt">Zamówienie będzie gotowe do wysłania </span>
								<strong class="summary__shipping_item --value">
									<iaixsl:choose>
										<iaixsl:when test="/shop/basket/shipping_time/@today = 'true'">
											<iaixsl:attribute name="data-shipping_time">0</iaixsl:attribute>
										</iaixsl:when>
										<iaixsl:otherwise>
											<iaixsl:attribute name="data-shipping_time"><iaixsl:value-of select="/shop/basket/shipping_time/@week_day"/></iaixsl:attribute>
										</iaixsl:otherwise>
									</iaixsl:choose>
								</strong>
							</span>
						</div>
						<div class="summary__time_item --delivery --active">
							<iaixsl:if test="/shop/page/order1/shipping/delivery[@id = '93-1']">
								<iaixsl:attribute name="data-hide">true</iaixsl:attribute>
							</iaixsl:if>
							<span class="summary__delivery">
								<span class="summary__delivery_item --txt"/>
								<strong class="summary__delivery_item --value"/>
								<span class="summary__delivery_item --de"/>
								<span class="summary__delivery_item --hour"/>
							</span>
						</div>
					</div>
					
					<div class="summary__buttons">
						<a href="#order2" class="btn --solid --large --icon-right icon-angle-right summary__button">Przejdź dalej
                        <i class="icon-chevron-right"></i>
                        </a>
					</div>
				</div>
			  </section>
            </section>
          </div>
          
          
        </div>

        
        <iaixsl:if test="/shop/page/order1/insurance_products/item[@service='TrustedShops']">
          <div class="order__insurance mb-3 p-2 mb-md-5 p-md-3">
            <strong class="order__insruance_headline d-block mb-2 mb-sm-3"><iaixsl:value-of disable-output-escaping="yes" select="/shop/page/order1/insurance_products/item[@service='TrustedShops']/@name"/></strong>
            <div class="order__insruance_block d-flex flex-column align-items-center flex-sm-row align-items-sm-start">
              <a target="_blank" class="order__insruance_icon d-block mb-2 mb-sm-0 mr-sm-3">
                <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/page/order1/insurance_products/item[@service='TrustedShops']/@icon_target"/></iaixsl:attribute>
                <img>
                  <iaixsl:attribute name="src"><iaixsl:value-of select="/shop/page/order1/insurance_products/item[@service='TrustedShops']/@icon_src"/></iaixsl:attribute>
                  <iaixsl:attribute name="title"><iaixsl:value-of select="/shop/page/order1/insurance_products/item[@service='TrustedShops']/@icon_title"/></iaixsl:attribute>
                  <iaixsl:attribute name="alt"><iaixsl:value-of select="/shop/page/order1/insurance_products/item[@service='TrustedShops']/@name"/></iaixsl:attribute>
                </img>
              </a>
              <div class="order__insruance_description">
                <div class="order__insruance_group f-group --checkbox">
                  <input id="orderInsuranceCheckbox" type="checkbox" name="add_insurance" value="true" class="order__insruance_checkbox f-control">
                    <iaixsl:if test="/shop/page/order1/insurance_products/item[@service='TrustedShops']/@checked = 'true'">
                      <iaixsl:attribute name="checked">checked</iaixsl:attribute>
                    </iaixsl:if>
                  </input>
                  <label for="orderInsuranceCheckbox" class="order__insruance_label f-label"><iaixsl:value-of disable-output-escaping="yes" select="/shop/page/order1/insurance_products/item[@service='TrustedShops']/@product_desc"/></label>
                </div>
                <div class="order__insruance_text"><iaixsl:value-of disable-output-escaping="yes" select="/shop/page/order1/insurance_products/item[@service='TrustedShops']/@description"/></div>
              </div>
            </div>
          </div>
        </iaixsl:if>

        
        <iaixsl:if test="/shop/basket/delay_time/@unknown_delivery_time = 'true'">
          <div class="unknown_delivery_time mb-3 mb-md-5">
            <i class="icon-truck"></i>
            <div>
              <b>W koszyku jest towar sprowadzany na zamówienie.</b> Aby oszacować czas przygotowania zamówienia do wysyłki,
              <a target="_blank">
                <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/contact/link/@url"/></iaixsl:attribute>
                skontaktuj się z obsługą sklepu.
              </a>
            </div>
          </div>
        </iaixsl:if>
      </form>

      
      <iaixsl:if test="/shop/page/order1/prepaid_methods/item[@id = '190']">
        <div class="order__giftcard">
          
          <div class="order__giftcard_headlines d-flex flex-column align-items-center mb-3">
            <strong class="order__giftcard_headline">Karta podarunkowa</strong>
            <span class="order__giftcard_description">Zapłać za zakupy swoją Kartą podarunkową</span>
          </div>
          
          <div class="order__giftcard_wrapper row mx-n1">
            <div class="order__giftcard_group --number f-group col-12 px-1">
              <div class="order__giftcard_feedback f-feedback --required">
                <input id="order_giftcard_id" class="order__giftcard_input f-control" value="" name="voucher_id" type="text"/>
                <label class="order__giftcard_label f-label" for="order_giftcard_id">Numer</label>
                <span class="order__giftcard_status f-control-feedback"/>
              </div>
            </div>
            <div class="order__giftcard_group --pin f-group col-12 px-1">
              <div class="order__giftcard_feedback f-feedback --required">
                <input id="order_pin_value" class="order__giftcard_input f-control" value="" name="pin_value" type="password"/>
                <label class="order__giftcard_label f-label" for="order_pin_value">PIN</label>
                <span class="order__giftcard_status f-control-feedback"/>
              </div>
            </div>
          </div>
          
          <div class="order__giftcard_buttons">
            <button class="order__giftcard_button btn --solid --medium">Zatwierdź kartę</button>
          </div>
        </div>
      </iaixsl:if>

      
      <iaixsl:if test="/shop/page/order1/prepaid_methods/item[@id = '2']">
        <div class="order__voucher">
          
          <div class="order__voucher_headlines d-flex flex-column align-items-center mb-3">
            <strong class="order__voucher_headline">Bon produktowy</strong>
            <span class="order__voucher_description">Zapłać za zakupy bonem produktowym</span>
          </div>
          
          <div class="order__voucher_wrapper row mx-n1">
            <div class="order__voucher_group --number f-group col-12 px-1">
              <div class="order__voucher_feedback f-feedback --required">
                <input id="order_voucher_id" class="order__voucher_input f-control" value="" name="voucher_id" type="text"/>
                <label class="order__voucher_label f-label" for="order_voucher_id">Numer</label>
                <span class="order__voucher_status f-control-feedback"/>
              </div>
            </div>
          </div>
          
          <div class="order__voucher_buttons">
            <button class="order__voucher_button btn --solid --medium">Zatwierdź bon</button>
          </div>
          <small class="order__voucher_info mt-3 d-block">Jeżeli posiadasz więcej bonów, możesz wpisać ich numery przy podsumowaniu zamówienia.</small>
        </div>
      </iaixsl:if>

      <iaixsl:if test="/shop/page/order1/balance/@tradeCredit"> </iaixsl:if>
      <iaixsl:if test="/shop/page/order1/shipping/delivery/@loadCourierServicesUrl"> </iaixsl:if>
      <iaixsl:if test="/shop/page/order1/wrappers/wrapper"> </iaixsl:if>

      
      <script>
        const clientDataUsesVat = '<iaixsl:value-of select="/shop/client_data/@uses_vat"/>';
      </script>
    <!--Podsumowanie order1 (order1_summary, 112965.2)-->
            
			
		
                        </div>
                    </iaixsl:if>
                </div>
             </div>

            
 <iaixsl:if test="not(action/set_render/item) or (action/set_render/item/@name = 'footer')">
                <footer>
                    <iaixsl:attribute name="class"></iaixsl:attribute>
            <!-- NEWSLETTER -->
                    
                    <iaixsl:variable name="hideLabel"></iaixsl:variable>
                    <iaixsl:variable name="hideFirstname"></iaixsl:variable>
                    <div id="menu_newsletter" class="newsletter-custom">
                    <img src="/data/include/cms/b2b4kom/B2B-IKONY-SVG/wave.png" alt=""/>
                        <div class="container">
                            <form action="/settings.php" method="post" class="row">
                                <iaixsl:if test="/shop/action/settings/@url">
                                    <iaixsl:attribute name="action"><iaixsl:value-of select="/shop/action/settings/@url"/></iaixsl:attribute>
                                </iaixsl:if>


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
                                
                                <iaixsl:if test="not($hideFirstname)">
                                    <div class=" has-feedback newsletter-input-text">
                                            <input class="form-control validate" name="mailing_name" type="text"  required="required">
                                                <iaixsl:choose>
                                                    <iaixsl:when test="/shop/client_data/@mailing = '1'">
                                                        <iaixsl:attribute name="value"><iaixsl:value-of select="/shop/client_data/@firstname"/></iaixsl:attribute>                         
                                                    </iaixsl:when>
                                                    <iaixsl:otherwise>
                                                        <!-- <iaixsl:attribute name="placeholder">Twoje imię</iaixsl:attribute> -->
                                                    </iaixsl:otherwise>
                                                </iaixsl:choose> 
                                            </input>
                                    <label>
                                    Twoje imię
                                    </label>              
                                            <span class="form-control-feedback"/>
                                    </div>
                                </iaixsl:if>

                                <div class=" has-feedback newsletter-input-text">
                                        <input class="form-control validate" name="mailing_emaail" type="text" required="required" data-validate="email">                            
                                            <iaixsl:choose>
                                                <iaixsl:when test="/shop/client_data/@mailing = '1'">
                                                    <iaixsl:attribute name="value"><iaixsl:value-of select="/shop/client_data/@email"/></iaixsl:attribute>
                                                </iaixsl:when>
                                                <iaixsl:otherwise>
                                                    <!-- <iaixsl:attribute name="placeholder">E-mail</iaixsl:attribute> -->
                                                </iaixsl:otherwise>       
                                            </iaixsl:choose> 
                                        </input>
                                    <label>
                                    E-mail
                                    </label>  
                                        <span class="form-control-feedback"/>
                                </div>
                                
                                <div class=" news_btn">
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
                                </div>
                            </div>
                            
                            </form>
                        </div>
                    </div>
                    
                    
                    <iaixsl:if test="/shop/@menu_newsletter"></iaixsl:if>
                    <iaixsl:if test="/shop/@menu_newsletter_remove"></iaixsl:if>
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
            <script src="/gfx/pol/order1.js.gzip?r=1600678639"></script>
            <script>
                app_shop.runApp();
            </script>
<!-- !CUSTOM SCRIPTS -->
            <script src="/data/include/cms/b2b4kom/JS/app.js" >
                <iaixsl:attribute name="defer"></iaixsl:attribute>
                <iaixsl:attribute name="type">module</iaixsl:attribute>
            </script>

 <!-- !CUSTOM SCRIPTS -->
            <iaixsl:if test="/shop/page/seolink_with_language_directory"/>

        
            <iaixsl:if test="(action/set_render/item/@name = 'popup') or not(action/set_render/item)">
                <iaixsl:value-of disable-output-escaping="yes" select="php:functionString('additionalContent', 'additional_body_scripts')"/>
                <iaixsl:text disable-output-escaping="yes">&lt;/body&gt;&lt;/html&gt;</iaixsl:text>
            </iaixsl:if>
        </iaixsl:template><iaixsl:template match="//image"><iaixsl:if test="@type='swf'"><object type="application/x-shockwave-flash"><iaixsl:attribute name="data"><iaixsl:value-of select="@src"/></iaixsl:attribute><iaixsl:attribute name="data"><iaixsl:value-of select="@src"/></iaixsl:attribute><iaixsl:attribute name="width"><iaixsl:value-of select="@width"/></iaixsl:attribute><iaixsl:attribute name="height"><iaixsl:value-of select="@height"/></iaixsl:attribute><param name="movie"><iaixsl:attribute name="value"><iaixsl:value-of select="@src"/></iaixsl:attribute></param><param name="bgcolor"><iaixsl:attribute name="bgcolor"><iaixsl:value-of select="@bgcolor"/></iaixsl:attribute></param></object></iaixsl:if><iaixsl:if test="not(@type='swf')"><img alt="" class="pic"><iaixsl:attribute name="src"><iaixsl:value-of select="@src"/></iaixsl:attribute><iaixsl:if test="@width &gt; 0"><iaixsl:attribute name="width"><iaixsl:value-of select="@width"/></iaixsl:attribute></iaixsl:if><iaixsl:if test="@height &gt; 0"><iaixsl:attribute name="height"><iaixsl:value-of select="@height"/></iaixsl:attribute></iaixsl:if></img></iaixsl:if></iaixsl:template><iaixsl:template name="escape-quote-string"><iaixsl:param name="str"/><iaixsl:param name="escape" select="'quot'"/><iaixsl:param name="quoting" select="'1'"/><iaixsl:variable name="escape_sign"><iaixsl:choose><iaixsl:when test="$escape=&quot;apos&quot;"><iaixsl:value-of select="&quot;'&quot;"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="string('&quot;')"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable><iaixsl:if test="$quoting"><iaixsl:value-of select="$escape_sign"/></iaixsl:if><iaixsl:choose><iaixsl:when test="contains($str,$escape_sign)"><iaixsl:variable name="before-first-apostrophe" select="substring-before($str,$escape_sign)"/><iaixsl:variable name="after-first-apostrophe" select="substring-after($str,$escape_sign)"/><iaixsl:value-of select="$before-first-apostrophe"/>\<iaixsl:value-of select="$escape_sign"/><iaixsl:text/><iaixsl:call-template name="escape-quote-string"><iaixsl:with-param name="str" select="$after-first-apostrophe"/><iaixsl:with-param name="escape" select="$escape"/><iaixsl:with-param name="quoting" select="0"/></iaixsl:call-template></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="$str"/></iaixsl:otherwise></iaixsl:choose><iaixsl:if test="$quoting"><iaixsl:value-of select="$escape_sign"/></iaixsl:if></iaixsl:template></iaixsl:stylesheet>