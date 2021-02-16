<?xml version="1.0" encoding="UTF-8"?>
<iaixsl:stylesheet xmlns:php="http://php.net/xsl" xmlns:iaixsl="http://www.w3.org/1999/XSL/Transform" xmlns:iaielement="http://iai-system.com/ddd" xmlns:fb="http://www.facebook.com/2008/fbml" version="1.0" exclude-result-prefixes="php iaielement fb"><iaixsl:output indent="no" method="html" doctype-system="about:legacy-compat" version="1.0" encoding="UTF-8"/><iaixsl:strip-space elements="table tr td img"/><iaixsl:decimal-format name="yen" NaN="" grouping-separator="," decimal-separator="."/><iaixsl:template match="shop"><!--Typ strony (envelope, 107421.1)-->
            <iaixsl:variable name="meta_langcode_iso639">en</iaixsl:variable>
            <iaixsl:variable name="html5_layout">1</iaixsl:variable>
            <iaixsl:variable name="asyncJS"></iaixsl:variable>
            <iaixsl:variable name="themeColor">#0090f6</iaixsl:variable>
            <iaixsl:if test="(action/set_render/item/@name = 'popup') or not(action/set_render/item)">
                <iaixsl:text disable-output-escaping="yes">&lt;html lang="</iaixsl:text><iaixsl:value-of select="/shop/language/option[@selected = 'true']/@name"/><iaixsl:text disable-output-escaping="yes">"</iaixsl:text><iaixsl:if test="(/shop/page/@type = 'prepaid' and /shop/page/prepaid/details/@msg = 'order') or /shop/page/@type = 'order-nonstandardized' or /shop/page/@type = 'order1' or /shop/page/@type = 'order2' or /shop/page/@type = 'pickup-sites' or /shop/page/@type = 'place-order'"><iaixsl:text disable-output-escaping="yes"> class="order_process"</iaixsl:text></iaixsl:if><iaixsl:text disable-output-escaping="yes"> &gt;</iaixsl:text>
                <iaixsl:if test="$meta_langcode_iso639"><iaixsl:attribute name="lang"><iaixsl:value-of select="$meta_langcode_iso639"/></iaixsl:attribute></iaixsl:if>
                <head>
                    <iaixsl:text disable-output-escaping="yes">&lt;meta name='viewport' content='user-scalable=no, initial-scale = 1.0, maximum-scale = 1.0, width=device-width'/&gt; &lt;link rel="preload" crossorigin="anonymous" as="font" href="/gfx/eng/fontello.woff?v=2"&gt;</iaixsl:text>
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
                                    <link rel="stylesheet" type="text/css"><iaixsl:attribute name="href">/gfx/<iaixsl:value-of select="language/@id"/>/style.css.gzip?r=1612959986</iaixsl:attribute></link>
                                </iaixsl:otherwise>
                            </iaixsl:choose>
                        </iaixsl:when>
                        <iaixsl:otherwise>
                            <iaixsl:choose>
                                <iaixsl:when test="/shop/@preview > 0">
                                    <link rel="stylesheet" type="text/css"><iaixsl:attribute name="href">/gfx/<iaixsl:value-of select="language/@id"/>/<iaixsl:value-of select="/shop/@preview"/>/style.css</iaixsl:attribute></link>
                                </iaixsl:when>
                                <iaixsl:otherwise>
                                    <link rel="stylesheet" type="text/css"><iaixsl:attribute name="href">/gfx/<iaixsl:value-of select="language/@id"/>/style.css.gzip?r=1612959986</iaixsl:attribute></link>
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
<script src="/gfx/eng/orderdetails_payments.js.gzip?r=1612959986"></script>
                            </iaixsl:when>
                            <iaixsl:otherwise>
                                <script><iaixsl:attribute name="src">/gfx/<iaixsl:value-of select="language/@id"/>/shop.js.gzip?r=1612959986</iaixsl:attribute></script>
<script src="/gfx/eng/orderdetails_payments.js.gzip?r=1612959986"></script>
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
                        <iaixsl:attribute name="class">d-flex flex-nowrap flex-md-wrap mx-md-n3<iaixsl:if test="count(commercial_banner/link) > 0"> commercial_banner</iaixsl:if></iaixsl:attribute>
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
    <!--Delivery cost (menu_delivery_cost, 118559.2)-->
			<iaixsl:variable name="disableBar"></iaixsl:variable>
			<iaixsl:variable name="disableReturns"></iaixsl:variable>

	        <iaixsl:if test="not($disableBar) and /shop/basket/@toshippingfree != ''">
				<div id="freeShipping" class="freeShipping">
					<iaixsl:if test="/shop/basket/@toshippingfree = 0">
					    <iaixsl:attribute name="class">freeShipping --active</iaixsl:attribute>
					</iaixsl:if>
					<span class="freeShipping__info">Free delivery</span>
					<strong class="freeShipping__val">
						from 
						<iaixsl:value-of select="/shop/basket/@shippinglimitfree_formatted"/>
					</strong>
					
					<iaixsl:if test="not($disableReturns) and /shop/returns/@freereturnsactive='y'">
						<span class="freeShipping__return">
							and free return
							<iaixsl:value-of select="/shop/returns/@days_to_return"/>
							 days
						</span>
					</iaixsl:if>
					
					<a href="" class="freeShipping__close"/>
				</div>
            </iaixsl:if>
		
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

            <iaixsl:variable name="display_menu_additional">Log in</iaixsl:variable>
            <iaixsl:variable name="login_title"></iaixsl:variable>
            <iaixsl:variable name="account_title"></iaixsl:variable>
            <iaixsl:variable name="list_title"></iaixsl:variable>

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
									<iaixsl:if test="$account_title != ''"><iaixsl:attribute name="title"><iaixsl:value-of select="$account_title"/></iaixsl:attribute></iaixsl:if>
                                    Your Account
                                </iaixsl:when>
                                <iaixsl:otherwise>
									<iaixsl:if test="$login_title != ''"><iaixsl:attribute name="title"><iaixsl:value-of select="$login_title"/></iaixsl:attribute></iaixsl:if>
                                    <iaixsl:value-of disable-output-escaping="yes" select="$display_menu_additional"/>
                                </iaixsl:otherwise>
                            </iaixsl:choose>
                        </a>
                        <a href="/basketedit.php?mode=2" class="wishlist_link">
                            Shopping list
							<iaixsl:if test="$list_title != ''"><iaixsl:attribute name="title"><iaixsl:value-of select="$list_title"/></iaixsl:attribute></iaixsl:if>
                            <span><iaixsl:choose><iaixsl:when test="wishes/@count"><iaixsl:value-of select="wishes/@count"/></iaixsl:when><iaixsl:otherwise>0</iaixsl:otherwise></iaixsl:choose></span>
                        </a>
                    </div>
                </iaixsl:if>
            </div>
        <!--Menu koszyka (menu_basket, 108216.4)-->
            <iaixsl:variable name="basket_title"></iaixsl:variable>
            <div id="menu_basket_wrapper" class="col-md-3 d-flex px-0 pl-lg-3 pr-md-3">
                
                <div id="menu_balance" class="d-none">
                    <div>
                        Balance 
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
                        Your discounts
                    </a>
                </div>

                
                <div id="menu_basket" class="menu_basket">
                    <div class="menu_basket_list">
                        <iaixsl:if test="not(basket/@count > 0)">
                            <iaixsl:attribute name="class">menu_basket_list empty</iaixsl:attribute>
                        </iaixsl:if>
                        <a href="/basketedit.php?mode=1">
                            <iaixsl:if test="basket/@link">
                                <iaixsl:attribute name="href"><iaixsl:value-of select="basket/@link"/></iaixsl:attribute>
                            </iaixsl:if>
                            <iaixsl:if test="basket/@points_used > 0">
                                <iaixsl:attribute name="class">points</iaixsl:attribute>
                            </iaixsl:if>
					<iaixsl:if test="$basket_title != ''"><iaixsl:attribute name="title"><iaixsl:value-of select="$basket_title"/></iaixsl:attribute></iaixsl:if>

                            
                            <strong>
                               <iaixsl:if test="/shop/page/@cache_html = 'true' ">
                                  <iaixsl:attribute name="style">display: none;</iaixsl:attribute>
                               </iaixsl:if>
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
                                                    <td class="menu_basket_prices_value"><span class="menu_basket_prices_brutto"><iaixsl:value-of select="basket/@cost_formatted"/></span></td>
                                                </tr>
                                                <iaixsl:if test="(basket/@points_used) and not(basket/@points_used = '')">
                                                    <tr>
                                                        <td class="menu_basket_prices_label">Used points:</td>
                                                        <td class="menu_basket_prices_value"><span class="menu_basket_prices_points"><iaixsl:value-of select="basket/@points_used"/></span>pts.</td>
                                                    </tr>
                                                </iaixsl:if>
                                                <iaixsl:if test="(basket/@shipping_undefined = 'false')">
                                                    <tr>
                                                        <td class="menu_basket_prices_label">Delivery cost:</td>
                                                        <td class="menu_basket_prices_value">
                                                            <iaixsl:choose>
                                                                <iaixsl:when test="not(basket/@shipping = '0')">from <span class="menu_basket_prices_shippingCost"><iaixsl:value-of select="basket/@shipping_formatted"/></span></iaixsl:when>
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
                                                        <span class="menu_basket_toshippingfree"><span class="menu_basket_prices_shippingFree"><iaixsl:value-of select="basket/@toshippingfree_formatted"/></span></span>
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
                                    

                                </div>
                            </div>
                            

                            
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
                                    <span>Shopping list(<iaixsl:value-of select="wishes/@count"/>)</span>

                                    <span class="badge badge-important d-md-none"><iaixsl:value-of select="wishes/@count"/></span>
                                </a>
                            </iaixsl:when>
                            <iaixsl:otherwise>
                                <a class="wishes_link link" href="/basketedit.php?mode=2" rel="nofollow">
                                    <iaixsl:attribute name="title"></iaixsl:attribute>
                                    <iaixsl:if test="/shop/action/basket/@url">
                                        <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/basket/@url"/>?mode=2</iaixsl:attribute>
                                    </iaixsl:if>

                                    <span>Shopping list(0)</span>
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
           <iaixsl:if test="/shop/page/@cache_html = 'true' ">
                <script>
                    app_shop.vars.cache_html = true;
                </script>
            </iaixsl:if>


<iaixsl:if test="/shop/page/@cache_basketwishes"/>
<iaixsl:if test="/shop/page/@cache_basket"/>

        <!--Menu - Drzewo 1 (menu_categories, 116631.1)-->
        <iaixsl:variable name="dlmenu_showall">+ Show all</iaixsl:variable>
        <iaixsl:variable name="gfx_2lvl_show"></iaixsl:variable>
        <iaixsl:variable name="menu_categories_label"></iaixsl:variable>
        <iaixsl:variable name="dlmenu_showmore">1</iaixsl:variable>
        <iaixsl:variable name="dlmenu_shownumber">11</iaixsl:variable>
        <iaixsl:variable name="current_item"><iaixsl:value-of select="/shop/navigation/current/@ni"/></iaixsl:variable>

        <nav id="menu_categories" class="col-md-12 px-0 px-md-3 wide">
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
                                        <iaixsl:if test="((count(item) = 0) and $dlmenu_showmore)">
                                            <iaixsl:attribute name="class">nav-item empty</iaixsl:attribute>
                                        </iaixsl:if>
                                        <iaixsl:if test="( (@ni = $current_item) or (item/@ni = $current_item)  or (item/item/@ni = $current_item)  or (item/item/item/@ni = $current_item) )">
                                            <iaixsl:attribute name="class">nav-item active</iaixsl:attribute>
                                        </iaixsl:if>
                                        <iaixsl:if test="( (@ni = $current_item) or (item/@ni = $current_item)  or (item/item/@ni = $current_item)  or (item/item/item/@ni = $current_item) ) and ((count(item) = 0) and $dlmenu_showmore)">
                                            <iaixsl:attribute name="class">nav-item active empty</iaixsl:attribute>
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
                                                    <iaixsl:if test="((count(item) > $dlmenu_shownumber) and $dlmenu_showmore)">
                                                        <iaixsl:attribute name="class">navbar-subsubnav more</iaixsl:attribute>
                                                    </iaixsl:if>
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
                                                    
                                                    <iaixsl:choose>
                                                        <iaixsl:when test="(count(item) > 1) and @link and @display_all = 'y' and $dlmenu_showall">
                                                            <iaixsl:if test="(count(item) > $dlmenu_shownumber) and $dlmenu_showmore">
                                                                <li class="nav-item display-all more">
                                                                    <a href="##" class="nav-link display-all">
                                                                        <iaixsl:attribute name="txt_alt">- fold</iaixsl:attribute>
                                                                        + extend
                                                                    </a>
                                                                </li>
                                                            </iaixsl:if>
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
                                                        </iaixsl:when>
                                                        <iaixsl:otherwise>
                                                            <iaixsl:if test="(count(item) > $dlmenu_shownumber) and $dlmenu_showmore">
                                                                <li class="nav-item display-all more">
                                                                    <a href="##" class="nav-link display-all">
                                                                        <iaixsl:attribute name="txt_alt">- fold</iaixsl:attribute>
                                                                        + extend
                                                                    </a>
                                                                </li>
                                                            </iaixsl:if>
                                                        </iaixsl:otherwise>
                                                    </iaixsl:choose>
                                                </ul>
                                            </iaixsl:if>
                                        </li>
                                    </iaixsl:for-each>
                                    <iaixsl:if test="(count(item) > 1) and @link and @display_all = 'y' and $dlmenu_showall">
                                        <li class="nav-item display-all empty">
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
                                <span>Shopping list</span>
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
                                <span>List of purchased products</span>
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
                            <i class="icon-cog"></i>  <span>Your account</span>
                            
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
                            <span class='font_icon'>%</span> <span>Granted discounts</span>
                            
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
                        <a class="registration_link" href="/client-new.php?register&amp;wholesaler=true">
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
                                <strong class="progress__name">Your basket</strong>
                                <span class="progress__description">Value: <iaixsl:choose><iaixsl:when test="(/shop/basket/@wholesaler = 'true') and not($wholesalerPrice_order_progress)"><iaixsl:value-of select="basket/@cost_net_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="basket/@cost_formatted"/></iaixsl:otherwise></iaixsl:choose></span>
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
                                <span class="progress__description">Value: <iaixsl:choose><iaixsl:when test="(/shop/basket/@wholesaler = 'true') and not($wholesalerPrice_order_progress)"><iaixsl:value-of select="basket/@cost_net_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="basket/@cost_formatted"/></iaixsl:otherwise></iaixsl:choose></span>
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
                                <span class="progress__description">Value: <iaixsl:choose><iaixsl:when test="(/shop/basket/@wholesaler = 'true') and not($wholesalerPrice_order_progress)"><iaixsl:value-of select="basket/@cost_net_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="basket/@cost_formatted"/></iaixsl:otherwise></iaixsl:choose></span>
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
                                <span class="progress__description">Value: <iaixsl:choose><iaixsl:when test="(/shop/basket/@wholesaler = 'true') and not($wholesalerPrice_order_progress)"><iaixsl:value-of select="basket/@cost_net_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="basket/@cost_formatted"/></iaixsl:otherwise></iaixsl:choose></span>
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
                                <span class="progress__description">Value: <iaixsl:choose><iaixsl:when test="(/shop/basket/@wholesaler = 'true') and not($wholesalerPrice_order_progress)"><iaixsl:value-of select="basket/@cost_net_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="basket/@cost_formatted"/></iaixsl:otherwise></iaixsl:choose></span>
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
                                <span class="progress__description">Value: <iaixsl:choose><iaixsl:when test="(/shop/basket/@wholesaler = 'true') and not($wholesalerPrice_order_progress)"><iaixsl:value-of select="basket/@cost_net_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="basket/@cost_formatted"/></iaixsl:otherwise></iaixsl:choose></span>
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
                                <span class="progress__description">Value: <iaixsl:choose><iaixsl:when test="(/shop/basket/@wholesaler = 'true') and not($wholesalerPrice_order_progress)"><iaixsl:value-of select="basket/@cost_net_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="basket/@cost_formatted"/></iaixsl:otherwise></iaixsl:choose></span>
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
                                <span class="progress__description">Value: <iaixsl:choose><iaixsl:when test="(/shop/basket/@wholesaler = 'true') and not($wholesalerPrice_order_progress)"><iaixsl:value-of select="basket/@cost_net_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="basket/@cost_formatted"/></iaixsl:otherwise></iaixsl:choose></span>
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
                                <span class="progress__description">Value: <iaixsl:choose><iaixsl:when test="(/shop/basket/@wholesaler = 'true') and not($wholesalerPrice_order_progress)"><iaixsl:value-of select="basket/@cost_net_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="basket/@cost_formatted"/></iaixsl:otherwise></iaixsl:choose></span>
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
                                <span class="progress__description">Value: <iaixsl:choose><iaixsl:when test="(/shop/basket/@wholesaler = 'true') and not($wholesalerPrice_order_progress)"><iaixsl:value-of select="basket/@cost_net_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="basket/@cost_formatted"/></iaixsl:otherwise></iaixsl:choose></span>
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
                                <iaixsl:when test="@type='incorect login'">Invalid login. The login must have a minimum of 3, and a maximum of 40 characters (only letters or numbers).</iaixsl:when>
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
                                <iaixsl:when test="@type='wisheslist_empty'">Your shopping list is empty.</iaixsl:when>
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

        <!--CMS na stronę przedpłat (orderdetails_cms, 58341.1)-->
<iaixsl:if test="page/prepaid/text/body != ''">

    <div class="orderdetails_cms">
      <iaixsl:attribute name="class">orderdetails_cms cm</iaixsl:attribute>
        <div class="orderdetails_cms_sub"><iaixsl:value-of disable-output-escaping="yes" select="page/prepaid/text/body"/></div>
    </div>
</iaixsl:if>
    <!--Informacje o zamówieniu (orderdetails_info, 114646.1)-->
			<section id="orderdetails_info" class="orderdetails_info d-flex align-items-center mb-4 mb-md-5">
				<div class="orderdetails_info__icon d-flex align-items-center justify-content-center mr-2">
					<iaixsl:attribute name="data-status"><iaixsl:value-of select="/shop/page/prepaid/details/@wykonane"/></iaixsl:attribute>
					<iaixsl:if test="page/prepaid/details/@wykonane = 't' and page/prepaid/details/@personal_collection = 'yes'">
						<iaixsl:attribute name="data-received">true</iaixsl:attribute>
					</iaixsl:if>
				</div>
				<div class="orderdetails_info__wrapper">
					<div class="orderdetails_info__label d-flex align-items-center justify-content-start">
						<strong class="orderdetails_info__label_text">
							<iaixsl:choose>
								<iaixsl:when test="(page/prepaid/details/@wykonane = 'n')">Order received. Thank you!</iaixsl:when>
								<iaixsl:when test="(page/prepaid/details/@wykonane = 't')"><iaixsl:choose><iaixsl:when test="(page/prepaid/details/@personal_collection = 'yes')">Order received.</iaixsl:when><iaixsl:otherwise>Order shipped.</iaixsl:otherwise></iaixsl:choose></iaixsl:when>
								<iaixsl:when test="(page/prepaid/details/@wykonane = 'i')">Order rejected.</iaixsl:when>
								<iaixsl:when test="(page/prepaid/details/@wykonane = 's')">Order cancelled.</iaixsl:when>
								<iaixsl:when test="(page/prepaid/details/@wykonane = 'o')">Order in progress.</iaixsl:when>
								<iaixsl:when test="(page/prepaid/details/@wykonane = 'p')">Order ready.</iaixsl:when>
								<iaixsl:when test="(page/prepaid/details/@wykonane = 'h')">Order held.</iaixsl:when>
								<iaixsl:when test="(page/prepaid/details/@wykonane = 'w')">Awaiting payment</iaixsl:when>
								<iaixsl:when test="(page/prepaid/details/@wykonane = 'd')">Awaiting delivery</iaixsl:when>
								<iaixsl:when test="(page/prepaid/details/@wykonane = 'z')">Return</iaixsl:when>
								<iaixsl:when test="(page/prepaid/details/@wykonane = 'k')">Canceled</iaixsl:when>
								<iaixsl:when test="(page/prepaid/details/@wykonane = 'r')">Complaint</iaixsl:when>
								<iaixsl:when test="(page/prepaid/details/@wykonane = 'j')">Merged</iaixsl:when>
								<iaixsl:when test="(page/prepaid/details/@wykonane = 'l')">Lost</iaixsl:when>
								<iaixsl:when test="(page/prepaid/details/@wykonane = 'a')">In progress</iaixsl:when>
								<iaixsl:when test="(page/prepaid/details/@wykonane = 'b')">Packed</iaixsl:when>
							</iaixsl:choose>
						</strong>
						<iaixsl:if test="not(page/prepaid/status_explanation = '')">
							<a href="#show_status_explanation" class="orderdetails_info__status d-flex align-items-center justify-content-center ml-1"/>
							<div class="orderdetails_info__description d-none"><iaixsl:value-of disable-output-escaping="yes" select="page/prepaid/status_explanation"/></div>
						</iaixsl:if>
					</div>
					<div class="orderdetails_info__dates">
						<span class="orderdetails_info__number">Order ID <iaixsl:value-of select="page/prepaid/details/@orderid"/></span>
						<span class="orderdetails_info__date"> from <iaixsl:value-of select="page/prepaid/details/@datetime"/></span>
					</div>
				</div>
			</section>

			<iaixsl:if test="/shop/page/prepaid/opinions_forms/trusted_shops"> </iaixsl:if>
			<iaixsl:if test="/shop/page/prepaid/editlink/@active='y'"> </iaixsl:if>
			<iaixsl:if test="/shop/page/prepaid/cancellink/@active='y'"> </iaixsl:if>
			<iaixsl:if test="/shop/page/prepaid/confirmlink/@link"> </iaixsl:if>
			<iaixsl:if test="/shop/page/prepaid/cancellink/@link"> </iaixsl:if>
			<iaixsl:if test="/shop/page/prepaid/cancellink/@link"> </iaixsl:if>
		<!--Płatności do zamówienia (orderdetails_payments, 114818.1)-->

				<iaixsl:variable name="payments_in_row">7</iaixsl:variable>

				
						<div id="orderdetails_payments" class="orderdetails_payments">
								<iaixsl:attribute name="data-cancel_link">
										<iaixsl:choose>
												<iaixsl:when test="page/prepaid/prepaid_history/item[position() = last()]/@cancel_link">
														<iaixsl:value-of select="page/prepaid/prepaid_history/item[position() = last()]/@cancel_link"/>
												</iaixsl:when>
												<iaixsl:otherwise>false</iaixsl:otherwise>
										</iaixsl:choose>
								</iaixsl:attribute>
								<iaixsl:if test="page/prepaid/prepaid_history/item">
									<iaixsl:if test="page/prepaid/details/@paymentstatus != 'g' and /shop/page/prepaid_methods/item and (page/prepaid/prepaid_history/item[position() = last()]/@status = 'n' or page/prepaid/prepaid_history/@show_payment_button = 'true')">
										<div class="orderdetails_payments__show_container d-flex justify-content-end mb-4 d-md-none">
											<a href="#orderdetails_payments_content" class="orderdetails_payments__show">View payment history</a>
										</div>
									</iaixsl:if>
										<div id="orderdetails_payments_content" class="orderdetails_payments__content d-md-block">
                        <iaixsl:if test="page/prepaid/details/@paymentstatus != 'g' and /shop/page/prepaid_methods/item and (page/prepaid/prepaid_history/item[position() = last()]/@status = 'n' or page/prepaid/prepaid_history/@show_payment_button = 'true')">
                            <iaixsl:attribute name="style">display: none;</iaixsl:attribute>
                        </iaixsl:if>
												<div class="orderdetails_payments__label d-flex justify-content-start">
													<div class="orderdetails_payments__label_wrapper pr-2 d-flex align-items-center">
														<strong class="orderdetails_payments__label_text">Payment history </strong>
														<iaixsl:if test="page/prepaid/order/@payment_info = 'true'">
																<a href="#payment_status_explanation" class="show_status_explanation orderdetails_payments__status d-flex align-items-center justify-content-center ml-1"/>
																<div class="orderdetails_payments__description d-none"><iaixsl:value-of disable-output-escaping="yes" select="page/prepaid/payment_status_explanation"/></div>
														</iaixsl:if>
													</div>
												</div>
												<div class="orderdetails_payments__history">
													<iaixsl:for-each select="page/prepaid/prepaid_history/item">
														<iaixsl:if test="not(count(/shop/page/prepaid/prepaid_history/item) - position() > 10)">
															<div class="orderdetails_payments__item d-flex align-items-center">
																
																<div class="orderdetails_payments__icon mr-2">
																	<iaixsl:if test="@icon">
																			<img>
																					<iaixsl:attribute name="src"><iaixsl:value-of select="@icon"/></iaixsl:attribute>
																					<iaixsl:attribute name="alt"><iaixsl:value-of select="@payment_name"/></iaixsl:attribute>
																			</img>
																	</iaixsl:if>
																</div>
																<div class="orderdetails_payments__wrapper">
																	<strong class="orderdetails_payments__date">
																		<iaixsl:choose>
																				<iaixsl:when test="dates/date_cancelled/@date">
																						<iaixsl:value-of select="dates/date_cancelled/@date"/>
																				</iaixsl:when>
																				<iaixsl:when test="dates/date_confirm/@date">
																						<iaixsl:value-of select="dates/date_confirm/@date"/>
																				</iaixsl:when>
																				<iaixsl:when test="dates/date_add/@date">
																						<iaixsl:value-of select="dates/date_add/@date"/>
																				</iaixsl:when>
																		</iaixsl:choose>
																	</strong>
																	<div class="orderdetails_payments__explanation">
																		<iaixsl:choose>
																				<iaixsl:when test="dates/date_canceled/@date">
																						<iaixsl:choose>
																								<iaixsl:when test="amount/@mark='negativ'">
																										You have selected but you have given up your return
																								</iaixsl:when>
																								<iaixsl:otherwise>
																										You have selected but you have canceled the payment
																								</iaixsl:otherwise>
																						</iaixsl:choose>
																				</iaixsl:when>
																				<iaixsl:otherwise>
																						<iaixsl:choose>
																								<iaixsl:when test="amount/@mark='negativ'">
																										You have selected
																								</iaixsl:when>
																								<iaixsl:otherwise>
																										You have selected
																								</iaixsl:otherwise>
																						</iaixsl:choose>
																				</iaixsl:otherwise>
																		</iaixsl:choose>

																		<iaixsl:choose>
																				<iaixsl:when test="@payment_id='27'"> 
																						Balance (customer account)
																				</iaixsl:when>
																				<iaixsl:when test="@payment_id='38'"> 
																						Trade Credit
																				</iaixsl:when>
																				<iaixsl:otherwise>
																						<iaixsl:value-of select="@payment_name"/>
																				</iaixsl:otherwise>
																		</iaixsl:choose>

																		<iaixsl:if test="dates/date_canceled/@date">
																				<iaixsl:choose>
																						<iaixsl:when test="amount/@mark='negativ'">
																								 for value of 
																						</iaixsl:when>
																						<iaixsl:otherwise>
																								 for value of 
																						</iaixsl:otherwise>
																				</iaixsl:choose>
																		</iaixsl:if>

																		<iaixsl:if test="not(dates/date_canceled/@date)">
																				<iaixsl:choose>
																						<iaixsl:when test="amount/@mark='negativ'">
																								 as a form of return.
																								 Amount to return is 
																						</iaixsl:when>
																						<iaixsl:otherwise>
																								 as a payment method.
																								<iaixsl:choose>
																									<iaixsl:when test="@status = 'y'">Paid </iaixsl:when>
																									<iaixsl:otherwise>The amount to be paid is </iaixsl:otherwise>
																								</iaixsl:choose>
																						</iaixsl:otherwise>
																				</iaixsl:choose>
																		</iaixsl:if>

																		<iaixsl:value-of select="amount/client_currency/@value_formatted"/>.

																		<iaixsl:if test="@status = 'n'">
																				<iaixsl:if test="@automatic_booking = '1'">
																						<br/>Payment will be booked automatically.
																				</iaixsl:if>
																				<iaixsl:if test="not(amount/@mark='negativ')">
																						<iaixsl:if test="additional_info/data">
																								<iaixsl:choose>
																										<iaixsl:when test="@other_payments= 'true'">
																												<br/>Make a payment on the data specified below or select different payment method
																										</iaixsl:when>
																										<iaixsl:otherwise>
																												<br/>Make a payment on the data specified below:
																										</iaixsl:otherwise>
																								</iaixsl:choose>

																								<div class="orderdetails_payments__transfer pt-2 pb-1">
																									<div class="orderdetails_payments__transfer_item d-flex pb-2 pb-sm-1">
																										<span class="orderdetails_payments__transfer_name">Recipient name: </span>
																										<strong class="orderdetails_payments__transfer_value"><iaixsl:value-of select="additional_info/data/@receiver"/></strong>
																									</div>
																									<div class="orderdetails_payments__transfer_item d-flex pb-2 pb-sm-1">
																										<span class="orderdetails_payments__transfer_name">Account number: </span>
																										<strong class="orderdetails_payments__transfer_value"><iaixsl:value-of select="additional_info/data/@account"/></strong>
																									</div>
																									<iaixsl:if test="additional_info/data/@bankname != ''">
																										<div class="orderdetails_payments__transfer_item d-flex pb-2 pb-sm-1">
																											<span class="orderdetails_payments__transfer_name">Bank: </span>
																											<strong class="orderdetails_payments__transfer_value"><iaixsl:value-of select="additional_info/data/@bankname"/></strong>
																										</div>
																									</iaixsl:if>
																									<iaixsl:if test="additional_info/data/@swift_bic != ''">
																										<div class="orderdetails_payments__transfer_item d-flex pb-2 pb-sm-1">
																											<span class="orderdetails_payments__transfer_name">SWIFT: </span>
																											<strong class="orderdetails_payments__transfer_value"><iaixsl:value-of select="additional_info/data/@swift_bic"/></strong>
																										</div>
																									</iaixsl:if>
																									<div class="orderdetails_payments__transfer_item d-flex pb-2 pb-sm-1">
																										<span class="orderdetails_payments__transfer_name">Transfer title: </span>
																										<strong class="orderdetails_payments__transfer_value"><iaixsl:value-of select="additional_info/data/@title"/></strong>
																									</div>
																									<div class="orderdetails_payments__transfer_item d-flex pb-2 pb-sm-1">
																										<span class="orderdetails_payments__transfer_name">Transfer amount: </span>
																										<strong class="orderdetails_payments__transfer_value"><iaixsl:value-of select="amount/client_currency/@value_formatted"/></strong>
																									</div>
																								</div>
																						</iaixsl:if>
																				</iaixsl:if>
																				<iaixsl:if test="@first_pay = 'false' and /shop/page/prepaid/details/@msg = ''">
																					<strong class="orderdetails_payments__unfinished d-block">If, for some reason, you have not completed the payment process pay again.</strong>
																				</iaixsl:if>
																		</iaixsl:if>
																	</div>
																</div>
															</div>
														</iaixsl:if>
													</iaixsl:for-each>
												</div>
										</div>


								</iaixsl:if>
						</div>
				

				<iaixsl:if test="page/prepaid/details/@paymentstatus != 'g' and /shop/page/prepaid_methods/item and (page/prepaid/prepaid_history/item[position() = last()]/@status = 'n' or page/prepaid/prepaid_history/@show_payment_button = 'true')">
					<div class="orderdetails_payment_methods_container bg_alter  row mx-0">
						<iaixsl:if test="page/prepaid/prepaid_history/item[position() = last()]/@status = 'n' and /shop/page/prepaid/details/@msg = '' and /shop/page/prepaid/prepaid_history/@other_payments='true'">
							<div class="orderdetails_retry col-12 col-md-8 col-lg-7 mr-lg-auto align-items-center justify-content-center flex-column px-2 mb-3 px-sm-3 flex-sm-row mb-sm-0">
								<iaixsl:attribute name="data-payform_id"><iaixsl:value-of select="page/prepaid/prepaid_history/item[position() = last()]/@payment_form_id"/></iaixsl:attribute>
								<a href="#orderdetails_retry_same" class="orderdetails_retry__button --same btn --solid mx-md-3">Retry the same payment</a>
								<div class="orderdetails_retry__or d-flex flex-column align-items-center my-3 mx-sm-4 my-sm-0">
									<span class="orderdetails_retry__or_text">or if you had a problem with the selected payment</span>
								</div>
								<a href="#orderdetails_retry_new" class="orderdetails_retry__button --new btn --solid">Choose a different payment method</a>
							</div>
						</iaixsl:if>

				<div id="orderdetails_prepaid_methods" class="orderdetails_prepaid_methods col-md-8 col-12 mb-3 mb-md-0" data-action="/order-newpayment.php" data-method="post">
					<iaixsl:attribute name="data-action">/order-newpayment.php?order=<iaixsl:value-of select="/shop/page/prepaid/details/@id"/></iaixsl:attribute>
					<iaixsl:if test="/shop/page/prepaid/details/@paymentlink">
						<iaixsl:attribute name="data-action"><iaixsl:value-of select="/shop/page/prepaid/details/@paymentlink"/></iaixsl:attribute>
					</iaixsl:if>
					<iaixsl:if test="page/prepaid/prepaid_history/item[position() = last()]/@status = 'n' and /shop/page/prepaid/details/@msg = ''">
						<iaixsl:attribute name="style">display: none;</iaixsl:attribute>
					</iaixsl:if>
					<iaixsl:if test="not(/shop/page/prepaid/details/@allowChoosePaymentType = 'n' and /shop/page/prepaid/prepaid_history/item[position()=last()]/@payment_id = '38')">
						<div class="prepaid_payitems_wrapper">
							<iaixsl:if test="/shop/page/groupList/item">
								<iaixsl:for-each select="/shop/page/groupList/item">
									<iaixsl:variable name="groupID"><iaixsl:value-of select="@id"/></iaixsl:variable>
									<iaixsl:if test="/shop/page/prepaid_methods/item[@group = $groupID]">
										<div class="payments_group">
											<iaixsl:if test="/shop/page/prepaid/prepaid_history/item[position()=last()]/@first_pay = 'true' and /shop/page/prepaid/prepaid_history/item[position()=last()]/@pay_link and /shop/page/prepaid_methods/item[@group = $groupID]/@icon = /shop/page/prepaid/prepaid_history/item[position() = last()]/@icon">
												<iaixsl:attribute name="class">payments_group group_open</iaixsl:attribute>
											</iaixsl:if>
											<iaixsl:attribute name="id"><iaixsl:value-of select="@id"/>_payment</iaixsl:attribute>
                                                <iaixsl:if test="@single_form = 'true'">
                                                    <iaixsl:attribute name="data-single_form">true</iaixsl:attribute>
                                                </iaixsl:if>
												<iaixsl:if test="@id = 'simple_transfer'">
													<input value="110" type="radio" name="payform_id" class="hidden_input" autocomplete="off">
														<iaixsl:if test="/shop/page/prepaid/prepaid_history/item[position()=last()]/@first_pay = 'true' and /shoppage/prepaid/prepaid_history/item[position()=last()]/@pay_link and /shop/page/prepaid_methods/item[@group = $groupID]/@icon = /shop/page/prepaid/prepaid_history/item[position() = last()]/@icon">
															<iaixsl:attribute name="checked">checked</iaixsl:attribute>
														</iaixsl:if>
													</input>
												</iaixsl:if>
												<iaixsl:if test="@id = 'blik'">
													<input value="177" type="radio" name="payform_id" class="hidden_input" autocomplete="off">
														<iaixsl:if test="/shop/page/prepaid/prepaid_history/item[position()=last()]/@first_pay = 'true' and /shop/page/prepaid/prepaid_history/item[position()=last()]/@pay_link and /shop/page/prepaid_methods/item[@group = $groupID]/@icon = /shop/page/prepaid/prepaid_history/item[position() = last()]/@icon">
															<iaixsl:attribute name="checked">checked</iaixsl:attribute>
														</iaixsl:if>
													</input>
												</iaixsl:if>

												<input type="radio" name="selected_group" class="selected_group" autocomplete="off">
													<iaixsl:attribute name="id"><iaixsl:value-of select="@id"/>_input</iaixsl:attribute>
													<iaixsl:if test="/shop/page/prepaid/prepaid_history/item[position()=last()]/@first_pay = 'true' and /shop/page/prepaid/prepaid_history/item[position()=last()]/@pay_link and /shop/page/prepaid_methods/item[@group = $groupID]/@icon = /shop/page/prepaid/prepaid_history/item[position() = last()]/@icon">
														<iaixsl:attribute name="checked">checked</iaixsl:attribute>
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
													<span class="expand_button"><i class="icon-angle-down"></i></span>
												</span>

											</label>
											

											<iaixsl:if test="/shop/page/prepaid_methods/item[@group = $groupID] and not(@id = 'blik')  and not(@id = 'simple_transfer')">
												<div class="payment_content visible-desktop">
													<a class="close_popup_payment" href="#close">x</a>
													<iaixsl:for-each select="/shop/page/prepaid_methods/item[@group = $groupID]">
														<div class="prepaid_payment">

															<iaixsl:attribute name="id">payment_<iaixsl:value-of select="@id"/></iaixsl:attribute>
															<iaixsl:attribute name="title"></iaixsl:attribute>
															

																<input name="payform_id" type="radio" class="orderdetails_radio" autocomplete="off">
																	<iaixsl:attribute name="value"><iaixsl:value-of select="@id"/></iaixsl:attribute>
																	<iaixsl:attribute name="id">payform_<iaixsl:value-of select="@id"/></iaixsl:attribute>
																	<iaixsl:if test="@checked='true'">
																		<iaixsl:attribute name="checked">checked</iaixsl:attribute>
																	</iaixsl:if>
																	<iaixsl:if test="/shop/page/prepaid/prepaid_history/item[position()=last()]/@pay_link and /shop/page/prepaid/prepaid_history/item[position()=last()]/@first_pay = 'true' and @icon = /shop/page/prepaid/prepaid_history/item[position() = last()]/@icon">
																		<iaixsl:attribute name="checked">checked</iaixsl:attribute>
																	</iaixsl:if>
																</input>


															<label class="prepaid_payment_sub">

																<iaixsl:attribute name="for">payform_<iaixsl:value-of select="@id"/></iaixsl:attribute>

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
																		<iaixsl:if test="(@id = '28') and (@allProducts = '0')"><span class="prepaid_payment_lukaswarning">Nie wszystkie umieszczone w koszyku produkty umożliwią zakup z ratami Lukas Bank. Przejdź do szczegółów każdego z produktów aby dowiedzieć się które z nich umożliwiają taki zakup. Jeżeli zdecydujesz się na zakup na raty, opłata za te produkty będzie musiała być wniesiona odrębnie pozostałymi sposobami płatności.</span></iaixsl:if>
																	</iaixsl:if>
																</div>
															</iaixsl:if>
														</div>
													</iaixsl:for-each>
													<iaixsl:if test="@id = 'card'">
														<div id="card_payment_container"/>
													</iaixsl:if>
												</div>
											</iaixsl:if>
											<iaixsl:if test="@id = 'simple_transfer'">
												<div class="payment_content p-0">
													<div id="simple_transfer_payment_container" class="p-md-3"/>
												</div>
											</iaixsl:if>
                                            <iaixsl:if test="@id = 'blik'">
												<div class="payment_content justify-content-center p-0">
													<div id="blik_payment_container"/>
												</div>
											</iaixsl:if>
											<div class="mobile_payment_content">
												<iaixsl:if test="@id != 'simple_transfer'">
													<a class="change_payment_method" href="#changed_payment">Change payment</a>
												</iaixsl:if>
											</div>
										</div>
									</iaixsl:if>
								</iaixsl:for-each>
							</iaixsl:if>

						</div>
										</iaixsl:if>
				</div>
				<div class="orderdetails_summary col-md-4 col-12">
					<div class="orderdetails_summary_info">
						<iaixsl:if test="/shop/page/prepaid/points/@display">
							<div class="orderdetails_summary_debit">
								Currently you have 
								<b><iaixsl:value-of select="/shop/page/prepaid/points/@client_points"/><span> pts</span></b>
								
							</div>
						</iaixsl:if>

						<iaixsl:if test="/shop/page/prepaid/insurance_forms/trusted_shops or /shop/page/prepaid/opinions_forms/trusted_shops/raiting_action">
							<iaixsl:if test="/shop/page/prepaid/insurance_forms/trusted_shops">
								<div id="trusted_shops">
									<div id="trusted_shops_img">
										<form method="post" target="_blank">
											<iaixsl:attribute name="action"><iaixsl:value-of select="/shop/page/prepaid/insurance_forms/trusted_shops/icon_form/@action"/></iaixsl:attribute>
											<iaixsl:value-of disable-output-escaping="yes" select="/shop/page/prepaid/insurance_forms/trusted_shops/icon_form/hidden_params"/>
											<input type="image">
												<iaixsl:attribute name="src"><iaixsl:value-of select="/shop/page/prepaid/insurance_forms/trusted_shops/icon_form/@icon_src"/></iaixsl:attribute>
												<iaixsl:attribute name="title"><iaixsl:value-of select="/shop/page/prepaid/insurance_forms/trusted_shops/icon_form/@title"/></iaixsl:attribute>
											</input>
										</form>
									</div>
									<div id="trusted_shops_info">
										<form method="post" target="_blank">
											<iaixsl:attribute name="action"><iaixsl:value-of select="/shop/page/prepaid/insurance_forms/trusted_shops/registration_form/@action"/></iaixsl:attribute>
											<iaixsl:value-of disable-output-escaping="yes" select="/shop/page/prepaid/insurance_forms/trusted_shops/registration_form/hidden_params"/>
											<p><iaixsl:value-of disable-output-escaping="yes" select="/shop/page/prepaid/insurance_forms/trusted_shops/registration_form/@descryption"/></p>
											<button type="submit">
												<iaixsl:value-of disable-output-escaping="yes" select="/shop/page/prepaid/insurance_forms/trusted_shops/registration_form/@button"/>
											</button>
										</form>
									</div>
								</div>
							</iaixsl:if>
						</iaixsl:if>
					</div>

					
						<div class="orderdetails_summary_price">
							<div class="orderdetails_calculations">
								<div class="orderdetails_product_summary">
									<label>Products value: </label>
									<strong><iaixsl:value-of select="page/prepaid/details/@currencycost_formatted"/></strong>
								</div>

								<iaixsl:if test="page/prepaid/details/@deliveryid != '47'">
									<div class="orderdetails_product_summary">
										<label>Additional charges: </label>
										<strong id="additional_cost_prepaid"><iaixsl:value-of select="page/prepaid/details/@currency_additional_cost_formatted"/></strong>
									</div>
								</iaixsl:if>
								<div style="clear:both"/>
							</div>
							<iaixsl:if test="page/prepaid/details/@deliveryid != '47'">
								<div class="orderdetails_total_summary">
									<label>
										Total: 
									</label>
									<strong id="currencytotal_prepaid"><iaixsl:value-of select="page/prepaid/details/@currencytotal_formatted"/> incl. VAT</strong>
									<iaixsl:if test="/shop/page/prepaid/points/@display">
										<span>
											 + 
											<iaixsl:value-of select="/shop/page/prepaid/points/@order_cost"/> pts
										</span>
									</iaixsl:if>
								</div>
							</iaixsl:if>
							
							<iaixsl:if test="(/shop/page/prepaid/details/@advance > 0)">
								<div class="orderdetails_product_summary advance">
										<label class="txt_wrap">Required advance payment: </label>
										<strong><iaixsl:value-of select="/shop/page/prepaid/details/@advance_formatted"/></strong>
								</div>
							</iaixsl:if>
							<iaixsl:if test="page/prepaid/prepaid_history/@currencysum and page/prepaid/prepaid_history/@currencysum != '0.00' and page/prepaid/prepaid_history/@currencysum != '-0.00' and /shop/page/prepaid/order/@payment_paid_formatted">
								<div class="orderdetails_product_summary already_paid">
									<label>Already paid:</label>
									<strong><iaixsl:value-of select="/shop/page/prepaid/order/@payment_paid_formatted"/></strong>
								</div>
								<div class="orderdetails_product_summary left_to_pay">
									<label>Left to pay:</label>
									<strong><iaixsl:value-of select="page/prepaid/prepaid_history/@currencysum_formatted"/></strong>
								</div>
							</iaixsl:if>
							<iaixsl:if test="(page/prepaid/prepaid_history/item[position()=last()]/@first_pay = 'false' and (page/prepaid/prepaid_history/item[position() = last()]/@status = 'n' or page/prepaid/prepaid_history/@show_payment_button = 'true')) or (page/prepaid/prepaid_history/item[position()=last()]/@payment_id = '38' and (page/prepaid/prepaid_history/item[position() = last()]/@status = 'n' or page/prepaid/prepaid_history/@show_payment_button = 'true'))">
								<iaixsl:for-each select="page/prepaid/prepaid_history/item[position()=last()]">
									<div class="selected_payment_history">
										<iaixsl:if test="@icon">
											<div class="selected_payment_history_icon">
												<img>
													<iaixsl:attribute name="src"><iaixsl:value-of select="@icon"/></iaixsl:attribute>
													<iaixsl:attribute name="alt"><iaixsl:value-of select="@payment_name"/></iaixsl:attribute>
												</img>
											</div>
										</iaixsl:if>
										<div class="selected_payment_history_description">
											<iaixsl:choose>
												<iaixsl:when test="dates/date_canceled/@date">
													<iaixsl:choose>
														<iaixsl:when test="amount/@mark='negativ'">
															You have selected but you have given up your return
														</iaixsl:when>
														<iaixsl:otherwise>
															You have selected but you have canceled the payment
														</iaixsl:otherwise>
													</iaixsl:choose>
												</iaixsl:when>
												<iaixsl:otherwise>
													<iaixsl:choose>
														<iaixsl:when test="amount/@mark='negativ'">
															You have selected
														</iaixsl:when>
														<iaixsl:otherwise>
															You have selected
														</iaixsl:otherwise>
													</iaixsl:choose>
												</iaixsl:otherwise>
											</iaixsl:choose>
											<strong><iaixsl:value-of select="@payment_name"/></strong>
											<iaixsl:choose>
												<iaixsl:when test="amount/@mark='negativ'">
													 as a form of return.
												</iaixsl:when>
												<iaixsl:otherwise>
													 as a payment method.
												</iaixsl:otherwise>
											</iaixsl:choose>
											<br/>
											<iaixsl:if test="@first_pay = 'false' and @status = 'n' and /shop/page/prepaid/details/@msg = ''">
												<strong class="selected_payment_history_unfinished">If, for some reason, you have not completed the payment process pay again.</strong>
											</iaixsl:if>

										</div>
									</div>
								</iaixsl:for-each>
							</iaixsl:if>
						</div>
					

          <iaixsl:if test="/shop/allow_division_order/@turn_on = 'yes'">
            <div class="orderdetails_division">
              <strong>After the payment, the order will be divided into two separate ones.</strong>
            </div>
          </iaixsl:if>
				</div>

				<iaixsl:variable name="prepaid_advance_text">Advance payment required </iaixsl:variable>
				<iaixsl:variable name="prepaid_advance_button_text">Pay an advance payment</iaixsl:variable>

						</div>

				</iaixsl:if>

				<section class="prepaid_buttons d-flex align-items-center flex-wrap justify-content-end mb-4">
					<iaixsl:variable name="prepaidProForma"></iaixsl:variable>
					<iaixsl:if test="/shop/page/prepaid/documents/document/@type='invoice_proforma' and $prepaidProForma">
						<a class="prepaid_buttons__button --proforma btn --icon-left icon-file-text ml-2 ml-md-3 ml-lg-4">
						<iaixsl:attribute name="title"></iaixsl:attribute>
						<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/page/prepaid/documents/document[@type='invoice_proforma']/@link"/></iaixsl:attribute></a>
					</iaixsl:if>

					<iaixsl:if test="page/prepaid/editlink/@active = 'y'">
						<a class="prepaid_buttons__button --edit btn --icon-left icon-pencil ml-2 ml-md-3 ml-lg-4">
						<iaixsl:attribute name="title">Click to go to the order edition.</iaixsl:attribute>
						<iaixsl:attribute name="href"><iaixsl:value-of select="page/prepaid/editlink/@link"/></iaixsl:attribute>Edit order</a>
					</iaixsl:if>

					<iaixsl:if test="/shop/page/prepaid/opinions_forms/trusted_shops/raiting_action">
						<a class="prepaid_buttons__button --opinions btn --icon-left icon-star ml-2 ml-md-3 ml-lg-4" target="_blank">
							<iaixsl:attribute name="title">Rate our store!</iaixsl:attribute>
							<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/page/prepaid/opinions_forms/trusted_shops/raiting_action"/></iaixsl:attribute>
							Rate our store!
						</a>
					</iaixsl:if>

					<iaixsl:if test="page/prepaid/confirmlink/@link">
						<a class="prepaid_buttons__button --resend btn --icon-left icon-envelope ml-2 ml-md-3 ml-lg-4">
							<iaixsl:attribute name="title">Resend the e-mail with the order confirmation link</iaixsl:attribute>
							<iaixsl:attribute name="href"><iaixsl:value-of select="page/prepaid/confirmlink/@link"/></iaixsl:attribute>
							Confirm again by e-mail
						</a>
					</iaixsl:if>

					<iaixsl:if test="(page/prepaid/cancellink/@active='y') and not(page/prepaid/order/@payment_paid)">
						<a class="prepaid_buttons__button --cancel btn --icon-left icon-remove orderdetails_info_cancel ml-2 ml-md-3 ml-lg-4">
							<iaixsl:attribute name="onclick">return confirm('Order cancelation is irreversible. Press "cancel order" button to continue.')</iaixsl:attribute>
							<iaixsl:attribute name="title">Order cancelation</iaixsl:attribute>
							<iaixsl:attribute name="href"><iaixsl:value-of select="page/prepaid/cancellink/@link"/></iaixsl:attribute>
							Cancel order
						</a>
					</iaixsl:if>
				</section>

				<script>
						var orderID = '<iaixsl:value-of disable-output-escaping="yes" select="/shop/page/prepaid/details/@id"/>';
						var orderKey = '<iaixsl:value-of disable-output-escaping="yes" select="/shop/page/prepaid/payback/@key"/>';
						var orderFirstPay = '';
						<iaixsl:if test="page/prepaid/prepaid_history/item[position()=last()]/@first_pay = 'true'">
								<iaixsl:if test="page/prepaid/prepaid_history/item[position()=last()]/@pay_link">
										orderFirstPay = '<iaixsl:value-of disable-output-escaping="yes" select="page/prepaid/prepaid_history/item[position()=last()]/@pay_link"/><iaixsl:text disable-output-escaping="yes">&amp;ajax=true</iaixsl:text>';
								</iaixsl:if>
						</iaixsl:if>
				</script>


				<div style="display:none">
						<iaixsl:for-each select="/shop/page/payments_static/*">
								<div data-altid="orderdetails_payments_payment_card">
										<iaixsl:attribute name="class">embeded_card_form_<iaixsl:value-of select="@id"/></iaixsl:attribute>

										<div class="payment_card_sub">
												<div class="payment_card_info_new" data-altid="payment_card_info_new">
														You are in a secure SSL connection that prevents data being viewed by unauthorized persons. While making a payment, you can decide if you want the card data to be saved in our system. By giving consent, you will not have to provide the data in the future again.
												</div>

												<iaixsl:if test="payform/headermessage or payform/headerlogo">
														<div class="payment_head_info" style="display: none;">
																<iaixsl:if test="payform/headermessage">
																		<div class="payment_headermessage">
																				<iaixsl:value-of disable-output-escaping="yes" select="payform/headermessage"/>
																		</div>
																</iaixsl:if>
																<iaixsl:if test="payform/headerlogo">
																		<div class="payment_headerlogo">
																				<img>
																						<iaixsl:attribute name="src"><iaixsl:value-of select="payform/headerlogo"/></iaixsl:attribute>
																				</img>
																		</div>
																</iaixsl:if>
														</div>
												</iaixsl:if>

												<form class="payment_card clearfix">
														<iaixsl:attribute name="action"><iaixsl:value-of select="payform/@action"/></iaixsl:attribute>
														<iaixsl:attribute name="method"><iaixsl:value-of select="payform/@method"/></iaixsl:attribute>
														<iaixsl:for-each select="payform/item">
																<iaixsl:choose>
																		<iaixsl:when test="@name = 'creditCard[system]'">
																				<div class="payment_card_formel cc_wrapper">
																						<label for="credit_card_system" class="card_type_label">Types of cards supported:</label>
																						<div class="clear_data" data-altid="credit_card_system">
																								<iaixsl:for-each select="option">
																										<label class="card-icon">
																												<iaixsl:attribute name="id">card_icon_<iaixsl:value-of select="@value"/></iaixsl:attribute>
																												<input type="radio" class="validate required" data-serialize="#dialog_wrapper #credit_card_system input">
																														<iaixsl:attribute name="value"><iaixsl:value-of select="@value"/></iaixsl:attribute>
																														<iaixsl:attribute name="name"><iaixsl:value-of select="../@name"/></iaixsl:attribute>
																														<iaixsl:if test="@name != ''">
																																<iaixsl:attribute name="data-name"><iaixsl:value-of select="@name"/></iaixsl:attribute>
																														</iaixsl:if>
																														<iaixsl:if test="@altName != ''">
																																<iaixsl:attribute name="data-altName"><iaixsl:value-of select="@altName"/></iaixsl:attribute>
																														</iaixsl:if>
																												</input>
																												<div>
																														<img>
																																<iaixsl:attribute name="src"><iaixsl:value-of select="@data-img"/></iaixsl:attribute>
																																<iaixsl:attribute name="alt"><iaixsl:value-of select="@label"/></iaixsl:attribute>
																														</img>
																														<span><iaixsl:value-of select="@label"/></span>
																												</div>
																										</label>
																								</iaixsl:for-each>

																						</div>
																						

																				</div>
																		</iaixsl:when>
																		<iaixsl:when test="@name = 'creditCard[number]'">
																				<div class="form-group row clearfix">
																						<div class="col-12">
																								<label for="credit_card_number" class="control-label">Card number:</label>
																						</div>
																						<div class="has-feedback col-12 has-required">
																								<input type="text" data-altid="credit_card_number" class="form-control validate" data-serialize="#dialog_wrapper #credit_card_number">
																										<iaixsl:attribute name="name"><iaixsl:value-of select="@name"/></iaixsl:attribute>
																										<iaixsl:if test="@value != ''">
																												<iaixsl:attribute name="value"><iaixsl:value-of select="@value"/></iaixsl:attribute>
																										</iaixsl:if>
																										<iaixsl:if test="@name != ''">
																												<iaixsl:attribute name="data-name"><iaixsl:value-of select="@name"/></iaixsl:attribute>
																										</iaixsl:if>
																										<iaixsl:if test="@altName != ''">
																												<iaixsl:attribute name="data-altName"><iaixsl:value-of select="@altName"/></iaixsl:attribute>
																										</iaixsl:if>
																								</input>
																								<span class="form-control-feedback"/>
																						</div>
																						
																				</div>
																		</iaixsl:when>
																		<iaixsl:when test="@name = 'creditCard[endDateMonth]'">
																				<iaixsl:text disable-output-escaping="yes">&lt;div  class="row" &gt;</iaixsl:text>
																				<div class="form-group date_select col-7 col-sm-8">
																						<div class="row clearfix">
																								<div class="col-12">
																										<label for="credit_card_month" class="control-label">Expiry date:</label>
																								</div>
																								<div class="col-12">
																										<input type="text" data-altid="credit_card_month" class="form-control" data-serialize="#dialog_wrapper #credit_card_month, #dialog_wrapper #credit_card_year">
																												<iaixsl:attribute name="name"><iaixsl:value-of select="@name"/></iaixsl:attribute>
																												<iaixsl:if test="@value != ''">
																														<iaixsl:attribute name="value"><iaixsl:value-of select="@value"/></iaixsl:attribute>
																												</iaixsl:if>
																												<iaixsl:if test="@name != ''">
																														<iaixsl:attribute name="data-name"><iaixsl:value-of select="@name"/></iaixsl:attribute>
																												</iaixsl:if>
																												<iaixsl:if test="@altName != ''">
																														<iaixsl:attribute name="data-altName"><iaixsl:value-of select="@altName"/></iaixsl:attribute>
																												</iaixsl:if>
																										</input>

																										<iaixsl:if test="../item[@name = 'creditCard[endDateYear]']/@name">

																												<span class="payment_card_expire"> / </span>
																												<input type="text" data-altid="credit_card_year" class="form-control" data-serialize="#dialog_wrapper #credit_card_month, #dialog_wrapper #credit_card_year">
																														<iaixsl:attribute name="name"><iaixsl:value-of select="../item[@name = 'creditCard[endDateYear]']/@name"/></iaixsl:attribute>
																														<iaixsl:attribute name="value"><iaixsl:value-of select="../item[@name = 'creditCard[endDateYear]']/@value"/></iaixsl:attribute>
																														<iaixsl:if test="@name != ''">
																																<iaixsl:attribute name="data-name"><iaixsl:value-of select="../item[@name = 'creditCard[endDateYear]']/@name"/></iaixsl:attribute>
																														</iaixsl:if>
																														<iaixsl:if test="../item[@name = 'creditCard[endDateYear]']/@altName != ''">
																																<iaixsl:attribute name="data-altName"><iaixsl:value-of select="../item[@name = 'creditCard[endDateYear]']/@altName"/></iaixsl:attribute>
																														</iaixsl:if>
																												</input>

																										</iaixsl:if>
																								</div>
																						</div>
																						
																				</div>

																		</iaixsl:when>
																		<iaixsl:when test="@name = 'creditCard[securityCode]'">
																				<div class="form-group security_code col-5 col-sm-4">
																						<div class="row clearfix">
																								<div class="col-12">
																										<label for="credit_card_code" class="control-label">CVV2/CVC2:</label>
																								</div>
																								<div class="has-feedback col-12 has-required">
																										<input type="text" data-altid="credit_card_code" class="form-control validate" data-serialize="#dialog_wrapper #credit_card_code">
																												<iaixsl:attribute name="name"><iaixsl:value-of select="@name"/></iaixsl:attribute>
																												<iaixsl:if test="@value != ''">
																														<iaixsl:attribute name="value"><iaixsl:value-of select="@value"/></iaixsl:attribute>
																												</iaixsl:if>
																												<iaixsl:if test="@name != ''">
																														<iaixsl:attribute name="data-name"><iaixsl:value-of select="@name"/></iaixsl:attribute>
																												</iaixsl:if>
																												<iaixsl:if test="@altName != ''">
																														<iaixsl:attribute name="data-altName"><iaixsl:value-of select="@altName"/></iaixsl:attribute>
																												</iaixsl:if>
																										</input>
																										<span class="form-control-feedback"/>
																								</div>
																						</div>
																				</div>
																				<iaixsl:text disable-output-escaping="yes">&lt;/div&gt;</iaixsl:text>
																		</iaixsl:when>
																		<iaixsl:when test="@name = 'creditCard[name]'">
																				<div class="form-group row clearfix">
																						<div class="col-12">
																								<label for="credit_card_name" class="control-label">First and last name:</label>
																						</div>
																						<div class="has-feedback col-12 has-required">
																								<input type="text" data-altid="credit_card_name" class="form-control validate" data-serialize="#dialog_wrapper #credit_card_name">
																										<iaixsl:attribute name="name"><iaixsl:value-of select="@name"/></iaixsl:attribute>
																										<iaixsl:if test="@value != ''">
																												<iaixsl:attribute name="value"><iaixsl:value-of select="@value"/></iaixsl:attribute>
																										</iaixsl:if>
																										<iaixsl:if test="@name != ''">
																												<iaixsl:attribute name="data-name"><iaixsl:value-of select="@name"/></iaixsl:attribute>
																										</iaixsl:if>
																										<iaixsl:if test="@altName != ''">
																												<iaixsl:attribute name="data-altName"><iaixsl:value-of select="@altName"/></iaixsl:attribute>
																										</iaixsl:if>
																								</input>
																								<span class="form-control-feedback"/>
																						</div>
																				</div>
																		</iaixsl:when>
																		<iaixsl:when test="@name = 'payment'">
																				<input data-altid="credit_card_payment" type="hidden">
																						<iaixsl:attribute name="name"><iaixsl:value-of select="@name"/></iaixsl:attribute>
																						<iaixsl:if test="@value != ''">
																								<iaixsl:attribute name="value"><iaixsl:value-of select="@value"/></iaixsl:attribute>
																						</iaixsl:if>
																						<iaixsl:if test="@name != ''">
																								<iaixsl:attribute name="data-name"><iaixsl:value-of select="@name"/></iaixsl:attribute>
																						</iaixsl:if>
																						<iaixsl:if test="@altName != ''">
																								<iaixsl:attribute name="data-altName"><iaixsl:value-of select="@altName"/></iaixsl:attribute>
																						</iaixsl:if>
																				</input>
																		</iaixsl:when>
																		<iaixsl:when test="@name = 'payformid'">
																				<input data-altid="credit_card_payformid" type="hidden">
																						<iaixsl:attribute name="name"><iaixsl:value-of select="@name"/></iaixsl:attribute>
																						<iaixsl:if test="@value != ''">
																								<iaixsl:attribute name="value"><iaixsl:value-of select="@value"/></iaixsl:attribute>
																						</iaixsl:if>
																						<iaixsl:if test="@name != ''">
																								<iaixsl:attribute name="data-name"><iaixsl:value-of select="@name"/></iaixsl:attribute>
																						</iaixsl:if>
																						<iaixsl:if test="@altName != ''">
																								<iaixsl:attribute name="data-altName"><iaixsl:value-of select="@altName"/></iaixsl:attribute>
																						</iaixsl:if>
																				</input>
																		</iaixsl:when>

																		<iaixsl:when test="@type = 'hidden'">
																				<input type="hidden">
																						<iaixsl:attribute name="name"><iaixsl:value-of select="@name"/></iaixsl:attribute>
																						<iaixsl:if test="@value != ''">
																								<iaixsl:attribute name="value"><iaixsl:value-of select="@value"/></iaixsl:attribute>
																						</iaixsl:if>
																				</input>
																		</iaixsl:when>

																</iaixsl:choose>
														</iaixsl:for-each>
														<div class="clear_data cc_wrapper" data-altid="credit_card_agree">

														</div>
														<div class="credit_card_submit" data-altid="credit_card_submit">
																<button class="credit_card_submit_no_store btn --medium --outline" type="submit">
																		<iaixsl:attribute name="title">Pay without saving the card</iaixsl:attribute>
																		Pay without saving the card
																</button>
																<button class="credit_card_submit_store btn --medium --solid" type="submit">
																		<iaixsl:attribute name="title">Pay and save the card</iaixsl:attribute>
																		Pay and save the card
																</button>
														</div>
														<div class="clear_data cc_wrapper" data-altid="credit_card_buttons">

														</div>
														<div class="row">
																<div class="credit_card_pci_dss col-12">
																		<span class="pci_dss_label">Payment Card Industry Data Security Standard</span>
																		<span class="pci_dss_icon_container">
																				<img src="/gfx/eng/pci_css_logo.png?r=1612959986" alt="PCI DSS Compilant"/>
																		</span>
																</div>
														</div>
												</form>
										</div>
								</div>
						</iaixsl:for-each>



				</div>

				<iaixsl:if test="/shop/page/prepaid_methods/item[@id = '190']">
						<div id="giftcard_data" class="giftcard_form_wrapp" style="display: none;">
								<form class="giftcard_form" id="giftcard_form">
										<iaixsl:attribute name="data-action">/order-newpayment.php?order=<iaixsl:value-of select="/shop/page/prepaid/details/@id"/></iaixsl:attribute>
										<iaixsl:if test="/shop/page/prepaid/details/@paymentlink">
												<iaixsl:attribute name="data-action"><iaixsl:value-of select="/shop/page/prepaid/details/@paymentlink"/></iaixsl:attribute>
										</iaixsl:if>
										<iaixsl:attribute name="action">/order-newpayment.php?order=<iaixsl:value-of select="/shop/page/prepaid/details/@id"/></iaixsl:attribute>
										<iaixsl:if test="/shop/page/prepaid/details/@paymentlink">
												<iaixsl:attribute name="action"><iaixsl:value-of select="/shop/page/prepaid/details/@paymentlink"/></iaixsl:attribute>
										</iaixsl:if>
										<input name="payform_id" type="checkbox" checked="checked" class="orderdetails_radio" value="190" id="payform_190"/>
										
										<p>Pay with your Gift card</p>
										
										<div class="giftcard_inputs">
												<div class="form-group row">
														<div class="col-12">
																<label class="control-label">Number:</label>
														</div>
														<div class="has-feedback col-12 has-required">
																<input class="form-control" value="" name="voucher_id" type="text">
																		<iaixsl:attribute name="placeholder">Your card number</iaixsl:attribute>
																</input>
																<span class="form-control-feedback"/>
														</div>
												</div>
												<div class="form-group row">
														<div class="col-12">
																<label class="control-label">PIN:</label>
														</div>
														<div class="has-feedback col-12 has-required">
																<input class="form-control" value="" name="pin_value" type="password">
																		<iaixsl:attribute name="placeholder">Your card PIN</iaixsl:attribute>
																</input>
																<span class="form-control-feedback"/>
														</div>
												</div>
										</div>
										<button class="btn --medium --solid">Enter your card</button>
								</form>
						</div>
				</iaixsl:if>

				<iaixsl:if test="/shop/page/prepaid_methods/item[@id = '2']">
						<div id="voucher_data" class="voucher_form_wrapp" style="display: none;">
								<form class="giftcard_form" id="voucher_form">
										<iaixsl:attribute name="data-action">/order-newpayment.php?order=<iaixsl:value-of select="/shop/page/prepaid/details/@id"/></iaixsl:attribute>
										<iaixsl:if test="/shop/page/prepaid/details/@paymentlink">
												<iaixsl:attribute name="data-action"><iaixsl:value-of select="/shop/page/prepaid/details/@paymentlink"/></iaixsl:attribute>
										</iaixsl:if>
										<iaixsl:attribute name="action">/order-newpayment.php?order=<iaixsl:value-of select="/shop/page/prepaid/details/@id"/></iaixsl:attribute>
										<iaixsl:if test="/shop/page/prepaid/details/@paymentlink">
												<iaixsl:attribute name="action"><iaixsl:value-of select="/shop/page/prepaid/details/@paymentlink"/></iaixsl:attribute>
										</iaixsl:if>
										<input name="payform_id" type="checkbox" checked="checked" class="orderdetails_radio" value="2" id="payform_2"/>
										
										<p>Pay with voucher</p>
										
										<div class="giftcard_inputs">
												<div class="form-group row">
														<div class="col-12">
																<label for="prepaid_voucher" class="control-label"></label>
														</div>
														<div class="has-feedback col-12 has-required">
																<input class="form-control" name="voucher_id" type="text" minlength="10"/>
																<span class="form-control-feedback"/>
														</div>
												</div>
										</div>
										<button class="btn --medium --solid">Apply voucher</button>

										<small>If you have more than one voucher, you can enter their numbers after confirming your present voucher.</small>
								</form>
						</div>
				</iaixsl:if>

				
				<div id="alert_cover" class="projector_alert_55916" style="display:none" onclick="Alertek.hide_alert();"></div>

				
				<iaixsl:if test="/shop/page/prepaid_methods/@extended_js"> </iaixsl:if>
				<iaixsl:if test="/shop/page/prepaid_methods/@internal_blik"> </iaixsl:if>
				<iaixsl:if test="/shop/page/prepaid/onside_terms/@active='y'"> </iaixsl:if>
				<iaixsl:if test="/shop/page/prepaid/editlink/@active='y'"> </iaixsl:if>
				<iaixsl:if test="page/prepaid/details/@paymentstatus"> </iaixsl:if>
				<iaixsl:if test="/shop/page/payments_static/embeded_card_form"> </iaixsl:if>
				<!--Lista zamówionych produktów (prepaid_order_products, 113576.1)-->
        <iaixsl:if test="page/ordered_products/product">

            
            <iaixsl:variable name="setIconLarge"></iaixsl:variable>



            <div id="prepaid_order_products">
                <h2 class="big_label">Ordered items</h2>
                <table class="ui-responsive table-stroke ui-table ui-table-reflow">
                    <thead>
                        <tr>
                            <th/>
                            <th/>
                            <iaixsl:if test="not(page/ordered_products/product/@size_id = 'uniw')">
                                <th>Size</th>
                            </iaixsl:if>

                            <iaixsl:if test="/shop/page/ordered_products/product[not(@code = '')]">
                                <th>
                                    Product code
                                </th>
                            </iaixsl:if>
                            <th>
                                Quantity
                            </th>
                            <th>
                                Value incl. VAT
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <iaixsl:for-each select="page/ordered_products/product">
                            <tr>
                                <td class="ordered-icon">
                                    <iaixsl:choose>
                                        <iaixsl:when test="@link">
                                            <a>
                                                <iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
                                                <iaixsl:choose>
                                                    <iaixsl:when test="$setIconLarge">
                                                        <img>
                                                            <iaixsl:attribute name="src"><iaixsl:value-of select="icon"/></iaixsl:attribute>
                                                            <iaixsl:attribute name="alt"><iaixsl:value-of select="@name"/></iaixsl:attribute>
                                                        </img>
                                                    </iaixsl:when>
                                                    <iaixsl:otherwise>
                                                        <img>
                                                            <iaixsl:attribute name="src"><iaixsl:value-of select="iconsmall"/></iaixsl:attribute>
                                                            <iaixsl:attribute name="alt"><iaixsl:value-of select="@name"/></iaixsl:attribute>
                                                        </img>
                                                    </iaixsl:otherwise>
                                                </iaixsl:choose>
                                            </a>
                                        </iaixsl:when>
                                        <iaixsl:otherwise>
                                            <iaixsl:choose>
                                                <iaixsl:when test="$setIconLarge">
                                                    <img>
                                                        <iaixsl:attribute name="src"><iaixsl:value-of select="icon"/></iaixsl:attribute>
                                                        <iaixsl:attribute name="alt"><iaixsl:value-of select="@name"/></iaixsl:attribute>
                                                    </img>
                                                </iaixsl:when>
                                                <iaixsl:otherwise>
                                                    <img>
                                                        <iaixsl:attribute name="src"><iaixsl:value-of select="iconsmall"/></iaixsl:attribute>
                                                        <iaixsl:attribute name="alt"><iaixsl:value-of select="@name"/></iaixsl:attribute>
                                                    </img>
                                                </iaixsl:otherwise>
                                            </iaixsl:choose>
                                        </iaixsl:otherwise>
                                    </iaixsl:choose>
                                </td>
                                <td class="ordered-name">
                                    <iaixsl:choose>
                                        <iaixsl:when test="@link">
                                            <a class="ordered__name --link">
																							<iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
																							<iaixsl:attribute name="title"><iaixsl:value-of select="@name"/></iaixsl:attribute>
																							<iaixsl:choose>
																								<iaixsl:when test="/shop/allow_division_order/@turn_on = 'yes' and @division = 'now'">
																									<iaixsl:attribute name="class">ordered__name --link --now</iaixsl:attribute>
																								</iaixsl:when>
																								<iaixsl:when test="/shop/allow_division_order/@turn_on = 'yes' and @division = 'later'">
																									<iaixsl:attribute name="class">ordered__name --link --later showTip</iaixsl:attribute>
																								</iaixsl:when>
																							</iaixsl:choose>
																							<iaixsl:value-of select="@name"/>
                                            </a>
                                        </iaixsl:when>
                                        <iaixsl:otherwise>
                                            <span class="ordered__name">
																							<iaixsl:choose>
																								<iaixsl:when test="/shop/allow_division_order/@turn_on = 'yes' and @division = 'now'">
																									<iaixsl:attribute name="class">ordered__name --now</iaixsl:attribute>
																								</iaixsl:when>
																								<iaixsl:when test="/shop/allow_division_order/@turn_on = 'yes' and @division = 'later'">
																									<iaixsl:attribute name="class">ordered__name --later showTip</iaixsl:attribute>
																								</iaixsl:when>
																							</iaixsl:choose>
																							<iaixsl:value-of select="@name"/>
                                            </span>
                                        </iaixsl:otherwise>
                                    </iaixsl:choose>

																		<iaixsl:if test="/shop/allow_division_order/@turn_on = 'yes' and @division = 'later'">
																		<div class="tooltipContent">
																			<iaixsl:attribute name="data-weeks"><iaixsl:value-of select="/shop/basket/shipping_division_time/@week_amount"/></iaixsl:attribute>
																			<iaixsl:attribute name="data-days"><iaixsl:value-of select="/shop/basket/shipping_division_time/@days"/></iaixsl:attribute>
																			<iaixsl:attribute name="data-week_day"><iaixsl:value-of select="/shop/basket/shipping_division_time/@week_day"/></iaixsl:attribute>
																			<iaixsl:attribute name="data-today"><iaixsl:value-of select="/shop/basket/shipping_division_time/@today"/></iaixsl:attribute>
																			Products with longer waiting times - ready to ship <span class="prepaid__division_literal">in </span>
																			<strong/>
																		</div>
																		</iaixsl:if>

                                    <iaixsl:if test="priceformula/parameters">
                                        <ul>
                                            <iaixsl:for-each select="priceformula/parameters/parameter">
                                                <li class="orderdetails_priceformula">
                                                    <b><iaixsl:value-of select="name"/>: </b>
                                                    <iaixsl:value-of select="values/value"/>
                                                </li>
                                            </iaixsl:for-each>
                                        </ul>
                                    </iaixsl:if>

                                    <iaixsl:if test="version or serial_number">
                                        <ul>
                                            
                                            <iaixsl:if test="version">
                                                <li><b><iaixsl:value-of select="version/@name"/>: </b><iaixsl:value-of select="version/@product_name"/></li>
                                            </iaixsl:if>

                                            
                                            <iaixsl:if test="serial_number">
                                                <li>
                                                    <iaixsl:choose>
                                                        <iaixsl:when test="count(serial_number/number) = 1">
                                                            <b>Serial number: </b>
                                                        </iaixsl:when>
                                                        <iaixsl:otherwise>
                                                            <b>Serial Numbers: </b>
                                                        </iaixsl:otherwise>
                                                    </iaixsl:choose>
                                                    <iaixsl:for-each select="serial_number/number">
                                                        <iaixsl:value-of select="@value"/><iaixsl:if test="not(position()=last())">, </iaixsl:if>
                                                    </iaixsl:for-each>
                                                </li>
                                            </iaixsl:if>
                                        </ul>
                                    </iaixsl:if>


                                    
                                    <iaixsl:if test="@product_type = 'product_bundle'">
                                        <div class="ordered-product_bundle">
                                            <label>
                                                Products in a set: 
                                            </label>
                                            <ul>
                                                <iaixsl:for-each select="bundled/product">
                                                    <li>
                                                        <iaixsl:if test="@quantity > 1">
                                                            <iaixsl:value-of select="@quantity"/>x 
                                                        </iaixsl:if>
                                                        <iaixsl:value-of select="@name"/>
                                                        <iaixsl:if test="not(@size_id = 'uniw') or ((version) and (not(version/@product_name='')))">
                                                            (
                                                            <iaixsl:if test="not(@size_id = 'uniw')">
                                                                Size: <b><iaixsl:value-of select="@size_desc"/></b></iaixsl:if>
                                                            <iaixsl:if test="not(@size_id = 'uniw') and ((version) and (not(version/@product_name='')))">
                                                                , 
                                                            </iaixsl:if>
                                                            <iaixsl:if test="(version) and (not(version/@product_name=''))"><iaixsl:value-of select="version/@name"/>
                                                                : <b><iaixsl:value-of select="version/@product_name"/></b></iaixsl:if>
                                                            )
                                                        </iaixsl:if>
                                                    </li>
                                                </iaixsl:for-each>
                                            </ul>
                                        </div>
                                    </iaixsl:if>

                                    
                                    <iaixsl:if test="order_files/file">
                                        <div class="ordered-files">
                                            <label>
                                                Files added by you: 
                                            </label>
                                            <ul>
                                                <iaixsl:for-each select="order_files/file">
                                                    <li>
                                                        <span><iaixsl:value-of select="@file"/></span>

                                                        <iaixsl:if test="@path">
                                                             [
                                                            <a>
                                                                <iaixsl:attribute name="href"><iaixsl:value-of select="@path"/></iaixsl:attribute>

                                                                <iaixsl:choose>
                                                                    <iaixsl:when test="@preview = 'true'">
                                                                        <iaixsl:attribute name="data-imagelightbox">f</iaixsl:attribute>
                                                                    </iaixsl:when>
                                                                    <iaixsl:otherwise>
                                                                        <iaixsl:attribute name="target">_blank</iaixsl:attribute>
                                                                    </iaixsl:otherwise>
                                                                </iaixsl:choose>
                                                                preview
                                                            </a>
                                                            ]
                                                        </iaixsl:if>

                                                    </li>
                                                </iaixsl:for-each>
                                            </ul>
                                        </div>
                                    </iaixsl:if>



                                    
                                    <iaixsl:if test="@product_type = 'product_virtual'">
                                        <div class="ordered-info">
                                            Files will be available under 
                                            <a>
                                                <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/clientFiles/@url"/></iaixsl:attribute>
                                                "My files"
                                            </a>
                                             in a customer's tab after paying for order.
                                        </div>
                                    </iaixsl:if>


                                    <iaixsl:if test="not(/shop/page/ordered_products/product/@size_id = 'uniw')">
                                        <div class="ordered-size d-sm-none">Size: <iaixsl:value-of select="@size_desc"/></div>
                                    </iaixsl:if>


                                    <iaixsl:if test="/shop/page/ordered_products/product[not(@code = '')]">
                                        <div class="ordered-code d-sm-none">Product code: <iaixsl:value-of select="@code"/></div>
                                    </iaixsl:if>

                                    <div class="ordered-quantity d-sm-none">
                                        Quantity: <iaixsl:value-of select="@quantity"/>
                                        <iaixsl:text> </iaixsl:text>
                                        <iaixsl:choose>
                                            <iaixsl:when test="@quantity > '1'">
                                                <iaixsl:value-of select="@unit"/>
                                            </iaixsl:when>
                                            <iaixsl:otherwise>
                                                <iaixsl:value-of select="@unit_s"/>
                                            </iaixsl:otherwise>
                                        </iaixsl:choose>
                                    </div>

                                    <iaixsl:if test="comment">
                                        <div class="ordered-comment">
                                            <iaixsl:value-of select="comment"/>
                                        </div>
                                    </iaixsl:if>

                                    <div class="ordered-price d-sm-none">

                                        Value incl. VAT: 

                                        
                                        <strong>
                                            <iaixsl:choose>
                                                <iaixsl:when test="@quantity != '1'">
                                                    <iaixsl:choose>
                                                        <iaixsl:when test="@forpoints='true'">
                                                            <iaixsl:value-of select="@points_sum"/>
                                                             pts
                                                        </iaixsl:when>
                                                        <iaixsl:otherwise>
                                                            <iaixsl:value-of select="@bruttoworth_formatted"/>
                                                        </iaixsl:otherwise>
                                                    </iaixsl:choose>
                                                </iaixsl:when>
                                                <iaixsl:otherwise>
                                                    <iaixsl:choose>
                                                        <iaixsl:when test="@gratis='y'">
                                                             Free!
                                                        </iaixsl:when>
                                                        <iaixsl:when test="@forpoints='true'">
                                                            <iaixsl:value-of select="@points"/>
                                                             pts
                                                        </iaixsl:when>
                                                        <iaixsl:otherwise>
                                                            <iaixsl:value-of select="@detalprice_formatted"/>
                                                        </iaixsl:otherwise>
                                                    </iaixsl:choose>
                                                </iaixsl:otherwise>
                                            </iaixsl:choose>
                                        </strong>
                                    </div>

                                </td>

                                
                                <iaixsl:if test="not(/shop/page/ordered_products/product/@size_id = 'uniw')">
                                    <td class="ordered-size d-none d-sm-table-cell"><iaixsl:value-of select="@size_desc"/></td>
                                </iaixsl:if>


                                <iaixsl:if test="/shop/page/ordered_products/product[not(@code = '')]">
                                    <td class="ordered-code d-none d-sm-table-cell"><iaixsl:value-of select="@code"/></td>
                                </iaixsl:if>

                                <td class="ordered-quantity d-none d-sm-table-cell">
                                    <iaixsl:value-of select="@quantity"/>
                                    <iaixsl:text> </iaixsl:text>
                                    <iaixsl:choose>
                                        <iaixsl:when test="@quantity > '1'">
                                            <iaixsl:value-of select="@unit"/>
                                        </iaixsl:when>
                                        <iaixsl:otherwise>
                                            <iaixsl:value-of select="@unit_s"/>
                                        </iaixsl:otherwise>
                                    </iaixsl:choose>
                                </td>
                                <td class="ordered-price d-none d-sm-table-cell">
                                    
                                    <iaixsl:choose>
                                        <iaixsl:when test="@quantity != '1'">
                                            <iaixsl:choose>
                                                <iaixsl:when test="@forpoints='true'">
                                                    <iaixsl:value-of select="@points_sum"/>
                                                     pts
                                                </iaixsl:when>
                                                <iaixsl:otherwise>
                                                    <iaixsl:value-of select="@bruttoworth_formatted"/>
                                                </iaixsl:otherwise>
                                            </iaixsl:choose>
                                        </iaixsl:when>
                                        <iaixsl:otherwise>
                                            <iaixsl:choose>
                                                <iaixsl:when test="@gratis='y'">
                                                     Free!
                                                </iaixsl:when>
                                                <iaixsl:when test="@forpoints='true'">
                                                    <iaixsl:value-of select="@points"/>
                                                     pts
                                                </iaixsl:when>
                                                <iaixsl:otherwise>
                                                    <iaixsl:value-of select="@detalprice_formatted"/>
                                                </iaixsl:otherwise>
                                            </iaixsl:choose>
                                        </iaixsl:otherwise>
                                    </iaixsl:choose>
                                </td>
                            </tr>
                        </iaixsl:for-each>
                    </tbody>
                </table>
            </div>
        </iaixsl:if>
        <!--Prepaid - płtności i dostawa (lista) (prepaid_payment_and_delivery_list, 107679.1)-->


        <div id="prepaid_delivery_list">
            <h2 class="big_label">
                <iaixsl:choose>
                    <iaixsl:when test="/shop/page/insurance_product">
                        Additional payments and services
                    </iaixsl:when>
                    <iaixsl:otherwise>
                        Additional payments and services
                    </iaixsl:otherwise>
                </iaixsl:choose>
            </h2>


            
            <table>
                <tr>
                    <th/>
                    <th/>
                    <th>
                        Value incl. VAT
                    </th>
                </tr>
                <tr>
                    <td class="ordered-icon">
                        <img src="/gfx/eng/shipping_icon.png?r=1612959986">
                            <iaixsl:if test="page/shipping/delivery[@checked='true']/@icon"><iaixsl:attribute name="src"><iaixsl:value-of select="page/shipping/delivery[@checked='true']/@icon"/></iaixsl:attribute></iaixsl:if>
                            <iaixsl:attribute name="alt"><iaixsl:value-of select="page/shipping/delivery[@checked='true']/@name"/></iaixsl:attribute>
                        </img>
                    </td>
                    <td class="ordered-name">
                        Delivery method:
                        <strong><iaixsl:value-of select="page/shipping/delivery[@checked='true']/@name"/></strong>

                        <ul>
                            <iaixsl:if test="page/prepaid/details/@select_date_additional != ''">
                                <li>
                                    <strong>Remarks to the delivery date:</strong>
                                    <iaixsl:value-of select="page/prepaid/details/@select_date_additional"/>
                                </li>
                            </iaixsl:if>

                            <iaixsl:if test="page/prepaid/details/@delivery = 'true'">
                                <li>
                                    <strong>Parcel number: </strong>
                                    <iaixsl:choose>
                                        <iaixsl:when test="not(page/prepaid/details/@cancelationpath) and not(page/prepaid/details/@cancelable = 'yes')">
                                            <iaixsl:value-of select="page/prepaid/details/@dispatchid"/>
                                        </iaixsl:when>
                                        <iaixsl:otherwise>
                                            -
                                        </iaixsl:otherwise>
                                    </iaixsl:choose>
                                </li>
                                <iaixsl:if test="page/prepaid/details/@link_tracking != ''">
                                    <li>
                                        <strong>Shipment tracking: </strong>
                                        <a target="_blank">
                                            <iaixsl:attribute name="href"><iaixsl:value-of select="page/prepaid/details/@link_tracking"/></iaixsl:attribute>
                                            shipping company website
                                        </a>
                                    </li>
                                </iaixsl:if>
                            </iaixsl:if>
                            <iaixsl:if test="page/prepaid/dispatch/@date_sent != ''">
                                <iaixsl:choose>
                                    <iaixsl:when test="page/prepaid/details/@deliveryid = '0'">
                                        <li>
                                            <strong>Parcel collected: </strong>
                                            <iaixsl:value-of select="page/prepaid/dispatch/@date_sent"/>
                                        </li>
                                    </iaixsl:when>
                                    <iaixsl:otherwise>
                                        <li>
                                            <strong>Parcel sent: </strong>
                                            <iaixsl:value-of select="page/prepaid/dispatch/@date_sent"/>
                                        </li>
                                        <iaixsl:if test="page/prepaid/dispatch/@date_delivery">
                                            <li>
                                                <strong>Estimated delivery date:  </strong>
                                                <iaixsl:value-of select="page/prepaid/dispatch/@date_delivery"/>
                                                <iaixsl:if test="page/prepaid/dispatch/@delivery_range != ''">
                                                     range of hours 
                                                    <iaixsl:value-of select="page/prepaid/dispatch/@delivery_range"/>
                                                </iaixsl:if>
                                            </li>
                                        </iaixsl:if>
                                    </iaixsl:otherwise>
                                </iaixsl:choose>
                            </iaixsl:if>
                            <iaixsl:if test="page/prepaid/details/@select_date != ''">
                                <li>
                                    <strong>
                                        <iaixsl:choose>
                                            <iaixsl:when test="page/stock">
                                                Selected order collection date: 
                                            </iaixsl:when>
                                            <iaixsl:otherwise>
                                                Selected date of delivery: 
                                            </iaixsl:otherwise>
                                        </iaixsl:choose>
                                    </strong>
                                    <iaixsl:value-of select="page/prepaid/details/@select_date"/>
                                </li>
                            </iaixsl:if>
                        </ul>

                    </td>


                    <td class="ordered-price">
                        <iaixsl:choose>
                            <iaixsl:when test="page/shipping/@hide_cost='true'"/>
                            <iaixsl:when test="page/shipping/delivery[@checked='true']/@points_cost > 0">
                                <span><iaixsl:value-of select="page/shipping/delivery[@checked='true']/@points_cost"/> pts</span>
                            </iaixsl:when>
                            <iaixsl:when test="page/shipping/delivery[@checked='true']/@cost > 0">
                                <span>
                                    <iaixsl:value-of select="page/shipping/delivery[@checked='true']/@currencycost_formatted"/>
                                    
                                </span>
                            </iaixsl:when>
                            <iaixsl:when test="page/shipping/delivery[@checked='true']/@cost = 0">
                                Free!
                            </iaixsl:when>
                        </iaixsl:choose>
                    </td>
                </tr>

                <iaixsl:choose>
                    <iaixsl:when test="/shop/page/prepaid/prepaid_history/item/@status = 'n'">
                        <iaixsl:for-each select="/shop/page/prepaid/prepaid_history/item[@status = 'n']">
                            <tr class="payment_form_item">
                                <td class="ordered-icon">
                                    <img src="/gfx/eng/prepaid_method_icon.png?r=1612959986">
                                        <iaixsl:if test="@icon">
                                            <iaixsl:attribute name="src"><iaixsl:value-of select="@icon"/></iaixsl:attribute>
                                        </iaixsl:if>
                                        <iaixsl:attribute name="alt"><iaixsl:value-of select="@payment_name"/></iaixsl:attribute>
                                    </img>
                                </td>
                                <td class="ordered-name">
                                    Payment method: 
                                    <strong><iaixsl:value-of select="@payment_name"/></strong>
                                </td>
                                <td>
                                    <iaixsl:if test="amount/order_currency/@payform_cost > 0">
                                        <span>
                                            <iaixsl:value-of select="amount/order_currency/@payform_cost_formatted"/>
                                            <iaixsl:if test="not(amount/client_currency/@currencysign = amount/order_currency/@currencysign)">
                                                <small> (<iaixsl:value-of select="amount/client_currency/@payform_cost_formatted"/>)</small>
                                            </iaixsl:if>
                                        </span>
                                    </iaixsl:if>
                                </td>
                            </tr>
                        </iaixsl:for-each>
                    </iaixsl:when>
                    <iaixsl:when test="not(not(page/prepaid_methods/item[@checked='true']) and not(page/prepaid/details/@paymentstatus = 'g') and not(page/prepaid/details/@paymentstatus = 'tc'))">
                        <tr>
                            <td class="ordered-icon">
                                <img src="/gfx/eng/prepaid_method_icon.png?r=1612959986">
                                    <iaixsl:if test="/shop/page/prepaid/prepaid_history/item[position() = last()]/@icon and not(page/prepaid/details/@paymentstatus = 'g')">
                                        <iaixsl:attribute name="src"><iaixsl:value-of select="/shop/page/prepaid/prepaid_history/item[position() = last()]/@icon"/></iaixsl:attribute>
                                    </iaixsl:if>
                                    <iaixsl:attribute name="alt"><iaixsl:value-of select="page/prepaid_methods/item[@checked='true']/@name"/></iaixsl:attribute>
                                </img>
                            </td>
                            <td class="ordered-name">
                                Payment method: 
                                <strong>
                                    <iaixsl:choose>
                                        <iaixsl:when test="page/prepaid/details/@paymentstatus = 'g'">
                                            Cash on delivery 
                                        </iaixsl:when>
                                        <iaixsl:when test="page/prepaid/details/@paymentstatus = 'tc'">
                                            Trade credit
                                        </iaixsl:when>
                                        <iaixsl:otherwise>
                                            <iaixsl:value-of select="page/prepaid_methods/item[@checked='true']/@name"/>
                                        </iaixsl:otherwise>
                                    </iaixsl:choose>
                                </strong>

                                <iaixsl:variable name="delivery_id"><iaixsl:value-of select="/shop/page/shipping/delivery/@id"/></iaixsl:variable>

                                <iaixsl:choose>
                                    <iaixsl:when test="($delivery_id='0-1'                                                         or $delivery_id = '77-1'                                                         or $delivery_id = '89-1'                                                         or $delivery_id = '90-1'                                                         or $delivery_id = '100023-1'                                                         or $delivery_id = '100075-1'                                                         or $delivery_id = '100149-1'                                                         or $delivery_id = '100148-1'                                                         or $delivery_id = '100150-1'                                                         or $delivery_id = '100153-1'                                                         or $delivery_id = '100061-1'                                                         or $delivery_id = '100063-1'                                                         or $delivery_id = '100041-1'                                                         or $delivery_id = '76-1'                                                         or $delivery_id = '38-1'                                                         or (substring-before($delivery_id, '-') > 100100 and substring-after($delivery_id, '-') = '1') ) and page/stock/@stock_id">

                                        

                                        <ul>
                                            <li>
                                                Pay when collecting your parcel.
                                            </li>
                                        </ul>
                                    </iaixsl:when>
                                    <iaixsl:when test="page/prepaid/details/@paymentstatus = 'g'">
                                        <ul>
                                            <li>
                                                Pay to a postman or a courier who delivers a parcel. 
                                            </li>
                                        </ul>
                                    </iaixsl:when>
                                    <iaixsl:when test="page/prepaid/details/@paymentstatus = 'tc'">
                                    </iaixsl:when>
                                </iaixsl:choose>
                            </td>
                            <td class="ordered-price">
                                <iaixsl:choose>
                                    <iaixsl:when test="/shop/page/shipping/delivery/@id='0-1' and page/stock/@stock_id">
                                    </iaixsl:when>
                                    <iaixsl:when test="page/prepaid/details/@paymentstatus = 'g'">
                                    </iaixsl:when>
                                    <iaixsl:when test="page/prepaid/details/@paymentstatus = 'tc'">
                                    </iaixsl:when>
                                    <iaixsl:otherwise>
                                        <iaixsl:if test="page/prepaid/details/@currencycost > 0">
                                            <span>
                                                <iaixsl:value-of select="page/prepaid/details/@currency_payform_cost_formatted"/>
                                                
                                            </span>
                                        </iaixsl:if>
                                    </iaixsl:otherwise>
                                </iaixsl:choose>
                            </td>
                        </tr>
                    </iaixsl:when>
                </iaixsl:choose>

                <iaixsl:if test="/shop/page/insurance_product">

                    <tr>
                        <td class="ordered-icon">
                            <img src="/gfx/eng/insurance_icon.png?r=1612959986" alt="insurance_icon"/>
                        </td>
                        <td class="ordered-name">
                            Buyer Protection: 
                            <strong><iaixsl:value-of select="/shop/page/insurance_product/@service"/></strong>
                            <ul>
                                <li>
                                    <iaixsl:choose>
                                        <iaixsl:when test="/shop/page/insurance_product/@status = 'unconfirmed'">
                                            <strong>Status:</strong> unconfirmed 
                                        </iaixsl:when>
                                        <iaixsl:when test="/shop/page/insurance_product/@status = 'confirmed'">
                                            <strong>Status:</strong> confirmed
                                        </iaixsl:when>
                                    </iaixsl:choose>
                                </li>
                            </ul>
                        </td>
                        <td class="ordered-price">
                            <iaixsl:if test="/shop/page/insurance_product/@price_gross > 0">
                                <span><iaixsl:if test="$signbeforeprice = 'true'">
                                    <iaixsl:value-of select="/shop/page/insurance_product/@currency"/>
                                    <iaixsl:value-of select="$signbetweenpricecurrency"/>
                                </iaixsl:if>
                                    <iaixsl:value-of select="/shop/page/insurance_product/@price_gross"/>
                                    <iaixsl:if test="$signbeforeprice = 'false'">
                                        <iaixsl:value-of select="$signbetweenpricecurrency"/>
                                        <iaixsl:value-of select="/shop/page/insurance_product/@currency"/>
                                    </iaixsl:if></span>
                            </iaixsl:if>
                        </td>
                    </tr>
                </iaixsl:if>

                <tr style="display:none" id="prepaid_item_copy">
                    <td class="ordered-icon">
                        <img src="/gfx/eng/prepaid_method_icon.png?r=1612959986">
                            <iaixsl:attribute name="alt">.</iaixsl:attribute>
                        </img>
                    </td>
                    <td class="ordered-name">
                        Payment method: 
                        <strong/>
                    </td>
                    <td class="ordered-price">
                        <iaixsl:if test="amount/order_currency/@payform_cost > 0">
                            <span/>
                        </iaixsl:if>
                    </td>
                </tr>

            </table>
            
        </div>

        
        <!--Prepaid summary  (prepaid_summary, 107685.1)-->

    <iaixsl:if test="not(page/prepaid/details/@paymentstatus != 'g' and /shop/page/prepaid_methods/item and (page/prepaid/prepaid_history/item[position() = last()]/@status = 'n' or page/prepaid/prepaid_history/@show_payment_button = 'true'))">
    <div id="prepaid_summary">
      <div class="basketedit_summary">
         
          <div class="basketedit_summary_sub">
              <div class="basketedit_summary_left">
      
                 <iaixsl:if test="/shop/page/prepaid/points/@display">
                     <div class="basketedit_summary_debit">
                         Currently you have 
                         <b><iaixsl:value-of select="/shop/page/prepaid/points/@client_points"/><span> pts</span></b>
                         
                     </div>
                 </iaixsl:if>
      
                 <iaixsl:if test="/shop/page/prepaid/insurance_forms/trusted_shops or /shop/page/prepaid/opinions_forms/trusted_shops/raiting_action">
                     
                     
                         <iaixsl:if test="/shop/page/prepaid/insurance_forms/trusted_shops">
                             <div id="trusted_shops">
                                 <div id="trusted_shops_img">
                                     <form method="post" target="_blank">
                                         <iaixsl:attribute name="action"><iaixsl:value-of select="/shop/page/prepaid/insurance_forms/trusted_shops/icon_form/@action"/></iaixsl:attribute>
                                         <iaixsl:value-of disable-output-escaping="yes" select="/shop/page/prepaid/insurance_forms/trusted_shops/icon_form/hidden_params"/>
                                         <input type="image">
                                             <iaixsl:attribute name="src"><iaixsl:value-of select="/shop/page/prepaid/insurance_forms/trusted_shops/icon_form/@icon_src"/></iaixsl:attribute>
                                             <iaixsl:attribute name="title"><iaixsl:value-of select="/shop/page/prepaid/insurance_forms/trusted_shops/icon_form/@title"/></iaixsl:attribute>
                                         </input>
                                     </form>
                                 </div>
                                 <div id="trusted_shops_info">
                                     <form method="post" target="_blank">
                                         <iaixsl:attribute name="action"><iaixsl:value-of select="/shop/page/prepaid/insurance_forms/trusted_shops/registration_form/@action"/></iaixsl:attribute>
                                         <iaixsl:value-of disable-output-escaping="yes" select="/shop/page/prepaid/insurance_forms/trusted_shops/registration_form/hidden_params"/>
                                         <p><iaixsl:value-of disable-output-escaping="yes" select="/shop/page/prepaid/insurance_forms/trusted_shops/registration_form/@descryption"/></p>
                                         <button type="submit">
                                             <iaixsl:value-of disable-output-escaping="yes" select="/shop/page/prepaid/insurance_forms/trusted_shops/registration_form/@button"/> 
                                         </button>
                                     </form>
                                 </div>
                             </div>                
                         </iaixsl:if>
                  
                     
                 </iaixsl:if>

      
                 
              </div>
         
              <div class="basketedit_summary_right">
                  <div class="basketedit_calculations">
                      <div class="basketedit_product_summary">
                          <label>Products value: </label>
                          <strong><iaixsl:value-of select="page/prepaid/details/@currencycost_formatted"/></strong>
                      </div>
      
                      <iaixsl:if test="page/prepaid/details/@deliveryid != '47'">  
                        <div class="basketedit_product_summary">
                            <label>Additional charges: </label>
                            <strong id="additional_cost_prepaid"><iaixsl:value-of select="page/prepaid/details/@currency_additional_cost_formatted"/></strong>
                        </div>
                      </iaixsl:if>
                      <div style="clear:both"/>
                  </div>
                  <iaixsl:if test="page/prepaid/details/@deliveryid != '47'">  
                  <div class="basketedit_total_summary">
                      <label>
                          Total: 
                      </label>
                      <strong id="currencytotal_prepaid"><iaixsl:value-of select="page/prepaid/details/@currencytotal_formatted"/></strong>
                      <iaixsl:if test="/shop/page/prepaid/points/@display">
                          <span>
                               + 
                              <iaixsl:value-of select="/shop/page/prepaid/points/@order_cost"/> pts
                          </span>
                      </iaixsl:if>
                  </div>
                  </iaixsl:if>
                  
                  <iaixsl:if test="(/shop/page/prepaid/details/@advance > 0)">
                    <div class="basketedit_product_summary advance">
                            <label class="txt_wrap">Required advance payment: </label>
                            <strong><iaixsl:value-of select="/shop/page/prepaid/details/@advance_formatted"/></strong>
                    </div>
                </iaixsl:if>
              </div>
          </div>
      </div>

    </div>
    </iaixsl:if>

    <!--Szczegóły zamówienia - adres (prepaid_address, 114765.1)-->
            <div id="prepaid_address" class="mb-4">        
                <div class="n57857_label big_label">
                    <span class="n57857_label">Information given when ordering</span>
                </div>

                <div class="order2_info">
                    <iaixsl:if test="/shop/page/client/payer_address">
                        <iaixsl:attribute name="class">order2_info --invoice</iaixsl:attribute>
                    </iaixsl:if>
                    <div class="order2_info_sub">
                        <div class="n57857_item">
                            <div class="order2_info_label_sub">
                                <h3 class="order2_info1">
                                    Billing details:
                                </h3>
                            </div>

                            <div class="order2_info1">
                                <iaixsl:if test="page/client/billing_address/@firm != ''">
                                    <iaixsl:value-of select="page/client/billing_address/@firm"/><br/>
                                </iaixsl:if>
                                <iaixsl:if test="not(page/client/billing_address/@firm)">
                                    <iaixsl:value-of select="page/client/billing_address/@firstname"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="page/client/billing_address/@lastname"/><br/>
                                </iaixsl:if>
                                <iaixsl:value-of select="page/client/billing_address/@street"/><br/>
                                <iaixsl:value-of select="page/client/billing_address/@zipcode"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="page/client/billing_address/@city"/><iaixsl:text> </iaixsl:text>(<iaixsl:if test="page/client/billing_address/@province"><iaixsl:value-of select="page/client/billing_address/@province"/><iaixsl:text>, </iaixsl:text></iaixsl:if><iaixsl:value-of select="page/client/billing_address/@country_long"/>)
                                <br/>
                                <iaixsl:if test="page/client/billing_address/@nip != ''">
                                    VAT Number:<iaixsl:value-of select="page/client/billing_address/@nip"/><br/>
                                </iaixsl:if>
                                <iaixsl:if test="(page/client/@phone1) and not(page/client/@phone1 = '')">
                                    phone no.:  <iaixsl:value-of select="page/client/@phone1"/><br/>
                                </iaixsl:if>
                                <iaixsl:if test="(page/client/@email) and not(page/client/@email = '')">
                                    e-mail:  <iaixsl:value-of select="page/client/@email"/><br/>
                                </iaixsl:if>
                            </div>
                        </div>
                    </div>
                    <div class="order2_info_sub">
                        <div class="n57857_item">

                            <iaixsl:choose>
                                <iaixsl:when test="page/stock">

                            <div class="order2_info_label_sub">
                                <h3 class="order2_info1">
                                    Point of personal collection:
                                </h3>
                            </div>

                            <div class="order2_info1">

                                        <span class="prepaid_stock_name"><iaixsl:value-of select="page/stock/@name"/></span><br/>
                                        <iaixsl:value-of select="page/stock/@street"/><br/>
                                        <iaixsl:value-of select="page/stock/@zipcode"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="page/stock/@city"/><iaixsl:text> </iaixsl:text>(<iaixsl:value-of select="page/stock/@country"/>)<br/>

                                        <iaixsl:if test="page/stock/@mail != ''">
                                            <span class="prepaid_stock_contact_item">e-mail: 
                                                <a><iaixsl:attribute name="href">mailto:<iaixsl:value-of select="page/stock/@mail"/></iaixsl:attribute><iaixsl:value-of select="page/stock/@mail"/></a></span><br/>
                                        </iaixsl:if>

                                        <iaixsl:if test="page/stock/@phone != ''">
                                            <span class="prepaid_stock_contact_item">phone no.: 
                                                <span><iaixsl:value-of select="page/stock/@phone"/></span></span><br/>
                                        </iaixsl:if>

                                        <iaixsl:if test="page/stock/@fax != ''">
                                            <span class="prepaid_stock_contact_item">fax: 
                                                <span><iaixsl:value-of select="page/stock/@fax"/></span></span><br/>
                                        </iaixsl:if>

                                        <iaixsl:if test="page/stock/@gg != ''">
                                            <span class="prepaid_stock_contact_item">gg: 
                                                <a><iaixsl:attribute name="href">gg:<iaixsl:value-of select="page/stock/@gg"/></iaixsl:attribute><iaixsl:value-of select="page/stock/@gg"/></a></span><br/>
                                        </iaixsl:if>

                                        <iaixsl:if test="page/stock/@skype != ''">
                                            <span class="prepaid_stock_contact_item">skype: 
                                                <a target="_blank"><iaixsl:attribute name="href">callto://<iaixsl:value-of select="page/stock/@skype"/></iaixsl:attribute><iaixsl:value-of select="page/stock/@skype"/></a></span><br/>
                                        </iaixsl:if>

                                        <div class="prepaid_stock_link">
                                            <a class="prepaid_stock_link" target="_blank">
                                                <iaixsl:attribute name="href"><iaixsl:value-of select="page/stock/@link"/></iaixsl:attribute>
                                                more information
                                            </a>
                                        </div>
                            </div>

                                </iaixsl:when>
                                <iaixsl:otherwise>
                                    <div class="order2_info_label_sub">
                                        <h3 class="order2_info1">
                                            Delivery address:
                                        </h3>
                                    </div>

                                    <div class="order2_info1">

                                        <iaixsl:if test="page/client/shipping_address/@additional != ''"><iaixsl:value-of select="page/client/shipping_address/@additional"/><br/></iaixsl:if>
                                        <iaixsl:value-of select="page/client/shipping_address/@firstname"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="page/client/shipping_address/@lastname"/><br/>
                                        <iaixsl:value-of select="page/client/shipping_address/@street"/><br/>
                                        <iaixsl:value-of select="page/client/shipping_address/@zipcode"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="page/client/shipping_address/@city"/><iaixsl:text> </iaixsl:text>(<iaixsl:if test="page/client/shipping_address/@province"><iaixsl:value-of select="page/client/shipping_address/@province"/><iaixsl:text>, </iaixsl:text></iaixsl:if><iaixsl:value-of select="page/client/shipping_address/@country_long"/>)<br/>
                                        <iaixsl:if test="(page/client/shipping_address/@phone) and not(page/client/shipping_address/@phone = '')">
                                            phone no.:  <iaixsl:value-of select="page/client/shipping_address/@phone"/><br/>
                                        </iaixsl:if>
                                    </div>
                                </iaixsl:otherwise>
                            </iaixsl:choose>

                        </div>
                    </div>
                    <div class="order2_info_sub">
                        <div class="n57857_item">
                            <div class="order2_info_label_sub">
                                <h3 class="order2_info1">
                                    Recipient’s data:
                                </h3>
                            </div>

                            <div class="order2_info1">
                                <iaixsl:value-of select="page/client/shipping_address/@firstname"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="page/client/shipping_address/@lastname"/><br/>

                                <iaixsl:value-of select="page/client/shipping_address/@street"/><br/>
                                <iaixsl:value-of select="page/client/shipping_address/@zipcode"/><iaixsl:text> </iaixsl:text>
                                <iaixsl:value-of select="page/client/shipping_address/@city"/> (<iaixsl:if test="page/client/shipping_address/@province"><iaixsl:value-of select="page/client/shipping_address/@province"/><iaixsl:text>, </iaixsl:text></iaixsl:if><iaixsl:value-of select="page/client/shipping_address/@country_long"/>)<br/>
                                <iaixsl:if test="page/client/shipping_address/@phone and page/client/shipping_address/@phone != ''">
                                    phone no.: <iaixsl:value-of select="page/client/shipping_address/@phone"/><br/>
                                </iaixsl:if>
                            </div>
                        </div>
                    </div>

                    <iaixsl:if test="/shop/page/client/payer_address">
                        <div class="order2_info_sub">
                            <div class="n57857_item">
                                <div class="order2_info_label_sub">
                                    <h3 class="order2_info1">
                                        Dane na fakturze:
                                    </h3>
                                </div>
                                <div class="order2_info1">
                                <iaixsl:if test="page/client/payer_address/@firm != ''">
                                    <iaixsl:value-of select="page/client/payer_address/@firm"/><br/>
                                </iaixsl:if>
                                <iaixsl:if test="not(page/client/payer_address/@firm)">
                                    <iaixsl:value-of select="page/client/payer_address/@firstname"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="page/client/payer_address/@lastname"/><br/>
                                </iaixsl:if>
                                <iaixsl:value-of select="page/client/payer_address/@street"/><br/>
                                <iaixsl:value-of select="page/client/payer_address/@zipcode"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="page/client/payer_address/@city"/><iaixsl:text> </iaixsl:text>(<iaixsl:if test="page/client/payer_address/@province"><iaixsl:value-of select="page/client/payer_address/@province"/><iaixsl:text>, </iaixsl:text></iaixsl:if><iaixsl:value-of select="page/client/payer_address/@country_long"/>)
                                <br/>
                                <iaixsl:if test="page/client/payer_address/@nip != ''">
                                    VAT Number:<iaixsl:value-of select="page/client/payer_address/@nip"/><br/>
                                </iaixsl:if>
                                <iaixsl:if test="(page/client/payer_address/@phone) and not(page/client/payer_address/@phone = '')">
                                    phone no.:  <iaixsl:value-of select="page/client/payer_address/@phone"/><br/>
                                </iaixsl:if>
                                <iaixsl:if test="(page/client/payer_address/@email) and not(page/client/payer_address/@email = '')">
                                    e-mail:  <iaixsl:value-of select="page/client/payer_address/@email"/><br/>
                                </iaixsl:if>

                                </div>
                            </div>
                        </div>
                    </iaixsl:if>
                </div>

                <iaixsl:if test="page/prepaid/details/@remarks or page/prepaid/details/@deliverer_note">
                    <div class="order2_info comments_container">
                    <a href="#toggleComments" id="toggle_comments_button">Comments for the store and courier</a>

                    <div class="ordered_comments">
                        <iaixsl:if test="page/prepaid/details/@remarks">
                            <div class="order2_info_sub">
                                <div class="n57857_item">
                                    <div class="order2_info_label_sub">
                                        <h3 class="order2_info1">
                                            Remarks to a shop staff made during the order process:
                                        </h3>
                                    </div>

                                    <div class="order2_info1">
                                        <iaixsl:value-of select="page/prepaid/details/@remarks"/>
                                    </div>
                                </div>
                            </div>
                        </iaixsl:if>

                        <iaixsl:if test="page/prepaid/details/@deliverer_note">
                            <div class="order2_info_sub">
                                <div class="n57857_item">
                                    <div class="order2_info_label_sub">
                                        <h3 class="order2_info1">
                                            Remarks to a courier made during the order process:
                                        </h3>
                                    </div>

                                    <div class="order2_info1">
                                        <iaixsl:value-of select="page/prepaid/details/@deliverer_note"/>
                                    </div>
                                </div>
                            </div>
                        </iaixsl:if>
                    </div>
                    </div>
                </iaixsl:if>
            </div>
        <!--Dokumenty do zamówienia (prepaid_documents, 107686.1)-->
            <iaixsl:choose>
                <iaixsl:when test="count(page/prepaid/documents/document) > 0">
                    <div id="ordered_documents" class="order2_info comments_container d-block">
                        <a href="#toggleDocuments" id="toggle_documents_button" class="d-sm-none">Documents to download</a>

                        <div class="big_label d-none d-sm-block">Documents to download</div>

                        <div class="order2_info_sub ordered_documents" id="order2_info_sub1">
                            <iaixsl:for-each select="page/prepaid/documents/document">
                                <div class="n57857_item">
                                    <div class="order2_info1">
                                        <li class="n54116_item">
                                            <a class="n54116_item" target="_blank">
                                                <iaixsl:attribute name="title">Download or print the document</iaixsl:attribute>
                                                <iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
                                                <iaixsl:value-of select="@id"/>
                                            </a>
                                        </li>
                                    </div>
                                </div>
                            </iaixsl:for-each>
                        </div>
                    </div>
                </iaixsl:when>
            </iaixsl:choose>
        <!--Formularz płatności (orderdetails_payform, 107692.1)-->
    <iaixsl:variable name="prepaidzt_txt">Make a complaint</iaixsl:variable> 
    <iaixsl:variable name="prepaidrt_txt">Return a product</iaixsl:variable> 

    <iaixsl:if test="($prepaidrt_txt and /shop/page/prepaid/actions/return/@url) or ($prepaidzt_txt and /shop/page/prepaid/actions/rma/@url)">
        <div class="actions_return_rma row">
            <iaixsl:if test="$prepaidrt_txt and /shop/page/prepaid/actions/return/@url">
                <div class="actions_return col-12 col-sm-6">
                    <div class="actions_return_sub col-12 mb-4">
                        <h3>A problem-free product return</h3>
                        <div>
                            <img alt="returns" src="/gfx/eng/returns_action.png?r=1612959986"/><span>If you would like to use the right to return a product without giving a reason, use our returns system which makes the process safe and simple.</span></div>
                            <a class="btn --solid">
                                <iaixsl:attribute name="title">Click to return a product.</iaixsl:attribute>
                                <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/page/prepaid/actions/return/@url"/></iaixsl:attribute><iaixsl:value-of select="$prepaidrt_txt"/>
                            </a>
                    </div>
                </div>
            </iaixsl:if>
            <iaixsl:if test="$prepaidzt_txt and /shop/page/prepaid/actions/rma/@url">
                <div class="actions_rma col-12 col-sm-6">
                    <div class="actions_rma_sub col-12">
                        <h3>A problem-free product complaints</h3>
                        <div>
                            <img alt="rma" src="/gfx/eng/rma_action.png?r=1612959986"/><span>If a product was fine at the moment of delivery but then has broken and you would like to file a complaint through our shop, just use our RMA system which makes the process quicker and easier.</span></div>
                            <a class="btn --solid">
                                <iaixsl:attribute name="title">Click to make a complaint.</iaixsl:attribute>
                                <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/page/prepaid/actions/rma/@url"/></iaixsl:attribute><iaixsl:value-of select="$prepaidzt_txt"/>
                            </a>
                    </div>
                </div>
            </iaixsl:if>
        </div>
    </iaixsl:if>

                        </div>
                    </iaixsl:if>
                </div>
             </div>

            
            <iaixsl:if test="not(action/set_render/item) or (action/set_render/item/@name = 'footer')">
                <footer>
                    <iaixsl:attribute name="class"></iaixsl:attribute>
                    <!--Buttony reklamowe (menu_buttons, 112160.2)-->
			<iaixsl:if test="count(commercial_button/link)">
				<div id="menu_buttons" class="container">
					<div class="row menu_buttons_sub">
						<iaixsl:for-each select="commercial_button/link">
							<div class="menu_button_wrapper">
								<iaixsl:choose>
									<iaixsl:when test="count(/shop/commercial_button/link) = 1">
										<iaixsl:attribute name="class">menu_button_wrapper col-12</iaixsl:attribute>
									</iaixsl:when>
									<iaixsl:when test="count(/shop/commercial_button/link) = 2">
										<iaixsl:attribute name="class">menu_button_wrapper col-6</iaixsl:attribute>
									</iaixsl:when>
									<iaixsl:when test="count(/shop/commercial_button/link) = 3">
										<iaixsl:attribute name="class">menu_button_wrapper col-md-4 col-6</iaixsl:attribute>
									</iaixsl:when>
									<iaixsl:otherwise>
										<iaixsl:attribute name="class">menu_button_wrapper col-md-3 col-6</iaixsl:attribute>
									</iaixsl:otherwise>
								</iaixsl:choose>

							<iaixsl:choose>
								<iaixsl:when test="not(html)">
									<iaixsl:choose>
										<iaixsl:when test="@href">
											<a target="_self">
											<iaixsl:if test="@target"><iaixsl:attribute name="target"><iaixsl:value-of select="@target"/></iaixsl:attribute></iaixsl:if>
												<iaixsl:attribute name="href"><iaixsl:value-of select="@href"/></iaixsl:attribute>
												<iaixsl:if test="text"><iaixsl:attribute name="title"><iaixsl:value-of select="text"/></iaixsl:attribute></iaixsl:if>
												<iaixsl:choose>
                                                    <iaixsl:when test="image">
                                                        <iaixsl:if test="image/@src">
                                                            <img>
                                                                <iaixsl:attribute name="alt"><iaixsl:value-of select="text"/></iaixsl:attribute>
                                                                <iaixsl:attribute name="src"><iaixsl:value-of select="image/@src"/></iaixsl:attribute>
                                                            </img>
                                                        </iaixsl:if>
                                                    </iaixsl:when>
                                                    <iaixsl:when test="image_desktop or image_tablet or image_mobile">
                                                        <picture>
                                                            <iaixsl:if test="image_desktop/@src">
                                                                <source>
                                                                    <iaixsl:attribute name="media">(min-width:979px)</iaixsl:attribute>
                                                                    <iaixsl:attribute name="srcset"><iaixsl:value-of select="image_desktop/@src"/></iaixsl:attribute>
                                                                </source>
                                                            </iaixsl:if>

                                                            <iaixsl:if test="image_tablet/@src">
                                                                <source>
                                                                    <iaixsl:attribute name="media">(min-width:757px)</iaixsl:attribute>
                                                                    <iaixsl:attribute name="srcset"><iaixsl:value-of select="image_tablet/@src"/></iaixsl:attribute>
                                                                </source>
                                                            </iaixsl:if>

                                                            <iaixsl:if test="image_mobile/@src">
                                                                <img>
                                                                    <iaixsl:attribute name="alt"><iaixsl:value-of select="text"/></iaixsl:attribute>
                                                                    <iaixsl:attribute name="src"><iaixsl:value-of select="image_mobile/@src"/></iaixsl:attribute>
                                                                </img>
                                                            </iaixsl:if>
                                                        </picture>
                                                    </iaixsl:when>
                                                    <iaixsl:otherwise>
                                                        <iaixsl:value-of disable-output-escaping="yes" select="text"/>      
                                                    </iaixsl:otherwise>
                                                </iaixsl:choose>
											</a>
										</iaixsl:when>
										<iaixsl:otherwise>
											<iaixsl:choose>
                                                <iaixsl:when test="image">
                                                    <iaixsl:if test="image/@src">
                                                        <img>
                                                            <iaixsl:attribute name="alt"><iaixsl:value-of select="text"/></iaixsl:attribute>
                                                            <iaixsl:attribute name="src"><iaixsl:value-of select="image/@src"/></iaixsl:attribute>
                                                        </img>
                                                    </iaixsl:if>
                                                </iaixsl:when>
                                                <iaixsl:when test="image_desktop or image_tablet or image_mobile">
                                                    <picture>
                                                        <iaixsl:if test="image_desktop/@src">
                                                            <source>
                                                                <iaixsl:attribute name="media">(min-width:979px)</iaixsl:attribute>
                                                                <iaixsl:attribute name="srcset"><iaixsl:value-of select="image_desktop/@src"/></iaixsl:attribute>
                                                            </source>
                                                        </iaixsl:if>

                                                        <iaixsl:if test="image_tablet/@src">
                                                            <source>
                                                                <iaixsl:attribute name="media">(min-width:757px)</iaixsl:attribute>
                                                                <iaixsl:attribute name="srcset"><iaixsl:value-of select="image_tablet/@src"/></iaixsl:attribute>
                                                            </source>
                                                        </iaixsl:if>

                                                        <iaixsl:if test="image_mobile/@src">
                                                            <img>
                                                                <iaixsl:attribute name="alt"><iaixsl:value-of select="text"/></iaixsl:attribute>
                                                                <iaixsl:attribute name="src"><iaixsl:value-of select="image_mobile/@src"/></iaixsl:attribute>
                                                            </img>
                                                        </iaixsl:if>
                                                    </picture>
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
				</div>
			</iaixsl:if>

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
							<iaixsl:variable name="order_contact_literal">true</iaixsl:variable>
							<iaixsl:if test="$order_contact_literal">
								<li id="order_contact" class="menu_orders_item">
									<i class="icon-phone"></i>
									<a>
										<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/contact/link/@url"/></iaixsl:attribute>
										Contact
									</a>
								</li>
							</iaixsl:if>
							
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
							<li id="account_boughts" class="menu_orders_item">
								<i class="icon-menu-lines"></i>
								<a>
									<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/productsBought/@url"/></iaixsl:attribute>
									List of purchased products
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
									Shopping list
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
		<!--Dane kontaktowe w menu (menu_contact, 113288.1)-->
            <iaixsl:variable name="hideAdress"></iaixsl:variable>
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
        <!--Bannery sekcji 2 (menu_banners2, 109348.2)-->

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
                                                    <iaixsl:when test="image">
                                                        <iaixsl:if test="image/@src">
                                                            <img>
                                                                <iaixsl:attribute name="alt"><iaixsl:value-of select="text"/></iaixsl:attribute>
                                                                <iaixsl:attribute name="src"><iaixsl:value-of select="image/@src"/></iaixsl:attribute>
                                                            </img>
                                                        </iaixsl:if>
                                                    </iaixsl:when>
                                                    <iaixsl:when test="image_desktop or image_tablet or image_mobile">
                                                        <picture>
                                                            <iaixsl:if test="image_desktop/@src">
                                                                <source>
                                                                    <iaixsl:attribute name="media">(min-width:979px)</iaixsl:attribute>
                                                                    <iaixsl:attribute name="srcset"><iaixsl:value-of select="image_desktop/@src"/></iaixsl:attribute>
                                                                </source>
                                                            </iaixsl:if>

                                                            <iaixsl:if test="image_tablet/@src">
                                                                <source>
                                                                    <iaixsl:attribute name="media">(min-width:757px)</iaixsl:attribute>
                                                                    <iaixsl:attribute name="srcset"><iaixsl:value-of select="image_tablet/@src"/></iaixsl:attribute>
                                                                </source>
                                                            </iaixsl:if>

                                                            <iaixsl:if test="image_mobile/@src">
                                                                <img>
                                                                    <iaixsl:attribute name="alt"><iaixsl:value-of select="text"/></iaixsl:attribute>
                                                                    <iaixsl:attribute name="src"><iaixsl:value-of select="image_mobile/@src"/></iaixsl:attribute>
                                                                </img>
                                                            </iaixsl:if>
                                                        </picture>
                                                    </iaixsl:when>
                                                    <iaixsl:otherwise>
                                                        <iaixsl:value-of disable-output-escaping="yes" select="text"/>      
                                                    </iaixsl:otherwise>
                                                </iaixsl:choose>
                                            </a>
                                        </iaixsl:when>
                                        <iaixsl:otherwise>
                                            <iaixsl:choose>
                                                <iaixsl:when test="image">
                                                    <iaixsl:if test="image/@src">
                                                        <img>
                                                            <iaixsl:attribute name="alt"><iaixsl:value-of select="text"/></iaixsl:attribute>
                                                            <iaixsl:attribute name="src"><iaixsl:value-of select="image/@src"/></iaixsl:attribute>
                                                        </img>
                                                    </iaixsl:if>
                                                </iaixsl:when>
                                                <iaixsl:when test="image_desktop or image_tablet or image_mobile">
                                                    <picture>
                                                        <iaixsl:if test="image_desktop/@src">
                                                            <source>
                                                                <iaixsl:attribute name="media">(min-width:979px)</iaixsl:attribute>
                                                                <iaixsl:attribute name="srcset"><iaixsl:value-of select="image_desktop/@src"/></iaixsl:attribute>
                                                            </source>
                                                        </iaixsl:if>

                                                        <iaixsl:if test="image_tablet/@src">
                                                            <source>
                                                                <iaixsl:attribute name="media">(min-width:757px)</iaixsl:attribute>
                                                                <iaixsl:attribute name="srcset"><iaixsl:value-of select="image_tablet/@src"/></iaixsl:attribute>
                                                            </source>
                                                        </iaixsl:if>

                                                        <iaixsl:if test="image_mobile/@src">
                                                            <img>
                                                                <iaixsl:attribute name="alt"><iaixsl:value-of select="text"/></iaixsl:attribute>
                                                                <iaixsl:attribute name="src"><iaixsl:value-of select="image_mobile/@src"/></iaixsl:attribute>
                                                            </img>
                                                        </iaixsl:if>
                                                    </picture>
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
        <!--Kalkulatory rat (menu_instalment, 118818.1)-->
			<script>
				const instalmentData = {
					
					currency: '<iaixsl:value-of select="/shop/currency/@name"/>',
					
					<iaixsl:choose>
						<iaixsl:when test="/shop/page/@type = 'projector'">
							basketCost: parseFloat(<iaixsl:value-of select="/shop/basket/@cost"/>, 10),
						</iaixsl:when>
						<iaixsl:otherwise>
							basketCost: 0,
						</iaixsl:otherwise>
					</iaixsl:choose>
					
					<iaixsl:choose>
						<iaixsl:when test="/shop/page/@type = 'projector'">
							basketCostNet: parseFloat(<iaixsl:value-of select="/shop/basket/@cost_net"/>, 10),
						</iaixsl:when>
						<iaixsl:otherwise>
							basketCostNet: 0,
						</iaixsl:otherwise>
					</iaixsl:choose>
					
					basketCount: parseInt(<iaixsl:value-of select="/shop/basket/@count"/>, 10),
					
					<iaixsl:choose>
						<iaixsl:when test="/shop/page/@type = 'projector'">
							price: parseFloat(<iaixsl:value-of select="/shop/page/projector/product/price/@value"/>, 10),
							priceNet: parseFloat(<iaixsl:value-of select="/shop/page/projector/product/price/@price_net"/>, 10),
						</iaixsl:when>
						<iaixsl:when test="/shop/page/@type = 'basketedit'">
							price: parseFloat(<iaixsl:value-of select="/shop/page/basket-details/summary/money/@to_pay"/>, 10),
							priceNet: parseFloat(<iaixsl:value-of select="/shop/page/basket-details/summary/money/@total_net"/>, 10),
						</iaixsl:when>
						<iaixsl:otherwise>
							price: 0,
							priceNet: 0,
						</iaixsl:otherwise>
					</iaixsl:choose>
				}
			</script>
			<iaixsl:if test="/shop/page/basket-details/summary/payment/instalment"> </iaixsl:if>
			<iaixsl:if test="/shop/page/basket-details/summary/payment/instalment/@price_type"> </iaixsl:if>
			<iaixsl:if test="/shop/page/projector/product/payment/instalment"> </iaixsl:if>
			<iaixsl:if test="/shop/page/projector/product/payment/instalment/@price_type"> </iaixsl:if>
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
                                        Close the window
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
                                        Close the window
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
                                        Close the window
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
                                        Close the window
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
                                        Close the window
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
                                        Close the window
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
                                        Close the window
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
                                        Close the window
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
                            Close the window
                        </button>
                        <button class="btn --solid  prepaid_confirm">
                            Cancel order
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
            <iaixsl:variable name="projector_script_bottom">true</iaixsl:variable>
            <iaixsl:if test="/shop/page/@type = 'main' or /shop/page/@type = 'search' or /shop/page/@type = 'place-order' or /shop/page/@type = 'noproduct' or ($projector_script_bottom and /shop/page/@type = 'projector')">
                <iaixsl:choose>
                    <iaixsl:when test="/shop/@preview > 0">
                        <script><iaixsl:attribute name="src">/gfx/<iaixsl:value-of select="language/@id"/>/<iaixsl:value-of select="/shop/@preview"/>/shop.js</iaixsl:attribute></script>
<script src="/gfx/eng/orderdetails_payments.js.gzip?r=1612959986"></script>
                    </iaixsl:when>
                    <iaixsl:otherwise>
                        <script><iaixsl:attribute name="src">/gfx/<iaixsl:value-of select="language/@id"/>/shop.js.gzip?r=1612959986</iaixsl:attribute></script>
<script src="/gfx/eng/orderdetails_payments.js.gzip?r=1612959986"></script>
                    </iaixsl:otherwise>
                </iaixsl:choose>
            </iaixsl:if>
            <script src="/gfx/eng/prepaid_order_products.js.gzip?r=1612959986"></script>
            <script>
                app_shop.runApp();
            </script>

            
            <iaixsl:if test="/shop/page/seolink_with_language_directory"/>

        
            <iaixsl:if test="(action/set_render/item/@name = 'popup') or not(action/set_render/item)">
                <iaixsl:value-of disable-output-escaping="yes" select="php:functionString('additionalContent', 'additional_body_scripts')"/>
                <iaixsl:text disable-output-escaping="yes">&lt;/body&gt;&lt;/html&gt;</iaixsl:text>
            </iaixsl:if>
        </iaixsl:template><iaixsl:template match="//image"><iaixsl:if test="@type='swf'"><object type="application/x-shockwave-flash"><iaixsl:attribute name="data"><iaixsl:value-of select="@src"/></iaixsl:attribute><iaixsl:attribute name="data"><iaixsl:value-of select="@src"/></iaixsl:attribute><iaixsl:attribute name="width"><iaixsl:value-of select="@width"/></iaixsl:attribute><iaixsl:attribute name="height"><iaixsl:value-of select="@height"/></iaixsl:attribute><param name="movie"><iaixsl:attribute name="value"><iaixsl:value-of select="@src"/></iaixsl:attribute></param><param name="bgcolor"><iaixsl:attribute name="bgcolor"><iaixsl:value-of select="@bgcolor"/></iaixsl:attribute></param></object></iaixsl:if><iaixsl:if test="not(@type='swf')"><img alt="" class="pic"><iaixsl:attribute name="src"><iaixsl:value-of select="@src"/></iaixsl:attribute><iaixsl:if test="@width &gt; 0"><iaixsl:attribute name="width"><iaixsl:value-of select="@width"/></iaixsl:attribute></iaixsl:if><iaixsl:if test="@height &gt; 0"><iaixsl:attribute name="height"><iaixsl:value-of select="@height"/></iaixsl:attribute></iaixsl:if></img></iaixsl:if></iaixsl:template><iaixsl:template name="escape-quote-string"><iaixsl:param name="str"/><iaixsl:param name="escape" select="'quot'"/><iaixsl:param name="quoting" select="'1'"/><iaixsl:variable name="escape_sign"><iaixsl:choose><iaixsl:when test="$escape=&quot;apos&quot;"><iaixsl:value-of select="&quot;'&quot;"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="string('&quot;')"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable><iaixsl:if test="$quoting"><iaixsl:value-of select="$escape_sign"/></iaixsl:if><iaixsl:choose><iaixsl:when test="contains($str,$escape_sign)"><iaixsl:variable name="before-first-apostrophe" select="substring-before($str,$escape_sign)"/><iaixsl:variable name="after-first-apostrophe" select="substring-after($str,$escape_sign)"/><iaixsl:value-of select="$before-first-apostrophe"/>\<iaixsl:value-of select="$escape_sign"/><iaixsl:text/><iaixsl:call-template name="escape-quote-string"><iaixsl:with-param name="str" select="$after-first-apostrophe"/><iaixsl:with-param name="escape" select="$escape"/><iaixsl:with-param name="quoting" select="0"/></iaixsl:call-template></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="$str"/></iaixsl:otherwise></iaixsl:choose><iaixsl:if test="$quoting"><iaixsl:value-of select="$escape_sign"/></iaixsl:if></iaixsl:template></iaixsl:stylesheet>