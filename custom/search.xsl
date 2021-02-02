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
                <script src="/gfx/pol/search_gallery.js.gzip?r=1600678639"></script></head>
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
        <!--Dodatkowe linki (strefa 2) (menu_additional2, 106529.1)-->
             <div id="menu_categories2" class="mb-4 d-none">
                <iaixsl:choose>
                    <iaixsl:when test="navigation/descendant::item[@ni=/shop/navigation/current/@ni]/item and page/@type='search'">
                        <a class="menu_categories_label menu_go_up">
                            <iaixsl:choose>
                                <iaixsl:when test="navigation/descendant::item[@ni=/shop/navigation/current/@ni]/../@link">
                                    <iaixsl:attribute name="href"><iaixsl:value-of select="navigation/descendant::item[@ni=/shop/navigation/current/@ni]/../@link"/></iaixsl:attribute>
                                </iaixsl:when>
                                <iaixsl:otherwise>
                                    <iaixsl:attribute name="href">/search.php?text=+</iaixsl:attribute>
                                </iaixsl:otherwise>
                            </iaixsl:choose>
                            <iaixsl:value-of disable-output-escaping="yes" select="navigation/descendant::item[@ni=/shop/navigation/current/@ni]/@name"/>
                        </a>
                        <ul>
							<iaixsl:if test="not(navigation/descendant::item[@ni=/shop/navigation/current/@ni]/item[@ni = /shop/navigation/current/@ni])">
								<iaixsl:attribute name="class">no_active</iaixsl:attribute>
							</iaixsl:if>
                            <iaixsl:for-each select="navigation/descendant::item[@ni=/shop/navigation/current/@ni]/item">
                                <li>
                                    <a>
                                        <iaixsl:if test="@link"><iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute></iaixsl:if>
                                        <iaixsl:if test="@target"><iaixsl:attribute name="target"><iaixsl:value-of select="@target"/></iaixsl:attribute></iaixsl:if>
                                        <iaixsl:if test="@ni = /shop/navigation/current/@ni"><iaixsl:attribute name="class">active</iaixsl:attribute></iaixsl:if>
                                        <iaixsl:value-of disable-output-escaping="yes" select="@name"/>
                                    </a>
                                </li>
                            </iaixsl:for-each>
                        </ul>
                    </iaixsl:when>
                    <iaixsl:when test="navigation/descendant::item[@ni=/shop/navigation/current/@ni] and not(navigation/descendant::item[@ni=/shop/navigation/current/@ni]/item) and page/@type='search'">
                        <iaixsl:choose>
                            <iaixsl:when test="navigation/descendant::item[@ni=/shop/navigation/current/@ni]/../@ni">
                                <a class="menu_categories_label menu_go_up">
                                    <iaixsl:choose>
                                        
                                        
                                        <iaixsl:when test="navigation/descendant::item[@ni=/shop/navigation/current/@ni]/../@link">
                                            <iaixsl:attribute name="href"><iaixsl:value-of select="navigation/descendant::item[@ni=/shop/navigation/current/@ni]/../@link"/></iaixsl:attribute>
                                        </iaixsl:when>
                                        <iaixsl:otherwise>
                                            <iaixsl:attribute name="href">/search.php?text=+</iaixsl:attribute>
                                        </iaixsl:otherwise>
                                    </iaixsl:choose>

                                    <iaixsl:value-of disable-output-escaping="yes" select="navigation/descendant::item[@ni=/shop/navigation/current/@ni]/../@name"/>
                                </a>
                            </iaixsl:when>
                            <iaixsl:otherwise>
                                <a class="menu_categories_label" href="/categories.php">Kategorie </a>
                            </iaixsl:otherwise>
                        </iaixsl:choose>
                        <ul>
							<iaixsl:if test="not(navigation/descendant::item[@ni=/shop/navigation/current/@ni]/../item[@ni = /shop/navigation/current/@ni])">
								<iaixsl:attribute name="class">no_active</iaixsl:attribute>
							</iaixsl:if>
                            <iaixsl:for-each select="navigation/descendant::item[@ni=/shop/navigation/current/@ni]/../item">
                                <li>
                                    <a>
                                        <iaixsl:if test="@link"><iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute></iaixsl:if>
                                        <iaixsl:if test="@target"><iaixsl:attribute name="target"><iaixsl:value-of select="@target"/></iaixsl:attribute></iaixsl:if>
                                        <iaixsl:if test="@ni = /shop/navigation/current/@ni"><iaixsl:attribute name="class">active</iaixsl:attribute></iaixsl:if>
                                        <iaixsl:value-of disable-output-escaping="yes" select="@name"/>
                                    </a>
                                </li>
                            </iaixsl:for-each>
                        </ul>
                    </iaixsl:when>
                    <iaixsl:otherwise>
                        <a class="menu_categories_label" href="/categories.php">Kategorie </a>
                        <ul>
							<iaixsl:if test="not(navigation/item[@ni = /shop/navigation/current/@ni])">
								<iaixsl:attribute name="class">no_active</iaixsl:attribute>
							</iaixsl:if>
                            <iaixsl:for-each select="navigation/item">
                                <li>
                                    <iaixsl:if test="@ni = /shop/navigation/current/@ni"><iaixsl:attribute name="class">active</iaixsl:attribute></iaixsl:if>
                                    <a>
                                        <iaixsl:if test="@link"><iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute></iaixsl:if>
                                        <iaixsl:if test="@target"><iaixsl:attribute name="target"><iaixsl:value-of select="@target"/></iaixsl:attribute></iaixsl:if>
                                        <iaixsl:value-of disable-output-escaping="yes" select="@name"/>
                                    </a>
                                </li>
                            </iaixsl:for-each>
                        </ul>
                    </iaixsl:otherwise>
                </iaixsl:choose>
            </div> 
        <!--Filtrowanie wyników wyszukiwania w layout (menu_filter, 110452.1)-->

            
            <iaixsl:variable name="showAll">5</iaixsl:variable>
            <iaixsl:variable name="showPriceRange">TRUE</iaixsl:variable>
            
            
            <iaixsl:variable name="samedayCouriersAvail"><iaixsl:value-of select="/shop/page/sameday/@couriers_available"/></iaixsl:variable>
            <iaixsl:variable name="samedayClientLocal"><iaixsl:value-of select="/shop/page/sameday/@client_localized"/></iaixsl:variable>
            <iaixsl:variable name="samedayServiceAvail"><iaixsl:value-of select="/shop/page/sameday/@service_available_for_current_location"/></iaixsl:variable>

            
            <iaixsl:variable name="nextdayCouriersAvail"><iaixsl:value-of select="/shop/page/nextday/@couriers_available"/></iaixsl:variable>
            <iaixsl:variable name="nextdayClientLocal"><iaixsl:value-of select="/shop/page/nextday/@client_localized"/></iaixsl:variable>
            <iaixsl:variable name="nextdayServiceAvail"><iaixsl:value-of select="/shop/page/nextday/@service_available_for_current_location"/></iaixsl:variable>
            

            <iaixsl:if test="count(/shop/page/products/navigation/filtering/filter)">
                <section id="Filters" class="filters mb-4">
                    <div class="filters-icon">
                        <i class="icon-chevron-right"></i>
                        <span>FILTRUJ:</span>
                    </div>
                    <iaixsl:if test="(count(/shop/page/products/navigation/filtering/filter/@selected) > 0) or count(/shop/page/products/navigation/filtering/filter/item/@selected) > 0">
                            <iaixsl:variable name="show_remove_button">true</iaixsl:variable>
                            <div id="filter_list" >
                                <div class="filter_list_content">
                                  
                                    <iaixsl:for-each select="/shop/page/products/navigation/filtering/filter[(@type='list') or (@type='text')]">
                                        <iaixsl:if test="(@selected != '') or count(item/@selected) > 0">
                                            <iaixsl:choose>
                                                
                                                <iaixsl:when test="(@id = 'filter_price') and (@selected) and not(@selected = '')">
                                                    <iaixsl:choose>
                                                        <iaixsl:when test="item[@selected = 'selected']">
                                                            <iaixsl:for-each select="item[@selected = 'selected']">
                                                                <a class="filter_list_remove btn --solid --icon-right icon-x mr-2 mr-sm-3">
                                                                    <iaixsl:attribute name="href"><iaixsl:value-of select="@link_remove"/></iaixsl:attribute>
                                                                    <span><iaixsl:value-of select="@name_formatted"/></span>
                                                                </a>
                                                            </iaixsl:for-each>
                                                        </iaixsl:when>
                                                        <iaixsl:otherwise>
                                                            <a class="filter_list_remove btn --solid --icon-right icon-x mr-2 mr-sm-3">
                                                                <iaixsl:attribute name="href"><iaixsl:value-of select="@link_remove"/></iaixsl:attribute>
                                                                <span>
                                                                    <iaixsl:if test="substring-before(@selected, '-') != ''">
                                                                        <iaixsl:value-of select="substring-before(@selected, '-')"/> <iaixsl:value-of select="/shop/currency/@name"/>
                                                                    </iaixsl:if>
                                                                    - 
                                                                    <iaixsl:if test="substring-after(@selected, '-') != ''">
                                                                        <iaixsl:value-of select="substring-after(@selected, '-')"/> <iaixsl:value-of select="/shop/currency/@name"/>
                                                                    </iaixsl:if>
                                                                </span>
                                                            </a>		
                                                        </iaixsl:otherwise>
                                                    </iaixsl:choose>
                                                </iaixsl:when>
                                                
                                                <iaixsl:when test="(@id = 'filter_date') and (@selected) and not(@selected = '')">
                                                    <iaixsl:choose>
                                                        <iaixsl:when test="item[@selected = 'selected']">
                                                            <iaixsl:for-each select="item[@selected = 'selected']">
                                                                <a class="filter_list_remove btn --solid --icon-right icon-x mr-2 mr-sm-3">
                                                                    <iaixsl:attribute name="href"><iaixsl:value-of select="@link_remove"/></iaixsl:attribute>
                                                                    <span>
                                                                        <iaixsl:choose>
                                                                            <iaixsl:when test="@desc = '1week'">Ostatni tydzień</iaixsl:when>
                                                                            <iaixsl:when test="@desc = '1month'">Ostatni miesiąc</iaixsl:when>
                                                                            <iaixsl:when test="@desc = '3months'">Ostatnie 3 miesiące</iaixsl:when>
                                                                            <iaixsl:when test="@desc = '6months'">Ostatnie pół roku</iaixsl:when>
                                                                            <iaixsl:when test="@desc = '1year'">Ostatni rok</iaixsl:when>
                                                                        </iaixsl:choose>
                                                                    </span>
                                                                </a>
                                                            </iaixsl:for-each>
                                                        </iaixsl:when>
                                                        <iaixsl:otherwise>
                                                            <a class="filter_list_remove btn --solid --icon-right icon-x mr-2 mr-sm-3">
                                                                <iaixsl:attribute name="href"><iaixsl:value-of select="@link_remove"/></iaixsl:attribute>
                                                                <span><iaixsl:value-of select="@selected"/></span>
                                                            </a>
                                                        </iaixsl:otherwise>
                                                    </iaixsl:choose>
                                                </iaixsl:when>
                                                <iaixsl:when test="(@id = 'filter_text') and (@selected) and not(@selected = '')">
                                                    <a class="filter_list_remove btn --solid --icon-right icon-x mr-2 mr-sm-3">
                                                        <iaixsl:attribute name="href"><iaixsl:value-of select="@link_remove"/></iaixsl:attribute>
                                                        <span><iaixsl:value-of select="@selected"/></span>
                                                    </a>
                                                </iaixsl:when>
                                                <iaixsl:otherwise>
                                                    <iaixsl:for-each select="item[@selected = 'selected']">
                                                        <a class="filter_list_remove btn --solid --icon-right icon-x mr-2 mr-sm-3">
                                                            <iaixsl:attribute name="href"><iaixsl:value-of select="@link_remove"/></iaixsl:attribute>
                                                            <span><iaixsl:value-of select="@name"/></span>
                                                        </a>
                                                    </iaixsl:for-each>
                                                </iaixsl:otherwise>
                                            </iaixsl:choose>
                                        </iaixsl:if>
                                    </iaixsl:for-each>
                                    <iaixsl:for-each select="/shop/page/products/navigation/filtering/filter[@type='dual']/item[@selected = 'selected']">
                                        <a class="filter_list_remove btn --solid --icon-right icon-x mr-2 mr-sm-3">
                                            <iaixsl:attribute name="href"><iaixsl:value-of select="../@link_remove"/></iaixsl:attribute>
                                            <span><iaixsl:value-of select="../@name"/></span>
                                        </a>
                                    </iaixsl:for-each>
                                    <iaixsl:for-each select="/shop/page/products/navigation/filtering/filter[@selected != '' or count(item/@selected) > 0]/group/item[@selected = 'selected']">
                                        <a class="filter_list_remove btn --solid --icon-right icon-x mr-2 mr-sm-3">
                                            <iaixsl:attribute name="href"><iaixsl:value-of select="@link_remove"/></iaixsl:attribute>
                                            <span><iaixsl:value-of select="@name"/></span>
                                        </a>
                                    </iaixsl:for-each>

                                    <iaixsl:if test="$show_remove_button">
                                        <a class="remove_all_list_filters btn --solid --secondary mr-2 mr-sm-3" href="/settings.php?filter_remove=all">
                                            <iaixsl:if test="/shop/page/products/navigation/search_link/@value">
                                                <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/page/products/navigation/search_link/@value "/></iaixsl:attribute>
                                            </iaixsl:if>
                                            <iaixsl:attribute name="title">Usuń wszystkie filtry</iaixsl:attribute>
                                          wyczyść filtry
                                        </a>
                                    </iaixsl:if>
                                </div>
                            </div>
                    </iaixsl:if>
                    <form class="filters__form" method="get">
                        <iaixsl:attribute name="action"><iaixsl:value-of select="/shop/page/products/navigation/search_link/@value"/></iaixsl:attribute>
              
                         
                        <iaixsl:for-each select="/shop/page/products/navigation/filtering/filter[(@type = 'list') or (@type = 'text')]">
                            
                            <iaixsl:variable name="id"><iaixsl:value-of select="translate (@id, '[]', '')"/></iaixsl:variable>

                            <div class="filters__block mb-1">
                                <!-- <iaixsl:value-of select="/shop/page/products/navigation/filtering/filter/@name" /> -->
                                    
                                
                                <iaixsl:if test="not(@type = 'text')">
                                    <input type="hidden" class="__serialize">
                                        <iaixsl:attribute name="id"><iaixsl:value-of select="$id"/>_input</iaixsl:attribute>
                                        <iaixsl:attribute name="name"><iaixsl:value-of select="@id"/></iaixsl:attribute>
                                        <iaixsl:attribute name="value"><iaixsl:for-each select="item[@selected]"><iaixsl:value-of select="@value"/><iaixsl:if test="not(position() = last())">,</iaixsl:if></iaixsl:for-each><iaixsl:for-each select="group"><iaixsl:for-each select="item[@selected]"><iaixsl:value-of select="@value"/><iaixsl:if test="not(position() = last())">,</iaixsl:if></iaixsl:for-each><iaixsl:if test="not(position() = last())">,</iaixsl:if></iaixsl:for-each></iaixsl:attribute>
                                        <iaixsl:if test="$id = 'filter_price' and (@selected and not(@selected) = '')">
                                            <iaixsl:attribute name="value"><iaixsl:value-of select="@selected"/></iaixsl:attribute>
                                        </iaixsl:if>
                                    </input>
                                </iaixsl:if>

                                
                                <a class="filters__toggler">
                                    <iaixsl:attribute name="data-id"><iaixsl:value-of select="$id"/></iaixsl:attribute>

                                    <iaixsl:attribute name="class">filters__toggler
                                        <iaixsl:if test="@selected"> --selected</iaixsl:if>
                                    </iaixsl:attribute>

                                    
                                    <div class="btn --icon-right d-block pr-4">
                                        <span><iaixsl:value-of select="@name"/></span>
                                    </div>
                                </a>

                                
                                <div class="filters__expand">
                                    <iaixsl:attribute name="id"><iaixsl:value-of select="$id"/>_expand</iaixsl:attribute>
                                    
                                    <iaixsl:choose>
                                        
                                        <iaixsl:when test="@type = 'text'">
                                            <div class="filters__content --search">
                                                <div class="f-group mb-0">
                                                    <input type="text" class="f-control --search_by_text __serialize">
                                                        <iaixsl:attribute name="id"><iaixsl:value-of select="$id"/>_input</iaixsl:attribute>
                                                        <iaixsl:attribute name="name"><iaixsl:value-of select="$id"/></iaixsl:attribute>

                                                        <iaixsl:if test="(@selected) and not (@selected = '')">
                                                            <iaixsl:attribute name="value"><iaixsl:value-of select="@selected"/></iaixsl:attribute>
                                                        </iaixsl:if>

                                                        <iaixsl:attribute name="placeholder">Wpisz czego szukasz</iaixsl:attribute>
                                                    </input>
                                                    <button type="submit" class="btn --secondary">
                                                        <i class="icon-search"></i>
                                                    </button>
                                                </div>
                                            </div>
                                        </iaixsl:when>

                                        
                                        <iaixsl:when test="@display = 'gfx' or @display = 'name_gfx'">
                                            <ul class="filters__content d-flex">
                                                <iaixsl:attribute name="id"><iaixsl:value-of select="$id"/>_content</iaixsl:attribute>
                                                <iaixsl:attribute name="class">filters__content
                                                    <iaixsl:if test="@display = 'gfx'"> --gfx d-flex flex-wrap</iaixsl:if>
                                                    <iaixsl:if test="@display = 'name_gfx'"> --gfx-name</iaixsl:if>
                                                </iaixsl:attribute>

                                                <iaixsl:for-each select="item">
                                                    <iaixsl:sort select="@selected" order="descending"/>

                                                    <li class="filters__item">
                                                        <iaixsl:attribute name="class">filters__item 
                                                            <iaixsl:if test="position() = $showAll and ../@display = 'name_gfx'"> --last-not-hidden</iaixsl:if>
                                                            <iaixsl:if test="position() > $showAll and ../@display = 'name_gfx'"> --hidden</iaixsl:if>
                                                        </iaixsl:attribute>
                                                        <div class="f-group --small --checkbox mb-0">
                                                            <input type="checkbox" class="f-control">
                                                                <iaixsl:attribute name="id"><iaixsl:value-of select="$id"/>_<iaixsl:value-of select="@value"/></iaixsl:attribute>
                                                                <iaixsl:attribute name="data-id"><iaixsl:value-of select="$id"/></iaixsl:attribute>

                                                                <iaixsl:attribute name="value"><iaixsl:value-of select="@value"/></iaixsl:attribute>

                                                                <iaixsl:if test="@selected='selected'">
                                                                    <iaixsl:attribute name="checked">checked</iaixsl:attribute>
                                                                </iaixsl:if>

                                                                <iaixsl:if test="@quantity = '0'">
                                                                    <iaixsl:attribute name="disabled">disabled</iaixsl:attribute>
                                                                </iaixsl:if>
                                                            </input>

                                                            <label class="f-label">
                                                                <iaixsl:attribute name="for"><iaixsl:value-of select="$id"/>_<iaixsl:value-of select="@value"/></iaixsl:attribute>

                                                                
                                                                <span class="--name">
                                                                    <iaixsl:if test="@gfx_normal">
                                                                        <img class="--img">
                                                                            <iaixsl:attribute name="src"><iaixsl:value-of select="@gfx_normal"/></iaixsl:attribute>
                                                                            <iaixsl:attribute name="alt"><iaixsl:value-of select="@name"/></iaixsl:attribute>
                                                                            <iaixsl:attribute name="title"><iaixsl:value-of select="@name"/></iaixsl:attribute>
                                                                        </img>
                                                                    </iaixsl:if>
                                                                    <iaixsl:if test="../@display = 'name_gfx'">
                                                                        <span><iaixsl:value-of select="@name"/></span>
                                                                    </iaixsl:if>
                                                                </span>

                                                                
                                                                <span class="--quantity">
                                                                    <iaixsl:if test="not(@quantity)">
                                                                        <iaixsl:attribute name="class">--quantity d-none</iaixsl:attribute>
                                                                    </iaixsl:if>
                                                                    <iaixsl:choose>
                                                                        <iaixsl:when test="@quantity">
                                                                            <iaixsl:value-of select="@quantity"/>
                                                                        </iaixsl:when>
                                                                        <iaixsl:otherwise>0</iaixsl:otherwise>
                                                                    </iaixsl:choose>
                                                                </span>
                                                            </label>
                                                        </div>
                                                    </li>

                                                </iaixsl:for-each>
                                            </ul>
                                            
                                            <div class="filters__options">
                                                

                                                
                                                <iaixsl:if test="count(item) > $showAll and @display = 'name_gfx'">
                                                    <a class="--show-hidden btn py-0 pl-3 pr-0">
                                                        <iaixsl:attribute name="data-id"><iaixsl:value-of select="$id"/></iaixsl:attribute>

                                                        <span class="--show">pokaż więcej</span>
                                                        <span class="--hide">ukryj</span>
                                                    </a>
                                                </iaixsl:if>

                                                <button type="submit" class="--submit d-none btn py-0 pl-0 pr-3">
                                                    Zastosuj
                                                </button>
                                            </div>
                                        </iaixsl:when>

                                        
                                        <iaixsl:when test="(@id = 'filter_price' or @id = 'filter_pricenet') and not($showPriceRange = '')">
                                            <div class="filters__content --range">
                                                <iaixsl:if test="/shop/page/products/navigation/filtering/filter[(@id = 'filter_price')]/@selected">
                                                    <input type="hidden" id="min_price_set"><iaixsl:attribute name="value"><iaixsl:value-of select="substring-before(/shop/page/products/navigation/filtering/filter[(@id = 'filter_price')]/@selected,'-')"/></iaixsl:attribute></input>
                                                    <input type="hidden" id="max_price_set"><iaixsl:attribute name="value"><iaixsl:value-of select="substring-after(/shop/page/products/navigation/filtering/filter[(@id = 'filter_price')]/@selected,'-')"/></iaixsl:attribute></input>
                                                </iaixsl:if>
                                                <input type="hidden" id="min_price_start"><iaixsl:attribute name="value">0</iaixsl:attribute></input>
                                                <input type="hidden" id="max_price_start"><iaixsl:attribute name="value"><iaixsl:value-of select="substring-before(substring-after(/shop/page/products/navigation/filtering/filter[@id = 'filter_price']/item[position() = last()]/@name,'- '), '.')"/></iaixsl:attribute></input>

                                                <div class="filters__price-slider"><div class="--price"/></div>
                                                <div class="filters__price">
                                                    <div class="filters__range d-flex justify-content-between align-items-center">
                                                        <label for="PriceRangeFrom" class="--from">
                                                            <input id="PriceRangeFrom" type="text" class="--input-from">
                                                                <iaixsl:choose>
                                                                    <iaixsl:when test="not(item[@selected = 'selected']) and (@selected and not(@selected = ''))">
                                                                        <iaixsl:attribute name="value"><iaixsl:value-of select="substring-before(@selected, '-')"/></iaixsl:attribute>
                                                                    </iaixsl:when>
                                                                    <iaixsl:otherwise>
                                                                        <iaixsl:attribute name="value">0</iaixsl:attribute>
                                                                    </iaixsl:otherwise>
                                                                </iaixsl:choose>
                                                            </input>
                                                            <span class="--currency"><iaixsl:value-of select="/shop/currency/option[@selected = 'true']/@symbol"/></span>
                                                        </label>
                                                        <span class="--gap">
                                                            -
                                                        </span>
                                                        <label for="PriceRangeTo" class="--to">
                                                            <input id="PriceRangeTo" type="text" class="--input-to">
                                                                <iaixsl:choose>
                                                                    <iaixsl:when test="not(item[@selected = 'selected']) and (@selected and not(@selected = ''))">
                                                                        <iaixsl:attribute name="value"><iaixsl:value-of select="substring-after(@selected, '-')"/></iaixsl:attribute>
                                                                    </iaixsl:when>
                                                                    <iaixsl:otherwise>
                                                                        <iaixsl:attribute name="value"><iaixsl:value-of select="substring-before(substring-after(/shop/page/products/navigation/filtering/filter[@id = 'filter_price']/item[position() = last()]/@name,'- '), '.')"/></iaixsl:attribute>
                                                                    </iaixsl:otherwise>
                                                                </iaixsl:choose>
                                                            </input>
                                                            <span class="--currency"><iaixsl:value-of select="/shop/currency/option[@selected = 'true']/@symbol"/></span>
                                                        </label>
                                                    </div>
                                                    <div class="filters_options">
                                                        <button type="submit" class="btn p-md-0 mt-md-2">
                                                            Zastosuj zakres cen
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </iaixsl:when>

                                        
                                        <iaixsl:when test="@id = 'filter_date'">
                                            <ul class="filters__content --date">
                                                <iaixsl:for-each select="item[@desc = '1week' or @desc = '1month' or @desc = '3months' or @desc = '6months' or @desc = '1year']">
                                                    <li class="filters__item mb-2">
                                                        <div class="f-group --small --checkbox mb-0">
                                                            <input type="checkbox" class="f-control">
                                                                <iaixsl:attribute name="id"><iaixsl:value-of select="$id"/>_<iaixsl:value-of select="@value"/></iaixsl:attribute>
                                                                <iaixsl:attribute name="data-id"><iaixsl:value-of select="$id"/></iaixsl:attribute>

                                                                <iaixsl:attribute name="value"><iaixsl:value-of select="@value"/></iaixsl:attribute>

                                                                <iaixsl:if test="@selected='selected'">
                                                                    <iaixsl:attribute name="checked">checked</iaixsl:attribute>
                                                                </iaixsl:if>

                                                                <iaixsl:if test="@quantity = '0'">
                                                                    <iaixsl:attribute name="disabled">disabled</iaixsl:attribute>
                                                                </iaixsl:if>
                                                            </input>
                                                            <label class="f-label">
                                                                <iaixsl:attribute name="for"><iaixsl:value-of select="$id"/>_<iaixsl:value-of select="@value"/></iaixsl:attribute>

                                                                
                                                                <span class="--name">
                                                                    <iaixsl:choose>
                                                                        <iaixsl:when test="@desc = '1week'">Ostatni tydzień</iaixsl:when>
                                                                        <iaixsl:when test="@desc = '1month'">Ostatni miesiąc</iaixsl:when>
                                                                        <iaixsl:when test="@desc = '3months'">Ostatnie 3 miesiące</iaixsl:when>
                                                                        <iaixsl:when test="@desc = '6months'">Ostatnie pół roku</iaixsl:when>
                                                                        <iaixsl:when test="@desc = '1year'">Ostatni rok</iaixsl:when>
                                                                    </iaixsl:choose>
                                                                </span>

                                                                
                                                                <span class="--quantity">
                                                                    <iaixsl:if test="not(@quantity)">
                                                                        <iaixsl:attribute name="class">--quantity d-none</iaixsl:attribute>
                                                                    </iaixsl:if>
                                                                    <iaixsl:choose>
                                                                        <iaixsl:when test="@quantity">
                                                                            <iaixsl:value-of select="@quantity"/>
                                                                        </iaixsl:when>
                                                                        <iaixsl:otherwise>0</iaixsl:otherwise>
                                                                    </iaixsl:choose>
                                                                </span>
                                                            </label>
                                                        </div>
                                                    </li>
                                                </iaixsl:for-each>
                                            </ul>
                                            
                                            <div class="filters__options">
                                                
                                                <button type="submit" class="--submit d-none btn py-0 pl-0 pr-3">
                                                    Zastosuj
                                                </button>
                                            </div>
                                        </iaixsl:when>

                                        
                                        <iaixsl:otherwise>
                                            <iaixsl:choose>
                                                
                                                <iaixsl:when test="group">
                                                    <ul class="filters__content --group">
                                                        <iaixsl:for-each select="group">
                                                            <li class="filters__item mb-1">
                                                                <iaixsl:if test="not(@id = -1)">
                                                                    <a class="filters__toggler">
                                                                        <div class="btn d-block">
                                                                            <span>
                                                                                <iaixsl:choose>
                                                                                    <iaixsl:when test="@title and not(@title = '')">
                                                                                        <iaixsl:value-of select="@title"/>
                                                                                    </iaixsl:when>
                                                                                    <iaixsl:otherwise>
                                                                                        Pozostałe
                                                                                    </iaixsl:otherwise>
                                                                                </iaixsl:choose>
                                                                            </span>
                                                                        </div>
                                                                    </a>                 
                                                                </iaixsl:if>
                                                                <ul class="filters__content --list">
                                                                    <iaixsl:attribute name="id"><iaixsl:value-of select="$id"/><iaixsl:value-of select="position()"/>_content</iaixsl:attribute>

                                                                    <iaixsl:for-each select="item">
                                                                        <iaixsl:sort select="@selected" order="descending"/>

                                                                        <li class="filters__item mb-2">
                                                                            <iaixsl:attribute name="class">filters__item mb-2
                                                                                <iaixsl:if test="position() = $showAll"> --last-not-hidden</iaixsl:if>
                                                                                <iaixsl:if test="position() > $showAll"> --hidden</iaixsl:if>
                                                                            </iaixsl:attribute>

                                                                            <div class="f-group --small --checkbox mb-0">
                                                                                <input type="checkbox" class="f-control">
                                                                                    <iaixsl:attribute name="id"><iaixsl:value-of select="$id"/>_<iaixsl:value-of select="@value"/></iaixsl:attribute>
                                                                                    <iaixsl:attribute name="data-id"><iaixsl:value-of select="$id"/></iaixsl:attribute>

                                                                                    <iaixsl:attribute name="value"><iaixsl:value-of select="@value"/></iaixsl:attribute>

                                                                                    <iaixsl:if test="@selected='selected'">
                                                                                        <iaixsl:attribute name="checked">checked</iaixsl:attribute>
                                                                                    </iaixsl:if>

                                                                                    <iaixsl:if test="@quantity = '0'">
                                                                                        <iaixsl:attribute name="disabled">disabled</iaixsl:attribute>
                                                                                    </iaixsl:if>
                                                                                </input>

                                                                                <label class="f-label">
                                                                                    <iaixsl:attribute name="for"><iaixsl:value-of select="$id"/>_<iaixsl:value-of select="@value"/></iaixsl:attribute>

                                                                                    
                                                                                    <span class="--name">
                                                                                        <iaixsl:value-of select="@name"/>
                                                                                    </span>

                                                                                    
                                                                                    <span class="--quantity">
                                                                                        <iaixsl:if test="not(@quantity)">
                                                                                            <iaixsl:attribute name="class">--quantity d-none</iaixsl:attribute>
                                                                                        </iaixsl:if>
                                                                                        <iaixsl:choose>
                                                                                            <iaixsl:when test="@quantity">
                                                                                                <iaixsl:value-of select="@quantity"/>
                                                                                            </iaixsl:when>
                                                                                            <iaixsl:otherwise>0</iaixsl:otherwise>
                                                                                        </iaixsl:choose>
                                                                                    </span>
                                                                                </label>
                                                                            </div>
                                                                        </li>

                                                                    </iaixsl:for-each>
                                                                </ul>
                                                                
                                                                <div class="filters__options">
                                                                    
                                                                    <iaixsl:if test="count(item) > $showAll">
                                                                        <a class="--show-hidden btn py-0 pl-3 pr-0">
                                                                            <iaixsl:attribute name="data-id"><iaixsl:value-of select="$id"/><iaixsl:value-of select="position()"/></iaixsl:attribute>

                                                                            <span class="--show">pokaż więcej</span>
                                                                            <span class="--hide">ukryj</span>
                                                                        </a>
                                                                    </iaixsl:if>
                                                                    <button type="submit" class="--submit d-none btn py-0 pl-0 pr-3">
                                                                        Zastosuj
                                                                    </button>

                                                                    
                                                                </div>
                                                            </li>
                                                        </iaixsl:for-each>
                                                    </ul>
                                                </iaixsl:when>

                                                
                                                <iaixsl:otherwise>
                                                    <ul class="filters__content --list">
                                                        <iaixsl:attribute name="id"><iaixsl:value-of select="$id"/>_content</iaixsl:attribute>

                                                        <iaixsl:for-each select="item">
                                                            <iaixsl:sort select="@selected" order="descending"/>

                                                            <li class="filters__item mb-2">
                                                                <iaixsl:attribute name="class">filters__item mb-2
                                                                    <iaixsl:if test="position() = $showAll"> --last-not-hidden</iaixsl:if>
                                                                    <iaixsl:if test="position() > $showAll"> --hidden</iaixsl:if>
                                                                </iaixsl:attribute>

                                                                <div class="f-group --small --checkbox mb-0">
                                                                    <input type="checkbox" class="f-control">
                                                                        <iaixsl:attribute name="id"><iaixsl:value-of select="$id"/>_<iaixsl:value-of select="@value"/></iaixsl:attribute>
                                                                        <iaixsl:attribute name="data-id"><iaixsl:value-of select="$id"/></iaixsl:attribute>

                                                                        <iaixsl:attribute name="value"><iaixsl:value-of select="@value"/></iaixsl:attribute>

                                                                        <iaixsl:if test="@selected='selected'">
                                                                            <iaixsl:attribute name="checked">checked</iaixsl:attribute>
                                                                        </iaixsl:if>

                                                                        <iaixsl:if test="@quantity = '0'">
                                                                            <iaixsl:attribute name="disabled">disabled</iaixsl:attribute>
                                                                        </iaixsl:if>
                                                                    </input>

                                                                    <label class="f-label">
                                                                        <iaixsl:attribute name="for"><iaixsl:value-of select="$id"/>_<iaixsl:value-of select="@value"/></iaixsl:attribute>

                                                                        
                                                                        <span class="--name">
                                                                            <iaixsl:value-of select="@name"/>
                                                                        </span>

                                                                        
                                                                        <span class="--quantity">
                                                                            <iaixsl:if test="not(@quantity)">
                                                                                <iaixsl:attribute name="class">--quantity d-none</iaixsl:attribute>
                                                                            </iaixsl:if>
                                                                            <iaixsl:choose>
                                                                                <iaixsl:when test="@quantity">
                                                                                    <iaixsl:value-of select="@quantity"/>
                                                                                </iaixsl:when>
                                                                                <iaixsl:otherwise>0</iaixsl:otherwise>
                                                                            </iaixsl:choose>
                                                                        </span>
                                                                    </label>
                                                                </div>
                                                            </li>

                                                        </iaixsl:for-each>
                                                    </ul>

                                                    
                                                    <div class="filters__options">
                                                        
                                                        <iaixsl:if test="count(item) > $showAll">
                                                            <a class="--show-hidden btn py-0 pl-3 pr-0">
                                                                <iaixsl:attribute name="data-id"><iaixsl:value-of select="$id"/></iaixsl:attribute>

                                                                <span class="--show">pokaż więcej</span>
                                                                <span class="--hide">ukryj</span>
                                                            </a>
                                                        </iaixsl:if>
                                                        <button type="submit" class="--submit d-none btn py-0 pl-0 pr-3">
                                                            Zastosuj
                                                        </button>

                                                        
                                                    </div>
                                                </iaixsl:otherwise>
                                            </iaixsl:choose>
                                        </iaixsl:otherwise>
                                    </iaixsl:choose>
                                </div>
                            </div>
                        </iaixsl:for-each>

                        <iaixsl:if test="count(/shop/page/products/navigation/filtering/filter[@type = 'dual'][not(@id = 'filter_nextday' or @id = 'filter_sameday')])">
                            <div class="filters__block mb-1">
                                
                                <iaixsl:variable name="id">filter_dual</iaixsl:variable>

                                
                                <a class="filters__toggler">
                                    <iaixsl:attribute name="data-id"><iaixsl:value-of select="$id"/></iaixsl:attribute>

                                    <iaixsl:attribute name="class">filters__toggler
                                        <iaixsl:if test="/shop/page/products/navigation/filtering/filter[@type = 'dual'][not(@id = 'filter_nextday' or @id = 'filter_sameday')]/@selected"> --selected</iaixsl:if>
                                    </iaixsl:attribute>

                                    
                                    <div class="btn --icon-right d-block pr-4">
                                        <span>Pokaż tylko</span>
                                    </div>
                                </a>
                            
                                
                                <div class="filters__expand">
                                    <iaixsl:attribute name="id"><iaixsl:value-of select="$id"/>_expand</iaixsl:attribute>
                                    
                                    <ul class="filters__content --list">
                                        <iaixsl:attribute name="id"><iaixsl:value-of select="$id"/>_content</iaixsl:attribute>
                                        
                                        <iaixsl:for-each select="/shop/page/products/navigation/filtering/filter[@type = 'dual'][not(@id = 'filter_nextday' or @id = 'filter_sameday')]">
                                            
                                            <iaixsl:variable name="id_dual"><iaixsl:value-of select="translate (@id, '[]', '')"/></iaixsl:variable>

                                            <iaixsl:for-each select="item[@value = 'y']">
                                                <li class="filters__item mb-2">
                                                    <div class="f-group --small --checkbox mb-0">
                                                        <input type="checkbox" class="f-control __serialize">
                                                            <iaixsl:attribute name="id"><iaixsl:value-of select="$id_dual"/>_<iaixsl:value-of select="@value"/></iaixsl:attribute>
                                                            <iaixsl:attribute name="value"><iaixsl:value-of select="@value"/></iaixsl:attribute>
                                                            <iaixsl:attribute name="name"><iaixsl:value-of select="$id_dual"/></iaixsl:attribute>

                                                            <iaixsl:if test="@selected='selected'">
                                                                <iaixsl:attribute name="checked">checked</iaixsl:attribute>
                                                            </iaixsl:if>

                                                            <iaixsl:if test="@quantity = '0'">
                                                                <iaixsl:attribute name="disabled">disabled</iaixsl:attribute>
                                                            </iaixsl:if>
                                                        </input>
                                                        <label class="f-label">
                                                            <iaixsl:attribute name="for"><iaixsl:value-of select="$id_dual"/>_<iaixsl:value-of select="@value"/></iaixsl:attribute>

                                                            
                                                            <span class="--name">
                                                                <iaixsl:value-of select="../@name"/>
                                                            </span>

                                                            
                                                            <span class="--quantity">
                                                                <iaixsl:if test="not(@quantity)">
                                                                    <iaixsl:attribute name="class">--quantity d-none</iaixsl:attribute>
                                                                </iaixsl:if>
                                                                <iaixsl:choose>
                                                                    <iaixsl:when test="@quantity">
                                                                        <iaixsl:value-of select="@quantity"/>
                                                                    </iaixsl:when>
                                                                    <iaixsl:otherwise>0</iaixsl:otherwise>
                                                                </iaixsl:choose>
                                                            </span>
                                                        </label>
                                                    </div>
                                                </li>
                                            </iaixsl:for-each>
                                        </iaixsl:for-each>
                                    </ul>

                                    
                                    <div class="filters__options">
                                        
                                        <button type="submit" class="--submit d-none btn py-0 pl-0 pr-3">
                                            Zastosuj
                                        </button>
                                    </div>
                                </div>
                            </div>
                        
                        </iaixsl:if>

                        
                        <iaixsl:if test="/shop/page/products/navigation/filtering/filter[@type='dual'] and ($samedayCouriersAvail = 'true' and $samedayClientLocal = 'false') or ($samedayCouriersAvail = 'true' and $samedayClientLocal = 'true' and $samedayServiceAvail = 'true') or ($nextdayCouriersAvail = 'true' and $nextdayClientLocal = 'false') or ($nextdayCouriersAvail = 'true' and $nextdayClientLocal = 'true' and $nextdayServiceAvail = 'true')">                          
                            
                            <iaixsl:variable name="id">filter_xpress</iaixsl:variable>

                            <div class="filters__block mb-1">
                                <a class="filters__toggler">
                                    <iaixsl:attribute name="data-id"><iaixsl:value-of select="$id"/></iaixsl:attribute>

                                    <iaixsl:attribute name="class">filters__toggler
                                        <iaixsl:if test="@selected"> --selected</iaixsl:if>
                                    </iaixsl:attribute>

                                    
                                    <div class="btn --icon-right d-block pr-4">
                                        <span>Ekspresowa dostawa</span>
                                    </div>
                                </a>

                                
                                <div class="filters__expand">
                                    <iaixsl:attribute name="id"><iaixsl:value-of select="$id"/>_expand</iaixsl:attribute>

                                    <ul class="filters__content --dual">
                                        
                                        <iaixsl:if test="($nextdayCouriersAvail = 'true' and $nextdayClientLocal = 'false') or ($nextdayCouriersAvail = 'true' and $nextdayClientLocal = 'true' and $nextdayServiceAvail = 'true')">
                                            <li class="filters__item mb-2">
                                                <div class="f-group --small --checkbox mb-0">
                                                    <input name="filter_nextday" type="checkbox" class="f-control __serialize">
                                                        <iaixsl:attribute name="id">filter_nextday_form</iaixsl:attribute>
                                                        <iaixsl:attribute name="value">y</iaixsl:attribute>
                                                        <iaixsl:attribute name="name">filter_nextday</iaixsl:attribute>

                                                        <iaixsl:attribute name="data-xpress">true</iaixsl:attribute>
                                                        <iaixsl:attribute name="data-localized"><iaixsl:value-of select="$nextdayClientLocal"/></iaixsl:attribute>
                                                        <iaixsl:attribute name="data-available"><iaixsl:value-of select="$nextdayCouriersAvail"/></iaixsl:attribute>

                                                        <iaixsl:if test="/shop/page/products/navigation/filtering/filter[@id = 'filter_nextday']/@selected">
                                                            <iaixsl:attribute name="checked">checked</iaixsl:attribute>
                                                        </iaixsl:if>
                                                    </input>

                                                    <label for="filter_nextday_form" class="f-label">
                                                        
                                                        <span class="--name">
                                                            Następnego dnia <strong>24h</strong>
                                                        </span>
                                                    </label>
                                                </div>
                                            </li>
                                        </iaixsl:if>

                                        
                                        <iaixsl:if test="($samedayCouriersAvail = 'true' and $samedayClientLocal = 'false') or ($samedayCouriersAvail = 'true' and $samedayClientLocal = 'true' and $samedayServiceAvail = 'true')">
                                            <li class="filters__item mb-2">
                                                <div class="f-group --small --checkbox mb-0">
                                                    <input name="filter_sameday" type="checkbox" class="f-control __serialize">
                                                        <iaixsl:attribute name="id">filter_sameday_form</iaixsl:attribute>
                                                        <iaixsl:attribute name="value">y</iaixsl:attribute>
                                                        <iaixsl:attribute name="name">filter_sameday</iaixsl:attribute>

                                                        <iaixsl:attribute name="data-xpress">true</iaixsl:attribute>
                                                        <iaixsl:attribute name="data-localized"><iaixsl:value-of select="$samedayClientLocal"/></iaixsl:attribute>
                                                        <iaixsl:attribute name="data-available"><iaixsl:value-of select="$samedayCouriersAvail"/></iaixsl:attribute>

                                                        <iaixsl:if test="/shop/page/products/navigation/filtering/filter[@id = 'filter_sameday']/@selected">
                                                            <iaixsl:attribute name="checked">checked</iaixsl:attribute>
                                                        </iaixsl:if>
                                                    </input>

                                                    <label for="filter_sameday_form" class="f-label">
                                                        
                                                        <span class="--name">
                                                            Tego samego dnia <i class="icon-clock"></i>
                                                        </span>
                                                    </label>
                                                </div>
                                            </li>
                                        </iaixsl:if>
                                    </ul>
                                    
                                    <div class="filters__options">
                                        
                                        <button type="submit" class="--submit d-none btn py-0 pl-0 pr-3">
                                            Zastosuj
                                        </button>
                                    </div>
                                </div>
                            </div>

                            
                            <script src="//maps.googleapis.com/maps/api/js?sensor=false"/>
                        </iaixsl:if>

                        
                        <div class="f-group filters__buttons mt-3">
                            
                            <button type="submit" class="btn --large --solid d-block">
                                <iaixsl:attribute name="title">Kliknij aby zastosować wybrane filtry</iaixsl:attribute>
                                
                                Zastosuj wybrane filtry
                            </button>

                            
                            <iaixsl:if test="(/shop/page/products/navigation/filtering/filter/item/@selected='selected') or count(/shop/page/products/navigation/filtering/filter/@selected)">
                                <a class="btn d-block" href="/settings.php?filter_remove=all">
                                    <iaixsl:if test="/shop/page/products/navigation/search_link/@value">
                                        <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/page/products/navigation/search_link/@value "/></iaixsl:attribute>
                                    </iaixsl:if>
                                    <iaixsl:attribute name="title">Kliknij aby wyczyścić listę aktywnych filtrów</iaixsl:attribute>
                                    
                                    Usuń wszystkie filtry
                                </a>
                            </iaixsl:if>
                        </div>
                    </form>
                </section>
            </iaixsl:if>
            <iaixsl:if test="/shop/page/products/navigation/filtering/filter/@mode"> </iaixsl:if>
            <iaixsl:if test="/shop/page/products/navigation/filtering/filter/@id='filter_instock'"> </iaixsl:if>

        <!--Buttony sekcji 3 (menu_buttons3, 108143.1)-->
            <iaixsl:variable name="hidebuttons3COP"></iaixsl:variable>

            <iaixsl:if test="not($hidebuttons3COP) or ( $hidebuttons3COP and not(( page/@type = 'basketedit') or ( page/@type='login' and page/login/onceorder/@display='y') or ( ((page/@type = 'client-new') and not(page/client-data/@register='true') and not(page/client-data/@edit='true'))) or ( page/@type = 'order1') or ( page/@type = 'order-nonstandardized') or ( page/@type = 'pickup-sites') or ( page/@type = 'order2') or ( page/@type = 'client-save') or ( page/@type = 'prepaid') or ( page/@type = 'order-payment') or ( page/@type = 'order-newpayment')) ) ">
                <iaixsl:if test="count(commercial_button3/link)">
                    <div id="menu_buttons3" class="mb-4 d-none d-md-block">
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

                    </div>
                </iaixsl:if>
            </iaixsl:if>
        
                        </aside>
                    </iaixsl:if>
                    

                    
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


<!-- !BANER KATEGORII -->
		                    <div class="row">
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
							<div class="row">
								<!-- <div class="main_banner_wrapper banner-custom">
									<ul class="main_slider">
										<iaixsl:for-each select="commercial_banner/link">
											<iaixsl:if test="not(html)">
												<li>
													<a><iaixsl:choose>
														<iaixsl:when test="@target = '_blank'">
															<iaixsl:attribute name="target">_blank</iaixsl:attribute>
														</iaixsl:when>
														<iaixsl:otherwise>
															<iaixsl:attribute name="target">_self</iaixsl:attribute>
														</iaixsl:otherwise>
													</iaixsl:choose>
														<iaixsl:if test="@href"><iaixsl:attribute name="href"><iaixsl:value-of select="@href"/></iaixsl:attribute></iaixsl:if>
														<iaixsl:attribute name="title"><iaixsl:value-of select="text"/></iaixsl:attribute><iaixsl:choose>
															<iaixsl:when test="image or image_desktop or image_tablet or image_mobile"><img src="/gfx/pol/loader.gif?r=1598273396">
																<iaixsl:attribute name="alt"><iaixsl:value-of select="text"/></iaixsl:attribute>
																<iaixsl:if test="image_desktop or image_tablet or image_mobile">
																	<iaixsl:attribute name="class">rwd-src</iaixsl:attribute>
																</iaixsl:if>

																<iaixsl:if test="image/@src">
																	<iaixsl:attribute name="class">loaded</iaixsl:attribute>
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

															</img></iaixsl:when>
															<iaixsl:otherwise>
																<iaixsl:value-of disable-output-escaping="yes" select="text"/>
															</iaixsl:otherwise>
														</iaixsl:choose></a>
												</li>
											</iaixsl:if>
											<iaixsl:if test="html">
												<li><iaixsl:value-of disable-output-escaping="yes" select="html"/></li>
											</iaixsl:if>
										</iaixsl:for-each>
									</ul>
								</div> -->
                                <!-- <iaixsl:for-each select="/shop/page/products/navigation/filtering/filter">
                                      <iaixsl:if test="@name = 'Model'">
                                         <iaixsl:value-of select='@name'/> -->
                                         <!-- <div style="width:100%;height:300px;background:#ddd" class="search-categories-wrapper">
                                         <iaixsl:value-of select="/shop/page/products/product/category/@name"/>
                                         </div> -->
                                    <!-- </iaixsl:if>
                                </iaixsl:for-each> -->
							</div>
                            <!--! BANNER KATEGORII  -->


                          
    <!-- <iaixsl:variable name="searchResults_title"></iaixsl:variable>
        <iaixsl:variable name="breadcrumbs_label">Jesteś tu:  </iaixsl:variable>
        <div class="breadcrumbs col-md-12 px-0">
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
                                <span>Lista zakupionych produktów</span>
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
                                <span>Jednokrokowy proces zakupowy</span>
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
                
            </div>
        </div> -->



        <!--Opis kategorii w wyszukiwaniu (search_categoriesdescription, 106637.1)-->

        <!-- <div class="search_categoriesdescription">
            <h1>
                <iaixsl:attribute name="class">big_label</iaixsl:attribute>
                <iaixsl:choose>
                    <iaixsl:when test="not(page/products/additional/category_list/name = '')">
                        <iaixsl:value-of disable-output-escaping="yes" select="page/products/additional/category_list/name"/>
                    </iaixsl:when>
                    <iaixsl:otherwise>
                        Wyniki wyszukiwania
                    </iaixsl:otherwise>
                </iaixsl:choose>
            </h1>
            <iaixsl:if test="not(page/products/@hideproducts = 'true')">
            <span class="navigation_total">
                ( ilość produktów: <b><iaixsl:value-of select="page/products/navigation/@total"/></b> )
            </span>
            </iaixsl:if>
                    
            <iaixsl:if test="not(page/products/additional/category_list/description = '') and (page/products/additional/category_list/description) and count(/shop/page/products/navigation/filtering/filter[@selected]) = 0">
                <iaixsl:if test="(/shop/page/products/@hideproducts = 'true' ) or ((/shop/page/products/navigation/item[1]/@counter =1) and (/shop/page/products/navigation/item[1]/@type ='current'))">
                     <div class="search_categoriesdescription_sub cm skeleton">
                        <iaixsl:value-of disable-output-escaping="yes" select="page/products/additional/category_list/description"/>
                    </div>
                </iaixsl:if>
            </iaixsl:if>
        </div> -->


        <!-- !Krótki opis kategorii -->
        <h1 class="category-short-description">
        <iaixsl:value-of  select="/shop/page/products/additional/category_list/name" disable-output-escaping="yes"/> 
        </h1>

        <!--! Obrazek kategorii -->
       
        <iaixsl:variable name="current_search_node_id">
            <iaixsl:value-of select='/shop/page/search_params/node/@id' />
        </iaixsl:variable>
        <div class="category-picture-wrapper">
        
          <!-- !LEVEL 1 -->
        <iaixsl:for-each select="/shop/navigation/item"> 
        <iaixsl:if test="@ni=$current_search_node_id and @gfx_onmouseover">
        <div class="wrapper-dropdown-picture">
        <h2>
        <span class="level-1">
            <iaixsl:value-of select="@name"/> 
        </span>

        </h2>
        <button class="image-dropdown-button" id="category-picture-dropdown-button">wybierz</button>
        <ul class="image-dropdown" id="category-picture-dropdown">
            <iaixsl:for-each select="item">
            <a>
                <iaixsl:attribute name="href">
                    <iaixsl:value-of select="@link"/>
                </iaixsl:attribute>
                <iaixsl:attribute name="target">
                    <iaixsl:value-of select="@target"/>
                </iaixsl:attribute>
                 <li>
                <span>
                    <iaixsl:value-of select="@name" />
                </span>
                </li>
            </a>
            </iaixsl:for-each>
        </ul>
        </div>
    
         <img>
            <iaixsl:attribute name="src">
            <iaixsl:value-of select="@gfx_onmouseover"/>
            </iaixsl:attribute>
            <iaixsl:attribute name="title">
            <iaixsl:value-of select="@name"/>
            </iaixsl:attribute>
         </img>
            </iaixsl:if> 
         </iaixsl:for-each>
         <!-- !LEVEL 2 -->
            <iaixsl:for-each select="/shop/navigation/item"> 
                <iaixsl:for-each select="item"> 
                <iaixsl:if test="@ni=$current_search_node_id and @gfx_onmouseover">
                <div class="wrapper-dropdown-picture">
                <h2>
                <iaixsl:for-each select="/shop/bc/item">
                 <span class="level-2">
                
                   <iaixsl:value-of select="@title"/> 
                 </span> 
                </iaixsl:for-each>

                </h2>
                <button class="image-dropdown-button" id="category-picture-dropdown-button">wybierz</button>
                <ul class="image-dropdown" id="category-picture-dropdown">
                    <iaixsl:for-each select="item">
                    <a>
                        <iaixsl:attribute name="href">
                            <iaixsl:value-of select="@link"/>
                        </iaixsl:attribute>
                        <iaixsl:attribute name="target">
                            <iaixsl:value-of select="@target"/>
                        </iaixsl:attribute>
                         <li>
                        <span>
                            <iaixsl:value-of select="@name" />
                        </span>
                        </li>
                    </a>
                    </iaixsl:for-each>
                </ul>
                </div>

                 <img>
                    <iaixsl:attribute name="src">
                    <iaixsl:value-of select="@gfx_onmouseover"/>
                    </iaixsl:attribute>
                    <iaixsl:attribute name="title">
                    <iaixsl:value-of select="@name"/>
                    </iaixsl:attribute>
                 </img>
                    </iaixsl:if> 
                 </iaixsl:for-each>
            </iaixsl:for-each>
        
        </div>

    <!--Stronicowanie wyników (search_paging, 110683.1)-->

        <iaixsl:variable name="select_sort_label"></iaixsl:variable>
        <iaixsl:variable name="select_portions_label"></iaixsl:variable>
        <iaixsl:variable name="prev_page"></iaixsl:variable>
        <iaixsl:variable name="next_page">Następna strona</iaixsl:variable>

        <iaixsl:if test="not(page/products/@hideproducts = 'true') or count(/shop/page/products/display_mode/item) > 1">
        
            <div id="paging_setting_top" class="s_paging">
          
                
                <iaixsl:if test="not(page/products/@hideproducts = 'true')">
                    <iaixsl:if test="not(/shop/page/products/navigation/@disable_sort_change = 'y')">
                        <form class="s_paging__item --sort sort-system-custom" action="/settings.php">
                            <iaixsl:if test="$select_sort_label">
                                <label for="select_top_sort"><iaixsl:value-of disable-output-escaping="yes" select="$select_sort_label"/></label>
                            </iaixsl:if>

                            <span>
                            <i class="d-md-none icon-sort"></i>
                            <span class="d-md-none">Sortuj</span>
                            <span class="hide-md">
                                sortuj według:
                            </span>
                            </span>
                            <select class="s_paging__select --order --small-md" id="select_top_sort" name="sort_order">
                                <option value="name-a" class="option_name-a"><iaixsl:if test="page/products/navigation/@sort = 'name' and page/products/navigation/@order = 'a'"><iaixsl:attribute name="selected">selected</iaixsl:attribute></iaixsl:if>nazwy rosnąco</option>
                                <option value="name-d" class="option_name-d"><iaixsl:if test="page/products/navigation/@sort = 'name' and page/products/navigation/@order = 'd'"><iaixsl:attribute name="selected">selected</iaixsl:attribute></iaixsl:if>nazwy malejąco</option>
                                <option value="price-a" class="option_price-a"><iaixsl:if test="page/products/navigation/@sort = 'price' and page/products/navigation/@order = 'a'"><iaixsl:attribute name="selected">selected</iaixsl:attribute></iaixsl:if>ceny rosnąco</option>
                                <option value="price-d" class="option_price-d"><iaixsl:if test="page/products/navigation/@sort = 'price' and page/products/navigation/@order = 'd'"><iaixsl:attribute name="selected">selected</iaixsl:attribute></iaixsl:if>ceny malejąco</option>
                                <option value="date-a" class="option_date-a"><iaixsl:if test="page/products/navigation/@sort = 'date' and page/products/navigation/@order = 'a'"><iaixsl:attribute name="selected">selected</iaixsl:attribute></iaixsl:if>daty dacie rosnąco</option>
                                <option value="date-d" class="option_date-d"><iaixsl:if test="page/products/navigation/@sort = 'date' and page/products/navigation/@order = 'd'"><iaixsl:attribute name="selected">selected</iaixsl:attribute></iaixsl:if>daty dacie malejąco</option>
                            </select>
                        </form>
                    </iaixsl:if>

                    <iaixsl:if test="not(/shop/page/products/navigation/@disable_portions_change = 'y') and count(page/products/navigation/portions) > 1">
                        <form class="s_paging__item --portions sort-system-custom count" action="/settings.php">
                            <iaixsl:if test="$select_portions_label">
                                <label for="select_top_portions"><iaixsl:value-of disable-output-escaping="yes" select="$select_portions_label"/></label>
                            </iaixsl:if>
                                <span class="product-on-page">
                                        produktów na stronie: 
                                </span>
                            <select class="s_paging__select --portions --small-md" id="select_top_portions" name="portions">
                                <iaixsl:for-each select="page/products/navigation/portions">
                                    <option>
                                    <iaixsl:attribute name="value">
                                    <iaixsl:value-of select="@counter"/>
                                    </iaixsl:attribute>
                                    <iaixsl:if test="@selected = 'true'">
                                    <iaixsl:attribute name="selected">selected</iaixsl:attribute>
                                    </iaixsl:if>
                                
                                    <iaixsl:value-of select="@counter"/>
                                    </option>
                                </iaixsl:for-each>
                            </select>
                        </form>
                    </iaixsl:if>

                    <iaixsl:if test="count(/shop/page/products/navigation/filtering/filter)">
                        <div class="s_paging__item --filters d-md-none mb-2 mb-sm-3">
                            <a class="btn --solid --large" href="#menu_filter">
                                <!-- Filtrowanie -->
                                <i class="icon-lejek"></i>  Filtruj
                            </a>
                        </div>
                    </iaixsl:if>

                    <iaixsl:if test="count(page/products/navigation/item) > 1">
                        <ul class="s_paging__item pagination d-none d-sm-flex mb-2 mb-sm-3" style="display:none!important;">
                            
                            <iaixsl:if test="page/products/navigation/prev">
                                <li class="pagination__element --prev">
                                    <iaixsl:if test="$prev_page">
                                        <iaixsl:attribute name="class">pagination__element --prev --button</iaixsl:attribute>
                                    </iaixsl:if>
                                    <a class="pagination__link">
                                        <iaixsl:attribute name="href"><iaixsl:value-of disable-output-escaping="yes" select="page/products/navigation/path/@value"/><iaixsl:value-of select="page/products/navigation/prev/@counter"/></iaixsl:attribute>
                                    </a>
                                    <iaixsl:if test="$prev_page">
                                        <a class="pagination__button --prev btn --secondary --solid --icon-left icon-angle-left d-md-none">
                                            <iaixsl:attribute name="href"><iaixsl:value-of disable-output-escaping="yes" select="page/products/navigation/path/@value"/><iaixsl:value-of select="page/products/navigation/prev/@counter"/></iaixsl:attribute>
                                            <iaixsl:value-of disable-output-escaping="yes" select="$prev_page"/>
                                        </a>
                                    </iaixsl:if>
                                </li>
                            </iaixsl:if>
                            
                            <iaixsl:if test="not(page/products/navigation/prev)">
                                <li class="pagination__element --prev --disabled">
                                    <iaixsl:if test="$prev_page">
                                        <iaixsl:attribute name="class">pagination__element --prev --disabled --button</iaixsl:attribute>
                                    </iaixsl:if>
                                    <span class="pagination__link"/>
                                    <iaixsl:if test="$prev_page">
                                        <span class="pagination__button --prev btn --secondary --solid --icon-left icon-angle-left d-md-none"><iaixsl:value-of disable-output-escaping="yes" select="$prev_page"/></span>
                                    </iaixsl:if>
                                </li>
                            </iaixsl:if>
                            
                            <iaixsl:for-each select="page/products/navigation/item">
                                <iaixsl:if test="@gap">
                                    <li class="pagination__element --gap --disabled">
                                        <span class="pagination__link">...</span>
                                    </li>
                                </iaixsl:if>
                                <iaixsl:if test="not(@type = 'current') and not(@gap)">
                                    <li class="pagination__element --item">
                                        <a class="pagination__link">
                                            <iaixsl:attribute name="href"><iaixsl:value-of disable-output-escaping="yes" select="../path/@value"/><iaixsl:value-of select="@counter - 1"/></iaixsl:attribute>
                                            <iaixsl:value-of select="@counter"/>
                                        </a>
                                    </li>
                                </iaixsl:if>
                                <iaixsl:if test="@type = 'current'">
                                    <li class="pagination__element --item --active">
                                        <span class="pagination__link"><iaixsl:value-of select="@counter"/></span>
                                    </li>
                                </iaixsl:if>
                            </iaixsl:for-each>
                            
                            <iaixsl:if test="page/products/navigation/next">
                                <li class="pagination__element --next">
                                    <iaixsl:if test="$next_page">
                                        <iaixsl:attribute name="class">pagination__element --next --button</iaixsl:attribute>
                                    </iaixsl:if>
                                    <a class="pagination__link">
                                        <iaixsl:attribute name="href"><iaixsl:value-of disable-output-escaping="yes" select="page/products/navigation/path/@value"/><iaixsl:value-of select="page/products/navigation/next/@counter"/></iaixsl:attribute>
                                    </a>
                                    <iaixsl:if test="$next_page">
                                        <a class="pagination__button --next btn --secondary --solid --icon-right icon-angle-right d-md-none">
                                            <iaixsl:attribute name="href"><iaixsl:value-of disable-output-escaping="yes" select="page/products/navigation/path/@value"/><iaixsl:value-of select="page/products/navigation/next/@counter"/></iaixsl:attribute>
                                            <iaixsl:value-of disable-output-escaping="yes" select="$next_page"/>
                                        </a>
                                    </iaixsl:if>
                                </li>
                            </iaixsl:if>
                            
                            <iaixsl:if test="not(page/products/navigation/next)">
                                <li class="pagination__element --next --disabled">
                                    <iaixsl:if test="$next_page">
                                        <iaixsl:attribute name="class">pagination__element --next --disabled --button</iaixsl:attribute>
                                    </iaixsl:if>
                                    <span class="pagination__link"/>
                                    <iaixsl:if test="$next_page">
                                        <span class="pagination__button --next btn --secondary --solid --icon-right icon-angle-right d-md-none"><iaixsl:value-of disable-output-escaping="yes" select="$next_page"/></span>
                                    </iaixsl:if>
                                </li>
                            </iaixsl:if>
                        </ul>
                    </iaixsl:if>
                </iaixsl:if>
            </div>
        </iaixsl:if>

        <div class="breadcrumb-search d-flex col-12 py-2 px-0">
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

        </div>
        <!--Filtrowanie wyników wyszukiwania (search_filters, 106645.1)-->
         
        <!--Ustawienia wyszukiwania (search_settings, 110469.1)-->
        <iaixsl:if test="compare/@count > 0 or /shop/page/@cache_html = 'true'">
            <div id="menu_compare_product" class="compare pt-2 mb-2 pt-sm-3 mb-sm-3">
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
    <!--Lista produktów (search, 111232.1)-->
			
			<iaixsl:variable name="param_search"></iaixsl:variable>
			<iaixsl:variable name="param_search_gfx"></iaixsl:variable>
			<iaixsl:variable name="versions_search">true</iaixsl:variable>
			<iaixsl:variable name="var_yousave_search"></iaixsl:variable>
			<iaixsl:variable name="var_net_prices_search"> netto</iaixsl:variable>
			<iaixsl:variable name="var_b2b_search">Produkt niedostępny w sprzedaży detalicznej. Zarejestruj się, aby zobaczyć ceny hurtowe.</iaixsl:variable>
			
			<iaixsl:variable name="addcompare_txt">+ Dodaj do porównania</iaixsl:variable>

			<iaixsl:if test="/shop/page/products/display_mode/@active = 'normal'">





            <!-- !TUTAJ -->
				<section id="search" class="search products d-flex flex-wrap mb-2 mb-sm-3">
                         
                         

                <iaixsl:variable name="count_unit"> szt.</iaixsl:variable>
                
                <iaixsl:variable name="setProductCount_search">true</iaixsl:variable>
                
                <iaixsl:variable name="sizes_hide_on">3</iaixsl:variable>
                
                <iaixsl:variable name="param_search_list"></iaixsl:variable>
                
                <iaixsl:variable name="param_search_list_gfx"></iaixsl:variable>
                
                <iaixsl:variable name="infinitiSymbol"><font style="font-size: 1.67em;">∞</font></iaixsl:variable>

                <div id="search-list">
                    <form action="/basketchange.php?type=multiproduct" method="post" class="product-form-wrapper">

                        <iaixsl:for-each select="/shop/page/products/product">
                            <iaixsl:variable name="product_position"><iaixsl:value-of select="position()"/></iaixsl:variable>

                            <div>
                            <!-- clearfix -->
                                <iaixsl:attribute name="class">
                                    product-wrapper product-custom-wrapper
                                    <iaixsl:if test="/shop/page/@ecommerce_module_class">
                                        <iaixsl:variable name="ecommerce_module_separator">{productId}</iaixsl:variable>

                                        <iaixsl:variable name="ecommerce_module_class_before"><iaixsl:value-of select="substring-before(/shop/page/@ecommerce_module_class, $ecommerce_module_separator)"/></iaixsl:variable>
                                        <iaixsl:variable name="ecommerce_module_class_after"><iaixsl:value-of select="substring-after(/shop/page/@ecommerce_module_class, $ecommerce_module_separator)"/></iaixsl:variable>

                                         <iaixsl:value-of select="$ecommerce_module_class_before"/><iaixsl:value-of select="/shop/page/projector/product/@id"/><iaixsl:value-of select="$ecommerce_module_class_after"/>
                                    </iaixsl:if>
                                </iaixsl:attribute>
                                <iaixsl:attribute name="data-id"><iaixsl:value-of select="@id"/></iaixsl:attribute>


                          
                                <div class="product-wrapper-top product-custom">

                                    <a class="product-icon-custom">
                                        <iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
                                        <iaixsl:attribute name="target">_self</iaixsl:attribute>
                                            <iaixsl:if test="@promo or @new or @bestseller or @discount or @distinguished">
                                                    <strong class="label_icons">

                                                        <iaixsl:if test="@promo">
                                                            <span class="label promo">
                                                                <!-- W promocji -->
                                                               <img>
                                                               <iaixsl:attribute name="src">/data/include/cms/b2b4kom/B2B-IKONY-SVG/promo.svg</iaixsl:attribute>
                                                               </img>
                                                            </span>
                                                        </iaixsl:if>
                                                        <iaixsl:if test="@new">
                                                            <span class="label newproducts">
                                                             <img>
                                                               <iaixsl:attribute name="src">/data/include/cms/b2b4kom/B2B-IKONY-SVG/new.svg</iaixsl:attribute>
                                                               </img>
                                                            </span>
                                                        </iaixsl:if>
                                                        <iaixsl:if test="@bestseller">
                                                            <span class="label newproducts">
                                                             <img>
                                                               <iaixsl:attribute name="src">/data/include/cms/b2b4kom/B2B-IKONY-SVG/best.svg</iaixsl:attribute>
                                                               </img>
                                                            </span>
                                                        </iaixsl:if>
                                                       
                                                        <iaixsl:choose>
                                                            <iaixsl:when test="@promo and @new">
                                                            </iaixsl:when>
                                                            <iaixsl:when test="@promo or @new">
                                                                <iaixsl:choose>
                                                                    <iaixsl:when test="@bestseller">
                                                                        <span class="label bestseller">
                                                                            Nasz bestseller
                                                                        </span>
                                                                    </iaixsl:when>
                                                                    <iaixsl:when test="@discount">
                                                                        <span class="label discount">
                                                                            Przecena
                                                                        </span>
                                                                    </iaixsl:when>
                                                                    <iaixsl:when test="@distinguished">
                                                                        <span class="label distinguished">
                                                                            Polecany
                                                                        </span>
                                                                    </iaixsl:when>
                                                                </iaixsl:choose>
                                                            </iaixsl:when>
                                                            <iaixsl:otherwise>
                                                                <iaixsl:if test="@bestseller">
                                                                    <span class="label bestseller">
                                                                        Nasz bestseller
                                                                    </span>
                                                                </iaixsl:if>
                                                                <iaixsl:if test="@discount">
                                                                    <span class="label discount">
                                                                        Przecena
                                                                    </span>
                                                                </iaixsl:if>
                                                                <iaixsl:if test="@distinguished and not(@bestseller and @discount)">
                                                                    <span class="label distinguished">
                                                                        Polecany
                                                                    </span>
                                                                </iaixsl:if>
                                                            </iaixsl:otherwise>
                                                        </iaixsl:choose>


                                                    </strong>
                                            </iaixsl:if>
                                        <img class="b-lazy" src="/gfx/pol/loader.gif?r=1600678639">
                                            <iaixsl:attribute name="data-src-small"><iaixsl:value-of disable-output-escaping="yes" select="icon_small"/></iaixsl:attribute>
                                            <iaixsl:attribute name="data-src"><iaixsl:value-of disable-output-escaping="yes" select="icon_small"/></iaixsl:attribute>
                                            <iaixsl:attribute name="alt"><iaixsl:value-of disable-output-escaping="yes" select="name"/></iaixsl:attribute>
                                        </img>
                                        <h3>                                         
                                            <span>
                                                <iaixsl:value-of disable-output-escaping="yes" select="name"/>
                                            </span>
                                        </h3>
                                             <p>
                                                <iaixsl:if test="price/@value != 0 or /shop/basket/@wholesaler = 'true'">
                                                    <iaixsl:if test="sizes/size/price/@maxprice_net_formatted">
                                                        <del class="max-price-custom">
                                                            <iaixsl:choose>
                                                                <iaixsl:when test="price/@maxprice_unit_net_formatted">
                                                                    <iaixsl:value-of select="price/@maxprice_unit_net_formatted"/>
                                                                </iaixsl:when>
                                                                <iaixsl:otherwise>
                                                                    <iaixsl:value-of select="price/@maxprice_net_formatted"/>
                                                                </iaixsl:otherwise>
                                                            </iaixsl:choose>
                                                        </del>
                                                    </iaixsl:if>

                                                    <iaixsl:if test="sizes/size/price/@price_net_formatted">
                                                        <span class="price-custom">
                                                        <iaixsl:choose>
                                                            <iaixsl:when test="price/@price_unit_net_formatted">
                                                                <iaixsl:value-of select="price/@price_unit_net_formatted"/>
                                                                <iaixsl:text> / </iaixsl:text>
                                                                <iaixsl:value-of select="sizes/@unit_sellby"/>
                                                                <iaixsl:text> 
                                                                </iaixsl:text>
                                                                <iaixsl:value-of select="sizes/@unit"/>
                                                            </iaixsl:when>
                                                            <iaixsl:otherwise>
                                                                <iaixsl:value-of select="price/@price_net_formatted"/>
                                                            </iaixsl:otherwise>
                                                        </iaixsl:choose>
                                                        </span>
                                                    </iaixsl:if>
                                                </iaixsl:if>
                                             </p>

                                                <iaixsl:choose>
                                                    <iaixsl:when test="not(../@product_type ='product_bundle')">
                                                        <!-- <button class="search_buy d-none">
                                                            <iaixsl:attribute name="title">Dodaj ten produkt do koszyka</iaixsl:attribute>
                                                            <iaixsl:attribute name="value"><i class="icon-shopping-cart"></i></iaixsl:attribute>
                                                            <iaixsl:attribute name="data-loadtxt">&lt;i class="icon-refresh icon-spin"&gt;&lt;/i&gt;</iaixsl:attribute>
                                                                <i class="icon-shopping-cart"></i>
                                                        </button> -->
                                                    </iaixsl:when>
                                                    <iaixsl:otherwise>
                                                        <iaixsl:choose>
                                                            <iaixsl:when test="(../bundled/product/sizes/size/@type !=  'uniw')">
                                                                <a class="btn --solid search_see_bundle d-none">
                                                                    <!-- <iaixsl:attribute name="href"><iaixsl:value-of select="../@link"/> -->
                                                                    <!-- </iaixsl:attribute> -->
                                                                    <!-- <iaixsl:attribute name="title"> -->
                                                                        Przejdź do informacji o zestawie
                                                                    <!-- </iaixsl:attribute> -->
                                                                        Przejdź do informacji o zestawie
                                                                </a>
                                                            </iaixsl:when>
                                                            <iaixsl:otherwise>
                                                                <!-- <button class="search_buy d-none">
                                                                    <iaixsl:attribute name="title">
                                                                        Dodaj ten produkt do koszyka
                                                                    </iaixsl:attribute>
                                                                    <iaixsl:attribute name="value">
                                                                        <i class="icon-shopping-cart"></i>
                                                                    </iaixsl:attribute>
                                                                    <iaixsl:attribute name="data-loadtxt">
                                                                        &lt;i class="icon-refresh icon-spin"&gt;&lt;/i&gt;
                                                                    </iaixsl:attribute>
                                                                    <i class="icon-shopping-cart"></i>
                                                                </button> -->
                                                            </iaixsl:otherwise>
                                                        </iaixsl:choose>
                                                    </iaixsl:otherwise>
                                                </iaixsl:choose>
                                    </a>

                             

                                    <div class="search_list_buttons">
                                        <iaixsl:if test="/shop/compare/@active = 'y' and not(price/@value = 0 and not(/shop/basket/@wholesaler = 'true'))">
                                            <a class="btn_compare btn --outline --icon-right icon-plus">
                                                <iaixsl:choose>
                                                    <iaixsl:when test="@id = /shop/compare/product/@id">
                                                        <iaixsl:attribute name="data-active">true</iaixsl:attribute>
                                                        <iaixsl:attribute name="href">/settings.php?comparers=remove&amp;product=<iaixsl:value-of select="@id"/></iaixsl:attribute>
                                                        <iaixsl:attribute name="title">Kliknij, aby usunąć produkt z porównywarki</iaixsl:attribute>
                                                        Usuń z porównania
                                                    </iaixsl:when>
                                                    <iaixsl:otherwise>
                                                        <iaixsl:attribute name="href">/settings.php?comparers=add&amp;product=<iaixsl:value-of select="@id"/></iaixsl:attribute>
                                                        <iaixsl:attribute name="title">Kliknij, aby dodać produkt do porównania</iaixsl:attribute>
                                                        Dodaj do porównania
                                                    </iaixsl:otherwise>
                                                </iaixsl:choose>

                                            </a>
                                        </iaixsl:if>
                                        <iaixsl:if test="traits/trait[not(@gfx)] or traits/trait[@gfx2]">
                                            <a href="#show_specification" class="btn_specification btn --outline --icon-right icon-angle-down">
                                                <iaixsl:attribute name="data-toggleTxt">Specyfikacja </iaixsl:attribute>
                                                Specyfikacja 
                                            </a>
                                        </iaixsl:if>
                                    </div>

                                             


                                <div class="cutContent"></div>
                                <div class="search-sizes">
                        
                                    <table class="search-sizes custom-search-size">
                                        <tbody>
                                            <iaixsl:if test="price/@value != 0 or /shop/basket/@wholesaler = 'true'">
                                                <iaixsl:for-each select="sizes/size">
                                                    <tr>
                                                        <iaixsl:variable name="size_type"><iaixsl:value-of select="@type"/></iaixsl:variable>
                                                        <iaixsl:attribute name="data-size_type"><iaixsl:value-of select="$size_type"/></iaixsl:attribute>

                                                        <iaixsl:if test="position() > $sizes_hide_on">
                                                            <iaixsl:attribute name="class">hide-size</iaixsl:attribute>
                                                        </iaixsl:if>

                                                        
                                                        <td class="search_sizename">
                                                            <iaixsl:choose>
                                                                <iaixsl:when test="@type = 'uniw'">
                                                                    <iaixsl:attribute name="class">search_sizename_uniw</iaixsl:attribute>
                                                                </iaixsl:when>
                                                                <iaixsl:otherwise>
                                                                    <iaixsl:value-of select="@description"/>
                                                                </iaixsl:otherwise>
                                                            </iaixsl:choose>
                                                        </td>
                                                        
                                                        <iaixsl:variable name="prod_id"><iaixsl:value-of select="../../@id"/></iaixsl:variable>
                                                        <iaixsl:variable name="prod_size"><iaixsl:value-of select="@type"/></iaixsl:variable>

                                                      
                                                        <td class="search-price">
                                                            <iaixsl:choose>

                                                                
                                                                <iaixsl:when test="(price/@value = 0) and not(price/@points)">
                                                                    <a class="price" href="/contact.php">
                                                                        <iaixsl:attribute name="title">Kliknij, by przejść do formularza kontaktu</iaixsl:attribute>
                                                                        Cena na telefon
                                                                    </a>
                                                                </iaixsl:when>

                                                                
                                                                <iaixsl:when test="(price/@value = 0) and (price/@points)">
                                                                    <div class="price_search_points">
                                                                        <label class="search_forpoints">
                                                                            <input type="checkbox" value="1">
                                                                                <iaixsl:attribute name="name">forpoints[<iaixsl:value-of select="$product_position"/><iaixsl:value-of select="position()"/>]</iaixsl:attribute>
                                                                            </input><span> kup za <iaixsl:value-of select="price/@points"/> pkt.</span>
                                                                        </label>
                                                                    </div>
                                                                </iaixsl:when>

                                                                
                                                                <iaixsl:otherwise>
                                                                    <!-- <iaixsl:if test="price/@maxprice_net_formatted">
                                                                        <del class="max-price">
                                                                            <iaixsl:choose>
                                                                                <iaixsl:when test="price/@maxprice_unit_net_formatted">
                                                                                    <iaixsl:value-of select="price/@maxprice_unit_net_formatted"/>
                                                                                </iaixsl:when>
                                                                                <iaixsl:otherwise>
                                                                                    <iaixsl:value-of select="price/@maxprice_net_formatted"/>
                                                                                </iaixsl:otherwise>
                                                                            </iaixsl:choose>
                                                                        </del>
                                                                    </iaixsl:if> -->
                                                                    <!-- <iaixsl:if test="price/@price_net_formatted">
                                                                        <strong class="price-net">
                                                                            <iaixsl:choose>
                                                                                <iaixsl:when test="price/@price_unit_net_formatted">
                                                                                    <iaixsl:value-of select="price/@price_unit_net_formatted"/><iaixsl:text> / </iaixsl:text><iaixsl:value-of select="sizes/@unit_sellby"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="sizes/@unit"/>
                                                                                </iaixsl:when>
                                                                                <iaixsl:otherwise>
                                                                                    <iaixsl:value-of select="price/@price_net_formatted"/>
                                                                                </iaixsl:otherwise>
                                                                            </iaixsl:choose>
                                                                            <small> netto </small></strong>
                                                                    </iaixsl:if> -->
                                                                    <iaixsl:if test="price/@price_formatted and /shop/client_data/@uses_vat = 'true'">
                                                                        <span class="price"> ( <iaixsl:choose><iaixsl:when test="price/@price_unit_formatted"><iaixsl:value-of select="price/@price_unit_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@price_formatted"/></iaixsl:otherwise></iaixsl:choose>
                                                                        <small> brutto </small>)</span>
                                                                    </iaixsl:if>
                                                                    <iaixsl:if test="price/@price_net_formatted">
                                                                         
                                                                        <a class="shipping_info" target="blank" href="#shipping_info">
                                                                            <iaixsl:attribute name="title">Sprawdź czasy i koszty wysyłki</iaixsl:attribute>
                                                                            <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/shipping_cost/@url"/></iaixsl:attribute>

                                                                            <iaixsl:attribute name="data-product-id"><iaixsl:value-of select="$prod_id"/></iaixsl:attribute>
                                                                            <iaixsl:attribute name="data-product-size"><iaixsl:value-of select="$prod_size"/></iaixsl:attribute>
                                                                            <iaixsl:attribute name="data-product-quantity">
                                                                                <iaixsl:choose>
                                                                                    <iaixsl:when test="/shop/basket/product[@id = $prod_id]/size[@type = $prod_size]">
                                                                                        <iaixsl:value-of select="/shop/basket/product[@id = $prod_id]/size[@type = $prod_size]/@ordered"/>
                                                                                    </iaixsl:when>
                                                                                    <iaixsl:otherwise>1</iaixsl:otherwise>
                                                                                </iaixsl:choose>
                                                                            </iaixsl:attribute>
                                                                             koszty wysyłki
                                                                        </a>
                                                                    </iaixsl:if>

                                                                    <iaixsl:if test="price/@points">
                                                                        <div class="price_search_points">
                                                                            <span>lub</span><label class="search_forpoints">
                                                                            <input type="checkbox" value="1">
                                                                                <iaixsl:attribute name="name">forpoints[<iaixsl:value-of select="$product_position"/><iaixsl:value-of select="position()"/>]</iaixsl:attribute>
                                                                            </input><span> kup za <iaixsl:value-of select="price/@points"/> pkt.</span>
                                                                        </label>
                                                                        </div>
                                                                    </iaixsl:if>

                                                                    
                                                                    <iaixsl:if test="((@amount_wholesale) and not(@amount = @amount_wholesale))">
                                                                        <iaixsl:choose>
                                                                            <iaixsl:when test="sizes/size/@amount_wholesale = 0">
                                                                                <div class="price_detail_info">(Produkt dostępny tylko w cenie detalicznej)</div>
                                                                            </iaixsl:when>
                                                                            <iaixsl:otherwise>
                                                                                <div class="price_detail_info">
                                                                                    (powyżej 
                                                                                    <iaixsl:value-of select="@amount_wholesale"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="../@unit"/>
                                                                                     cena detal. 
                                                                                    <img class="search_detail_info_tip" src="/gfx/pol/help_tip.png?r=1600678639"/>)
                                                                                    <div class="tooltipContent">
                                                                                        Powyżej 
                                                                                        <span><iaixsl:value-of select="@amount_wholesale"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="../@unit"/></span>
                                                                                         cena netto za każdą kolejną zakupioną <iaixsl:value-of select="../@unit"/>
                                                                                         wyniesie 
                                                                                        <span><iaixsl:value-of select="price/@detalprice_net_formatted"/></span>
                                                                                    </div>
                                                                                </div>
                                                                            </iaixsl:otherwise>
                                                                        </iaixsl:choose>
                                                                    </iaixsl:if>
                                                                </iaixsl:otherwise>
                                                            </iaixsl:choose>
                                                        </td>

                                                        
                                                        <td class="search_rebate">
                                                            <iaixsl:if test="not((price/@value = 0) and (price/@points))">
                                                                <iaixsl:if test="price/rebateNumber/rebate">
                                                                    <div class="rabat btn --icon-left icon-plus showTip">Rabat </div>
                                                                    <div class="tooltipContent">
                                                                        <iaixsl:for-each select="price/rebateNumber/rebate">
                                                                            <div>
                                                                                Od
                                                                                <strong>
                                                                                    <iaixsl:value-of select="@threshold"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="../../../../@unit"/>
                                                                                </strong>
                                                                                
                                                                                <strong>

                                                                                    <iaixsl:value-of select="@price_net_formatted"/>

                                                                                </strong>
                                                                                - rabat
                                                                                <strong>
                                                                                    <iaixsl:value-of select="@value"/>%
                                                                                </strong>
                                                                            </div>
                                                                        </iaixsl:for-each>
                                                                    </div>
                                                                </iaixsl:if>
                                                            </iaixsl:if>
                                                        </td>

                                                        
                                                          <td class="search_instock">
                                                            <iaixsl:if test="(availability/@status_gfx) and not(availability/@status_gfx = '') and (availability/@visible = 'y')">
                                                                <img class="search_instock_icon">
                                                                    <iaixsl:attribute name="src"><iaixsl:value-of select="availability/@status_gfx"/></iaixsl:attribute>
                                                                    <iaixsl:attribute name="alt"><iaixsl:value-of select="availability/@status_description"/></iaixsl:attribute>
                                                                    <iaixsl:attribute name="title"><iaixsl:value-of select="availability/@status_description"/></iaixsl:attribute>
                                                                </img>
                                                            </iaixsl:if>
                                                            <iaixsl:choose>
                                                                <iaixsl:when test="$infinitiSymbol and @amount">
                                                                    <span>
                                                                        <iaixsl:choose>
                                                                            <iaixsl:when test="/shop/order_edit/@order_id and /shop/basket/product[@id = $prod_id]">
                                                                                <iaixsl:choose>
                                                                                    <iaixsl:when test="@amount = -1">
                                                                                        <font style="font-size: 1.67em;">∞</font><iaixsl:text>&#160;</iaixsl:text><iaixsl:value-of select="../@unit"/>
                                                                                    </iaixsl:when>
                                                                                    <iaixsl:otherwise>
                                                                                        
                                                                                        <iaixsl:value-of select="floor(@amount) + floor(/shop/basket/product[@id = $prod_id]/size[@type = $prod_size]/@ordered)"/><iaixsl:text>&#160;</iaixsl:text><iaixsl:value-of select="../@unit"/>
                                                                                    </iaixsl:otherwise>
                                                                                </iaixsl:choose>
                                                                            </iaixsl:when>
                                                                            <iaixsl:otherwise>
                                                                                <iaixsl:choose>
                                                                                    <iaixsl:when test="@amount = 0">
                                                                                        Brak
                                                                                    </iaixsl:when>
                                                                                    <iaixsl:when test="@amount = -1">
                                                                                        <font style="font-size: 1.67em;">∞</font><iaixsl:text>&#160;</iaixsl:text><iaixsl:value-of select="../@unit"/>
                                                                                    </iaixsl:when>
                                                                                    <iaixsl:otherwise>
                                                                                        <iaixsl:value-of select="@amount"/><iaixsl:text>&#160;</iaixsl:text><iaixsl:value-of select="../@unit"/>
                                                                                    </iaixsl:otherwise>
                                                                                </iaixsl:choose>
                                                                            </iaixsl:otherwise>
                                                                        </iaixsl:choose>
                                                                    </span>
                                                                </iaixsl:when>
                                                                <iaixsl:otherwise>
                                                                    <iaixsl:if test="availability/@status_description and availability/@status_description != ''">
                                                                        <span><iaixsl:value-of select="availability/@status_description"/></span>
                                                                    </iaixsl:if>
                                                                </iaixsl:otherwise>
                                                            </iaixsl:choose>
                                                        </td>

                                                        <td class="search_num">
                                                            <iaixsl:if test="../../@product_type = 'product_virtual'">
                                                                <iaixsl:attribute name="class">search_num product_virtual</iaixsl:attribute>
                                                            </iaixsl:if>

                                                            <iaixsl:if test="not(../../@product_type = 'product_virtual')">
                                                                <span class="btn --outline n65081_down">
                                                                    <iaixsl:if test="((number(price/@value) = 0) and not(price/@points)) or (@amount = 0)">
                                                                        <iaixsl:attribute name="data-disabled">true</iaixsl:attribute>
                                                                    </iaixsl:if>
                                                                    <i class="icon-minus"></i>
                                                                </span>
                                                            </iaixsl:if>
                                                            <span class="quantity">
                                                                <iaixsl:choose>
                                                                    <iaixsl:when test="../../@product_type = 'product_virtual'">
                                                                        <input class="n65081" type="hidden">

                                                                            <iaixsl:attribute name="class">n65081 quantity_<iaixsl:value-of select="../../@id"/>_<iaixsl:value-of select="@type"/></iaixsl:attribute>

                                                                            <iaixsl:attribute name="name">set_quantity[<iaixsl:value-of select="$product_position"/><iaixsl:value-of select="position()"/>]</iaixsl:attribute>
                                                                            <iaixsl:attribute name="data-unit_sellby"><iaixsl:value-of select="../@unit_sellby"/></iaixsl:attribute>
                                                                            <iaixsl:attribute name="data-unit_precision"><iaixsl:value-of select="../@unit_precision"/></iaixsl:attribute>
                                                                            <iaixsl:attribute name="data-unit"><iaixsl:value-of select="../@unit"/></iaixsl:attribute>

                                                                            <iaixsl:choose>
                                                                                <iaixsl:when test="/shop/order_edit/@order_id and /shop/basket/product[@id = $prod_id]">
                                                                                    <iaixsl:attribute name="data-amount"><iaixsl:value-of select="floor(@amount) + floor(/shop/basket/product[@id = $prod_id]/size[@type = $prod_size]/@ordered)"/></iaixsl:attribute>
                                                                                </iaixsl:when>
                                                                                <iaixsl:otherwise>
                                                                                    <iaixsl:attribute name="data-amount"><iaixsl:value-of select="@amount"/></iaixsl:attribute>
                                                                                </iaixsl:otherwise>
                                                                            </iaixsl:choose>

                                                                            <iaixsl:if test="../../order_quantity_range/max_quantity_per_order">
                                                                                <iaixsl:attribute name="data-max_q"><iaixsl:value-of select="../../order_quantity_range/max_quantity_per_order"/></iaixsl:attribute>
                                                                            </iaixsl:if>
                                                                            <iaixsl:if test="../../order_quantity_range/max_size_quantity_per_order">
                                                                                <iaixsl:attribute name="data-max_s"><iaixsl:value-of select="../../order_quantity_range/max_size_quantity_per_order"/></iaixsl:attribute>
                                                                            </iaixsl:if>
                                                                            <iaixsl:if test="../../order_quantity_range/min_quantity_per_order">
                                                                                <iaixsl:attribute name="data-min_q"><iaixsl:value-of select="../../order_quantity_range/min_quantity_per_order"/></iaixsl:attribute>
                                                                            </iaixsl:if>
                                                                            <iaixsl:if test="../../order_quantity_range/min_size_quantity_per_order">
                                                                                <iaixsl:attribute name="data-min_s"><iaixsl:value-of select="../../order_quantity_range/min_size_quantity_per_order"/></iaixsl:attribute>
                                                                            </iaixsl:if>

                                                                            <iaixsl:if test="((number(price/@value) = 0) and not(price/@points)) or (@amount = 0)">
                                                                                <iaixsl:attribute name="disabled">disabled</iaixsl:attribute>
                                                                                <iaixsl:attribute name="class">n65081 disabled quantity_<iaixsl:value-of select="../../@id"/>_<iaixsl:value-of select="@type"/></iaixsl:attribute>
                                                                            </iaixsl:if>

                                                                            <iaixsl:if test="(../../@product_type ='product_bundle') and (../../bundled/product/sizes/size/@type !=  'uniw')">
                                                                                <iaixsl:attribute name="disabled">disabled</iaixsl:attribute>
                                                                                <iaixsl:attribute name="class">n65081 disabled quantity_<iaixsl:value-of select="../../@id"/>_<iaixsl:value-of select="@type"/></iaixsl:attribute>
                                                                            </iaixsl:if>

                                                                            <iaixsl:attribute name="value">
                                                                                <iaixsl:choose>
                                                                                    <iaixsl:when test="/shop/basket/product[@id = $prod_id]/size[@type = $prod_size]">
                                                                                        <iaixsl:value-of select="/shop/basket/product[@id = $prod_id]/size[@type = $prod_size]/@ordered"/>
                                                                                    </iaixsl:when>
                                                                                    <iaixsl:otherwise>0</iaixsl:otherwise>
                                                                                </iaixsl:choose>
                                                                            </iaixsl:attribute>
                                                                        </input>

                                                                        <input class="n65081_size" type="hidden">
                                                                            <iaixsl:attribute name="name">size[<iaixsl:value-of select="$product_position"/><iaixsl:value-of select="position()"/>]</iaixsl:attribute>
                                                                            <iaixsl:attribute name="value"><iaixsl:value-of select="@type"/></iaixsl:attribute>
                                                                            <iaixsl:if test="((number(price/@value) = 0) and not(price/@points)) or (@amount = 0)">
                                                                                <iaixsl:attribute name="disabled">disabled</iaixsl:attribute>
                                                                            </iaixsl:if>
                                                                        </input>
                                                                        <input class="n65081_product" type="hidden">
                                                                            <iaixsl:attribute name="name">product[<iaixsl:value-of select="$product_position"/><iaixsl:value-of select="position()"/>]</iaixsl:attribute>
                                                                            <iaixsl:attribute name="value"><iaixsl:value-of select="../../@id"/></iaixsl:attribute>
                                                                            <iaixsl:if test="((number(price/@value) = 0) and not(price/@points)) or (@amount = 0)">
                                                                                <iaixsl:attribute name="disabled">disabled</iaixsl:attribute>
                                                                            </iaixsl:if>
                                                                        </input>
                                                                    </iaixsl:when>
                                                                    <iaixsl:otherwise>
                                                                        <input class="n65081" type="text">

                                                                            <iaixsl:attribute name="class">n65081 quantity_<iaixsl:value-of select="../../@id"/>_<iaixsl:value-of select="@type"/></iaixsl:attribute>

                                                                            <iaixsl:attribute name="name">set_quantity[<iaixsl:value-of select="$product_position"/><iaixsl:value-of select="position()"/>]</iaixsl:attribute>
                                                                            <iaixsl:attribute name="data-unit_sellby"><iaixsl:value-of select="../@unit_sellby"/></iaixsl:attribute>
                                                                            <iaixsl:attribute name="data-unit_precision"><iaixsl:value-of select="../@unit_precision"/></iaixsl:attribute>
                                                                            <iaixsl:attribute name="data-unit"><iaixsl:value-of select="../@unit"/></iaixsl:attribute>

                                                                            <iaixsl:choose>
                                                                                <iaixsl:when test="/shop/order_edit/@order_id and /shop/basket/product[@id = $prod_id]">
                                                                                    <iaixsl:attribute name="data-amount"><iaixsl:value-of select="floor(@amount) + floor(/shop/basket/product[@id = $prod_id]/size[@type = $prod_size]/@ordered)"/></iaixsl:attribute>
                                                                                </iaixsl:when>
                                                                                <iaixsl:otherwise>
                                                                                    <iaixsl:attribute name="data-amount"><iaixsl:value-of select="@amount"/></iaixsl:attribute>
                                                                                </iaixsl:otherwise>
                                                                            </iaixsl:choose>

                                                                            <iaixsl:if test="../../order_quantity_range/max_quantity_per_order">
                                                                                <iaixsl:attribute name="data-max_q"><iaixsl:value-of select="../../order_quantity_range/max_quantity_per_order"/></iaixsl:attribute>
                                                                            </iaixsl:if>
                                                                            <iaixsl:if test="../../order_quantity_range/max_size_quantity_per_order">
                                                                                <iaixsl:attribute name="data-max_s"><iaixsl:value-of select="../../order_quantity_range/max_size_quantity_per_order"/></iaixsl:attribute>
                                                                            </iaixsl:if>
                                                                            <iaixsl:if test="../../order_quantity_range/min_quantity_per_order">
                                                                                <iaixsl:attribute name="data-min_q"><iaixsl:value-of select="../../order_quantity_range/min_quantity_per_order"/></iaixsl:attribute>
                                                                            </iaixsl:if>
                                                                            <iaixsl:if test="../../order_quantity_range/min_size_quantity_per_order">
                                                                                <iaixsl:attribute name="data-min_s"><iaixsl:value-of select="../../order_quantity_range/min_size_quantity_per_order"/></iaixsl:attribute>
                                                                            </iaixsl:if>

                                                                            <iaixsl:if test="((number(price/@value) = 0) and not(price/@points)) or (@amount = 0)">
                                                                                <iaixsl:attribute name="disabled">disabled</iaixsl:attribute>
                                                                                <iaixsl:attribute name="class">n65081 disabled quantity_<iaixsl:value-of select="../../@id"/>_<iaixsl:value-of select="@type"/></iaixsl:attribute>
                                                                            </iaixsl:if>

                                                                            <iaixsl:if test="(../../@product_type ='product_bundle') and (../../bundled/product/sizes/size/@type !=  'uniw')">
                                                                                <iaixsl:attribute name="disabled">disabled</iaixsl:attribute>
                                                                                <iaixsl:attribute name="class">n65081 disabled quantity_<iaixsl:value-of select="../../@id"/>_<iaixsl:value-of select="@type"/></iaixsl:attribute>
                                                                            </iaixsl:if>

                                                                            <iaixsl:attribute name="value">
                                                                                <iaixsl:choose>
                                                                                    <iaixsl:when test="/shop/basket/product[@id = $prod_id]/size[@type = $prod_size]">
                                                                                        <iaixsl:value-of select="/shop/basket/product[@id = $prod_id]/size[@type = $prod_size]/@ordered"/>
                                                                                    </iaixsl:when>
                                                                                    <iaixsl:otherwise>0</iaixsl:otherwise>
                                                                                </iaixsl:choose>
                                                                            </iaixsl:attribute>
                                                                        </input>

                                                                        <input class="n65081_size" type="hidden">
                                                                            <iaixsl:attribute name="name">size[<iaixsl:value-of select="$product_position"/><iaixsl:value-of select="position()"/>]</iaixsl:attribute>
                                                                            <iaixsl:attribute name="value"><iaixsl:value-of select="@type"/></iaixsl:attribute>
                                                                            <iaixsl:if test="((number(price/@value) = 0) and not(price/@points)) or (@amount = 0)">
                                                                                <iaixsl:attribute name="disabled">disabled</iaixsl:attribute>
                                                                            </iaixsl:if>
                                                                        </input>
                                                                        <input class="n65081_product" type="hidden">
                                                                            <iaixsl:attribute name="name">product[<iaixsl:value-of select="$product_position"/><iaixsl:value-of select="position()"/>]</iaixsl:attribute>
                                                                            <iaixsl:attribute name="value"><iaixsl:value-of select="../../@id"/></iaixsl:attribute>
                                                                            <iaixsl:if test="((number(price/@value) = 0) and not(price/@points)) or (@amount = 0)">
                                                                                <iaixsl:attribute name="disabled">disabled</iaixsl:attribute>
                                                                            </iaixsl:if>
                                                                        </input>
                                                                    </iaixsl:otherwise>
                                                                </iaixsl:choose>
                                                            </span>
                                                            <iaixsl:if test="not(../../@product_type = 'product_virtual')">
                                                                <span class="btn --outline n65081_up">
                                                                    <iaixsl:if test="((number(price/@value) = 0) and not(price/@points)) or (@amount = 0)">
                                                                        <iaixsl:attribute name="data-disabled">true</iaixsl:attribute>
                                                                    </iaixsl:if>
                                                                    <i class="icon-plus"></i>
                                                                </span>
                                                            </iaixsl:if>
                                                        </td>

                                                      
                                                          <iaixsl:if test="position() = 1">
                                                            <td class="search_buy">
                                                                <iaixsl:attribute name="rowspan"><iaixsl:value-of select="count(../../sizes/size)"/></iaixsl:attribute>

                                                                
                                                                <iaixsl:choose>
                                                                    <iaixsl:when test="not(../../@product_type ='product_bundle')">
                                                                        <button class="search_buy">
                                                                            <iaixsl:attribute name="title">Dodaj ten produkt do koszyka</iaixsl:attribute>
                                                                            <iaixsl:attribute name="value"><i class="icon-shopping-cart"></i></iaixsl:attribute>
                                                                            <iaixsl:attribute name="data-loadtxt">&lt;i class="icon-refresh icon-spin"&gt;&lt;/i&gt;</iaixsl:attribute>
                                                                            <i class="icon-shopping-cart"></i>
                                                                        </button>
                                                                    </iaixsl:when>
                                                                    <iaixsl:otherwise>
                                                                        <iaixsl:choose>
                                                                            <iaixsl:when test="(../../bundled/product/sizes/size/@type !=  'uniw')">
                                                                                <a class="btn --solid search_see_bundle">
                                                                                    <iaixsl:attribute name="href"><iaixsl:value-of select="../../@link"/></iaixsl:attribute>
                                                                                    <iaixsl:attribute name="title">Przejdź do informacji o zestawie</iaixsl:attribute>

                                                                                    Przejdź do informacji o zestawie
                                                                                </a>
                                                                            </iaixsl:when>
                                                                            <iaixsl:otherwise>
                                                                                <button class="search_buy">
                                                                                    <iaixsl:attribute name="title">Dodaj ten produkt do koszyka</iaixsl:attribute>
                                                                                    <iaixsl:attribute name="value"><i class="icon-shopping-cart"></i></iaixsl:attribute>
                                                                                    <iaixsl:attribute name="data-loadtxt">&lt;i class="icon-refresh icon-spin"&gt;&lt;/i&gt;</iaixsl:attribute>
                                                                                    <i class="icon-shopping-cart"></i>
                                                                                </button>

                                                                            </iaixsl:otherwise>
                                                                        </iaixsl:choose>

                                                                    </iaixsl:otherwise>
                                                                </iaixsl:choose>
 
                                                            </td>
                                                        </iaixsl:if>
                                                        
                                                    </tr>
                                                </iaixsl:for-each>
                                            </iaixsl:if>

                                            <iaixsl:if test="price/@value = 0 and not(/shop/basket/@wholesaler = 'true')">
                                                <tr>
                                                    <td class="show_hurt_price_search">
                                                        <a class="show_hurt_price_search" href="/login.php">
                                                            Produkt niedostępny w sprzedaży detalicznej. Zarejestruj się, aby zobaczyć ceny hurtowe.
                                                        </a>
                                                    </td>
                                                </tr>
                                            </iaixsl:if>
                                        </tbody>
                                    </table>

                                    <iaixsl:if test="count(sizes/size) > $sizes_hide_on">
                                        <iaixsl:if test="not(price/@value = 0 and not(/shop/basket/@wholesaler = 'true'))">
                                            <a href="#show_sizes" class="show_all_sizes btn --icon-right icon-angle-up pl-0">
                                                <iaixsl:attribute name="data-toggleTxt">Pokaż wszystkie rozmiary</iaixsl:attribute>
                                                Ukryj rozmiary
                                            </a>
                                        </iaixsl:if>
                                    </iaixsl:if>
                                </div>
                            </div>
                                

                                <iaixsl:if test="traits/trait[not(@gfx)] or traits/trait[@gfx2]">
                                    <div class="list_traits">
                                        <iaixsl:if test="traits/trait[not(@gfx)]">
                                            <ul>
                                                <iaixsl:for-each select="traits/trait[not(@gfx)]">
                                                    <iaixsl:if test="not(@groupid = preceding-sibling::trait/@groupid)">
                                                        <li>
                                                            <span><iaixsl:value-of select="@groupdescription"/>:</span>
                                                            <div>
                                                                <a><iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute><iaixsl:value-of select="@traitdescription"/></a>
                                                                <iaixsl:if test="@groupid = following-sibling::trait/@groupid">
                                                                    <iaixsl:variable name="temporaryGroup"><iaixsl:value-of select="@groupid"/></iaixsl:variable><iaixsl:for-each select="following-sibling::trait[(@groupid = $temporaryGroup)]">, <a><iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute><iaixsl:value-of select="@traitdescription"/></a></iaixsl:for-each>
                                                                </iaixsl:if>
                                                            </div>
                                                        </li>
                                                    </iaixsl:if>
                                                </iaixsl:for-each>
                                            </ul>
                                        </iaixsl:if>

                                        <iaixsl:if test="traits/trait[@gfx2]">
                                            <ul class="gfx_traits">
                                                <iaixsl:for-each select="traits/trait[@gfx2]">
                                                    <li>
                                                        <a>
                                                            <iaixsl:attribute name="title"><iaixsl:value-of select="@groupdescription"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="@traitdescription"/></iaixsl:attribute>
                                                            <iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
                                                            <img>
                                                                <iaixsl:attribute name="src"><iaixsl:value-of select="@gfx2"/></iaixsl:attribute>
                                                                <iaixsl:attribute name="alt"><iaixsl:value-of select="@traitdescription"/></iaixsl:attribute>
                                                            </img>
                                                        </a>
                                                    </li>
                                                </iaixsl:for-each>
                                            </ul>
                                        </iaixsl:if>
                                    </div>
                                </iaixsl:if>

                             
                            </div>

                        </iaixsl:for-each>
         
                    </form>
                </div>





<!-- !TUTAJ -->


					<iaixsl:for-each select="/shop/page/products/product">
						<div class="product col-6 col-sm-4 pt-3 pb-md-3 d-none">
							<iaixsl:attribute name="data-product_id"><iaixsl:value-of select="@id"/></iaixsl:attribute>
							
							<iaixsl:if test="/shop/page/@ecommerce_module_class">
								<iaixsl:attribute name="class">
									product col-6 col-sm-4 py-3

									<iaixsl:variable name="ecommerce_module_separator">{productId}</iaixsl:variable>

									<iaixsl:variable name="ecommerce_module_class_before"><iaixsl:value-of select="substring-before(/shop/page/@ecommerce_module_class, $ecommerce_module_separator)"/></iaixsl:variable>
									<iaixsl:variable name="ecommerce_module_class_after"><iaixsl:value-of select="substring-after(/shop/page/@ecommerce_module_class, $ecommerce_module_separator)"/></iaixsl:variable>

									<iaixsl:value-of select="$ecommerce_module_class_before"/><iaixsl:value-of select="@id"/><iaixsl:value-of select="$ecommerce_module_class_after"/>
								</iaixsl:attribute>
							</iaixsl:if>

							
							<iaixsl:if test="$var_yousave_search and not($var_yousave_search = '') and price/@yousave_formatted != ''">
								<div class="product__yousave">
									<span class="product__yousave --label"><iaixsl:value-of select="$var_yousave_search"/></span>
									<span class="product__yousave --value"><iaixsl:value-of select="price/@yousave_formatted"/></span>
								</div>
							</iaixsl:if>

							
							<a class="product__icon d-flex justify-content-center align-items-center">
								<iaixsl:attribute name="data-product-id"><iaixsl:value-of select="@id"/></iaixsl:attribute>
								<iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
								<iaixsl:attribute name="title"><iaixsl:value-of disable-output-escaping="yes" select="name"/></iaixsl:attribute>
								<img src="/gfx/pol/loader.gif?r=1600678639" class="b-lazy">
									<iaixsl:attribute name="data-src-small"><iaixsl:value-of disable-output-escaping="yes" select="icon_small"/></iaixsl:attribute>
									<iaixsl:attribute name="data-src"><iaixsl:value-of disable-output-escaping="yes" select="icon"/></iaixsl:attribute>
									<iaixsl:attribute name="alt"><iaixsl:value-of disable-output-escaping="yes" select="name"/></iaixsl:attribute>
								</img>

								
								<iaixsl:if test="@promo or @new or @bestseller or @discount or (@distinguished and not(@bestseller and @discount))">
									<strong class="label_icons">
										<iaixsl:if test="@promo">
											<span class="label --promo">
												W promocji
											</span>
										</iaixsl:if>
										<iaixsl:if test="@new">
											<span class="label --new">
												Nowość
											</span>
										</iaixsl:if>
										<iaixsl:choose>
											<iaixsl:when test="@promo and @new">
											</iaixsl:when>
											<iaixsl:when test="@promo or @new">
												<iaixsl:choose>
													<iaixsl:when test="@bestseller">
														<span class="label --bestseller">
															Nasz bestseller
														</span>
													</iaixsl:when>
													<iaixsl:when test="@discount">
														<span class="label --discount">
															Przecena
														</span>
													</iaixsl:when>
													<iaixsl:when test="@distinguished">
														<span class="label --distinguished">
															Polecany
														</span>
													</iaixsl:when>
												</iaixsl:choose>
											</iaixsl:when>
											<iaixsl:otherwise>
												<iaixsl:if test="@bestseller">
													<span class="label --bestseller">
														Nasz bestseller
													</span>
												</iaixsl:if>
												<iaixsl:if test="@discount">
													<span class="label --discount">
														Przecena
													</span>
												</iaixsl:if>
												<iaixsl:if test="@distinguished and not(@bestseller and @discount)">
													<span class="label --distinguished">
														Polecany
													</span>
												</iaixsl:if>
											</iaixsl:otherwise>
										</iaixsl:choose>
									</strong>
								</iaixsl:if>
							</a>

							
							<h3>
								<a class="product__name">
									<iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
									<iaixsl:attribute name="title"><iaixsl:value-of disable-output-escaping="yes" select="name"/></iaixsl:attribute>
									<iaixsl:value-of disable-output-escaping="yes" select="name"/>
								</a>
							</h3>

							
							<iaixsl:choose>
								
								<iaixsl:when test="$var_net_prices_search and not($var_net_prices_search = '')">
									<div class="product__prices">
										<iaixsl:choose>
											<iaixsl:when test="(sizes/prices/@minprice_net_formatted != sizes/prices/@maxprice_net_formatted) or (sizes/prices/@minprice_unit_formatted != sizes/prices/@maxprice_unit_formatted)">
												<iaixsl:if test="(sizes/prices/@size_min_maxprice_net_formatted != sizes/prices/@size_max_maxprice_net_formatted) or (sizes/prices/@size_min_maxprice_unit_formatted != sizes/prices/@size_max_maxprice_unit_formatted)">
													<del class="price --max">
														<iaixsl:choose>
															<iaixsl:when test="sizes/prices/@size_min_maxprice_unit_formatted">
																<span><iaixsl:value-of select="sizes/prices/@size_min_maxprice_unit_formatted"/></span><b> - </b><span><iaixsl:value-of select="sizes/prices/@size_max_maxprice_unit_formatted"/></span><iaixsl:value-of select="$var_net_prices_search"/>
															</iaixsl:when>
															<iaixsl:otherwise>
																<span><iaixsl:value-of select="sizes/prices/@size_min_maxprice_net_formatted"/></span><b> - </b><span><iaixsl:value-of select="sizes/prices/@size_max_maxprice_net_formatted"/></span><iaixsl:value-of select="$var_net_prices_search"/>
															</iaixsl:otherwise>
														</iaixsl:choose>
													</del>
												</iaixsl:if>
												<strong class="price">
													
													<iaixsl:choose>
														<iaixsl:when test="sizes/prices/@minprice_unit_formatted">
															<iaixsl:value-of select="sizes/prices/@minprice_unit_formatted"/>
														</iaixsl:when>
														<iaixsl:otherwise>
															<iaixsl:value-of select="sizes/prices/@minprice_net_formatted"/>
														</iaixsl:otherwise>
													</iaixsl:choose>
													 - 
													<iaixsl:choose>
														<iaixsl:when test="sizes/prices/@maxprice_unit_formatted">
															<iaixsl:value-of select="sizes/prices/@maxprice_unit_formatted"/>
														</iaixsl:when>
														<iaixsl:otherwise>
															<iaixsl:value-of select="sizes/prices/@maxprice_net_formatted"/>
														</iaixsl:otherwise>
													</iaixsl:choose>

													<iaixsl:if test="sizes/prices/@minprice_unit_formatted">
														<iaixsl:text> / </iaixsl:text><iaixsl:value-of select="sizes/@unit_sellby"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="sizes/@unit"/>
													</iaixsl:if>
													<span class="price__net"><iaixsl:value-of select="$var_net_prices_search"/></span>
												</strong>
											</iaixsl:when>
											<iaixsl:when test="price/@price_net = 0 and not(/shop/basket/@wholesaler = 'true') and $var_b2b_search and not($var_b2b_search = '')">
												<a class="price --hurt">
													<iaixsl:attribute name="title"><iaixsl:value-of select="$var_b2b_search"/></iaixsl:attribute>
													<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/signin/@url"/></iaixsl:attribute>
													<iaixsl:value-of select="$var_b2b_search"/>
												</a>
											</iaixsl:when>

											<iaixsl:when test="(sizes/prices/@minprice_net = 0) and not(price/@points)">
												<a class="price --phone">
													<iaixsl:attribute name="title">Kliknij, by przejść do formularza kontaktu</iaixsl:attribute>
													<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/signin/@url"/></iaixsl:attribute>
													Cena na telefon
												</a>
											</iaixsl:when>
											<iaixsl:otherwise>
												<iaixsl:if test="price/@maxprice_net or price/@maxprice_unit">
													<del class="price --max">
														
														<iaixsl:choose>
															<iaixsl:when test="price/@maxprice_unit_formatted">
																<iaixsl:value-of select="price/@maxprice_unit_formatted"/><iaixsl:value-of select="$var_net_prices_search"/>
															</iaixsl:when>
															<iaixsl:otherwise>
																<iaixsl:value-of select="price/@maxprice_net_formatted"/><iaixsl:value-of select="$var_net_prices_search"/>
															</iaixsl:otherwise>
														</iaixsl:choose>
													</del>
												</iaixsl:if>
												<strong class="price">
													<iaixsl:choose>
														<iaixsl:when test="price/@price_unit_net_formatted">
															<iaixsl:value-of select="price/@price_unit_net_formatted"/><iaixsl:text> / </iaixsl:text><iaixsl:value-of select="sizes/@unit_sellby"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="sizes/@unit"/>
														</iaixsl:when>
														<iaixsl:otherwise>
															<iaixsl:value-of select="price/@price_net_formatted"/>
														</iaixsl:otherwise>
													</iaixsl:choose>
													<span class="price__net"><iaixsl:value-of select="$var_net_prices_search"/></span>
												</strong>

												<iaixsl:if test="price/@points">
													<span class="price --points"><iaixsl:value-of select="price/@points"/><span class="currency"> PKT</span></span>
												</iaixsl:if>
											</iaixsl:otherwise>
										</iaixsl:choose>

										
										<iaixsl:if test="price/@unit_converted_price_net_formatted"><small class="price --convert"><iaixsl:value-of select="price/@unit_converted_price_net_formatted"/><iaixsl:text> / </iaixsl:text><iaixsl:value-of select="price/@unit_converted_format"/><iaixsl:value-of select="$var_net_prices_search"/></small>
										</iaixsl:if>
									</div>
								</iaixsl:when>
								
								<iaixsl:otherwise>
									<div class="product__prices">
										<iaixsl:choose>
											<iaixsl:when test="(sizes/prices/@minprice_formatted != sizes/prices/@maxprice_formatted) or (sizes/prices/@minprice_unit_formatted != sizes/prices/@maxprice_unit_formatted)">
												<iaixsl:if test="(sizes/prices/@size_min_maxprice_formatted != sizes/prices/@size_max_maxprice_formatted) or (sizes/prices/@size_min_maxprice_unit_formatted != sizes/prices/@size_max_maxprice_unit_formatted)">
													<del class="price --max">
														<iaixsl:choose>
															<iaixsl:when test="sizes/prices/@size_min_maxprice_unit_formatted">
																<span><iaixsl:value-of select="sizes/prices/@size_min_maxprice_unit_formatted"/></span><b> - </b><span><iaixsl:value-of select="sizes/prices/@size_max_maxprice_unit_formatted"/></span>
															</iaixsl:when>
															<iaixsl:otherwise>
																<span><iaixsl:value-of select="sizes/prices/@size_min_maxprice_formatted"/></span><b> - </b><span><iaixsl:value-of select="sizes/prices/@size_max_maxprice_formatted"/></span>
															</iaixsl:otherwise>
														</iaixsl:choose>
													</del>
												</iaixsl:if>
												<strong class="price">
													
													<iaixsl:choose>
														<iaixsl:when test="sizes/prices/@minprice_unit_formatted">
															<iaixsl:value-of select="sizes/prices/@minprice_unit_formatted"/>
														</iaixsl:when>
														<iaixsl:otherwise>
															<iaixsl:value-of select="sizes/prices/@minprice_formatted"/>
														</iaixsl:otherwise>
													</iaixsl:choose>
													 - 
													<iaixsl:choose>
														<iaixsl:when test="sizes/prices/@maxprice_unit_formatted">
															<iaixsl:value-of select="sizes/prices/@maxprice_unit_formatted"/>
														</iaixsl:when>
														<iaixsl:otherwise>
															<iaixsl:value-of select="sizes/prices/@maxprice_formatted"/>
														</iaixsl:otherwise>
													</iaixsl:choose>

													<iaixsl:if test="sizes/prices/@minprice_unit_formatted">
														<iaixsl:text> / </iaixsl:text><iaixsl:value-of select="sizes/@unit_sellby"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="sizes/@unit"/>
													</iaixsl:if>
												</strong>
											</iaixsl:when>

											<iaixsl:when test="(sizes/prices/@minprice = 0) and not(price/@points)">
												<a class="price --phone">
													<iaixsl:attribute name="title">Kliknij, by przejść do formularza kontaktu</iaixsl:attribute>
													<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/signin/@url"/></iaixsl:attribute>
													Cena na telefon
												</a>
											</iaixsl:when>
											<iaixsl:otherwise>
												<iaixsl:if test="price/@maxprice or price/@maxprice_unit">
													<del class="price --max">
														
														<iaixsl:choose>
															<iaixsl:when test="price/@maxprice_unit_formatted">
																<iaixsl:value-of select="price/@maxprice_unit_formatted"/>
															</iaixsl:when>
															<iaixsl:otherwise>
																<iaixsl:value-of select="price/@maxprice_formatted"/>
															</iaixsl:otherwise>
														</iaixsl:choose>
													</del>
												</iaixsl:if>
												<strong class="price">
													<iaixsl:choose>
														<iaixsl:when test="price/@price_unit_formatted">
															<iaixsl:value-of select="price/@price_unit_formatted"/><iaixsl:text> / </iaixsl:text><iaixsl:value-of select="sizes/@unit_sellby"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="sizes/@unit"/>
														</iaixsl:when>
														<iaixsl:otherwise>
															<iaixsl:value-of select="sizes/prices/@minprice_formatted"/>
															<iaixsl:text> / </iaixsl:text><iaixsl:value-of select="sizes/@unit"/>
														</iaixsl:otherwise>
													</iaixsl:choose>
												</strong>

												<iaixsl:if test="price/@points">
													<span class="price --points"><iaixsl:value-of select="price/@points"/><span class="currency"> PKT</span></span>
												</iaixsl:if>
											</iaixsl:otherwise>
										</iaixsl:choose>

										
										<iaixsl:if test="price/@unit_converted_price_formatted"><small class="price --convert"><iaixsl:value-of select="price/@unit_converted_price_formatted"/><iaixsl:text> / </iaixsl:text><iaixsl:value-of select="price/@unit_converted_format"/></small>
										</iaixsl:if>
									</div>
								</iaixsl:otherwise>
							</iaixsl:choose>

							
							<div class="product__compare">
								<iaixsl:if test="/shop/compare/@active = 'y' and $addcompare_txt">
									<iaixsl:attribute name="class">product__compare --has-child</iaixsl:attribute>

									<iaixsl:choose>
										<iaixsl:when test="@id = /shop/compare/product/@id">
											<a class="product__compare_item --remove btn" rel="nofollow">
												<iaixsl:attribute name="href"><iaixsl:choose><iaixsl:when test="/shop/action/settings/@url"><iaixsl:value-of select="/shop/action/settings/@url"/></iaixsl:when><iaixsl:otherwise>settings.php</iaixsl:otherwise></iaixsl:choose>?comparers=remove&amp;product=<iaixsl:value-of select="@id"/></iaixsl:attribute>
												<iaixsl:attribute name="title">Kliknij, aby usunąć produkt z porównywarki</iaixsl:attribute>
												- Usuń z porównania
											</a>
										</iaixsl:when>
										<iaixsl:otherwise>
											<a class="product__compare_item --add btn" rel="nofollow">
												<iaixsl:attribute name="href"><iaixsl:choose><iaixsl:when test="/shop/action/settings/@url"><iaixsl:value-of select="/shop/action/settings/@url"/></iaixsl:when><iaixsl:otherwise>settings.php</iaixsl:otherwise></iaixsl:choose>?comparers=add&amp;product=<iaixsl:value-of select="@id"/></iaixsl:attribute>
												<iaixsl:attribute name="title">Kliknij, aby dodać produkt do porównania</iaixsl:attribute>
												<iaixsl:value-of select="$addcompare_txt"/>
											</a>
										</iaixsl:otherwise>
									</iaixsl:choose>
								</iaixsl:if>
							</div>

                            
							<iaixsl:if test="not($versions_search)">
                                <iaixsl:if test="count(versions/version/@gfx_small) > 1 or (not(sizes/size/@type='uniw'))">
                                    <div class="product__details py-1 px-3">
                                        <iaixsl:if test="not(sizes/size/@type='uniw')">
                                            <div class="product__sizes mb-1">
                                                <label class="product__size --label">Rozmiar:</label>
                                                <iaixsl:for-each select="sizes/size">
                                                    <span class="product__size"><iaixsl:value-of select="@description"/></span>
                                                </iaixsl:for-each>
                                            </div>
                                        </iaixsl:if>

                                        <iaixsl:if test="count(versions/version/@gfx_small) > 1">
                                            <div class="product__versions mx-n1">
                                                <iaixsl:for-each select="versions/version">
                                                    <a class="product__version">
                                                        <iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
                                                        <img>
                                                            <iaixsl:attribute name="src"><iaixsl:value-of select="@gfx_small"/></iaixsl:attribute>
                                                            <iaixsl:attribute name="alt"><iaixsl:value-of select="@name"/></iaixsl:attribute>
                                                        </img>
                                                    </a>
                                                </iaixsl:for-each>
                                            </div>
                                        </iaixsl:if>
                                    </div>
                                </iaixsl:if>
                            </iaixsl:if>

							
							<iaixsl:if test="not($param_search)">
								<iaixsl:if test="traits/trait[not(@gfx)] and traits/trait[not(contains(@groupdescription, 'gs1:'))]">
									<div class="product__traits d-none d-md-block mt-2">
										<ul>
											<iaixsl:for-each select="traits/trait[not(@gfx)]">
												<iaixsl:if test="not(@groupid = preceding-sibling::trait/@groupid) and not(contains(@groupdescription, 'gs1:'))">
													<li class="trait">
														<span class="trait__name"><iaixsl:value-of select="@groupdescription"/>: </span>
														<div class="trait__values">
															<a class="trait__value"><iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute><iaixsl:value-of select="@traitdescription"/></a>
															<iaixsl:if test="@groupid = following-sibling::trait/@groupid">
																<iaixsl:variable name="temporaryGroup"><iaixsl:value-of select="@groupid"/></iaixsl:variable><iaixsl:for-each select="following-sibling::trait[(@groupid = $temporaryGroup)]">, <a class="trait__value"><iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute><iaixsl:value-of select="@traitdescription"/></a></iaixsl:for-each>
															</iaixsl:if>
														</div>
													</li>
												</iaixsl:if>
											</iaixsl:for-each>
										</ul>
									</div>
								</iaixsl:if>
							</iaixsl:if>

							
							<iaixsl:if test="not($param_search_gfx)">
								<iaixsl:if test="traits/trait[@gfx2]">
									<div class="product__traits --gfx my-2 mb-md-0">
										<ul>
											<iaixsl:for-each select="traits/trait[@gfx2]">
												<li class="trait">
													<a class="trait__gfx">
														<iaixsl:attribute name="title"><iaixsl:value-of select="@groupdescription"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="@traitdescription"/></iaixsl:attribute>
														<iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
														<img class="trait__img">
															<iaixsl:attribute name="src"><iaixsl:value-of select="@gfx2"/></iaixsl:attribute>
															<iaixsl:attribute name="alt"><iaixsl:value-of select="@traitdescription"/></iaixsl:attribute>
														</img>
													</a>
												</li>
											</iaixsl:for-each>
										</ul>
									</div>
								</iaixsl:if>
							</iaixsl:if>
						</div>
					</iaixsl:for-each>
				</section>
			</iaixsl:if>
			<iaixsl:if test="/shop/page/search_params/*"> </iaixsl:if>
		<!--Lista produktów jako galeria (search_gallery, 108230.1)-->
            <iaixsl:if test="/shop/page/products/display_mode/@active = 'gallery'">

                <iaixsl:variable name="count_unit"> szt.</iaixsl:variable>
                
                <iaixsl:variable name="setProductCount_search">true</iaixsl:variable>
                
                <iaixsl:variable name="sizes_hide_on">3</iaixsl:variable>
                
                <iaixsl:variable name="param_search_list"></iaixsl:variable>
                
                <iaixsl:variable name="param_search_list_gfx"></iaixsl:variable>
                
                <iaixsl:variable name="infinitiSymbol"><font style="font-size: 1.67em;">∞</font></iaixsl:variable>

                <div id="search-list">
                    <form action="/basketchange.php?type=multiproduct" method="post">

                        <iaixsl:for-each select="/shop/page/products/product">
                            <iaixsl:variable name="product_position"><iaixsl:value-of select="position()"/></iaixsl:variable>

                            <div>
                                <iaixsl:attribute name="class">
                                    product-wrapper clearfix 

                                    <iaixsl:if test="/shop/page/@ecommerce_module_class">
                                        <iaixsl:variable name="ecommerce_module_separator">{productId}</iaixsl:variable>

                                        <iaixsl:variable name="ecommerce_module_class_before"><iaixsl:value-of select="substring-before(/shop/page/@ecommerce_module_class, $ecommerce_module_separator)"/></iaixsl:variable>
                                        <iaixsl:variable name="ecommerce_module_class_after"><iaixsl:value-of select="substring-after(/shop/page/@ecommerce_module_class, $ecommerce_module_separator)"/></iaixsl:variable>

                                         <iaixsl:value-of select="$ecommerce_module_class_before"/><iaixsl:value-of select="/shop/page/projector/product/@id"/><iaixsl:value-of select="$ecommerce_module_class_after"/>
                                    </iaixsl:if>
                                </iaixsl:attribute>
                                <iaixsl:attribute name="data-id"><iaixsl:value-of select="@id"/></iaixsl:attribute>



                                <div class="product-wrapper-top">

                                    <a class="product-icon">
                                        <iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
                                        <img class="b-lazy" src="/gfx/pol/loader.gif?r=1600678639">
                                            <iaixsl:attribute name="data-src-small"><iaixsl:value-of disable-output-escaping="yes" select="icon_small"/></iaixsl:attribute>
                                            <iaixsl:attribute name="data-src"><iaixsl:value-of disable-output-escaping="yes" select="icon_small"/></iaixsl:attribute>
                                            <iaixsl:attribute name="alt"><iaixsl:value-of disable-output-escaping="yes" select="name"/></iaixsl:attribute>
                                        </img>
                                    </a>

                                    <div class="product-info">

                                        <h3>
                                            <a class="product-name">
                                                <iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
                                                <iaixsl:if test="@promo or @new or @bestseller or @discount or @distinguished">
                                                    <strong class="label_icons">

                                                        <iaixsl:if test="@promo">
                                                            <span class="label promo">
                                                                W promocji
                                                            </span>
                                                        </iaixsl:if>
                                                        <iaixsl:if test="@new">
                                                            <span class="label newproducts">
                                                                Nowość
                                                            </span>
                                                        </iaixsl:if>
                                                        <iaixsl:choose>
                                                            <iaixsl:when test="@promo and @new">
                                                            </iaixsl:when>
                                                            <iaixsl:when test="@promo or @new">
                                                                <iaixsl:choose>
                                                                    <iaixsl:when test="@bestseller">
                                                                        <span class="label bestseller">
                                                                            Nasz bestseller
                                                                        </span>
                                                                    </iaixsl:when>
                                                                    <iaixsl:when test="@discount">
                                                                        <span class="label discount">
                                                                            Przecena
                                                                        </span>
                                                                    </iaixsl:when>
                                                                    <iaixsl:when test="@distinguished">
                                                                        <span class="label distinguished">
                                                                            Polecany
                                                                        </span>
                                                                    </iaixsl:when>
                                                                </iaixsl:choose>
                                                            </iaixsl:when>
                                                            <iaixsl:otherwise>
                                                                <iaixsl:if test="@bestseller">
                                                                    <span class="label bestseller">
                                                                        Nasz bestseller
                                                                    </span>
                                                                </iaixsl:if>
                                                                <iaixsl:if test="@discount">
                                                                    <span class="label discount">
                                                                        Przecena
                                                                    </span>
                                                                </iaixsl:if>
                                                                <iaixsl:if test="@distinguished and not(@bestseller and @discount)">
                                                                    <span class="label distinguished">
                                                                        Polecany
                                                                    </span>
                                                                </iaixsl:if>
                                                            </iaixsl:otherwise>
                                                        </iaixsl:choose>


                                                    </strong>
                                                </iaixsl:if>
                                                <span><iaixsl:value-of disable-output-escaping="yes" select="name"/></span>
                                            </a>
                                        </h3>

                                        <div class="info-item-wrapper">
                                            
                                            <iaixsl:if test="(firm/@name) and not(firm/@name = '') and (firm/@productslink)">
                                                <div class="info-item">
                                                    <span class="info-label">Producent: </span>
                                                    <a class="info-value">
                                                        <iaixsl:attribute name="href"><iaixsl:value-of select="firm/@productslink"/></iaixsl:attribute>
                                                        <iaixsl:attribute name="title">Zobacz produkty producenta  <iaixsl:value-of select="firm/@name"/></iaixsl:attribute>
                                                        <iaixsl:value-of select="firm/@name"/>
                                                    </a>
                                                </div>
                                            </iaixsl:if>

                                            
                                            <iaixsl:if test="(@barcode) and not(@barcode = '')">
                                                <div class="info-item">
                                                    <span class="info-label">Kod produktu: </span>
                                                    <span class="info-value"><iaixsl:value-of select="@barcode"/></span>
                                                </div>
                                            </iaixsl:if>

                                            <iaixsl:if test="price/@unit_converted_price_net_formatted">
                                                <div class="info-item">
                                                    <span class="info-label">Cena zasadnicza: </span>
                                                    <span class="info-value"><iaixsl:value-of select="price/@unit_converted_price_net_formatted"/>/<iaixsl:value-of select="price/@unit_converted_format"/><small> netto </small></span>
                                                </div>
                                            </iaixsl:if>

                                            
                                            <iaixsl:if test="(price/@srp_net) and not(price/@srp_net = '')">
                                                <div class="info-item">
                                                    <span class="info-label">Sugerowana cena detaliczna: </span>
                                                    <span class="info-value"><iaixsl:value-of select="price/@srp_net_formatted"/><small> netto </small></span>
                                                </div>
                                            </iaixsl:if>

                                            
                                            <iaixsl:if test="not(sizes/@unit_sellby = '1')">
                                                <div class="info-item">
                                                    <span class="info-label">Sprzedawane po: </span>
                                                    <span class="info-value"><iaixsl:value-of select="sizes/@unit_sellby"/><iaixsl:value-of select="sizes/@unit"/></span>
                                                </div>
                                            </iaixsl:if>
                                        </div>
                                    </div>

                                    <div class="search_list_buttons">
                                        <iaixsl:if test="/shop/compare/@active = 'y' and not(price/@value = 0 and not(/shop/basket/@wholesaler = 'true'))">
                                            <a class="btn_compare btn --outline --icon-right icon-plus">
                                                <iaixsl:choose>
                                                    <iaixsl:when test="@id = /shop/compare/product/@id">
                                                        <iaixsl:attribute name="data-active">true</iaixsl:attribute>
                                                        <iaixsl:attribute name="href">/settings.php?comparers=remove&amp;product=<iaixsl:value-of select="@id"/></iaixsl:attribute>
                                                        <iaixsl:attribute name="title">Kliknij, aby usunąć produkt z porównywarki</iaixsl:attribute>
                                                        Usuń z porównania
                                                    </iaixsl:when>
                                                    <iaixsl:otherwise>
                                                        <iaixsl:attribute name="href">/settings.php?comparers=add&amp;product=<iaixsl:value-of select="@id"/></iaixsl:attribute>
                                                        <iaixsl:attribute name="title">Kliknij, aby dodać produkt do porównania</iaixsl:attribute>
                                                        Dodaj do porównania
                                                    </iaixsl:otherwise>
                                                </iaixsl:choose>

                                            </a>
                                        </iaixsl:if>
                                        <iaixsl:if test="traits/trait[not(@gfx)] or traits/trait[@gfx2]">
                                            <a href="#show_specification" class="btn_specification btn --outline --icon-right icon-angle-down">
                                                <iaixsl:attribute name="data-toggleTxt">Specyfikacja </iaixsl:attribute>
                                                Specyfikacja 
                                            </a>
                                        </iaixsl:if>
                                    </div>

                                      <div class="search-sizes">
                                    <table class="search-sizes">
                                        <tbody>
                                            <iaixsl:if test="price/@value != 0 or /shop/basket/@wholesaler = 'true'">
                                                <iaixsl:for-each select="sizes/size">
                                                    <tr>
                                                        <iaixsl:variable name="size_type"><iaixsl:value-of select="@type"/></iaixsl:variable>
                                                        <iaixsl:attribute name="data-size_type"><iaixsl:value-of select="$size_type"/></iaixsl:attribute>

                                                        <iaixsl:if test="position() > $sizes_hide_on">
                                                            <iaixsl:attribute name="class">hide-size</iaixsl:attribute>
                                                        </iaixsl:if>

                                                        
                                                        <td class="search_sizename">
                                                            <iaixsl:choose>
                                                                <iaixsl:when test="@type = 'uniw'">
                                                                    <iaixsl:attribute name="class">search_sizename_uniw</iaixsl:attribute>
                                                                </iaixsl:when>
                                                                <iaixsl:otherwise>
                                                                    <iaixsl:value-of select="@description"/>
                                                                </iaixsl:otherwise>
                                                            </iaixsl:choose>
                                                        </td>
                                                        
                                                        <iaixsl:variable name="prod_id"><iaixsl:value-of select="../../@id"/></iaixsl:variable>
                                                        <iaixsl:variable name="prod_size"><iaixsl:value-of select="@type"/></iaixsl:variable>

                                                        
                                                        
                                                        <td class="search-price">
                                                            <iaixsl:choose>

                                                                
                                                                <iaixsl:when test="(price/@value = 0) and not(price/@points)">
                                                                    <a class="price" href="/contact.php">
                                                                        <iaixsl:attribute name="title">Kliknij, by przejść do formularza kontaktu</iaixsl:attribute>
                                                                        Cena na telefon
                                                                    </a>
                                                                </iaixsl:when>

                                                                
                                                                <iaixsl:when test="(price/@value = 0) and (price/@points)">
                                                                    <div class="price_search_points">
                                                                        <label class="search_forpoints">
                                                                            <input type="checkbox" value="1">
                                                                                <iaixsl:attribute name="name">forpoints[<iaixsl:value-of select="$product_position"/><iaixsl:value-of select="position()"/>]</iaixsl:attribute>
                                                                            </input><span> kup za <iaixsl:value-of select="price/@points"/> pkt.</span>
                                                                        </label>
                                                                    </div>
                                                                </iaixsl:when>

                                                                
                                                                <iaixsl:otherwise>
                                                                    <iaixsl:if test="price/@maxprice_net_formatted">
                                                                        <del class="max-price">
                                                                            <iaixsl:choose>
                                                                                <iaixsl:when test="price/@maxprice_unit_net_formatted">
                                                                                    <iaixsl:value-of select="price/@maxprice_unit_net_formatted"/>
                                                                                </iaixsl:when>
                                                                                <iaixsl:otherwise>
                                                                                    <iaixsl:value-of select="price/@maxprice_net_formatted"/>
                                                                                </iaixsl:otherwise>
                                                                            </iaixsl:choose>
                                                                        </del>
                                                                    </iaixsl:if>
                                                                    <iaixsl:if test="price/@price_net_formatted">
                                                                        <strong class="price-net">
                                                                            <iaixsl:choose>
                                                                                <iaixsl:when test="price/@price_unit_net_formatted">
                                                                                    <iaixsl:value-of select="price/@price_unit_net_formatted"/><iaixsl:text> / </iaixsl:text><iaixsl:value-of select="sizes/@unit_sellby"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="sizes/@unit"/>
                                                                                </iaixsl:when>
                                                                                <iaixsl:otherwise>
                                                                                    <iaixsl:value-of select="price/@price_net_formatted"/>
                                                                                </iaixsl:otherwise>
                                                                            </iaixsl:choose>
                                                                            <small> netto </small></strong>
                                                                    </iaixsl:if>
                                                                    <iaixsl:if test="price/@price_formatted and /shop/client_data/@uses_vat = 'true'">
                                                                        <span class="price"> ( <iaixsl:choose><iaixsl:when test="price/@price_unit_formatted"><iaixsl:value-of select="price/@price_unit_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="price/@price_formatted"/></iaixsl:otherwise></iaixsl:choose>
                                                                        <small> brutto </small>)</span>
                                                                    </iaixsl:if>
                                                                    <iaixsl:if test="price/@price_net_formatted">
                                                                         
                                                                        <a class="shipping_info" target="blank" href="#shipping_info">
                                                                            <iaixsl:attribute name="title">Sprawdź czasy i koszty wysyłki</iaixsl:attribute>
                                                                            <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/shipping_cost/@url"/></iaixsl:attribute>

                                                                            <iaixsl:attribute name="data-product-id"><iaixsl:value-of select="$prod_id"/></iaixsl:attribute>
                                                                            <iaixsl:attribute name="data-product-size"><iaixsl:value-of select="$prod_size"/></iaixsl:attribute>
                                                                            <iaixsl:attribute name="data-product-quantity">
                                                                                <iaixsl:choose>
                                                                                    <iaixsl:when test="/shop/basket/product[@id = $prod_id]/size[@type = $prod_size]">
                                                                                        <iaixsl:value-of select="/shop/basket/product[@id = $prod_id]/size[@type = $prod_size]/@ordered"/>
                                                                                    </iaixsl:when>
                                                                                    <iaixsl:otherwise>1</iaixsl:otherwise>
                                                                                </iaixsl:choose>
                                                                            </iaixsl:attribute>
                                                                             koszty wysyłki
                                                                        </a>
                                                                    </iaixsl:if>

                                                                    <iaixsl:if test="price/@points">
                                                                        <div class="price_search_points">
                                                                            <span>lub</span><label class="search_forpoints">
                                                                            <input type="checkbox" value="1">
                                                                                <iaixsl:attribute name="name">forpoints[<iaixsl:value-of select="$product_position"/><iaixsl:value-of select="position()"/>]</iaixsl:attribute>
                                                                            </input><span> kup za <iaixsl:value-of select="price/@points"/> pkt.</span>
                                                                        </label>
                                                                        </div>
                                                                    </iaixsl:if>

                                                                    
                                                                    <iaixsl:if test="((@amount_wholesale) and not(@amount = @amount_wholesale))">
                                                                        <iaixsl:choose>
                                                                            <iaixsl:when test="sizes/size/@amount_wholesale = 0">
                                                                                <div class="price_detail_info">(Produkt dostępny tylko w cenie detalicznej)</div>
                                                                            </iaixsl:when>
                                                                            <iaixsl:otherwise>
                                                                                <div class="price_detail_info">
                                                                                    (powyżej 
                                                                                    <iaixsl:value-of select="@amount_wholesale"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="../@unit"/>
                                                                                     cena detal. 
                                                                                    <img class="search_detail_info_tip" src="/gfx/pol/help_tip.png?r=1600678639"/>)
                                                                                    <div class="tooltipContent">
                                                                                        Powyżej 
                                                                                        <span><iaixsl:value-of select="@amount_wholesale"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="../@unit"/></span>
                                                                                         cena netto za każdą kolejną zakupioną <iaixsl:value-of select="../@unit"/>
                                                                                         wyniesie 
                                                                                        <span><iaixsl:value-of select="price/@detalprice_net_formatted"/></span>
                                                                                    </div>
                                                                                </div>
                                                                            </iaixsl:otherwise>
                                                                        </iaixsl:choose>
                                                                    </iaixsl:if>
                                                                </iaixsl:otherwise>
                                                            </iaixsl:choose>
                                                        </td>

                                                        
                                                        <td class="search_rebate">
                                                            <iaixsl:if test="not((price/@value = 0) and (price/@points))">
                                                                <iaixsl:if test="price/rebateNumber/rebate">
                                                                    <div class="rabat btn --icon-left icon-plus showTip">Rabat </div>
                                                                    <div class="tooltipContent">
                                                                        <iaixsl:for-each select="price/rebateNumber/rebate">
                                                                            <div>
                                                                                Od
                                                                                <strong>
                                                                                    <iaixsl:value-of select="@threshold"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="../../../../@unit"/>
                                                                                </strong>
                                                                                
                                                                                <strong>

                                                                                    <iaixsl:value-of select="@price_net_formatted"/>

                                                                                </strong>
                                                                                - rabat
                                                                                <strong>
                                                                                    <iaixsl:value-of select="@value"/>%
                                                                                </strong>
                                                                            </div>
                                                                        </iaixsl:for-each>
                                                                    </div>
                                                                </iaixsl:if>
                                                            </iaixsl:if>
                                                        </td>

                                                        
                                                        <td class="search_instock">
                                                            <iaixsl:if test="(availability/@status_gfx) and not(availability/@status_gfx = '') and (availability/@visible = 'y')">
                                                                <img class="search_instock_icon">
                                                                    <iaixsl:attribute name="src"><iaixsl:value-of select="availability/@status_gfx"/></iaixsl:attribute>
                                                                    <iaixsl:attribute name="alt"><iaixsl:value-of select="availability/@status_description"/></iaixsl:attribute>
                                                                    <iaixsl:attribute name="title"><iaixsl:value-of select="availability/@status_description"/></iaixsl:attribute>
                                                                </img>
                                                            </iaixsl:if>
                                                            <iaixsl:choose>
                                                                <iaixsl:when test="$infinitiSymbol and @amount">
                                                                    <span>
                                                                        <iaixsl:choose>
                                                                            <iaixsl:when test="/shop/order_edit/@order_id and /shop/basket/product[@id = $prod_id]">
                                                                                <iaixsl:choose>
                                                                                    <iaixsl:when test="@amount = -1">
                                                                                        <font style="font-size: 1.67em;">∞</font><iaixsl:text>&#160;</iaixsl:text><iaixsl:value-of select="../@unit"/>
                                                                                    </iaixsl:when>
                                                                                    <iaixsl:otherwise>
                                                                                        
                                                                                        <iaixsl:value-of select="floor(@amount) + floor(/shop/basket/product[@id = $prod_id]/size[@type = $prod_size]/@ordered)"/><iaixsl:text>&#160;</iaixsl:text><iaixsl:value-of select="../@unit"/>
                                                                                    </iaixsl:otherwise>
                                                                                </iaixsl:choose>
                                                                            </iaixsl:when>
                                                                            <iaixsl:otherwise>
                                                                                <iaixsl:choose>
                                                                                    <iaixsl:when test="@amount = 0">
                                                                                        Brak
                                                                                    </iaixsl:when>
                                                                                    <iaixsl:when test="@amount = -1">
                                                                                        <font style="font-size: 1.67em;">∞</font><iaixsl:text>&#160;</iaixsl:text><iaixsl:value-of select="../@unit"/>
                                                                                    </iaixsl:when>
                                                                                    <iaixsl:otherwise>
                                                                                        <iaixsl:value-of select="@amount"/><iaixsl:text>&#160;</iaixsl:text><iaixsl:value-of select="../@unit"/>
                                                                                    </iaixsl:otherwise>
                                                                                </iaixsl:choose>
                                                                            </iaixsl:otherwise>
                                                                        </iaixsl:choose>
                                                                    </span>
                                                                </iaixsl:when>
                                                                <iaixsl:otherwise>
                                                                    <iaixsl:if test="availability/@status_description and availability/@status_description != ''">
                                                                        <span><iaixsl:value-of select="availability/@status_description"/></span>
                                                                    </iaixsl:if>
                                                                </iaixsl:otherwise>
                                                            </iaixsl:choose>
                                                        </td>

                                                        <td class="search_num">
                                                            <iaixsl:if test="../../@product_type = 'product_virtual'">
                                                                <iaixsl:attribute name="class">search_num product_virtual</iaixsl:attribute>
                                                            </iaixsl:if>

                                                            <iaixsl:if test="not(../../@product_type = 'product_virtual')">
                                                                <span class="btn --outline n65081_down">
                                                                    <iaixsl:if test="((number(price/@value) = 0) and not(price/@points)) or (@amount = 0)">
                                                                        <iaixsl:attribute name="data-disabled">true</iaixsl:attribute>
                                                                    </iaixsl:if>
                                                                    <i class="icon-minus"></i>
                                                                </span>
                                                            </iaixsl:if>
                                                            <span class="quantity">
                                                                <iaixsl:choose>
                                                                    <iaixsl:when test="../../@product_type = 'product_virtual'">
                                                                        <input class="n65081" type="hidden">

                                                                            <iaixsl:attribute name="class">n65081 quantity_<iaixsl:value-of select="../../@id"/>_<iaixsl:value-of select="@type"/></iaixsl:attribute>

                                                                            <iaixsl:attribute name="name">set_quantity[<iaixsl:value-of select="$product_position"/><iaixsl:value-of select="position()"/>]</iaixsl:attribute>
                                                                            <iaixsl:attribute name="data-unit_sellby"><iaixsl:value-of select="../@unit_sellby"/></iaixsl:attribute>
                                                                            <iaixsl:attribute name="data-unit_precision"><iaixsl:value-of select="../@unit_precision"/></iaixsl:attribute>
                                                                            <iaixsl:attribute name="data-unit"><iaixsl:value-of select="../@unit"/></iaixsl:attribute>

                                                                            <iaixsl:choose>
                                                                                <iaixsl:when test="/shop/order_edit/@order_id and /shop/basket/product[@id = $prod_id]">
                                                                                    <iaixsl:attribute name="data-amount"><iaixsl:value-of select="floor(@amount) + floor(/shop/basket/product[@id = $prod_id]/size[@type = $prod_size]/@ordered)"/></iaixsl:attribute>
                                                                                </iaixsl:when>
                                                                                <iaixsl:otherwise>
                                                                                    <iaixsl:attribute name="data-amount"><iaixsl:value-of select="@amount"/></iaixsl:attribute>
                                                                                </iaixsl:otherwise>
                                                                            </iaixsl:choose>

                                                                            <iaixsl:if test="../../order_quantity_range/max_quantity_per_order">
                                                                                <iaixsl:attribute name="data-max_q"><iaixsl:value-of select="../../order_quantity_range/max_quantity_per_order"/></iaixsl:attribute>
                                                                            </iaixsl:if>
                                                                            <iaixsl:if test="../../order_quantity_range/max_size_quantity_per_order">
                                                                                <iaixsl:attribute name="data-max_s"><iaixsl:value-of select="../../order_quantity_range/max_size_quantity_per_order"/></iaixsl:attribute>
                                                                            </iaixsl:if>
                                                                            <iaixsl:if test="../../order_quantity_range/min_quantity_per_order">
                                                                                <iaixsl:attribute name="data-min_q"><iaixsl:value-of select="../../order_quantity_range/min_quantity_per_order"/></iaixsl:attribute>
                                                                            </iaixsl:if>
                                                                            <iaixsl:if test="../../order_quantity_range/min_size_quantity_per_order">
                                                                                <iaixsl:attribute name="data-min_s"><iaixsl:value-of select="../../order_quantity_range/min_size_quantity_per_order"/></iaixsl:attribute>
                                                                            </iaixsl:if>

                                                                            <iaixsl:if test="((number(price/@value) = 0) and not(price/@points)) or (@amount = 0)">
                                                                                <iaixsl:attribute name="disabled">disabled</iaixsl:attribute>
                                                                                <iaixsl:attribute name="class">n65081 disabled quantity_<iaixsl:value-of select="../../@id"/>_<iaixsl:value-of select="@type"/></iaixsl:attribute>
                                                                            </iaixsl:if>

                                                                            <iaixsl:if test="(../../@product_type ='product_bundle') and (../../bundled/product/sizes/size/@type !=  'uniw')">
                                                                                <iaixsl:attribute name="disabled">disabled</iaixsl:attribute>
                                                                                <iaixsl:attribute name="class">n65081 disabled quantity_<iaixsl:value-of select="../../@id"/>_<iaixsl:value-of select="@type"/></iaixsl:attribute>
                                                                            </iaixsl:if>

                                                                            <iaixsl:attribute name="value">
                                                                                <iaixsl:choose>
                                                                                    <iaixsl:when test="/shop/basket/product[@id = $prod_id]/size[@type = $prod_size]">
                                                                                        <iaixsl:value-of select="/shop/basket/product[@id = $prod_id]/size[@type = $prod_size]/@ordered"/>
                                                                                    </iaixsl:when>
                                                                                    <iaixsl:otherwise>0</iaixsl:otherwise>
                                                                                </iaixsl:choose>
                                                                            </iaixsl:attribute>
                                                                        </input>

                                                                        <input class="n65081_size" type="hidden">
                                                                            <iaixsl:attribute name="name">size[<iaixsl:value-of select="$product_position"/><iaixsl:value-of select="position()"/>]</iaixsl:attribute>
                                                                            <iaixsl:attribute name="value"><iaixsl:value-of select="@type"/></iaixsl:attribute>
                                                                            <iaixsl:if test="((number(price/@value) = 0) and not(price/@points)) or (@amount = 0)">
                                                                                <iaixsl:attribute name="disabled">disabled</iaixsl:attribute>
                                                                            </iaixsl:if>
                                                                        </input>
                                                                        <input class="n65081_product" type="hidden">
                                                                            <iaixsl:attribute name="name">product[<iaixsl:value-of select="$product_position"/><iaixsl:value-of select="position()"/>]</iaixsl:attribute>
                                                                            <iaixsl:attribute name="value"><iaixsl:value-of select="../../@id"/></iaixsl:attribute>
                                                                            <iaixsl:if test="((number(price/@value) = 0) and not(price/@points)) or (@amount = 0)">
                                                                                <iaixsl:attribute name="disabled">disabled</iaixsl:attribute>
                                                                            </iaixsl:if>
                                                                        </input>
                                                                    </iaixsl:when>
                                                                    <iaixsl:otherwise>
                                                                        <input class="n65081" type="text">

                                                                            <iaixsl:attribute name="class">n65081 quantity_<iaixsl:value-of select="../../@id"/>_<iaixsl:value-of select="@type"/></iaixsl:attribute>

                                                                            <iaixsl:attribute name="name">set_quantity[<iaixsl:value-of select="$product_position"/><iaixsl:value-of select="position()"/>]</iaixsl:attribute>
                                                                            <iaixsl:attribute name="data-unit_sellby"><iaixsl:value-of select="../@unit_sellby"/></iaixsl:attribute>
                                                                            <iaixsl:attribute name="data-unit_precision"><iaixsl:value-of select="../@unit_precision"/></iaixsl:attribute>
                                                                            <iaixsl:attribute name="data-unit"><iaixsl:value-of select="../@unit"/></iaixsl:attribute>

                                                                            <iaixsl:choose>
                                                                                <iaixsl:when test="/shop/order_edit/@order_id and /shop/basket/product[@id = $prod_id]">
                                                                                    <iaixsl:attribute name="data-amount"><iaixsl:value-of select="floor(@amount) + floor(/shop/basket/product[@id = $prod_id]/size[@type = $prod_size]/@ordered)"/></iaixsl:attribute>
                                                                                </iaixsl:when>
                                                                                <iaixsl:otherwise>
                                                                                    <iaixsl:attribute name="data-amount"><iaixsl:value-of select="@amount"/></iaixsl:attribute>
                                                                                </iaixsl:otherwise>
                                                                            </iaixsl:choose>

                                                                            <iaixsl:if test="../../order_quantity_range/max_quantity_per_order">
                                                                                <iaixsl:attribute name="data-max_q"><iaixsl:value-of select="../../order_quantity_range/max_quantity_per_order"/></iaixsl:attribute>
                                                                            </iaixsl:if>
                                                                            <iaixsl:if test="../../order_quantity_range/max_size_quantity_per_order">
                                                                                <iaixsl:attribute name="data-max_s"><iaixsl:value-of select="../../order_quantity_range/max_size_quantity_per_order"/></iaixsl:attribute>
                                                                            </iaixsl:if>
                                                                            <iaixsl:if test="../../order_quantity_range/min_quantity_per_order">
                                                                                <iaixsl:attribute name="data-min_q"><iaixsl:value-of select="../../order_quantity_range/min_quantity_per_order"/></iaixsl:attribute>
                                                                            </iaixsl:if>
                                                                            <iaixsl:if test="../../order_quantity_range/min_size_quantity_per_order">
                                                                                <iaixsl:attribute name="data-min_s"><iaixsl:value-of select="../../order_quantity_range/min_size_quantity_per_order"/></iaixsl:attribute>
                                                                            </iaixsl:if>

                                                                            <iaixsl:if test="((number(price/@value) = 0) and not(price/@points)) or (@amount = 0)">
                                                                                <iaixsl:attribute name="disabled">disabled</iaixsl:attribute>
                                                                                <iaixsl:attribute name="class">n65081 disabled quantity_<iaixsl:value-of select="../../@id"/>_<iaixsl:value-of select="@type"/></iaixsl:attribute>
                                                                            </iaixsl:if>

                                                                            <iaixsl:if test="(../../@product_type ='product_bundle') and (../../bundled/product/sizes/size/@type !=  'uniw')">
                                                                                <iaixsl:attribute name="disabled">disabled</iaixsl:attribute>
                                                                                <iaixsl:attribute name="class">n65081 disabled quantity_<iaixsl:value-of select="../../@id"/>_<iaixsl:value-of select="@type"/></iaixsl:attribute>
                                                                            </iaixsl:if>

                                                                            <iaixsl:attribute name="value">
                                                                                <iaixsl:choose>
                                                                                    <iaixsl:when test="/shop/basket/product[@id = $prod_id]/size[@type = $prod_size]">
                                                                                        <iaixsl:value-of select="/shop/basket/product[@id = $prod_id]/size[@type = $prod_size]/@ordered"/>
                                                                                    </iaixsl:when>
                                                                                    <iaixsl:otherwise>0</iaixsl:otherwise>
                                                                                </iaixsl:choose>
                                                                            </iaixsl:attribute>
                                                                        </input>

                                                                        <input class="n65081_size" type="hidden">
                                                                            <iaixsl:attribute name="name">size[<iaixsl:value-of select="$product_position"/><iaixsl:value-of select="position()"/>]</iaixsl:attribute>
                                                                            <iaixsl:attribute name="value"><iaixsl:value-of select="@type"/></iaixsl:attribute>
                                                                            <iaixsl:if test="((number(price/@value) = 0) and not(price/@points)) or (@amount = 0)">
                                                                                <iaixsl:attribute name="disabled">disabled</iaixsl:attribute>
                                                                            </iaixsl:if>
                                                                        </input>
                                                                        <input class="n65081_product" type="hidden">
                                                                            <iaixsl:attribute name="name">product[<iaixsl:value-of select="$product_position"/><iaixsl:value-of select="position()"/>]</iaixsl:attribute>
                                                                            <iaixsl:attribute name="value"><iaixsl:value-of select="../../@id"/></iaixsl:attribute>
                                                                            <iaixsl:if test="((number(price/@value) = 0) and not(price/@points)) or (@amount = 0)">
                                                                                <iaixsl:attribute name="disabled">disabled</iaixsl:attribute>
                                                                            </iaixsl:if>
                                                                        </input>
                                                                    </iaixsl:otherwise>
                                                                </iaixsl:choose>
                                                            </span>
                                                            <iaixsl:if test="not(../../@product_type = 'product_virtual')">
                                                                <span class="btn --outline n65081_up">
                                                                    <iaixsl:if test="((number(price/@value) = 0) and not(price/@points)) or (@amount = 0)">
                                                                        <iaixsl:attribute name="data-disabled">true</iaixsl:attribute>
                                                                    </iaixsl:if>
                                                                    <i class="icon-plus"></i>
                                                                </span>
                                                            </iaixsl:if>
                                                        </td>

                                                        
                                                        <iaixsl:if test="position() = 1">
                                                            <td class="search_buy">
                                                                <iaixsl:attribute name="rowspan"><iaixsl:value-of select="count(../../sizes/size)"/></iaixsl:attribute>

                                                                
                                                                <iaixsl:choose>
                                                                    <iaixsl:when test="not(../../@product_type ='product_bundle')">
                                                                        <button class="search_buy">
                                                                            <iaixsl:attribute name="title">Dodaj ten produkt do koszyka</iaixsl:attribute>
                                                                            <iaixsl:attribute name="value"><i class="icon-shopping-cart"></i></iaixsl:attribute>
                                                                            <iaixsl:attribute name="data-loadtxt">&lt;i class="icon-refresh icon-spin"&gt;&lt;/i&gt;</iaixsl:attribute>
                                                                            <i class="icon-shopping-cart"></i>
                                                                        </button>
                                                                    </iaixsl:when>
                                                                    <iaixsl:otherwise>
                                                                        <iaixsl:choose>
                                                                            <iaixsl:when test="(../../bundled/product/sizes/size/@type !=  'uniw')">
                                                                                <a class="btn --solid search_see_bundle">
                                                                                    <iaixsl:attribute name="href"><iaixsl:value-of select="../../@link"/></iaixsl:attribute>
                                                                                    <iaixsl:attribute name="title">Przejdź do informacji o zestawie</iaixsl:attribute>

                                                                                    Przejdź do informacji o zestawie
                                                                                </a>
                                                                            </iaixsl:when>
                                                                            <iaixsl:otherwise>
                                                                                <button class="search_buy">
                                                                                    <iaixsl:attribute name="title">Dodaj ten produkt do koszyka</iaixsl:attribute>
                                                                                    <iaixsl:attribute name="value"><i class="icon-shopping-cart"></i></iaixsl:attribute>
                                                                                    <iaixsl:attribute name="data-loadtxt">&lt;i class="icon-refresh icon-spin"&gt;&lt;/i&gt;</iaixsl:attribute>
                                                                                    <i class="icon-shopping-cart"></i>
                                                                                </button>

                                                                            </iaixsl:otherwise>
                                                                        </iaixsl:choose>

                                                                    </iaixsl:otherwise>
                                                                </iaixsl:choose>
                                                            </td>
                                                        </iaixsl:if>
                                                    </tr>
                                                </iaixsl:for-each>
                                            </iaixsl:if>

                                            <iaixsl:if test="price/@value = 0 and not(/shop/basket/@wholesaler = 'true')">
                                                <tr>
                                                    <td class="show_hurt_price_search">
                                                        <a class="show_hurt_price_search" href="/login.php">
                                                            Produkt niedostępny w sprzedaży detalicznej. Zarejestruj się, aby zobaczyć ceny hurtowe.
                                                        </a>
                                                    </td>
                                                </tr>
                                            </iaixsl:if>
                                        </tbody>
                                    </table>

                                    <iaixsl:if test="count(sizes/size) > $sizes_hide_on">
                                        <iaixsl:if test="not(price/@value = 0 and not(/shop/basket/@wholesaler = 'true'))">
                                            <a href="#show_sizes" class="show_all_sizes btn --icon-right icon-angle-up pl-0">
                                                <iaixsl:attribute name="data-toggleTxt">Pokaż wszystkie rozmiary</iaixsl:attribute>
                                                Ukryj rozmiary
                                            </a>
                                        </iaixsl:if>
                                    </iaixsl:if>
                                </div>
                                </div>

                                <iaixsl:if test="traits/trait[not(@gfx)] or traits/trait[@gfx2]">
                                    <div class="list_traits">
                                        <iaixsl:if test="traits/trait[not(@gfx)]">
                                            <ul>
                                                <iaixsl:for-each select="traits/trait[not(@gfx)]">
                                                    <iaixsl:if test="not(@groupid = preceding-sibling::trait/@groupid)">
                                                        <li>
                                                            <span><iaixsl:value-of select="@groupdescription"/>:</span>
                                                            <div>
                                                                <a><iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute><iaixsl:value-of select="@traitdescription"/></a>
                                                                <iaixsl:if test="@groupid = following-sibling::trait/@groupid">
                                                                    <iaixsl:variable name="temporaryGroup"><iaixsl:value-of select="@groupid"/></iaixsl:variable><iaixsl:for-each select="following-sibling::trait[(@groupid = $temporaryGroup)]">, <a><iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute><iaixsl:value-of select="@traitdescription"/></a></iaixsl:for-each>
                                                                </iaixsl:if>
                                                            </div>
                                                        </li>
                                                    </iaixsl:if>
                                                </iaixsl:for-each>
                                            </ul>
                                        </iaixsl:if>

                                        <iaixsl:if test="traits/trait[@gfx2]">
                                            <ul class="gfx_traits">
                                                <iaixsl:for-each select="traits/trait[@gfx2]">
                                                    <li>
                                                        <a>
                                                            <iaixsl:attribute name="title"><iaixsl:value-of select="@groupdescription"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="@traitdescription"/></iaixsl:attribute>
                                                            <iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
                                                            <img>
                                                                <iaixsl:attribute name="src"><iaixsl:value-of select="@gfx2"/></iaixsl:attribute>
                                                                <iaixsl:attribute name="alt"><iaixsl:value-of select="@traitdescription"/></iaixsl:attribute>
                                                            </img>
                                                        </a>
                                                    </li>
                                                </iaixsl:for-each>
                                            </ul>
                                        </iaixsl:if>
                                    </div>
                                </iaixsl:if>

                              
                            </div>

                        </iaixsl:for-each>
                        <div id="search-total">
                            <button type="submit" class="btn --solid --large">
                                <iaixsl:attribute name="data-loadtxt">&lt;i class="icon-refresh icon-spin"&gt;&lt;/i&gt; Dodaj wybrane do koszyka</iaixsl:attribute>
                                Dodaj wybrane do koszyka
                            </button>
                        </div>
                    </form>
                </div>
            </iaixsl:if>
        <!--Lista produktów jako lista (search_list, 108231.1)-->

		<iaixsl:if test="/shop/page/products/display_mode/@active = 'list'">

			<form id="quick_buy" action="/basketchange.php?type=multiproduct" method="post">
				<table>
					<iaixsl:for-each select="/shop/page/products/product">
						<iaixsl:variable name="product_position"><iaixsl:value-of select="position()"/></iaixsl:variable>
						<tr>
							<iaixsl:if test="/shop/page/@ecommerce_module_class">
								<iaixsl:attribute name="class">
									<iaixsl:variable name="ecommerce_module_separator">{productId}</iaixsl:variable>

									<iaixsl:variable name="ecommerce_module_class_before"><iaixsl:value-of select="substring-before(/shop/page/@ecommerce_module_class, $ecommerce_module_separator)"/></iaixsl:variable>
									<iaixsl:variable name="ecommerce_module_class_after"><iaixsl:value-of select="substring-after(/shop/page/@ecommerce_module_class, $ecommerce_module_separator)"/></iaixsl:variable>

									 <iaixsl:value-of select="$ecommerce_module_class_before"/><iaixsl:value-of select="/shop/page/projector/product/@id"/><iaixsl:value-of select="$ecommerce_module_class_after"/>
								</iaixsl:attribute>
							</iaixsl:if>
							<td class="product-name-td">
								<h3><a class="product-name">
									<iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
									<iaixsl:attribute name="title">Kliknij, aby zobaczyć szczegółowy opis</iaixsl:attribute>
									<span class="product-icon"><img><iaixsl:attribute name="alt"><iaixsl:value-of disable-output-escaping="yes" select="name/text()"/></iaixsl:attribute><iaixsl:attribute name="src"><iaixsl:value-of select="icon"/></iaixsl:attribute></img></span>
									<span class="product-name-txt"><iaixsl:value-of disable-output-escaping="yes" select="name"/></span>
								</a></h3>
								<iaixsl:if test="not(sizes/@unit_sellby = '1')">
									<div class="info-item">
										<span class="info-label">Sprzedawane po: </span>
										<span class="info-value"><iaixsl:value-of select="sizes/@unit_sellby"/><iaixsl:value-of select="sizes/@unit"/></span>
									</div>
								</iaixsl:if>

							</td>
							<td class="product-sizes-td">

								<iaixsl:choose>
									<iaixsl:when test="price/@value = 0 and not(/shop/basket/@wholesaler = 'true')">
										<a class="show_hurt_price_search" href="/login.php">
											Produkt niedostępny w sprzedaży detalicznej. Zarejestruj się, aby zobaczyć ceny hurtowe.
										</a>
									</iaixsl:when>
									<iaixsl:otherwise>

										<div class="row">
											<iaixsl:for-each select="sizes/size">
												<div class="col-sm-4 col-12 mb-2">

													<iaixsl:variable name="prod_id"><iaixsl:value-of select="../../@id"/></iaixsl:variable>
													<iaixsl:variable name="prod_size"><iaixsl:value-of select="@type"/></iaixsl:variable>

													<input class="quantity" type="text">
														<iaixsl:attribute name="name">set_quantity[<iaixsl:value-of select="$product_position"/><iaixsl:value-of select="position()"/>]</iaixsl:attribute>
														<iaixsl:attribute name="data-amount"><iaixsl:value-of select="@amount"/></iaixsl:attribute>
														<iaixsl:attribute name="data-unit_sellby"><iaixsl:value-of select="../@unit_sellby"/></iaixsl:attribute>
														<iaixsl:attribute name="data-unit_precision"><iaixsl:value-of select="../@unit_precision"/></iaixsl:attribute>
														<iaixsl:attribute name="data-unit"><iaixsl:value-of select="../@unit"/></iaixsl:attribute>
														<iaixsl:attribute name="data-price_net"><iaixsl:value-of select="price/@price_net"/></iaixsl:attribute>

														<iaixsl:if test="((number(price/@value) = 0) and not(price/@points)) or (@amount = 0)">
															<iaixsl:attribute name="disabled">disabled</iaixsl:attribute>
															<iaixsl:attribute name="class">quantity disabled</iaixsl:attribute>
														</iaixsl:if>

														<iaixsl:if test="(../../@product_type ='product_bundle') and (../../bundled/product/sizes/size/@type !=  'uniw')">
															<iaixsl:attribute name="disabled">disabled</iaixsl:attribute>
															<iaixsl:attribute name="class">quantity disabled</iaixsl:attribute>
														</iaixsl:if>

														<iaixsl:attribute name="value">
															<iaixsl:choose>
																<iaixsl:when test="/shop/basket/product[@id = $prod_id]/size[@type = $prod_size]">
																	<iaixsl:value-of select="/shop/basket/product[@id = $prod_id]/size[@type = $prod_size]/@ordered"/>
																</iaixsl:when>
																<iaixsl:otherwise>0</iaixsl:otherwise>
															</iaixsl:choose>
														</iaixsl:attribute>
													</input>

													<div class="size-price">
														<iaixsl:if test="not(@type = 'uniw')">
															<div class="size-name"><iaixsl:value-of select="@description"/></div>
														</iaixsl:if>
														<div class="price">
															<iaixsl:choose>
																<iaixsl:when test="price/@price_unit_net_formatted">
																	<iaixsl:value-of select="price/@price_unit_net_formatted"/><iaixsl:text> / </iaixsl:text><iaixsl:value-of select="sizes/@unit_sellby"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="sizes/@unit"/><small> netto </small>
																</iaixsl:when>
																<iaixsl:otherwise>
																	<iaixsl:value-of select="price/@price_net_formatted"/><small> netto </small>
																</iaixsl:otherwise>
															</iaixsl:choose>
														</div>
													</div>

													<input class="n65081_size" type="hidden">
														<iaixsl:attribute name="name">size[<iaixsl:value-of select="$product_position"/><iaixsl:value-of select="position()"/>]</iaixsl:attribute>
														<iaixsl:attribute name="value"><iaixsl:value-of select="@type"/></iaixsl:attribute>
														<iaixsl:if test="((number(price/@value) = 0) and not(price/@points)) or (@amount = 0)">
															<iaixsl:attribute name="disabled">disabled</iaixsl:attribute>
														</iaixsl:if>
													</input>

													<input class="n65081_product" type="hidden">
														<iaixsl:attribute name="name">product[<iaixsl:value-of select="$product_position"/><iaixsl:value-of select="position()"/>]</iaixsl:attribute>
														<iaixsl:attribute name="value"><iaixsl:value-of select="../../@id"/></iaixsl:attribute>
														<iaixsl:if test="((number(price/@value) = 0) and not(price/@points)) or (@amount = 0)">
															<iaixsl:attribute name="disabled">disabled</iaixsl:attribute>
														</iaixsl:if>
													</input>

												</div>
											</iaixsl:for-each>
										</div>

									</iaixsl:otherwise>
								</iaixsl:choose>
							</td>
							<td class="product_total">
								<iaixsl:if test="price/@value != 0 or /shop/basket/@wholesaler = 'true'">
									<button type="submit">
										<iaixsl:attribute name="data-loadtxt">&lt;i class="icon-refresh icon-spin"&gt;&lt;/i&gt;</iaixsl:attribute>
										<i class="icon-shopping-cart"></i>
									</button>
								</iaixsl:if>
							</td>
						</tr>
					</iaixsl:for-each>
				</table>

				<div id="search-total">
					<button type="submit" class="btn --solid --large">
						<iaixsl:attribute name="data-loadtxt">&lt;i class="icon-refresh icon-spin"&gt;&lt;/i&gt; Dodaj wybrane do koszyka</iaixsl:attribute>
						Dodaj wybrane do koszyka
					</button>
				</div>
			</form>
		</iaixsl:if>
		<!--Stronicowanie, sekcja 2 (search_paging2, 110687.1)-->

        <iaixsl:variable name="select_sort_label_bottom"></iaixsl:variable>
        <iaixsl:variable name="select_portions_label_bottom"></iaixsl:variable>
        <iaixsl:variable name="prev_page_bottom"></iaixsl:variable>
        <iaixsl:variable name="next_page_bottom">Następna strona</iaixsl:variable>

        <iaixsl:if test="not(page/products/@hideproducts = 'true') or count(/shop/page/products/display_mode/item) > 1">
            <div id="paging_setting_bottom" class="s_paging">
                
             

                
                <iaixsl:if test="not(page/products/@hideproducts = 'true')">
                    <iaixsl:if test="not(/shop/page/products/navigation/@disable_sort_change = 'y')">
                        <form class="s_paging__item --sort d-none" action="/settings.php">
                            <iaixsl:if test="$select_sort_label_bottom">
                                <label for="select_top_sort"><iaixsl:value-of disable-output-escaping="yes" select="$select_sort_label_bottom"/></label>
                            </iaixsl:if>
                            <select class="s_paging__select --order --small-md" id="select_top_sort" name="sort_order">
                                <option value="name-a" class="option_name-a"><iaixsl:if test="page/products/navigation/@sort = 'name' and page/products/navigation/@order = 'a'"><iaixsl:attribute name="selected">selected</iaixsl:attribute></iaixsl:if>Sortuj po nazwie rosnąco</option>
                                <option value="name-d" class="option_name-d"><iaixsl:if test="page/products/navigation/@sort = 'name' and page/products/navigation/@order = 'd'"><iaixsl:attribute name="selected">selected</iaixsl:attribute></iaixsl:if>Sortuj po nazwie malejąco</option>
                                <option value="price-a" class="option_price-a"><iaixsl:if test="page/products/navigation/@sort = 'price' and page/products/navigation/@order = 'a'"><iaixsl:attribute name="selected">selected</iaixsl:attribute></iaixsl:if>Sortuj po cenie rosnąco</option>
                                <option value="price-d" class="option_price-d"><iaixsl:if test="page/products/navigation/@sort = 'price' and page/products/navigation/@order = 'd'"><iaixsl:attribute name="selected">selected</iaixsl:attribute></iaixsl:if>Sortuj po cenie malejąco</option>
                                <option value="date-a" class="option_date-a"><iaixsl:if test="page/products/navigation/@sort = 'date' and page/products/navigation/@order = 'a'"><iaixsl:attribute name="selected">selected</iaixsl:attribute></iaixsl:if>Sortuj po dacie rosnąco</option>
                                <option value="date-d" class="option_date-d"><iaixsl:if test="page/products/navigation/@sort = 'date' and page/products/navigation/@order = 'd'"><iaixsl:attribute name="selected">selected</iaixsl:attribute></iaixsl:if>Sortuj po dacie malejąco</option>
                            </select>
                        </form>
                    </iaixsl:if>

                    <iaixsl:if test="not(/shop/page/products/navigation/@disable_portions_change = 'y') and count(page/products/navigation/portions) > 1">
                        <form class="s_paging__item --portions d-none" action="/settings.php">
                            <iaixsl:if test="$select_portions_label_bottom">
                                <label for="select_top_portions"><iaixsl:value-of disable-output-escaping="yes" select="$select_portions_label_bottom"/></label>
                            </iaixsl:if>
                            <select class="s_paging__select --portions --small-md" id="select_top_portions" name="portions">
                                <iaixsl:for-each select="page/products/navigation/portions">
                                    <option><iaixsl:attribute name="value"><iaixsl:value-of select="@counter"/></iaixsl:attribute><iaixsl:if test="@selected = 'true'"><iaixsl:attribute name="selected">selected</iaixsl:attribute></iaixsl:if>Pokaż <iaixsl:value-of select="@counter"/>
                                    </option>
                                </iaixsl:for-each>
                            </select>
                        </form>
                    </iaixsl:if>

                    <iaixsl:if test="count(page/products/navigation/item) > 1">
                        <ul class="s_paging__item pagination mb-2 mb-sm-3">
                            
                            <iaixsl:if test="page/products/navigation/prev">
                                <li class="pagination__element --prev">
                                    <iaixsl:if test="$prev_page_bottom">
                                        <iaixsl:attribute name="class">pagination__element --prev --button</iaixsl:attribute>
                                    </iaixsl:if>
                                    <a class="pagination__link">
                                        <iaixsl:attribute name="href"><iaixsl:value-of disable-output-escaping="yes" select="page/products/navigation/path/@value"/><iaixsl:value-of select="page/products/navigation/prev/@counter"/></iaixsl:attribute>
                                    </a>
                                    <iaixsl:if test="$prev_page_bottom">
                                        <a class="pagination__button --prev btn --secondary --solid --icon-left icon-angle-left d-md-none">
                                            <iaixsl:attribute name="href"><iaixsl:value-of disable-output-escaping="yes" select="page/products/navigation/path/@value"/><iaixsl:value-of select="page/products/navigation/prev/@counter"/></iaixsl:attribute>
                                            <iaixsl:value-of disable-output-escaping="yes" select="$prev_page_bottom"/>
                                        </a>
                                    </iaixsl:if>
                                </li>
                            </iaixsl:if>
                            
                            <iaixsl:if test="not(page/products/navigation/prev)">
                                <li class="pagination__element --prev --disabled">
                                    <iaixsl:if test="$prev_page_bottom">
                                        <iaixsl:attribute name="class">pagination__element --prev --disabled --button</iaixsl:attribute>
                                    </iaixsl:if>
                                    <span class="pagination__link"/>
                                    <iaixsl:if test="$prev_page_bottom">
                                        <span class="pagination__button --prev btn --secondary --solid --icon-left icon-angle-left d-md-none"><iaixsl:value-of disable-output-escaping="yes" select="$prev_page_bottom"/></span>
                                    </iaixsl:if>
                                </li>
                            </iaixsl:if>
                            
                            <iaixsl:for-each select="page/products/navigation/item">
                                <iaixsl:if test="@gap">
                                    <li class="pagination__element --gap --disabled">
                                        <span class="pagination__link">...</span>
                                    </li>
                                </iaixsl:if>
                                <iaixsl:if test="not(@type = 'current') and not(@gap)">
                                    <li class="pagination__element --item">
                                        <a class="pagination__link">
                                            <iaixsl:attribute name="href"><iaixsl:value-of disable-output-escaping="yes" select="../path/@value"/><iaixsl:value-of select="@counter - 1"/></iaixsl:attribute>
                                            <iaixsl:value-of select="@counter"/>
                                        </a>
                                    </li>
                                </iaixsl:if>
                                <iaixsl:if test="@type = 'current'">
                                    <li class="pagination__element --item --active">
                                        <span class="pagination__link"><iaixsl:value-of select="@counter"/></span>
                                    </li>
                                </iaixsl:if>
                            </iaixsl:for-each>
                            
                            <iaixsl:if test="page/products/navigation/next">
                                <li class="pagination__element --next">
                                    <iaixsl:if test="$next_page_bottom">
                                        <iaixsl:attribute name="class">pagination__element --next --button</iaixsl:attribute>
                                    </iaixsl:if>
                                    <a class="pagination__link">
                                        <iaixsl:attribute name="href"><iaixsl:value-of disable-output-escaping="yes" select="page/products/navigation/path/@value"/><iaixsl:value-of select="page/products/navigation/next/@counter"/></iaixsl:attribute>
                                    </a>
                                    <iaixsl:if test="$next_page_bottom">
                                        <a class="pagination__button --next btn --secondary --solid --icon-right icon-angle-right d-md-none">
                                            <iaixsl:attribute name="href"><iaixsl:value-of disable-output-escaping="yes" select="page/products/navigation/path/@value"/><iaixsl:value-of select="page/products/navigation/next/@counter"/></iaixsl:attribute>
                                            <!-- <iaixsl:value-of disable-output-escaping="yes" select="$next_page_bottom"/> -->
                                        </a>
                                    </iaixsl:if>
                                </li>
                            </iaixsl:if>
                            
                            <iaixsl:if test="not(page/products/navigation/next)">
                                <li class="pagination__element --next --disabled">
                                    <iaixsl:if test="$next_page_bottom">
                                        <iaixsl:attribute name="class">pagination__element --next --disabled --button</iaixsl:attribute>
                                    </iaixsl:if>
                                    <span class="pagination__link"/>
                                    <iaixsl:if test="$next_page_bottom">
                                        <span class="pagination__button --next btn --secondary --solid --icon-right icon-angle-right d-md-none"><iaixsl:value-of disable-output-escaping="yes" select="$next_page_bottom"/></span>
                                    </iaixsl:if>
                                </li>
                            </iaixsl:if>
                        </ul>
                    </iaixsl:if>
                </iaixsl:if>
            </div>
        </iaixsl:if>
        <!--Hotspot w search strefa 1 (search_hotspot_zone1, 92231.1)-->

        <iaixsl:if test="/shop/page/products/additional/hotspot/products_zone1/@iairs_ajax"> </iaixsl:if>
        <iaixsl:if test="/shop/page/products/additional/hotspot/products_zone1/@hotspot_ajax"> </iaixsl:if>
        <iaixsl:if test="/shop/page/products/additional/hotspot/products_zone1/@name"> </iaixsl:if>

        
                        </div>
                    </iaixsl:if>
                </div>
            <div class="description-wrapper-custom search_categoriesdescription_sub cm container">
                <iaixsl:value-of select="/shop/page/products/additional/category_list/description" disable-output-escaping="yes"  />
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
                                    <div class=" has-feedback">              
                                            <input class="form-control validate" name="mailing_name" type="text" minlength="3" required="required">
                                                <iaixsl:choose>
                                                    <iaixsl:when test="/shop/client_data/@mailing = '1'">
                                                        <iaixsl:attribute name="value"><iaixsl:value-of select="/shop/client_data/@firstname"/></iaixsl:attribute>                         
                                                    </iaixsl:when>
                                                    <iaixsl:otherwise>
                                                        <iaixsl:attribute name="placeholder">Twoje imię</iaixsl:attribute>
                                                    </iaixsl:otherwise>
                                                </iaixsl:choose> 
                                            </input>
                                            <span class="form-control-feedback"/>
                                    </div>
                                </iaixsl:if>

                                <div class=" has-feedback">
                                        <input class="form-control validate" name="mailing_emaail" type="text" required="required" data-validate="email">                            
                                            <iaixsl:choose>
                                                <iaixsl:when test="/shop/client_data/@mailing = '1'">
                                                    <iaixsl:attribute name="value"><iaixsl:value-of select="/shop/client_data/@email"/></iaixsl:attribute>
                                                </iaixsl:when>
                                                <iaixsl:otherwise>
                                                    <iaixsl:attribute name="placeholder">E-mail</iaixsl:attribute>
                                                </iaixsl:otherwise>       
                                            </iaixsl:choose> 
                                        </input>
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
            <script src="/gfx/pol/menu_filter.js.gzip?r=1600678639"></script>
            <script>
                app_shop.runApp();
            </script>
            <!-- !CUSTOM SCRIPTS -->
            <script src="/data/include/cms/b2b4kom/JS/app.js" >
                <iaixsl:attribute name="defer"></iaixsl:attribute>
                <iaixsl:attribute name="type">module</iaixsl:attribute>
            </script>
            <script src="/data/include/cms/b2b4kom/JS/search/countMinHeightProduct.js" >
                <iaixsl:attribute name="defer"></iaixsl:attribute>
                <iaixsl:attribute name="type">module</iaixsl:attribute>
            </script>
          
            <script src="/data/include/cms/b2b4kom/JS/search/categoriesFiltersWrapper.js" >
                <iaixsl:attribute name="defer"></iaixsl:attribute>
                <iaixsl:attribute name="type">module</iaixsl:attribute>
            </script>
            <script src="/data/include/cms/b2b4kom/JS/basketDetailsHover.js" >
                <iaixsl:attribute name="defer"></iaixsl:attribute>
                <iaixsl:attribute name="type">module</iaixsl:attribute>
            </script>
            <script src="/data/include/cms/b2b4kom/JS/search/categoryPictureDropdown.js" >
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