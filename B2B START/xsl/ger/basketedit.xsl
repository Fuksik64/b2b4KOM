<?xml version="1.0" encoding="UTF-8"?>
<iaixsl:stylesheet xmlns:php="http://php.net/xsl" xmlns:iaixsl="http://www.w3.org/1999/XSL/Transform" xmlns:iaielement="http://iai-system.com/ddd" xmlns:fb="http://www.facebook.com/2008/fbml" version="1.0" exclude-result-prefixes="php iaielement fb"><iaixsl:output indent="no" method="html" doctype-system="about:legacy-compat" version="1.0" encoding="UTF-8"/><iaixsl:strip-space elements="table tr td img"/><iaixsl:decimal-format name="yen" NaN="" grouping-separator="," decimal-separator="."/><iaixsl:template match="shop"><!--Typ strony (envelope, 107421.1)-->
            <iaixsl:variable name="meta_langcode_iso639">de</iaixsl:variable>
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
                    
                    <link rel="shortcut icon" href="/gfx/ger/favicon.ico" />
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
                                    <link rel="stylesheet" type="text/css"><iaixsl:attribute name="href">/gfx/<iaixsl:value-of select="language/@id"/>/style.css.gzip?r=1600678629</iaixsl:attribute></link>
                                </iaixsl:otherwise>
                            </iaixsl:choose>
                        </iaixsl:when>
                        <iaixsl:otherwise>
                            <iaixsl:choose>
                                <iaixsl:when test="/shop/@preview > 0">
                                    <link rel="stylesheet" type="text/css"><iaixsl:attribute name="href">/gfx/<iaixsl:value-of select="language/@id"/>/<iaixsl:value-of select="/shop/@preview"/>/style.css</iaixsl:attribute></link>
                                </iaixsl:when>
                                <iaixsl:otherwise>
                                    <link rel="stylesheet" type="text/css"><iaixsl:attribute name="href">/gfx/<iaixsl:value-of select="language/@id"/>/style.css.gzip?r=1600678629</iaixsl:attribute></link>
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
                                <script><iaixsl:attribute name="src">/gfx/<iaixsl:value-of select="language/@id"/>/shop.js.gzip?r=1600678629</iaixsl:attribute></script>
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
            <iaixsl:variable name="valuepricedesc">Preis für Sie</iaixsl:variable>
            <iaixsl:variable name="discountpricedesc">Preisreduzierung</iaixsl:variable>
            <iaixsl:variable name="promopricedesc">Sonderangebot</iaixsl:variable>
            <iaixsl:variable name="detalpricedesc">Einzelhandelspreis</iaixsl:variable>
            <iaixsl:variable name="rebatepricedesc">Rabatt</iaixsl:variable>
            <iaixsl:variable name="nettopricedesc">Nettopreis</iaixsl:variable>
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
			                <iaixsl:attribute name="placeholder">Geben Sie ein, wonach Sie suchen</iaixsl:attribute>
		                    
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

            <iaixsl:variable name="display_menu_additional">Einloggen</iaixsl:variable>
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
                                                <label class="menu_settings_lang_label">Sprache</label>

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
                                                <label for="menu_settings_curr">Währung:</label>

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
                                                <label for="menu_settings_country">Lieferland</label>

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
                                        Änderungen übernehmen
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
                                    Dein Konto
                                </iaixsl:when>
                                <iaixsl:otherwise>
									<iaixsl:if test="$login_title != ''"><iaixsl:attribute name="title"><iaixsl:value-of select="$login_title"/></iaixsl:attribute></iaixsl:if>
                                    <iaixsl:value-of disable-output-escaping="yes" select="$display_menu_additional"/>
                                </iaixsl:otherwise>
                            </iaixsl:choose>
                        </a>
                        <a href="/basketedit.php?mode=2" class="wishlist_link">
                            Einkaufsliste
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
                        Ihr Rabatte
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

                            
                            <strong>
                               <iaixsl:if test="/shop/page/@cache_html = 'true' ">
                                  <iaixsl:attribute name="style">display: none;</iaixsl:attribute>
                               </iaixsl:if>
                                <b><iaixsl:value-of disable-output-escaping="yes" select="basket/@cost_net_formatted"/></b>
                                <span> netto</span>
                                <iaixsl:if test="basket/@points_used > 0">
                                    <small>
                                         + <iaixsl:value-of disable-output-escaping="yes" select="basket/@points_used"/>
                                         PKT.
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
                                                    <td class="menu_basket_prices_label">Nettosumme:</td>
                                                    <td class="menu_basket_prices_value"><span class="menu_basket_prices_netto"><iaixsl:value-of select="basket/@cost_net_formatted"/></span></td>
                                                </tr>
                                                <tr>
                                                    <td class="menu_basket_prices_label">Bruttosumme:</td>
                                                    <td class="menu_basket_prices_value"><span class="menu_basket_prices_brutto"><iaixsl:value-of select="basket/@cost_formatted"/></span></td>
                                                </tr>
                                                <iaixsl:if test="(basket/@points_used) and not(basket/@points_used = '')">
                                                    <tr>
                                                        <td class="menu_basket_prices_label">Verwendete Punkte:</td>
                                                        <td class="menu_basket_prices_value"><span class="menu_basket_prices_points"><iaixsl:value-of select="basket/@points_used"/></span>Pkt.</td>
                                                    </tr>
                                                </iaixsl:if>
                                                <iaixsl:if test="(basket/@shipping_undefined = 'false')">
                                                    <tr>
                                                        <td class="menu_basket_prices_label">Lieferkosten:</td>
                                                        <td class="menu_basket_prices_value">
                                                            <iaixsl:choose>
                                                                <iaixsl:when test="not(basket/@shipping = '0')">ab <span class="menu_basket_prices_shippingCost"><iaixsl:value-of select="basket/@shipping_formatted"/></span></iaixsl:when>
                                                                <iaixsl:otherwise><span class="menu_basket_shippingfree">Gratis!</span></iaixsl:otherwise>
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
                                                        <span class="menu_basket_shippingfree_hit">Sie haben die Schwelle für eine kostenlose Lieferung erreicht. </span>
                                                    </iaixsl:when>
                                                    <iaixsl:otherwise>
                                                        Es fehlen Ihnen 
                                                        <span class="menu_basket_toshippingfree"><span class="menu_basket_prices_shippingFree"><iaixsl:value-of select="basket/@toshippingfree_formatted"/></span></span>
                                                         bis zum <br />kostenlosen Versand.
                                                    </iaixsl:otherwise>
                                                </iaixsl:choose>
                                            </div>
                                        </div>
                                    </iaixsl:if>
                                    

                                    
                                    <iaixsl:if test="((rebatesLocal/@nextleft) and (rebatesLocal/@nextvalue)) and (not(rebatesLocal/@nextleft = '') and not(rebatesLocal/@nextvalue = '') and not(rebatesLocal/@nextvalue = '0.00'))">
                                        <div class="menu_basket_nextrabate">
                                            <div class="menu_basket_nextrabate_sub">
                                                Es fehlen Ihnen 
                                                <span class="menu_basket_nextrabate_in"><iaixsl:value-of select="rebatesLocal/@nextleft_formatted"/></span>
                                                 bis zum Rabatt 
                                                <span class="menu_basket_nextrabate_value"><iaixsl:value-of select="rebatesLocal/@nextvalue"/>%</span>
                                            </div>
                                        </div>
                                    </iaixsl:if>
                                    

                                    
                                        <div class="menu_basket_buttons">
                                            <div class="menu_basket_buttons_sub">
                                                <a href="/basketedit.php" class="menu_basket_buttons_basket btn --solid --medium">
                                                    <iaixsl:attribute name="title">Zur Warenkorb-Seite</iaixsl:attribute>
                                                    <iaixsl:if test="/shop/action/basket/@url">
                                                        <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/basket/@url"/>?mode=1</iaixsl:attribute>
                                                    </iaixsl:if>
                                                    Zum Warenkorb
                                                </a>

                                                <a href="/order1.php" class="menu_basket_buttons_order btn --solid --medium">
                                                    <iaixsl:attribute name="title">Zur Bestellung aufgeben-Seite</iaixsl:attribute>
                                                    <iaixsl:if test="/shop/action/order1/@url">
                                                        <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/order1/@url"/></iaixsl:attribute>
                                                    </iaixsl:if>
                                                    Jetzt kaufen
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
                                                    <th class="menu_basket_product_name">Produktname</th>
                                                    <th class="menu_basket_product_size">Größe</th>
                                                    <th class="menu_basket_product_quantity">Anzahl </th>
                                                    <th class="menu_basket_product_price">Nettopreis</th>
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
                                                                        <span class="menu_basket_product_points">+ <iaixsl:value-of select="price/@points"/>Pkt.</span>
                                                                    </iaixsl:if>
                                                                </iaixsl:when>
                                                                <iaixsl:when test="(price/@worth_net = 0) and (price/@points)">
                                                                    <span class="menu_basket_product_points"><iaixsl:value-of select="price/@points"/>Pkt.</span>
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
                                    <span>Wunschliste(<iaixsl:value-of select="wishes/@count"/>)</span>

                                    <span class="badge badge-important d-md-none"><iaixsl:value-of select="wishes/@count"/></span>
                                </a>
                            </iaixsl:when>
                            <iaixsl:otherwise>
                                <a class="wishes_link link" href="/basketedit.php?mode=2" rel="nofollow">
                                    <iaixsl:attribute name="title"></iaixsl:attribute>
                                    <iaixsl:if test="/shop/action/basket/@url">
                                        <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/basket/@url"/>?mode=2</iaixsl:attribute>
                                    </iaixsl:if>

                                    <span>Wunschliste(0)</span>
                                </a>
                            </iaixsl:otherwise>
                        </iaixsl:choose>
                        <span class="hidden-tablet"> | </span>
                        <a class="basket_link link" href="/basketedit.php?mode=1" rel="nofollow">
                            <iaixsl:attribute name="title">Klicken Sie hier, um zum Warenkorb zu gelangen</iaixsl:attribute>
                            <iaixsl:if test="/shop/action/basket/@url">
                                <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/basket/@url"/>?mode=1</iaixsl:attribute>
                            </iaixsl:if>
                            <iaixsl:if test="basket/@count = '0'">
                                <iaixsl:attribute name="title">Ihr Warenkorb enthält noch keine Produkte.</iaixsl:attribute>
                            </iaixsl:if>
                            Zur Kasse
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

        <!--Menu - Drzewo 1 (menu_categories, 106527.1)-->
        <iaixsl:variable name="dlmenu_showall">+ Alle anzeigen</iaixsl:variable>
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
        <iaixsl:if test="/shop/page/navigation/item/@gfx_active_desktop"> </iaixsl:if>
        <!--Lokalizator (projector_stepper, 106590.1)-->
        <iaixsl:variable name="searchResults_title"></iaixsl:variable>
        <iaixsl:variable name="breadcrumbs_label">Sie sind hier: </iaixsl:variable>
        <div class="breadcrumbs col-md-12">
            <div class="back_button">
                 <iaixsl:attribute name="class">back_button</iaixsl:attribute>
                <button id="back_button"><i class="icon-angle-left"></i> Zurück </button>
            </div>
            <div class="list_wrapper">
                <ol>
                    <iaixsl:if test="$breadcrumbs_label">
                        <li>
                            <span><iaixsl:value-of select="$breadcrumbs_label"/></span>
                        </li>
                    </iaixsl:if>
                    <li class="bc-main">
                        <span><a href="/">Startseite</a></span>
                    </li>
                    <iaixsl:choose>
                        <iaixsl:when test="page/@type = 'main'">
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'wishesedit'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Wunschliste</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'basketedit'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Warenkorb</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'product-stocks'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Produktverfügbarkeit in unseren Shops</span>
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
                                <span>Kundenrezensionen</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'opinions-shop'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Meinungen über den Laden</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'categories-list'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Liste der Kategorien</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'order-payment'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Zahlungen</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'order-newpayment'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Zahlungen</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'order-wrappers'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Verpackung auswählen</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'news'">
                            <iaixsl:choose>
                                <iaixsl:when test="/shop/page/news/title">
                                    <li>
                                        <iaixsl:attribute name="class">bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                        <a>
                                            <iaixsl:attribute name="href">/news.php</iaixsl:attribute>
                                            Aktuelles
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
                                        <span>Aktuelles</span>
                                    </li>
                                </iaixsl:otherwise>
                            </iaixsl:choose>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'client-rebates'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Ihre Rabatte</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'sitemap'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Seitmap</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'client-save'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Einloggen</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="((page/@type = 'client-new') and not(page/client-data/@register='true') and not(page/client-data/@edit='true'))">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Registrieren</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="((page/@type = 'client-new') and (page/client-data/@register='true'))">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Registrieren</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="((page/@type = 'client-new') and (page/client-data/@edit='true'))">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Daten bearbeiten</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'order-nonstandardized'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Sondernbestellung</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'pickup-sites'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Wählen Sie einen Abholort</span>
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
                                <span>Links</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'login'">
                            <iaixsl:if test="page/login/response/@type = 'give login'">
                                <li>
                                    <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                    <span>Passwort vergessen?</span>
                                </li>
                            </iaixsl:if>
                            <iaixsl:if test="not(page/login/response/@type = 'give login')">
                                <iaixsl:choose>
                                    <iaixsl:when test="/shop/basket/@login">
                                        <li>
                                            <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                            <span>Ihr Konto</span>
                                        </li>
                                    </iaixsl:when>
                                    <iaixsl:when test="page/login/response/@type = 'no login'">
                                        <li>
                                            <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                            <span>Einloggen</span>
                                        </li>
                                    </iaixsl:when>
                                </iaixsl:choose>
                            </iaixsl:if>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'rma-add'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Reklamation hinzufügen</span>
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
                                <span>Liste der Reklamationen</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'stock'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Abholort auswählen</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'order1'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Lieferung und Zahlung</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'order2'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Datenbestätigung</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'prepaid'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Zusammenfassung Ihrer Bestellung</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'producers-list'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Hersteller</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'searching'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Suchen</span>
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
                                <span>Achtung</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'client-orders'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-login</iaixsl:attribute>
                                <a><iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/login/@url"/></iaixsl:attribute>Ihr Konto</a>  
                            </li>                            
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Ihre Bestellungen</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'order-open'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Bestellstatus</span>
                            </li>
                        </iaixsl:when>
                        

                        <iaixsl:when test="page/@type = 'product-compare'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Suchmaschine </span>
                            </li>
                        </iaixsl:when>

                        <iaixsl:when test="page/@type = 'products-bought'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Liste der gekauften Waren</span>
                            </li>
                        </iaixsl:when>

                        <iaixsl:when test="page/@type = 'return_products'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Rückerstattung bestellen</span>
                            </li>
                        </iaixsl:when>

                        <iaixsl:when test="page/@type = 'client-cards'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Kundenkarten</span>
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
                                <span>One Step Checkout-Prozess</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'rma-open'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Beschwerde ohne Einloggen</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'returns-open'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Rückerstattung offen</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'opinions-add'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Meinungen hinzufügen</span>
                            </li>
                        </iaixsl:when>
                        <iaixsl:when test="page/@type = 'noproduct'">
                            <li>
                                <iaixsl:attribute name="class">bc-active bc-<iaixsl:value-of select="page/@type"/></iaixsl:attribute>
                                <span>Mangel an Produkt</span>
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
                            <i class="icon-cog"></i>  <span>Ihr Konto</span>
                            
                        </a>
                        <a class="order_status_link" href="/order-open.php">
                            <iaixsl:attribute name="title">
                                
                                
                            </iaixsl:attribute>
                            <i class="icon-globe"></i>  <span>Bestellstatus prüfen</span>
                            
                        </a>
                        <iaixsl:if test="(/shop/basket/@client_id_upc != '') ">
                            <a class="client_card_link" href="##">
                                <iaixsl:attribute name="href">
                                    <iaixsl:value-of disable-output-escaping="yes" select="action/login/@url"/>
                                </iaixsl:attribute>
                                 <i class="icon-barcode"></i> <span>Kundenkarte</span>
                            </a>
                        </iaixsl:if>
                        <a class="rabates_link" href="/client-rebate.php">
                            <iaixsl:attribute name="title">
                                
                                
                            </iaixsl:attribute>
                            <span class='font_icon'>%</span> <span>Ihre Rabatte</span>
                            
                        </a>
                        <a class="logout_link" href="/login.php?operation=logout">
                            <iaixsl:attribute name="title">
                                
                                
                            </iaixsl:attribute>
                            <i class="icon-off" style='color: #CC0000;'></i>  <span>Ausloggen</span>
                            
                        </a>
                        <iaixsl:if test="action/personalized_recommendations/@url">
                            <a class="recommendation_link">
                                <iaixsl:attribute name="href">
                                    <iaixsl:value-of disable-output-escaping="yes" select="action/personalized_recommendations/@url"/>
                                </iaixsl:attribute>

                                <i class="icon-thumbs-up" style='color: #0099D0;'></i>  <span>Für Sie empfohlen</span>
                                
                            </a>
                        </iaixsl:if>
                    </iaixsl:when>
                    <iaixsl:otherwise>
                        <a class="sign_in_link" href="/login.php">
                            <iaixsl:attribute name="title">
                                
                                
                            </iaixsl:attribute>
                            <i class="icon-user"></i> <span>Einloggen</span>
                            
                        </a>
                        <a class="registration_link" href="/client-new.php?register&amp;wholesaler=true">
                            <iaixsl:attribute name="title">
                                
                                
                            </iaixsl:attribute>
                            <i class="icon-lock"></i> <span>Registrieren</span>
                            
                        </a>
                        <a class="order_status_link" href="/order-open.php">
                            <iaixsl:attribute name="title">
                                
                                
                            </iaixsl:attribute>
                            <i class="icon-globe"></i>  <span>Bestellstatus prüfen</span>
                            
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
                                <strong class="progress__name">Warenkorb</strong>
                                <span class="progress__description">Gesamtwert: <iaixsl:choose><iaixsl:when test="(/shop/basket/@wholesaler = 'true') and not($wholesalerPrice_order_progress)"><iaixsl:value-of select="basket/@cost_net_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="basket/@cost_formatted"/></iaixsl:otherwise></iaixsl:choose></span>
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
                                            <strong class="progress__name">Ihre daten</strong>
                                            <span class="progress__description">Geben Sie Ihre Versanddaten an</span>
                                        </iaixsl:when>
                                        <iaixsl:otherwise>
                                            <strong class="progress__name">Ihre daten</strong>
                                            <span class="progress__description">Loggen Sie sich ein oder geben Sie Ihre Daten an</span>
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
                                    <strong class="progress__name">Lieferung und Zahlung</strong>
                                    <span class="progress__description">Wählen Sie die gewünschte Liefer- und Zahlungsart aus</span>
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
                                    <strong class="progress__name">Bestellungsübersicht</strong>
                                    <span class="progress__description">Überprüfen Sie Ihre Bestellung noch einmal</span>
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
                                    <strong class="progress__name">Lieferung und Zahlung</strong>
                                    <span class="progress__description">Wählen Sie die gewünschte Liefer- und Zahlungsart aus</span>
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
                                    <strong class="progress__name">Bestellungsübersicht</strong>
                                    <span class="progress__description">Überprüfen Sie Ihre Bestellung noch einmal</span>
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
                                    <strong class="progress__name">Bestellung aufgeben</strong>
                                    <span class="progress__description">Annahme der Bestellung zur Realisierung</span>
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
                                <strong class="progress__name">Warenkorb</strong>
                                <span class="progress__description">Gesamtwert: <iaixsl:choose><iaixsl:when test="(/shop/basket/@wholesaler = 'true') and not($wholesalerPrice_order_progress)"><iaixsl:value-of select="basket/@cost_net_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="basket/@cost_formatted"/></iaixsl:otherwise></iaixsl:choose></span>
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
                                <strong class="progress__name">Ihre daten</strong>
                                <span class="progress__description">Loggen Sie sich ein oder geben Sie Ihre Daten an</span>
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
                                <strong class="progress__name">Lieferung und Zahlung</strong>
                                <span class="progress__description">Wählen Sie die gewünschte Liefer- und Zahlungsart aus</span>
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
                                <strong class="progress__name">Bestellungsübersicht</strong>
                                <span class="progress__description">Überprüfen Sie Ihre Bestellung noch einmal</span>
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
                                <strong class="progress__name">Warenkorb</strong>
                                <span class="progress__description">Gesamtwert: <iaixsl:choose><iaixsl:when test="(/shop/basket/@wholesaler = 'true') and not($wholesalerPrice_order_progress)"><iaixsl:value-of select="basket/@cost_net_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="basket/@cost_formatted"/></iaixsl:otherwise></iaixsl:choose></span>
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
                                <strong class="progress__name">Ihre daten</strong>
                                <span class="progress__description">Geben Sie Ihre Versanddaten an</span>
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
                                <strong class="progress__name">Lieferung und Zahlung</strong>
                                <span class="progress__description">Wählen Sie die gewünschte Liefer- und Zahlungsart aus</span>
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
                                <strong class="progress__name">Bestellungsübersicht</strong>
                                <span class="progress__description">Überprüfen Sie Ihre Bestellung noch einmal</span>
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
                                <strong class="progress__name">Warenkorb</strong>
                                <span class="progress__description">Gesamtwert: <iaixsl:choose><iaixsl:when test="(/shop/basket/@wholesaler = 'true') and not($wholesalerPrice_order_progress)"><iaixsl:value-of select="basket/@cost_net_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="basket/@cost_formatted"/></iaixsl:otherwise></iaixsl:choose></span>
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
                                <strong class="progress__name">Lieferung und Zahlung</strong>
                                <span class="progress__description">Wählen Sie die gewünschte Liefer- und Zahlungsart aus</span>
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
                                <strong class="progress__name">Bestellungsübersicht</strong>
                                <span class="progress__description">Überprüfen Sie Ihre Bestellung noch einmal</span>
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
                                        <strong class="progress__name">Daten speichern</strong>
                                        <span class="progress__description">Speicherungen der Kundendaten</span>
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
                                        <strong class="progress__name">Bestellung aufgeben</strong>
                                        <span class="progress__description">Annahme der Bestellung zur Realisierung</span>
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
                                <strong class="progress__name">Warenkorb</strong>
                                <span class="progress__description">Gesamtwert: <iaixsl:choose><iaixsl:when test="(/shop/basket/@wholesaler = 'true') and not($wholesalerPrice_order_progress)"><iaixsl:value-of select="basket/@cost_net_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="basket/@cost_formatted"/></iaixsl:otherwise></iaixsl:choose></span>
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
                                <strong class="progress__name">Lieferung und Zahlung</strong>
                                <span class="progress__description">Sonderbestellung</span>
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
                                <strong class="progress__name">Bestellungsübersicht</strong>
                                <span class="progress__description">Überprüfen Sie Ihre Bestellung noch einmal</span>
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
                                        <strong class="progress__name">Daten speichern</strong>
                                        <span class="progress__description">Speicherungen der Kundendaten</span>
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
                                        <strong class="progress__name">Bestellung aufgeben</strong>
                                        <span class="progress__description">Annahme der Bestellung zur Realisierung</span>
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
                                <strong class="progress__name">Warenkorb</strong>
                                <span class="progress__description">Gesamtwert: <iaixsl:choose><iaixsl:when test="(/shop/basket/@wholesaler = 'true') and not($wholesalerPrice_order_progress)"><iaixsl:value-of select="basket/@cost_net_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="basket/@cost_formatted"/></iaixsl:otherwise></iaixsl:choose></span>
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
                                <strong class="progress__name">Lieferung und Zahlung</strong>
                                <span class="progress__description">Wählen Sie einen Abholort</span>
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
                                <strong class="progress__name">Bestellungsübersicht</strong>
                                <span class="progress__description">Überprüfen Sie Ihre Bestellung noch einmal</span>
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
                                        <strong class="progress__name">Daten speichern</strong>
                                        <span class="progress__description">Speicherungen der Kundendaten</span>
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
                                        <strong class="progress__name">Bestellung aufgeben</strong>
                                        <span class="progress__description">Annahme der Bestellung zur Realisierung</span>
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
                                <strong class="progress__name">Warenkorb</strong>
                                <span class="progress__description">Gesamtwert: <iaixsl:choose><iaixsl:when test="(/shop/basket/@wholesaler = 'true') and not($wholesalerPrice_order_progress)"><iaixsl:value-of select="basket/@cost_net_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="basket/@cost_formatted"/></iaixsl:otherwise></iaixsl:choose></span>
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
                                <strong class="progress__name">Lieferung und Zahlung</strong>
                                <span class="progress__description">Wählen Sie die gewünschte Liefer- und Zahlungsart aus</span>
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
                                <strong class="progress__name">Bestellungsübersicht</strong>
                                <span class="progress__description">Überprüfen Sie Ihre Bestellung noch einmal</span>
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
                                        <strong class="progress__name">Daten speichern</strong>
                                        <span class="progress__description">Speicherungen der Kundendaten</span>
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
                                        <strong class="progress__name">Bestellung aufgeben</strong>
                                        <span class="progress__description">Annahme der Bestellung zur Realisierung</span>
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
                                <strong class="progress__name">Warenkorb</strong>
                                <span class="progress__description">Gesamtwert: <iaixsl:choose><iaixsl:when test="(/shop/basket/@wholesaler = 'true') and not($wholesalerPrice_order_progress)"><iaixsl:value-of select="basket/@cost_net_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="basket/@cost_formatted"/></iaixsl:otherwise></iaixsl:choose></span>
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
                                <strong class="progress__name">Bestellungsübersicht</strong>
                                <span class="progress__description">Überprüfen Sie Ihre Bestellung noch einmal</span>
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
                                <strong class="progress__name">Daten speichern</strong>
                                <span class="progress__description">Speicherungen der Kundendaten</span>
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
                                <strong class="progress__name">Bestellung aufgeben</strong>
                                <span class="progress__description">Annahme der Bestellung zur Realisierung</span>
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
                                <strong class="progress__name">Warenkorb</strong>
                                <span class="progress__description">Gesamtwert: <iaixsl:choose><iaixsl:when test="(/shop/basket/@wholesaler = 'true') and not($wholesalerPrice_order_progress)"><iaixsl:value-of select="basket/@cost_net_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="basket/@cost_formatted"/></iaixsl:otherwise></iaixsl:choose></span>
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
                                <strong class="progress__name">Lieferung und Zahlung</strong>
                                <span class="progress__description">Wählen Sie die gewünschte Liefer- und Zahlungsart aus</span>
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
                                <strong class="progress__name">Bestellungsübersicht</strong>
                                <span class="progress__description">Überprüfen Sie Ihre Bestellung noch einmal</span>
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
                                <strong class="progress__name">Bestellung aufgeben</strong>
                                <span class="progress__description">Bestellungsstatus: 
                                    <iaixsl:choose>
                                        <iaixsl:when test="(page/prepaid/details/@wykonane = 'n')">angenommen</iaixsl:when>
                                        <iaixsl:when test="(page/prepaid/details/@wykonane = 't')">versandt</iaixsl:when>
                                        <iaixsl:when test="(page/prepaid/details/@wykonane = 'i')">abgelehnt</iaixsl:when>
                                        <iaixsl:when test="(page/prepaid/details/@wykonane = 's')">storniert</iaixsl:when>
                                        <iaixsl:when test="(page/prepaid/details/@wykonane = 'o')">in Bearbeitung</iaixsl:when>
                                        <iaixsl:when test="(page/prepaid/details/@wykonane = 'p')">fertig</iaixsl:when>
                                        <iaixsl:when test="(page/prepaid/details/@wykonane = 'h')">angehalten</iaixsl:when>
                                        <iaixsl:when test="(page/prepaid/details/@wykonane = 'w')">in Erwartung der Zahlung</iaixsl:when>
                                        <iaixsl:when test="(page/prepaid/details/@wykonane = 'd')">in Erwartung der Lieferung</iaixsl:when>
                                        <iaixsl:when test="(page/prepaid/details/@wykonane = 'z')">Rückgabe</iaixsl:when>
                                        <iaixsl:when test="(page/prepaid/details/@wykonane = 'k')">storniert</iaixsl:when>
                                        <iaixsl:when test="(page/prepaid/details/@wykonane = 'r')">Reklamation</iaixsl:when>
                                        <iaixsl:when test="(page/prepaid/details/@wykonane = 'j')">gebündelt</iaixsl:when>
                                        <iaixsl:when test="(page/prepaid/details/@wykonane = 'l')">wird vermisst</iaixsl:when>
                                        <iaixsl:when test="(page/prepaid/details/@wykonane = 'a')">in Bearbeitung</iaixsl:when>
                                        <iaixsl:when test="(page/prepaid/details/@wykonane = 'b')">wird gepackt</iaixsl:when>
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
                                <strong class="progress__name">Warenkorb</strong>
                                <span class="progress__description">Gesamtwert: <iaixsl:choose><iaixsl:when test="(/shop/basket/@wholesaler = 'true') and not($wholesalerPrice_order_progress)"><iaixsl:value-of select="basket/@cost_net_formatted"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="basket/@cost_formatted"/></iaixsl:otherwise></iaixsl:choose></span>
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
                                <strong class="progress__name">Lieferung und Zahlung</strong>
                                <span class="progress__description">Wählen Sie die gewünschte Liefer- und Zahlungsart aus</span>
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
                                <strong class="progress__name">Bestellungsübersicht</strong>
                                <span class="progress__description">Überprüfen Sie Ihre Bestellung noch einmal</span>
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
                                <strong class="progress__name">Bestellung aufgeben</strong>
                                <span class="progress__description">Bestellungsstatus: wir warten auf Ihre Zahlung</span>
                            </div>
                        </div>
                    </section>
                </iaixsl:when>
            </iaixsl:choose>
        </iaixsl:if>
    <!--Błędy i informacje w projektorze (menu_messages, 106608.1)-->

        <iaixsl:variable name="rebates_code_used">Dieser Rabatt Code bereits verwendet wurde.</iaixsl:variable>

        <iaixsl:variable name="change_success">Die Änderungen wurden gespeichert.</iaixsl:variable>

        <iaixsl:variable name="change_success_despite_no_change">Das Formular wurde gespeichert, Sie haben jedoch keine Daten geändert.</iaixsl:variable>


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


                                <iaixsl:when test="@type='file_upload_invalid_type'">Die Datei <span class="invalidFileName"><iaixsl:value-of select="@value"/></span> kann nicht hochgeladen werden, weil dieser Dateityp nicht unterstützt wird.</iaixsl:when>
                                <iaixsl:when test="@type='file_upload_invalid_extension'">Die Datei <span class="invalidFileName"><iaixsl:value-of select="@value"/></span> kann nicht hochgeladen werden, weil dieser Dateityp nicht unterstützt wird.</iaixsl:when>
                                <iaixsl:when test="@type='file_upload_size_exceeded'">Die Datei <span class="invalidFileName"><iaixsl:value-of select="@value"/></span> kann nicht hochgeladen werden, weil sie die maximale Größenbeschränkung von 10 MB überschreitet.</iaixsl:when>
                                <iaixsl:when test="@type='file_uploaded_remove_fail'">Beim Hochladen der folgenden Datei ist ein Fehler aufgetreten: <span class="invalidFileName"><iaixsl:value-of select="@value"/></span>.</iaixsl:when>


                                <iaixsl:when test="@type='rebates_code_expired'">Der eingegebene Rabattcode ist abgelaufen und ist nicht mehr aktiv.</iaixsl:when>
                                <iaixsl:when test="@type='rebates_code_notbegun'">Der eingegebene Rabattcode ist noch nicht aktiv. Dieses Sonderangebot wurde noch nicht gestartet.</iaixsl:when>

                               <iaixsl:when test="@type='order_minimal_wholesale_blocked'">Der Mindestbestellwert für Großhändler beträgt: <iaixsl:if test="$signbeforeprice = 'true'">
                                            <iaixsl:value-of select="/shop/currency/@name"/>
                                            <iaixsl:value-of select="$signbetweenpricecurrency"/>
                                        </iaixsl:if>
                                        <iaixsl:value-of select="@value"/>
                                        <iaixsl:if test="$signbeforeprice = 'false'">
                                            <iaixsl:value-of select="$signbetweenpricecurrency"/>
                                            <iaixsl:value-of select="/shop/currency/@name"/>
                                        </iaixsl:if>
                                </iaixsl:when>

                            <iaixsl:when test="@type='order_minimal_wholesale_changed'">Obwohl Sie ein Großhändler sind, sehen Sie in der Bestellübersicht nur Einzelhandelspreise. Der Grund dafür ist die Tatsache, dass Sie den Mindestbestellwert für Großhändler nicht erreicht haben. Geben Sie Ihre Bestellung in dieser Form aus, wird es als Einzelhandelsbestellung behandelt.</iaixsl:when>




                                <iaixsl:when test="@type='openid_invalid_authorization'">Autorisierungsfehler.</iaixsl:when>
                                <iaixsl:when test="@type='suggest_sent'">Die Einladung zum Besuch unseres Shops wurde versandt an: <iaixsl:value-of select="@value"/>.</iaixsl:when>
                                <iaixsl:when test="@type='search_to_many_products'">Es wurden zu viele Produkte gefunden. Bitte verwenden Sie die Suchmaschine, um die Suchergebnisse einzuschränken.</iaixsl:when>
                                <iaixsl:when test="@type='search_products_not_found'">Das gesuchte Produkt wurde nicht gefunden. Bitte verwenden Sie die <a href="/searching.php" title="Klicken Sie hier, um zur erweiterten Suchmaschine zu gelangen">Suchmaschine</a>.</iaixsl:when>
                                <iaixsl:when test="@type='search_text_to_short'">Der eingegebene Text ist zu kurz. Bitte geben Sie einen längeren Text ein oder verwenden Sie die Suchmaschine.</iaixsl:when>
                                <iaixsl:when test="@type='login taken'">Der eingegebene Benutzername wurde bereits von einem anderen Kunden registriert. Bitte wählen Sie einen anderen Benutzernamen.</iaixsl:when>
                                <iaixsl:when test="@type='account_not_added'">Es sind Fehler aufgetreten und das Kundenkonto wurde nicht hinzugefügt – bitte versuchen Sie es später noch einmal</iaixsl:when>
                                <iaixsl:when test="@type='exists such account'">Ein Konto mit ähnlichen Angaben existiert bereits in unserem Shop. Wenn Sie sich in unserem Shop schon früher registriert haben und Sie sich an das Passwort nicht mehr erinnern können, benutzen Sie bitte die Option der <a href="/password-recover.php">Passworterinnerung</a></iaixsl:when>
                                <iaixsl:when test="@type='deliv_addr_not_deleted'">Die ausgewählte Lieferadresse kann nicht gelöscht werden.</iaixsl:when>
                                <iaixsl:when test="@type='deliv_addr_not_selected'">Die ausgewählte Lieferadresse kann nicht als Standardadresse verwendet werden.</iaixsl:when>
                                <iaixsl:when test="@type='no login'">Sie haben keinen Benutzernamen eingegeben.</iaixsl:when>
                                <iaixsl:when test="@type='incorect login'">Der von Ihnen ausgewählte Benutzername ist ungültig. Das Login muss mindestens 3 und maximal 40 Zeichen (nur Buchstaben oder Zahlen) enthalten.</iaixsl:when>
                                <iaixsl:when test="@type='no password'">Sie haben kein Passwort eingegeben.</iaixsl:when>
                                <iaixsl:when test="@type='password to short'">Das Passwort muss aus mindestens 6 und nicht mehr als 15 Zeichen bestehen.</iaixsl:when>


                                <iaixsl:when test="@type='password_to_long'">Das Passwort muss aus mindestens 6 und nicht mehr als 15 Zeichen bestehen.</iaixsl:when>


                                <iaixsl:when test="@type='login equals password'">Das Passwort und der Benutzername dürfen nicht identisch sein.</iaixsl:when>
                                <iaixsl:when test="@type='not equal passwords'">Das Passwort und die Passwort-Wiederholung stimmen nicht überein.</iaixsl:when>
                                <iaixsl:when test="@type='no firstname'">Der eingegebene Vorname ist zu kurz.</iaixsl:when>
                                <iaixsl:when test="@type='no name'">Der Vorname oder der Nachname fehlt.</iaixsl:when>
                                <iaixsl:when test="@type='birth_date'">Das Geburtsdatum enthält ungültige Werte oder wurde in einem falschen Format gespeichert.</iaixsl:when>
                                <iaixsl:when test="@type='incorect email'">Die E-Mail-Adresse ist ungültig.</iaixsl:when>
                                <iaixsl:when test="@type='incorect nip'">Wenn Sie eine USt-IdNr. eingeben, benutzen Sie bitte das Format DEXXXXXXXXX.</iaixsl:when>

                                <iaixsl:when test="@type='no firmname'">Der eingegebene Firmenname ist ungültig.</iaixsl:when>

                                <iaixsl:when test="@type='incorrect region'">Die eingegebene Region ist ungültig.</iaixsl:when>
                                <iaixsl:when test="@type='no city'">Die eingegebene Stadt ist ungültig.</iaixsl:when>
                                <iaixsl:when test="@type='no street'">Die eingegebene Adresse ist ungültig.</iaixsl:when>

                               <iaixsl:when test="@type='no_street_number'">Die eingegebene Adresse ist ungültig.</iaixsl:when>


                                <iaixsl:when test="@type='incorect phone'">Die eingegebene Telefonnummer ist ungültig.</iaixsl:when>
                                <iaixsl:when test="@type='incorect spare phone'">Die eingegebene weitere Telefonnummer ist ungültig.</iaixsl:when>
                                <iaixsl:when test="@type='incorect zipcode'">Die eingegebene Postleitzahl ist ungültig.</iaixsl:when>
                                <iaixsl:when test="@type='double_address_error'">Wenn die Lieferadresse mit der Rechnungsadresse des Käufers identisch ist, markieren Sie bitte die entsprechende Option.</iaixsl:when>
                                <iaixsl:when test="@type='no delivery firstname'">Der eingegebene Vorname des Empfängers ist zu kurz.</iaixsl:when>
                                <iaixsl:when test="@type='no delivery lastname'">Der eingegebene Nachname des Empfängers ist zu kurz.</iaixsl:when>
                                <iaixsl:when test="@type='no delivery city'">Die eingegebene Stadt des Empfängers ist ungültig.</iaixsl:when>
                                <iaixsl:when test="@type='no delivery street'">Die eingegebene Adresse des Empfängers ist ungültig.</iaixsl:when>
                                <iaixsl:when test="@type='incorect delivery region'">Die eingegebene Region des Empfängers ist ungültig.</iaixsl:when>
                                <iaixsl:when test="@type='incorect delivery zipcode'">Die eingegebene Postleitzahl des Empfängers ist ungültig.</iaixsl:when>
                                <iaixsl:when test="@type='order_newpayment_hhtransfer_error'">Beim Zahlen mit der von Ihnen ausgewählten Zahlungsart (Treuepunkte) sind Fehler aufgetreten.</iaixsl:when>
                                <iaixsl:when test="@type='order_newpayment_voucher_error'">Beim Zahlen mit der von Ihnen ausgewählten Zahlungsart (Gutschein) sind Fehler aufgetreten.
                                    <iaixsl:if test="@value='v1'">In diesem Shop kann dieser Gutschein nicht eingelöst werden.</iaixsl:if>
                                    <iaixsl:if test="@value='v2'">Die Gutscheinnummer ist nicht korrekt. Es existiert kein Gutschein mit der angegebenen Identifikationsnummer. Bitte geben Sie die Identifikationsnummer erneut ein.</iaixsl:if>
                                    <iaixsl:if test="@value='v3'">Der Gutschein wurde gesperrt.</iaixsl:if>
                                    <iaixsl:if test="@value='v4'">Der Gutschein wurde bereits eingelöst.</iaixsl:if>
                                    <iaixsl:if test="@value='v5'">Dieser Gutschein ist nicht mehr gültig.</iaixsl:if>
                                    <iaixsl:if test="@value='v7'">Es existiert kein Gutschein mit der angegebenen Identifikationsnummer. Bitte geben Sie die Identifikationsnummer erneut ein.</iaixsl:if>
                                    <iaixsl:if test="@value='v8'">Es wurde keine Gutschein-ID angegeben.</iaixsl:if>
                                </iaixsl:when>
                                <iaixsl:when test="@type='order_newpayment_incorrect_paymentid'">Es sind Fehler aufgetreten – bitte wählen Sie eine andere Zahlungsart.</iaixsl:when>
                                <iaixsl:when test="@type='order_newpayment_error'">Beim Zahlen sind Fehler aufgetreten. Bitte versuchen Sie gleich noch einmal, die Bestellung zu bezahlen.</iaixsl:when>
                                <iaixsl:when test="@type='order_newpayment_points_error'">Sie haben nicht genug Treuepunkte für diese Bestellung - bitte wählen Sie eine andere Zahlungsform.</iaixsl:when>

                                <iaixsl:when test="@type='filter_products_not_found'">Es wurden keine Produkte gefunden, die die eingestellten Filterkriterien erfüllen. Bitte ändern Sie Ihre Filterparameter.</iaixsl:when>
                                <iaixsl:when test="@type='questionnaire_error'">Ein unbekannter Fehler ist aufgetreten. Der Fragebogen wurde nicht abgeschickt.</iaixsl:when>
                                <iaixsl:when test="@type='questionnaire_sent'">Der Fragebogen wurde abgeschickt. Vielen Dank für Ihre Teilnahme an unserer Umfrage!</iaixsl:when>

                                <iaixsl:when test="@type='orderopen_not_found'">Die von Ihnen eingegebenen Daten sind leider falsch. Bitte versuchen Sie die Telefonnummer bzw. die E-Mail-Adresse zu finden, die Sie bei der Bestellung angegeben haben, oder überprüfen Sie noch einmal die Bestellungs-ID. Sollte es weiterhin nicht möglich sein, Ihre Bestellung über diese Seite zu öffnen, kontaktieren Sie bitte <a href="/contact.php">unseren Kundenservice</a>.</iaixsl:when>

                                <iaixsl:when test="@type='order_nonstandard_inactive'">Es tut uns leid. Leider ist derzeit keine Berechnung Ihrer Versandkosten möglich. Wir würden uns aber freuen, wenn Sie sich trotzdem für den Kauf in unserem Shop entscheiden würden. Bitte kontaktieren Sie <a href="/contact.php">unseren Kundenservice</a>, um alle Fragen bezüglich der Annahme und Realisierung Ihrer Bestellung zu klären.</iaixsl:when>
                                <iaixsl:when test="@type='order_nonstandard_inactive_worth'">Es tut uns leid. Leider wird derzeit die Bestellung in dieser Höhe nicht unterstützt. Wir würden uns aber freuen, wenn Sie sich trotzdem für den Kauf in unserem Shop entscheiden würden. Bitte kontaktieren Sie <a href="/contact.php">unseren Kundenservice</a>, um alle Fragen bezüglich der Annahme und Realisierung Ihrer Bestellung zu klären.</iaixsl:when>
                                <iaixsl:when test="@type='order_nonstandard_inactive_weight'">Es tut uns leid. Leider wird derzeit die Bestellung mit diesem Gewicht nicht unterstützt. Wir würden uns aber freuen, wenn Sie sich trotzdem für den Kauf in unserem Shop entscheiden würden. Bitte kontaktieren Sie <a href="/contact.php">unseren Kundenservice</a>, um alle Fragen bezüglich der Annahme und Realisierung Ihrer Bestellung zu klären.</iaixsl:when>
                                

                                <iaixsl:when test="@type='no-auction-info'">
                                    Keine Informationen zur Auktion.
                                </iaixsl:when>
                                <iaixsl:when test="@type='no-auction-account'">
                                    Keine Informationen zum Konto.
                                </iaixsl:when>
                                <iaixsl:when test="@type='no-allegro-item'">
                                    Keine Informationen zum Auktionsgegenstand.
                                </iaixsl:when>
                                <iaixsl:when test="@type='no-buyer-info'">
                                    Keine Informationen zum Käufer.
                                </iaixsl:when>
                                <iaixsl:when test="@type='no-seller-info'">
                                    Keine Informationen zum Verkäufer.
                                </iaixsl:when>
                                <iaixsl:when test="@type='no-shipping'">
                                    Keine Informationen zu den verfügbaren Sendungen.
                                </iaixsl:when>
                                <iaixsl:when test="@type='no-order'">
                                    Keine Informationen zur Bestellung.
                                </iaixsl:when>
                                <iaixsl:when test="@type='less_del'">
                                    Das Entfernen sämtlicher Stückzahl ist nicht möglich. Die Bestellung muss mindestens die Warenstückzahl enthalten, die Sie ersteigert haben. 
                                </iaixsl:when>
                                <iaixsl:when test="@type='cant_del'">
                                    Die Waren lassen sich aus der Bestellung nicht entfernen, da ihre Stückzahl der ersteigerten Stückzahl gleicht ist.
                                </iaixsl:when>
                                <iaixsl:when test="@type='rebates_code_ok'">
                                    Es wurde ein korrekter Rabattcode eingegeben.
                                </iaixsl:when>
                                <iaixsl:when test="@type='rebates_code_undefined'">
                                    Der eingegebene Rabattcode existiert nicht.
                                </iaixsl:when>

                                <iaixsl:when test="@type='rebates_code_used' and $rebates_code_used">
                                     <iaixsl:value-of select="$rebates_code_used"/>
                                </iaixsl:when>

                                <iaixsl:when test="@type='rebates_code_begins'">
                                    Das Sonderangebot für diesen Rabattcode wurde noch nicht gestartet.
                                </iaixsl:when>
                                <iaixsl:when test="@type='rebates_code_expires'">
                                    Das Sonderangebot für diesen Rabattcode wurde bereits beendet.
                                </iaixsl:when>
                                <iaixsl:when test="@type='membershipcard_undefined'">
                                    Die angegebene Kartennummer ist ungültig. Bitte geben Sie sie erneut ein oder <a href="/contact.php">kontaktieren Sie unseren Kundenservice</a>.
                                </iaixsl:when>
                                <iaixsl:when test="@type='membershipcard_expires'">
                                    Das Ablaufdatum der Karte wurde erreicht.
                                </iaixsl:when>
                                <iaixsl:when test="@type='membershipcard_blocked'">
                                    Die Karte wurde gesperrt. <a href="/contact.php">Bitte kontaktieren Sie unseren Kundenservice</a>.
                                </iaixsl:when>
                                <iaixsl:when test="@type='membershipcard_ok'">
                                    Die Karte wurde aktiviert.
                                </iaixsl:when>
                                <iaixsl:when test="@type='client_wholesale_application_error'">
                                    Beim Registrieren der Meldung ist ein Fehler aufgetreten.
                                </iaixsl:when>
                                <iaixsl:when test="@type='client_wholesale_registered'">
                                    Ihr Konto wurde als Großhandelskonto registriert. Sie können keine weiteren Meldungen einreichen.
                                </iaixsl:when>
                                <iaixsl:when test="@type='ordered_empty'">
                                    Ihre Liste der gekauften Produkte ist leer.
                                </iaixsl:when>

                                <iaixsl:when test="@type='shipping_error'">
                                    Ihr Land liegt außerhalb unseres Liefergebiets.
                                </iaixsl:when>
                                <iaixsl:when test="@type='basket_empty'">
                                    Ihr Warenkorb ist leer.
                                </iaixsl:when>
                                <iaixsl:when test="@type='order_minimum'">
                                    Ihr Bestellwert ist zu gering.
                                    <iaixsl:if test="@value>0">
                                        Der Mindestbestellwert beträgt 
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
                                    Ihr Bestellwert ist zu hoch.
                                    <iaixsl:if test="@value>0">
                                        Der maximale Bestellwert beträgt                <iaixsl:if test="$signbeforeprice = 'true'">
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
                                    Die ausgewählte Lieferungsart erfordert die Angabe der Telefonnummer und der E-Mail-Adresse. Um diese Informationen zu ergänzen, verwenden Sie bitte 
                                    <a>
                                        <iaixsl:attribute name="href"><iaixsl:value-of select="@value"/></iaixsl:attribute>
                                        <iaixsl:attribute name="title">Klicken Sie hier, um die erforderlichen Daten zu ergänzen.</iaixsl:attribute>
                                        das Formular zum Bearbeiten der Kundendaten
                                    </a>
                                    .
                                </iaixsl:when>
                                <iaixsl:when test="@type='noPickupSites'">
                                    Die Abholung der Bestellung an einer Packstation ist zurzeit nicht möglich. Bitte 
                                    <a>
                                        <iaixsl:attribute name="href"><iaixsl:value-of select="@value"/></iaixsl:attribute>
                                        <iaixsl:attribute name="title">Klicken Sie hier, um zur Wahl der Lieferungsarten zurückzukehren.</iaixsl:attribute>
                                        wählen Sie eine andere Lieferungsart
                                    </a>
                                    .
                                </iaixsl:when>
                                <iaixsl:when test="@type='noPickupStocks'">
                                    Die Selbstabholung der Bestellung ist zurzeit nicht möglich. Bitte 
                                    <a>
                                        <iaixsl:attribute name="href"><iaixsl:value-of select="@value"/></iaixsl:attribute>
                                        <iaixsl:attribute name="title">Klicken Sie hier, um zur Wahl der Lieferungsarten zurückzukehren.</iaixsl:attribute>
                                        wählen Sie eine andere Lieferungsart
                                    </a>
                                    .
                                </iaixsl:when>

                                <iaixsl:when test="@type='rma_edit_error'">Beim Bearbeiten der Reklamation ist ein Fehler aufgetreten.</iaixsl:when>

                                <iaixsl:when test="@type='onlyHttps'">Die Kreditkartenzahlung kann nur mittels einer verschlüsselten Verbindung durchgeführt werden. Überprüfen Sie, ob die Adresse unseres Shops mit HTTPS anfängt oder kontaktieren Sie unseren Kundenservice.</iaixsl:when>

                                <iaixsl:when test="@type='login_unavailable'">Das Konto kann nicht mit dem anderen Konto verbunden sein, weil es schon mit einem anderen Konto in unserem Shop verbunden ist. Sie können sich von Ihrem Konto abmelden und sich anschließend wieder mit Daten von externen Service anmelden<iaixsl:value-of select="@value"/>.</iaixsl:when>

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

                                <iaixsl:when test="@type='affiliate_not_active'">Sie sind nicht eingeloggt oder der Shop besitzt kein aktives Partnerprogramm.</iaixsl:when>
                                <iaixsl:when test="@type='deliv_addr_deleted'">Die ausgewählte Lieferadresse wurde entfernt.</iaixsl:when>
                                <iaixsl:when test="@type='affiliate_off'">Ihr Partnerprogramm wurde noch nicht aktiviert. Wenn Sie das Partnerprogramm aktivieren möchten, kontaktieren Sie bitte unseren Kundenservice.</iaixsl:when>
                                <iaixsl:when test="@type='affiliate_blocked'">Ihr Partnerprogramm wurde gesperrt.</iaixsl:when>
                                <iaixsl:when test="@type='deliv_addr_selected'">Die angegebene Andresse wurde als Standardadresse für Ihre Bestellungen eingestellt.</iaixsl:when>
                                <iaixsl:when test="@type='rebates_code_ok'">Es wurde ein korrekter Rabattcode eingegeben.</iaixsl:when>
                                <iaixsl:when test="@type='client_wholesale_application_added'">Die Meldung wurde registriert.</iaixsl:when>
                                <iaixsl:when test="@type='login_connected'">Das Formular wurde mit den Daten ergänzt, die vom folgenden Service übergeben wurden:  <iaixsl:value-of select="@value"/>. Bitte überprüfen Sie die Daten und füllen Sie die leeren Felder aus.</iaixsl:when>
                                <iaixsl:when test="@type='login_disconnected'">Das Konto wurde getrennt von <iaixsl:value-of select="@value"/>.</iaixsl:when>
                                <iaixsl:when test="@type='login_unavailable'">Das Konto kann nicht mit dem anderen Konto verbunden sein, weil es schon mit einem anderen Konto in unserem Shop verbunden ist. Sie können sich von Ihrem Konto abmelden und sich anschließend wieder mit Daten von externen Service anmelden<iaixsl:value-of select="@value"/>.</iaixsl:when>
                                <iaixsl:when test="@type='openid_login_canceled'">Einloggen wurde abgebrochen.</iaixsl:when>
                                <iaixsl:when test="@type='client_wholesale_application_changed'">Die Meldung wurde geändert.</iaixsl:when>
                                <iaixsl:when test="@type='wisheslist_empty'">Ihre Wunschliste ist leer.</iaixsl:when>
                                <iaixsl:when test="@type='products_requests_empty'">Ihre Liste der gesuchten Produkte ist leer.</iaixsl:when>
                                <iaixsl:when test="@type='products_requests_added'">Die Anmeldung des gesuchten Artikels wurde angenommen. Per E-Mail bekommen Sie eine Antwort, ob die Erweiterung der Warenliste um dieses Artikel möglich ist.</iaixsl:when>
                                <iaixsl:when test="@type='products_requests_removed'">Der Produktvorschlag wurde gelöscht.</iaixsl:when>
                                <iaixsl:when test="@type='rma_add'">Die Reklamation wurde hinzugefügt.</iaixsl:when>
                                <iaixsl:when test="@type='return_add'">Die Anmeldung einer Retoure wurde hinzugefügt. </iaixsl:when>
                                <iaixsl:when test="@type='return_edit'">Änderungen in der Retoure wurden gespeichert.</iaixsl:when>
                                <iaixsl:when test="@type='rma_edit'">Die Änderungen in der Reklamation wurden gespeichert.</iaixsl:when>
                                <iaixsl:when test="@type='order_nonstandard_reason'">Bitte verzeihen Sie uns, aber die Standardkosten der Lieferung für Ihre Bestellung wurden nicht vorausgesehen. Sie können die Bestellung weiter erteilen aber in diesem Moment werden die verbindlichen Lieferungskosten nicht angegeben. Die Lieferungskosten werden individuell von unserer Kundendienstabteilung nach der Annahme der Bestellung festgestellt. Wir nehmen Kontakt mit Ihnen auf, um die Bestellung zu bestätigen.<a href="/contact.php">Kontaktieren Sie uns</a> um genauere Informationen über die Lieferungsart und -kosten der bestellten Waren zu bekommen.</iaixsl:when>
                                <iaixsl:when test="@type='order_nonstandard_reason_worth'">Bitte verzeihen Sie uns, aber die Standardkosten der Lieferung für Ihre Bestellung wurden nicht vorausgesehen. Sie können die Bestellung weiter erteilen aber in diesem Moment werden die verbindlichen Lieferungskosten nicht angegeben. Die Lieferungskosten werden individuell von unserer Kundendienstabteilung nach der Annahme der Bestellung festgestellt. Wir nehmen Kontakt mit Ihnen auf, um die Bestellung zu bestätigen.<a href="/contact.php">Kontaktieren Sie uns</a> um genauere Informationen über die Lieferungsart und -kosten der bestellten Waren zu bekommen.</iaixsl:when>
                                <iaixsl:when test="@type='order_nonstandard_reason_weight'">Bitte verzeihen Sie uns, aber die Standardkosten der Lieferung für Ihre Bestellung wurden nicht vorausgesehen. Sie können die Bestellung weiter erteilen aber in diesem Moment werden die verbindlichen Lieferungskosten nicht angegeben. Die Lieferungskosten werden individuell von unserer Kundendienstabteilung nach der Annahme der Bestellung festgestellt. Wir nehmen Kontakt mit Ihnen auf, um die Bestellung zu bestätigen. <a href="/contact.php">Kontaktieren Sie uns</a> um genauere Informationen über die Lieferungsart und -kosten der bestellten Waren zu bekommen.</iaixsl:when>
                                <iaixsl:when test="@type='mailing_addsuccess'">Die E-Mail-Adresse wurde zur Mailingliste hinzugefügt.</iaixsl:when>
                                <iaixsl:when test="@type='mailing_removesuccess'">Die E-Mail-Adresse wurde aus der Mailingliste entfernt.</iaixsl:when>
                                <iaixsl:when test="@type = 'mailing_nosuchemail'">Die von Ihnen angegebene E-Mail-Adresse wurde in unserer Mailingdatenbank nicht gefunden.</iaixsl:when>
                                <iaixsl:when test="@type = 'mailing_sendingconfirm'">Eine E-mail wurde an Ihre E-mail-Adresse geschickt!</iaixsl:when>
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
                        Sie bearbeiten die Bestellung Nr. <iaixsl:value-of select="/shop/order_edit/@order_number"/>. Ändern Sie Ihre Bestellung oder gehen Sie zurück zur
                        <a>
                            <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/order_edit/@cancel_lik"/></iaixsl:attribute>
                            Bestellübersicht</a>.
                    </p>
                </div>
            </div>
        </iaixsl:if>


         <iaixsl:if test="/shop/return_edit/@return_id">
            <div class="menu_messages_message" id="menu_messages_warning">
                <div class="menu_messages_message_sub">
                    <p>
                        Sie bearbeiten die Retoure Nummer<iaixsl:value-of select="/shop/return_edit/@return_id"/>. Nehmen Sie die Änderungen in der Retoure vor oder gehen 
                        <a>
                            <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/return_edit/@cancel_link"/></iaixsl:attribute>
                            Sie zurück zur Details der Retoure</a>.
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
        <!--Lista produktów w koszyku (basketedit_productslist, 116168.1)-->
        <iaixsl:if test="page/@type = 'basketedit'">
            <script>
                var only_virtual_literal = 'Nachdem die Produkte bezahlt wurde, wird es auf der Registerkarte <a href="/client-files.php" style="text-decoration:underline">"Meine Dateien"</a> verfügbar sein.';
            </script>

            
            <iaixsl:variable name="setIconLarge"></iaixsl:variable>
            <iaixsl:variable name="hideLimit">4</iaixsl:variable>
            <iaixsl:variable name="txt_67332_am">Wir haben </iaixsl:variable>
            <iaixsl:variable name="txt_67332_wm"> Nachdem die Produkte bezahlt wurde, wird es auf der Registerkarte</iaixsl:variable>

            <form class="basketedit_productslist" action="/basketchange.php?type=multiproduct" method="post" enctype="multipart/form-data">


                <div id="basketedit_productslist" class="basketedit_productslist">

                  <iaixsl:attribute name="class">basketedit_productslist <iaixsl:if test="not(/shop/page/basket-details/product/size/@type != 'uniw')">nosizesbasket </iaixsl:if><iaixsl:if test="not(/shop/basket/@product_comment_active = 'y')">nocommentbasket</iaixsl:if></iaixsl:attribute>

										<iaixsl:choose>
											<iaixsl:when test="/shop/allow_division_order/@is_active = 'false' or count(page/basket-details/product[@division='later']) = 0 or count(page/basket-details/product[@division='now']) = 0 or /shop/allow_division_order/@turn_on = 'no'">
												<h2>
														Produkte im Warenkorb
												</h2>
												
												<iaixsl:if test="count(page/basket-details/product) > $hideLimit">
														<table class="basketedit_bar">
																<tr class="productslist_tools_top">
																		<td class="selectAllCheckbox">
																				<input class="selectAllCheckbox" id="selectAllCheckbox" type="checkbox" name="selectAllCheckbox" value=""/>
																				<label for="selectAllCheckbox">Alle wählen</label>
																		</td>
																		<td>
																				<a href="#removeSelected" class="btn --icon-left icon-trash removeSelected">Aus dem Warenkorb entfernen</a>

																				<a href="#saveQuantity" class="btn --icon-left icon-repeat saveQuantity">Änderungen speichern</a>

																				<a href="#addSelectedToFavorite" class="btn --icon-left icon-save addSelectedToFavorite">Warenkorb speichern</a>
																		</td>
																</tr>
														</table>
												</iaixsl:if>
												
												<table>
													<tr class="basketedit_productslist_label">
														<th>
														</th>
															<th>
														</th>
															<th>
														</th>
													</tr>
													<iaixsl:for-each select="/shop/page/basket-details/product[not(preceding-sibling::product/@id=@id)]">
															<iaixsl:sort select="@id"/>
															<iaixsl:variable name="setPositionelements"><iaixsl:value-of select="position()"/></iaixsl:variable>

															<tr class="productslist_item">
																	<td class="procuctCheckbox">
																			<iaixsl:if test="count(/shop/page/basket-details/product) = 1"><iaixsl:attribute name="class">hide_td</iaixsl:attribute></iaixsl:if>

																			<input class="procuctCheckbox" type="checkbox" name="procuctCheckbox">
																					<iaixsl:attribute name="value"><iaixsl:value-of select="@id"/></iaixsl:attribute>

																					<iaixsl:if test="change_group/@changelink">
																							<iaixsl:attribute name="disabled">disabled</iaixsl:attribute>
																					</iaixsl:if>

																					<iaixsl:if test="(count(/shop/page/basket-details/product) = 1) and not(change_group/@changelink)">
																							<iaixsl:attribute name="checked">checked</iaixsl:attribute>
																					</iaixsl:if>

																			</input>
																	</td>
																	<td class="productslist_product_photo">
																			<iaixsl:if test="count(/shop/page/basket-details/product) = 1"><iaixsl:attribute name="style">border-left: none;</iaixsl:attribute></iaixsl:if>
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
																			<div class="productslist_one_product_info">
																					<h3>
																							<a>
																									<iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
																									<iaixsl:value-of disable-output-escaping="yes" select="name/text()"/>
																							</a>
																					</h3>
																					
																					<iaixsl:if test="not(@barcode ='')">
																							<div class="productslist_product_barcode">
																									<span>
																											Produktcode: 
																									</span>
																									<iaixsl:value-of select="@barcode"/>
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

																				
																					<iaixsl:if test="(size/@own_stocks_amount > 0) and (size/@ordered > size/@own_stocks_amount) and $txt_67332_am">
																											<div class="productslist_product_info basket_info">
																													<iaixsl:value-of disable-output-escaping="yes" select="$txt_67332_am"/>
																													<iaixsl:value-of select="size/@own_stocks_amount"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="size/@unit"/>
																													<iaixsl:value-of disable-output-escaping="yes" select="$txt_67332_wm"/>
																											</div>
																					</iaixsl:if>
																			</div>
																	</td>
																	<td class="productslist_product_sizes_wrapper">

																	<iaixsl:variable name="productID"><iaixsl:value-of select="@id"/></iaixsl:variable>
																	<table class="productslist_product_sizes">

																			




																		<iaixsl:for-each select="/shop/page/basket-details/product[@id  = $productID]">
																	<iaixsl:sort select="size/@description"/>

																	<tr class="productslist_product_sizes">
																		<iaixsl:if test="price/@special_offer='true'">
																			<iaixsl:attribute name="class">productslist_product_sizes special_offer</iaixsl:attribute>
																		</iaixsl:if>
																			
																			<td class="procuctCheckbox_sub">
																					<iaixsl:if test="(size/@type = 'uniw') and not(count(/shop/page/basket-details/product[@id  = $productID]) > 1)">
																								<iaixsl:attribute name="class">procuctCheckbox_sub procuctCheckbox_hide</iaixsl:attribute>
																					</iaixsl:if>

																					<iaixsl:if test="($setPositionelements = 1) and (position() = 1)">
																						<span class="basket-details_label">
																								Größe
																						</span>
																					</iaixsl:if>

																					<input class="procuctCheckbox_sub" type="checkbox" name="procuctCheckbox">
																							
																							<iaixsl:if test="(size/@type = 'uniw') and (count(/shop/page/basket-details/product) = 1)">
																									<iaixsl:attribute name="checked">checked</iaixsl:attribute>
																							</iaixsl:if>
																							<iaixsl:attribute name="value"><iaixsl:value-of select="@id"/></iaixsl:attribute>
																					</input>

																					<label class="productslist_product_size"><iaixsl:value-of select="size/@description"/></label>
																			</td>


																	

																	<iaixsl:if test="/shop/basket/@product_comment_active = 'y' and count(/shop/page/basket-details/product/price[not(@special_offer='true')]) > 0">
																			<td class="productslist_product_comment">

																					<iaixsl:if test="($setPositionelements = 1) and (position() = 1)">

																						<span class="basket-details_label">
																								Bemerkungen
																						</span>
																					</iaixsl:if>
																					<iaixsl:if test="not(price/@special_offer='true')">
																					<a href="#addComment">
																					<iaixsl:attribute name="title">klicken Sie hier, um einen Kommentar hinzuzufügen</iaixsl:attribute>
																					<i class="icon-paper-clip"></i> <span>hinzufügen</span>
																					</a>
																					</iaixsl:if>
																			</td>
																	</iaixsl:if>

																	<td class="productslist_product_prices">

																			<iaixsl:if test="($setPositionelements = 1) and (position() = 1)">
																						<span class="basket-details_label">
																								Einheitspreis
																						</span>
																			</iaixsl:if>

																			<iaixsl:choose>
																					<iaixsl:when test="size/@ordered_points">

																							<del>
																								

																													<iaixsl:value-of select="price/@price_net_formatted"/>
																													 netto
																								

																							</del>


																							<span>
																									<iaixsl:value-of select="price/@points"/> Pkt.
																							</span>
																					</iaixsl:when>
																					<iaixsl:otherwise>
																							<iaixsl:if test="price/@beforerebate != price/@value">
																									<del class="beforerebate_net_formatted">
																										<iaixsl:value-of select="price/@beforerebate_net_formatted"/>
																										<small> netto</small>
																								</del>
																								<del class="beforerebate_formatted">(<iaixsl:value-of select="price/@beforerebate_formatted"/><small> brutto</small>)</del>
																							</iaixsl:if>
																							<span>
																									<iaixsl:value-of select="price/@price_net_formatted"/>
																									<small> netto</small>
																							</span>

																							<span class="gross_price">(<iaixsl:value-of select="price/@price_formatted"/><small> brutto</small>)</span>

																					<iaixsl:if test="price/rebateNumber">
																							<small class="btn --icon-left icon-plus showTip_basket">
																									
																									kaufen Sie mehr, zahlen Sie weniger 
																							</small>
																							<div class="tooltipContent">
																									<iaixsl:for-each select="price/rebateNumber/rebate">
																											<div>
																													Von 
																													<strong>
																															<iaixsl:value-of select="@threshold"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="../../../size/@unit"/>
																													</strong>
																													 Nettopreis 
																													<strong>

																															<iaixsl:value-of select="@price_net_formatted"/>

																													</strong>
																													 - Rabatt 
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
																		<iaixsl:if test="($setPositionelements = 1) and (position() = 1)">
																						<span class="basket-details_label">
																								Anzahl
																						</span>
																			</iaixsl:if>

																	<div>
																			<iaixsl:if test="@product_type='product_virtual'">
																						<iaixsl:attribute name="style">display:none;</iaixsl:attribute>
																			</iaixsl:if>

																			<input type="hidden">
																					<iaixsl:attribute name="name">product[<iaixsl:value-of select="$setPositionelements"/>_<iaixsl:value-of select="position()"/>]</iaixsl:attribute>
																					<iaixsl:attribute name="value"><iaixsl:value-of select="@id"/></iaixsl:attribute>
																			</input>
																			<input type="hidden">
																					<iaixsl:attribute name="name">size[<iaixsl:value-of select="$setPositionelements"/>_<iaixsl:value-of select="position()"/>]</iaixsl:attribute>
																					<iaixsl:attribute name="value"><iaixsl:value-of select="size/@type"/></iaixsl:attribute>
																			</input>
																			<iaixsl:if test="additional/@hash">
																					<input type="hidden">
																							<iaixsl:attribute name="name">additional[<iaixsl:value-of select="$setPositionelements"/>_<iaixsl:value-of select="position()"/>]</iaixsl:attribute>
																							<iaixsl:attribute name="value"><iaixsl:value-of select="additional/@hash"/></iaixsl:attribute>
																					</input>
																			</iaixsl:if>

																			<iaixsl:if test="size/@ordered_points">
																					<input type="hidden" value="1">
																							<iaixsl:attribute name="name">forpoints[<iaixsl:value-of select="$setPositionelements"/>_<iaixsl:value-of select="position()"/>]</iaixsl:attribute>
																					</input>
																			</iaixsl:if>

																			<span class="productslist_quantity">

																					<a href="#delQuantity" class="delQuantity"><i class="icon-minus"></i></a>

																					<input type="text">
																							<iaixsl:attribute name="name">set_quantity[<iaixsl:value-of select="$setPositionelements"/>_<iaixsl:value-of select="position()"/>]</iaixsl:attribute>
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


																					<a href="#addQuantity" class="addQuantity"><i class="icon-plus"></i></a>

																			<i class="productslist_product_unit">
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

																					<div class="productslist_product_sellby_info">verkauft für 
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
																			</div>
																			<iaixsl:if test="@product_type='product_virtual'">
																							<div class="virtual_quantity">1</div>
																					</iaixsl:if>

																	</td>

																	<td class="productslist_product_sum">
																			<iaixsl:if test="($setPositionelements = 1) and (position() = 1)">
																						<span class="basket-details_label">
																									Wert
																						</span>
																			</iaixsl:if>

																			<iaixsl:choose>
																					<iaixsl:when test="size/@ordered_points">
																							<span>
																									<iaixsl:value-of select="price/@points_sum"/> Pkt.
																							</span>
																					</iaixsl:when>
																					<iaixsl:otherwise>

																							<span>


																													<iaixsl:value-of select="price/@worth_net_formatted"/>
																													<small> netto</small>

																							</span>

																							<span class="gross_price">(<iaixsl:value-of select="price/@worth_formatted"/><small> brutto</small>)</span>
																					</iaixsl:otherwise>
																			</iaixsl:choose>

																	</td>

																	<td class="productslist_product_calculate">
																		<iaixsl:if test="($setPositionelements = 1) and (position() = 1)">
																						<span class="basket-details_label">
																									Ändern
																						</span>
																			</iaixsl:if>


																			<iaixsl:choose>
																					<iaixsl:when test="price/@special_offer='true'">
																							<i class="icon-ok-sign"></i>Spezialangebot
																					</iaixsl:when>
																					<iaixsl:otherwise>
																						<button class="product_calculate" type="submit">
																								<iaixsl:attribute name="title">Anzahl ändern</iaixsl:attribute>
																								<i class="icon-repeat"></i>
																						</button>
																						</iaixsl:otherwise>
																			</iaixsl:choose>


																	</td>

																	</tr>


																	<iaixsl:choose>
																		<iaixsl:when test="/shop/basket/@product_comment_active = 'y' and not(price/@special_offer='true')">


																	<tr class="productslist_comment">

																			<td class="productslist_comment" colspan="5">
																					<iaixsl:if test="/shop/basket/@product_comment_active = 'y'"><iaixsl:attribute name="colspan">6</iaixsl:attribute></iaixsl:if>
																				<div class="prodl_comment_top">
																							<iaixsl:if test="comment or order_files"><iaixsl:attribute name="style">display:block</iaixsl:attribute></iaixsl:if>
																					</div>
																					<div class="prodl_comment">
																							<iaixsl:if test="comment or order_files"><iaixsl:attribute name="style">display:block</iaixsl:attribute></iaixsl:if>


																							<div class="prodl_comment_left">
																									<span>Kommentar eingeben </span>
																									<textarea>
																											<iaixsl:attribute name="name">comment[<iaixsl:value-of select="$setPositionelements"/>_<iaixsl:value-of select="position()"/>]</iaixsl:attribute>
																											<iaixsl:if test="comment">
																													<iaixsl:value-of select="comment"/>
																											</iaixsl:if>
																									</textarea>

																									<button class="btn --solid --secondary save_comment" type="submit">
																											Änderungen speichern
																									</button>

																									<a href="#clearComment" class="btn clear_comment">leeren</a>
																							</div>

																							<div class="prodl_comment_right">
																									<span>Datei zum Produkt hinzufügen</span>

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
																																	<a class="deleteFile">
																																			<iaixsl:attribute name="href"><iaixsl:value-of select="@delete_link"/></iaixsl:attribute>
																																			<iaixsl:attribute name="title">Datei löschen</iaixsl:attribute>
																																			Datei löschen
																																	</a>
																															</li>
																													</iaixsl:for-each>
																											</ol>
																									</iaixsl:if>
																									<div class="prodl_comment_foto">
																											<input type="file" name="comment_photo">
																													<iaixsl:attribute name="name">comment_photo[<iaixsl:value-of select="@id"/>][<iaixsl:value-of select="size/@type"/>][<iaixsl:choose><iaixsl:when test="additional/@hash"><iaixsl:value-of select="additional/@hash"/></iaixsl:when><iaixsl:otherwise>0</iaixsl:otherwise></iaixsl:choose>][]</iaixsl:attribute>
																													<iaixsl:attribute name="size">20</iaixsl:attribute>

																											</input>
																									</div>
																									<div class="prodl_comment_button">
																											<a href="#saveQuantity" class="btn --solid --secondary saveQuantityFile">Datei hinzufügen</a>
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

																	<tr>
																			<td class="productslist_product_info" colspan="5">
																					<iaixsl:if test="/shop/basket/@product_comment_active = 'y'  and not(price/@special_offer='true')"><iaixsl:attribute name="colspan">6</iaixsl:attribute></iaixsl:if>

																					<iaixsl:if test="price/@special_offer='true'">
																							<div class="productslist_product_info">
																								<iaixsl:attribute name="class">productslist_product_info special_offer</iaixsl:attribute>
																								<span>
																										Günstiger dank dem Sonderangebot
																										<b class="special_offer_value"><iaixsl:value-of select="price/@yousave_formatted"/></b>, also
																										<b><iaixsl:value-of select="price/@yousave_percent"/>%</b>
																										des Produktwerts.
																								</span>
																							</div>
																					</iaixsl:if>

																						<iaixsl:choose>
																					<iaixsl:when test="(size/@orderedsum) > (size/@amount) and not(size/@amount = '0') and not(size/@amount = '-1')">
																							<div class="productslist_product_info">
																									Im Moment ist das Produkt in dieser Menge leider nicht verfügbar. Bitte verringern Sie seine Stückzahl 
																									<iaixsl:value-of select="size/@amount"/>
																									, oder wählen Sie ein anderes Produkt.
																							</div>
																					</iaixsl:when>


																					<iaixsl:when test="size/@amount = '0'">
																							<div class="productslist_product_info">
																									Dieses Produkt ist leider ausverkauft. Bitte wählen Sie ein anderes Produkt.
																							</div>
																					</iaixsl:when>

																					<iaixsl:when test="(size/@ordered_points) and not(/shop/basket/@client_points >= 0)">
																							<div class="productslist_product_info">
																									Sie haben nicht genug Treuepunkte für diese Bestellung.
																							</div>
																					</iaixsl:when>

																					<iaixsl:when test="(/shop/page/rebates/code_details/@active = 'y') and (price/@rebate_code_active = 'n')">
																							<div class="productslist_product_info">
																									Der angegebene Rabattcode gilt nicht für dieses Produkt.
																							</div>
																					</iaixsl:when>

																			</iaixsl:choose>

																			<iaixsl:if test="(size/@to_little_for_gross = 'true') and not((size/@orderedsum) > (size/@amount) and not(size/@amount = '0') and not(size/@amount = '-1'))">
																					<div class="productslist_product_info">
																							Wir verfügen über 
																							<iaixsl:value-of select="size/@amount_wholesale"/>
																							 Stück dieses Produkts zum Großhandelspreis. In Ihrem Warenkorb befinden sich 
																							<iaixsl:value-of select="size/@ordered - size/@amount_wholesale"/>
																							 Stück zum Einzelhandelspreis. Der Einheitspreis stellt den Durchschnittspreis für diese Kombination dar.
																					</div>
																			</iaixsl:if>



																			</td>

																	</tr>

																	<iaixsl:if test="@product_type='product_virtual'">
																			<tr>
																					<td colspan="5">
																							<iaixsl:if test="/shop/basket/@product_comment_active = 'y'"><iaixsl:attribute name="colspan">6</iaixsl:attribute></iaixsl:if>
																							<div class="virtual">
																									Nachdem die Produkte bezahlt wurde, wird es auf der Registerkarte <a href="/client-files.php" style="color:#e35c5c;text-decoration:underline">"Meine Dateien"</a> verfügbar sein.
																							</div>
																					</td>
																			</tr>
																	</iaixsl:if>

																	</iaixsl:for-each>

																	</table>

																			</td>

															</tr>
													</iaixsl:for-each>
												</table>
											</iaixsl:when>
											<iaixsl:otherwise>
												
												<h2>
														Sofort verfügbar, um heute zu senden<i class="icon-truck"/>
												</h2>
												
												<iaixsl:if test="count(page/basket-details/product) > $hideLimit">
														<table class="basketedit_bar --now">
																<tr class="productslist_tools_top">
																		<td class="selectAllCheckbox">
																				<input class="selectAllCheckbox" id="selectAllCheckbox" type="checkbox" name="selectAllCheckbox" value=""/>
																				<label for="selectAllCheckbox">Alle wählen</label>
																		</td>
																		<td>
																				<a href="#removeSelected" class="btn --icon-left icon-trash removeSelected">Aus dem Warenkorb entfernen</a>

																				<a href="#saveQuantity" class="btn --icon-left icon-repeat saveQuantity">Änderungen speichern</a>

																				<a href="#addSelectedToFavorite" class="btn --icon-left icon-save addSelectedToFavorite">Warenkorb speichern</a>
																		</td>
																</tr>
														</table>
												</iaixsl:if>
												
												<table class="--now">
													<tr class="basketedit_productslist_label">
														<th>
														</th>
															<th>
														</th>
															<th>
														</th>
													</tr>
													<iaixsl:for-each select="/shop/page/basket-details/product[not(preceding-sibling::product/@id=@id) and @division='now']">
															<iaixsl:sort select="@id"/>
															<iaixsl:variable name="setPositionelements"><iaixsl:value-of select="position()"/></iaixsl:variable>

															<tr class="productslist_item">
																	<td class="procuctCheckbox">
																			<iaixsl:if test="count(/shop/page/basket-details/product) = 1"><iaixsl:attribute name="class">hide_td</iaixsl:attribute></iaixsl:if>

																			<input class="procuctCheckbox" type="checkbox" name="procuctCheckbox">
																					<iaixsl:attribute name="value"><iaixsl:value-of select="@id"/></iaixsl:attribute>

																					<iaixsl:if test="change_group/@changelink">
																							<iaixsl:attribute name="disabled">disabled</iaixsl:attribute>
																					</iaixsl:if>

																					<iaixsl:if test="(count(/shop/page/basket-details/product) = 1) and not(change_group/@changelink)">
																							<iaixsl:attribute name="checked">checked</iaixsl:attribute>
																					</iaixsl:if>

																			</input>
																	</td>
																	<td class="productslist_product_photo">
																			<iaixsl:if test="count(/shop/page/basket-details/product) = 1"><iaixsl:attribute name="style">border-left: none;</iaixsl:attribute></iaixsl:if>
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
																			<div class="productslist_one_product_info">
																					<h3>
																							<a>
																									<iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
																									<iaixsl:value-of disable-output-escaping="yes" select="name/text()"/>
																							</a>
																					</h3>
																					
																					<iaixsl:if test="not(@barcode ='')">
																							<div class="productslist_product_barcode">
																									<span>
																											Produktcode: 
																									</span>
																									<iaixsl:value-of select="@barcode"/>
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

																				
																					<iaixsl:if test="(size/@own_stocks_amount > 0) and (size/@ordered > size/@own_stocks_amount) and $txt_67332_am">
																											<div class="productslist_product_info basket_info">
																													<iaixsl:value-of disable-output-escaping="yes" select="$txt_67332_am"/>
																													<iaixsl:value-of select="size/@own_stocks_amount"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="size/@unit"/>
																													<iaixsl:value-of disable-output-escaping="yes" select="$txt_67332_wm"/>
																											</div>
																					</iaixsl:if>
																			</div>
																	</td>
																	<td class="productslist_product_sizes_wrapper">

																	<iaixsl:variable name="productID"><iaixsl:value-of select="@id"/></iaixsl:variable>
																	<table class="productslist_product_sizes">

																			




																		<iaixsl:for-each select="/shop/page/basket-details/product[@id  = $productID and @division='now']">
																	<iaixsl:sort select="size/@description"/>

																	<tr class="productslist_product_sizes">
																		<iaixsl:if test="price/@special_offer='true'">
																			<iaixsl:attribute name="class">productslist_product_sizes special_offer</iaixsl:attribute>
																		</iaixsl:if>
																			
																			<td class="procuctCheckbox_sub">
																					<iaixsl:if test="(size/@type = 'uniw') and not(count(/shop/page/basket-details/product[@id  = $productID]) > 1)">
																								<iaixsl:attribute name="class">procuctCheckbox_sub procuctCheckbox_hide</iaixsl:attribute>
																					</iaixsl:if>

																					<iaixsl:if test="($setPositionelements = 1) and (position() = 1)">
																						<span class="basket-details_label">
																								Größe
																						</span>
																					</iaixsl:if>

																					<input class="procuctCheckbox_sub" type="checkbox" name="procuctCheckbox">
																							
																							<iaixsl:if test="(size/@type = 'uniw') and (count(/shop/page/basket-details/product) = 1)">
																									<iaixsl:attribute name="checked">checked</iaixsl:attribute>
																							</iaixsl:if>
																							<iaixsl:attribute name="value"><iaixsl:value-of select="@id"/></iaixsl:attribute>
																					</input>

																					<label class="productslist_product_size"><iaixsl:value-of select="size/@description"/></label>
																			</td>


																	

																	<iaixsl:if test="/shop/basket/@product_comment_active = 'y' and count(/shop/page/basket-details/product/price[not(@special_offer='true')]) > 0">
																			<td class="productslist_product_comment">

																					<iaixsl:if test="($setPositionelements = 1) and (position() = 1)">

																						<span class="basket-details_label">
																								Bemerkungen
																						</span>
																					</iaixsl:if>
																					<iaixsl:if test="not(price/@special_offer='true')">
																					<a href="#addComment">
																					<iaixsl:attribute name="title">klicken Sie hier, um einen Kommentar hinzuzufügen</iaixsl:attribute>
																					<i class="icon-paper-clip"></i> <span>hinzufügen</span>
																					</a>
																					</iaixsl:if>
																			</td>
																	</iaixsl:if>

																	<td class="productslist_product_prices">

																			<iaixsl:if test="($setPositionelements = 1) and (position() = 1)">
																						<span class="basket-details_label">
																								Einheitspreis
																						</span>
																			</iaixsl:if>

																			<iaixsl:choose>
																					<iaixsl:when test="size/@ordered_points">

																							<del>
																								

																													<iaixsl:value-of select="price/@price_net_formatted"/>
																													 netto
																								

																							</del>


																							<span>
																									<iaixsl:value-of select="price/@points"/> Pkt.
																							</span>
																					</iaixsl:when>
																					<iaixsl:otherwise>
																							<iaixsl:if test="price/@beforerebate != price/@value">
																									<del class="beforerebate_net_formatted">
																										<iaixsl:value-of select="price/@beforerebate_net_formatted"/>
																										<small> netto</small>
																								</del>
																								<del class="beforerebate_formatted">(<iaixsl:value-of select="price/@beforerebate_formatted"/><small> brutto</small>)</del>
																							</iaixsl:if>
																							<span>
																									<iaixsl:value-of select="price/@price_net_formatted"/>
																									<small> netto</small>
																							</span>

																							<span class="gross_price">(<iaixsl:value-of select="price/@price_formatted"/><small> brutto</small>)</span>

																					<iaixsl:if test="price/rebateNumber">
																							<small class="btn --icon-left icon-plus showTip_basket">
																									
																									kaufen Sie mehr, zahlen Sie weniger 
																							</small>
																							<div class="tooltipContent">
																									<iaixsl:for-each select="price/rebateNumber/rebate">
																											<div>
																													Von 
																													<strong>
																															<iaixsl:value-of select="@threshold"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="../../../size/@unit"/>
																													</strong>
																													 Nettopreis 
																													<strong>

																															<iaixsl:value-of select="@price_net_formatted"/>

																													</strong>
																													 - Rabatt 
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
																		<iaixsl:if test="($setPositionelements = 1) and (position() = 1)">
																						<span class="basket-details_label">
																								Anzahl
																						</span>
																			</iaixsl:if>

																	<div>
																			<iaixsl:if test="@product_type='product_virtual'">
																						<iaixsl:attribute name="style">display:none;</iaixsl:attribute>
																			</iaixsl:if>

																			<input type="hidden">
																					<iaixsl:attribute name="name">product[<iaixsl:value-of select="$setPositionelements"/>_<iaixsl:value-of select="position()"/>]</iaixsl:attribute>
																					<iaixsl:attribute name="value"><iaixsl:value-of select="@id"/></iaixsl:attribute>
																			</input>
																			<input type="hidden">
																					<iaixsl:attribute name="name">size[<iaixsl:value-of select="$setPositionelements"/>_<iaixsl:value-of select="position()"/>]</iaixsl:attribute>
																					<iaixsl:attribute name="value"><iaixsl:value-of select="size/@type"/></iaixsl:attribute>
																			</input>
																			<iaixsl:if test="additional/@hash">
																					<input type="hidden">
																							<iaixsl:attribute name="name">additional[<iaixsl:value-of select="$setPositionelements"/>_<iaixsl:value-of select="position()"/>]</iaixsl:attribute>
																							<iaixsl:attribute name="value"><iaixsl:value-of select="additional/@hash"/></iaixsl:attribute>
																					</input>
																			</iaixsl:if>

																			<iaixsl:if test="size/@ordered_points">
																					<input type="hidden" value="1">
																							<iaixsl:attribute name="name">forpoints[<iaixsl:value-of select="$setPositionelements"/>_<iaixsl:value-of select="position()"/>]</iaixsl:attribute>
																					</input>
																			</iaixsl:if>

																			<span class="productslist_quantity">

																					<a href="#delQuantity" class="delQuantity"><i class="icon-minus"></i></a>

																					<input type="text">
																							<iaixsl:attribute name="name">set_quantity[<iaixsl:value-of select="$setPositionelements"/>_<iaixsl:value-of select="position()"/>]</iaixsl:attribute>
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


																					<a href="#addQuantity" class="addQuantity"><i class="icon-plus"></i></a>

																			<i class="productslist_product_unit">
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

																					<div class="productslist_product_sellby_info">verkauft für 
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
																			</div>
																			<iaixsl:if test="@product_type='product_virtual'">
																							<div class="virtual_quantity">1</div>
																					</iaixsl:if>

																	</td>

																	<td class="productslist_product_sum">
																			<iaixsl:if test="($setPositionelements = 1) and (position() = 1)">
																						<span class="basket-details_label">
																									Wert
																						</span>
																			</iaixsl:if>

																			<iaixsl:choose>
																					<iaixsl:when test="size/@ordered_points">
																							<span>
																									<iaixsl:value-of select="price/@points_sum"/> Pkt.
																							</span>
																					</iaixsl:when>
																					<iaixsl:otherwise>

																							<span>


																													<iaixsl:value-of select="price/@worth_net_formatted"/>
																													<small> netto</small>

																							</span>

																							<span class="gross_price">(<iaixsl:value-of select="price/@worth_formatted"/><small> brutto</small>)</span>
																					</iaixsl:otherwise>
																			</iaixsl:choose>

																	</td>

																	<td class="productslist_product_calculate">
																		<iaixsl:if test="($setPositionelements = 1) and (position() = 1)">
																						<span class="basket-details_label">
																									Ändern
																						</span>
																			</iaixsl:if>


																			<iaixsl:choose>
																					<iaixsl:when test="price/@special_offer='true'">
																							<i class="icon-ok-sign"></i>Spezialangebot
																					</iaixsl:when>
																					<iaixsl:otherwise>
																						<button class="product_calculate" type="submit">
																								<iaixsl:attribute name="title">Anzahl ändern</iaixsl:attribute>
																								<i class="icon-repeat"></i>
																						</button>
																						</iaixsl:otherwise>
																			</iaixsl:choose>


																	</td>

																	</tr>


																	<iaixsl:choose>
																		<iaixsl:when test="/shop/basket/@product_comment_active = 'y' and not(price/@special_offer='true')">


																	<tr class="productslist_comment">

																			<td class="productslist_comment" colspan="5">
																					<iaixsl:if test="/shop/basket/@product_comment_active = 'y'"><iaixsl:attribute name="colspan">6</iaixsl:attribute></iaixsl:if>
																				<div class="prodl_comment_top">
																							<iaixsl:if test="comment or order_files"><iaixsl:attribute name="style">display:block</iaixsl:attribute></iaixsl:if>
																					</div>
																					<div class="prodl_comment">
																							<iaixsl:if test="comment or order_files"><iaixsl:attribute name="style">display:block</iaixsl:attribute></iaixsl:if>


																							<div class="prodl_comment_left">
																									<span>Kommentar eingeben </span>
																									<textarea>
																											<iaixsl:attribute name="name">comment[<iaixsl:value-of select="$setPositionelements"/>_<iaixsl:value-of select="position()"/>]</iaixsl:attribute>
																											<iaixsl:if test="comment">
																													<iaixsl:value-of select="comment"/>
																											</iaixsl:if>
																									</textarea>

																									<button class="btn --solid --secondary save_comment" type="submit">
																											Änderungen speichern
																									</button>

																									<a href="#clearComment" class="btn clear_comment">leeren</a>
																							</div>

																							<div class="prodl_comment_right">
																									<span>Datei zum Produkt hinzufügen</span>

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
																																	<a class="deleteFile">
																																			<iaixsl:attribute name="href"><iaixsl:value-of select="@delete_link"/></iaixsl:attribute>
																																			<iaixsl:attribute name="title">Datei löschen</iaixsl:attribute>
																																			Datei löschen
																																	</a>
																															</li>
																													</iaixsl:for-each>
																											</ol>
																									</iaixsl:if>
																									<div class="prodl_comment_foto">
																											<input type="file" name="comment_photo">
																													<iaixsl:attribute name="name">comment_photo[<iaixsl:value-of select="@id"/>][<iaixsl:value-of select="size/@type"/>][<iaixsl:choose><iaixsl:when test="additional/@hash"><iaixsl:value-of select="additional/@hash"/></iaixsl:when><iaixsl:otherwise>0</iaixsl:otherwise></iaixsl:choose>][]</iaixsl:attribute>
																													<iaixsl:attribute name="size">20</iaixsl:attribute>

																											</input>
																									</div>
																									<div class="prodl_comment_button">
																											<a href="#saveQuantity" class="btn --solid --secondary saveQuantityFile">Datei hinzufügen</a>
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

																	<tr>
																			<td class="productslist_product_info" colspan="5">
																					<iaixsl:if test="/shop/basket/@product_comment_active = 'y'  and not(price/@special_offer='true')"><iaixsl:attribute name="colspan">6</iaixsl:attribute></iaixsl:if>

																					<iaixsl:if test="price/@special_offer='true'">
																							<div class="productslist_product_info">
																								<iaixsl:attribute name="class">productslist_product_info special_offer</iaixsl:attribute>
																								<span>
																										Günstiger dank dem Sonderangebot
																										<b class="special_offer_value"><iaixsl:value-of select="price/@yousave_formatted"/></b>, also
																										<b><iaixsl:value-of select="price/@yousave_percent"/>%</b>
																										des Produktwerts.
																								</span>
																							</div>
																					</iaixsl:if>

																						<iaixsl:choose>
																					<iaixsl:when test="(size/@orderedsum) > (size/@amount) and not(size/@amount = '0') and not(size/@amount = '-1')">
																							<div class="productslist_product_info">
																									Im Moment ist das Produkt in dieser Menge leider nicht verfügbar. Bitte verringern Sie seine Stückzahl 
																									<iaixsl:value-of select="size/@amount"/>
																									, oder wählen Sie ein anderes Produkt.
																							</div>
																					</iaixsl:when>


																					<iaixsl:when test="size/@amount = '0'">
																							<div class="productslist_product_info">
																									Dieses Produkt ist leider ausverkauft. Bitte wählen Sie ein anderes Produkt.
																							</div>
																					</iaixsl:when>

																					<iaixsl:when test="(size/@ordered_points) and not(/shop/basket/@client_points >= 0)">
																							<div class="productslist_product_info">
																									Sie haben nicht genug Treuepunkte für diese Bestellung.
																							</div>
																					</iaixsl:when>

																					<iaixsl:when test="(/shop/page/rebates/code_details/@active = 'y') and (price/@rebate_code_active = 'n')">
																							<div class="productslist_product_info">
																									Der angegebene Rabattcode gilt nicht für dieses Produkt.
																							</div>
																					</iaixsl:when>

																			</iaixsl:choose>

																			<iaixsl:if test="(size/@to_little_for_gross = 'true') and not((size/@orderedsum) > (size/@amount) and not(size/@amount = '0') and not(size/@amount = '-1'))">
																					<div class="productslist_product_info">
																							Wir verfügen über 
																							<iaixsl:value-of select="size/@amount_wholesale"/>
																							 Stück dieses Produkts zum Großhandelspreis. In Ihrem Warenkorb befinden sich 
																							<iaixsl:value-of select="size/@ordered - size/@amount_wholesale"/>
																							 Stück zum Einzelhandelspreis. Der Einheitspreis stellt den Durchschnittspreis für diese Kombination dar.
																					</div>
																			</iaixsl:if>



																			</td>

																	</tr>

																	<iaixsl:if test="@product_type='product_virtual'">
																			<tr>
																					<td colspan="5">
																							<iaixsl:if test="/shop/basket/@product_comment_active = 'y'"><iaixsl:attribute name="colspan">6</iaixsl:attribute></iaixsl:if>
																							<div class="virtual">
																									Nachdem die Produkte bezahlt wurde, wird es auf der Registerkarte <a href="/client-files.php" style="color:#e35c5c;text-decoration:underline">"Meine Dateien"</a> verfügbar sein.
																							</div>
																					</td>
																			</tr>
																	</iaixsl:if>

																	</iaixsl:for-each>

																	</table>

																			</td>

															</tr>
													</iaixsl:for-each>
												</table>

												
												<h2>
														Verfügbar in <strong class="basket__division_weeks"/><i class="icon-clock"/>
												</h2>
												
												<iaixsl:if test="count(page/basket-details/product) > $hideLimit">
														<table class="basketedit_bar --later">
																<tr class="productslist_tools_top">
																		<td class="selectAllCheckbox">
																				<input class="selectAllCheckbox" id="selectAllCheckbox" type="checkbox" name="selectAllCheckbox" value=""/>
																				<label for="selectAllCheckbox">Alle wählen</label>
																		</td>
																		<td>
																				<a href="#removeSelected" class="btn --icon-left icon-trash removeSelected">Aus dem Warenkorb entfernen</a>

																				<a href="#saveQuantity" class="btn --icon-left icon-repeat saveQuantity">Änderungen speichern</a>

																				<a href="#addSelectedToFavorite" class="btn --icon-left icon-save addSelectedToFavorite">Warenkorb speichern</a>
																		</td>
																</tr>
														</table>
												</iaixsl:if>
												
												<table class="--later">
													<tr class="basketedit_productslist_label">
														<th>
														</th>
															<th>
														</th>
															<th>
														</th>
													</tr>
													<iaixsl:for-each select="/shop/page/basket-details/product[not(preceding-sibling::product/@id=@id) and @division='later']">
															<iaixsl:sort select="@id"/>
															<iaixsl:variable name="setPositionelements"><iaixsl:value-of select="position()"/></iaixsl:variable>

															<tr class="productslist_item">
																	<td class="procuctCheckbox">
																			<iaixsl:if test="count(/shop/page/basket-details/product) = 1"><iaixsl:attribute name="class">hide_td</iaixsl:attribute></iaixsl:if>

																			<input class="procuctCheckbox" type="checkbox" name="procuctCheckbox">
																					<iaixsl:attribute name="value"><iaixsl:value-of select="@id"/></iaixsl:attribute>

																					<iaixsl:if test="change_group/@changelink">
																							<iaixsl:attribute name="disabled">disabled</iaixsl:attribute>
																					</iaixsl:if>

																					<iaixsl:if test="(count(/shop/page/basket-details/product) = 1) and not(change_group/@changelink)">
																							<iaixsl:attribute name="checked">checked</iaixsl:attribute>
																					</iaixsl:if>

																			</input>
																	</td>
																	<td class="productslist_product_photo">
																			<iaixsl:if test="count(/shop/page/basket-details/product) = 1"><iaixsl:attribute name="style">border-left: none;</iaixsl:attribute></iaixsl:if>
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
																			<div class="productslist_one_product_info">
																					<h3>
																							<a>
																									<iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
																									<iaixsl:value-of disable-output-escaping="yes" select="name/text()"/>
																							</a>
																					</h3>
																					
																					<iaixsl:if test="not(@barcode ='')">
																							<div class="productslist_product_barcode">
																									<span>
																											Produktcode: 
																									</span>
																									<iaixsl:value-of select="@barcode"/>
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

																				
																					<iaixsl:if test="(size/@own_stocks_amount > 0) and (size/@ordered > size/@own_stocks_amount) and $txt_67332_am">
																											<div class="productslist_product_info basket_info">
																													<iaixsl:value-of disable-output-escaping="yes" select="$txt_67332_am"/>
																													<iaixsl:value-of select="size/@own_stocks_amount"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="size/@unit"/>
																													<iaixsl:value-of disable-output-escaping="yes" select="$txt_67332_wm"/>
																											</div>
																					</iaixsl:if>
																			</div>
																	</td>
																	<td class="productslist_product_sizes_wrapper">

																	<iaixsl:variable name="productID"><iaixsl:value-of select="@id"/></iaixsl:variable>
																	<table class="productslist_product_sizes">

																			




																	<iaixsl:for-each select="/shop/page/basket-details/product[@id  = $productID and @division='later']">
																	<iaixsl:sort select="size/@description"/>

																	<tr class="productslist_product_sizes">
																		<iaixsl:if test="price/@special_offer='true'">
																			<iaixsl:attribute name="class">productslist_product_sizes special_offer</iaixsl:attribute>
																		</iaixsl:if>
																			
																			<td class="procuctCheckbox_sub">
																					<iaixsl:if test="(size/@type = 'uniw') and not(count(/shop/page/basket-details/product[@id  = $productID]) > 1)">
																								<iaixsl:attribute name="class">procuctCheckbox_sub procuctCheckbox_hide</iaixsl:attribute>
																					</iaixsl:if>

																					<iaixsl:if test="($setPositionelements = 1) and (position() = 1)">
																						<span class="basket-details_label">
																								Größe
																						</span>
																					</iaixsl:if>

																					<input class="procuctCheckbox_sub" type="checkbox" name="procuctCheckbox">
																							
																							<iaixsl:if test="(size/@type = 'uniw') and (count(/shop/page/basket-details/product) = 1)">
																									<iaixsl:attribute name="checked">checked</iaixsl:attribute>
																							</iaixsl:if>
																							<iaixsl:attribute name="value"><iaixsl:value-of select="@id"/></iaixsl:attribute>
																					</input>

																					<label class="productslist_product_size"><iaixsl:value-of select="size/@description"/></label>
																			</td>


																		

																		<iaixsl:if test="/shop/basket/@product_comment_active = 'y' and count(/shop/page/basket-details/product/price[not(@special_offer='true')]) > 0">
																			<td class="productslist_product_comment">

																					<iaixsl:if test="($setPositionelements = 1) and (position() = 1)">

																						<span class="basket-details_label">
																								Bemerkungen
																						</span>
																					</iaixsl:if>
																					<iaixsl:if test="not(price/@special_offer='true')">
																					<a href="#addComment">
																					<iaixsl:attribute name="title">klicken Sie hier, um einen Kommentar hinzuzufügen</iaixsl:attribute>
																					<i class="icon-paper-clip"></i> <span>hinzufügen</span>
																					</a>
																					</iaixsl:if>
																			</td>
																		</iaixsl:if>

																		<td class="productslist_product_prices">

																			<iaixsl:if test="($setPositionelements = 1) and (position() = 1)">
																						<span class="basket-details_label">
																								Einheitspreis
																						</span>
																			</iaixsl:if>

																			<iaixsl:choose>
																					<iaixsl:when test="size/@ordered_points">

																							<del>
																								

																													<iaixsl:value-of select="price/@price_net_formatted"/>
																													 netto
																								

																							</del>


																							<span>
																									<iaixsl:value-of select="price/@points"/> Pkt.
																							</span>
																					</iaixsl:when>
																					<iaixsl:otherwise>
																							<iaixsl:if test="price/@beforerebate != price/@value">
																									<del class="beforerebate_net_formatted">
																										<iaixsl:value-of select="price/@beforerebate_net_formatted"/>
																										<small> netto</small>
																								</del>
																								<del class="beforerebate_formatted">(<iaixsl:value-of select="price/@beforerebate_formatted"/><small> brutto</small>)</del>
																							</iaixsl:if>
																							<span>
																									<iaixsl:value-of select="price/@price_net_formatted"/>
																									<small> netto</small>
																							</span>

																							<span class="gross_price">(<iaixsl:value-of select="price/@price_formatted"/><small> brutto</small>)</span>

																					<iaixsl:if test="price/rebateNumber">
																							<small class="btn --icon-left icon-plus showTip_basket">
																									
																									kaufen Sie mehr, zahlen Sie weniger 
																							</small>
																							<div class="tooltipContent">
																									<iaixsl:for-each select="price/rebateNumber/rebate">
																											<div>
																													Von 
																													<strong>
																															<iaixsl:value-of select="@threshold"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="../../../size/@unit"/>
																													</strong>
																													 Nettopreis 
																													<strong>

																															<iaixsl:value-of select="@price_net_formatted"/>

																													</strong>
																													 - Rabatt 
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
																		<iaixsl:if test="($setPositionelements = 1) and (position() = 1)">
																						<span class="basket-details_label">
																								Anzahl
																						</span>
																			</iaixsl:if>

																		<div>
																			<iaixsl:if test="@product_type='product_virtual'">
																						<iaixsl:attribute name="style">display:none;</iaixsl:attribute>
																			</iaixsl:if>

																			<input type="hidden">
																					<iaixsl:attribute name="name">product[<iaixsl:value-of select="$setPositionelements"/>_<iaixsl:value-of select="position()"/>]</iaixsl:attribute>
																					<iaixsl:attribute name="value"><iaixsl:value-of select="@id"/></iaixsl:attribute>
																			</input>
																			<input type="hidden">
																					<iaixsl:attribute name="name">size[<iaixsl:value-of select="$setPositionelements"/>_<iaixsl:value-of select="position()"/>]</iaixsl:attribute>
																					<iaixsl:attribute name="value"><iaixsl:value-of select="size/@type"/></iaixsl:attribute>
																			</input>
																			<iaixsl:if test="additional/@hash">
																					<input type="hidden">
																							<iaixsl:attribute name="name">additional[<iaixsl:value-of select="$setPositionelements"/>_<iaixsl:value-of select="position()"/>]</iaixsl:attribute>
																							<iaixsl:attribute name="value"><iaixsl:value-of select="additional/@hash"/></iaixsl:attribute>
																					</input>
																			</iaixsl:if>

																			<iaixsl:if test="size/@ordered_points">
																					<input type="hidden" value="1">
																							<iaixsl:attribute name="name">forpoints[<iaixsl:value-of select="$setPositionelements"/>_<iaixsl:value-of select="position()"/>]</iaixsl:attribute>
																					</input>
																			</iaixsl:if>

																			<span class="productslist_quantity">

																					<a href="#delQuantity" class="delQuantity"><i class="icon-minus"></i></a>

																					<input type="text">
																							<iaixsl:attribute name="name">set_quantity[<iaixsl:value-of select="$setPositionelements"/>_<iaixsl:value-of select="position()"/>]</iaixsl:attribute>
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


																					<a href="#addQuantity" class="addQuantity"><i class="icon-plus"></i></a>

																			<i class="productslist_product_unit">
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

																					<div class="productslist_product_sellby_info">verkauft für 
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
																			</div>
																			<iaixsl:if test="@product_type='product_virtual'">
																							<div class="virtual_quantity">1</div>
																					</iaixsl:if>

																		</td>

																		<td class="productslist_product_sum">
																			<iaixsl:if test="($setPositionelements = 1) and (position() = 1)">
																						<span class="basket-details_label">
																									Wert
																						</span>
																			</iaixsl:if>

																			<iaixsl:choose>
																					<iaixsl:when test="size/@ordered_points">
																							<span>
																									<iaixsl:value-of select="price/@points_sum"/> Pkt.
																							</span>
																					</iaixsl:when>
																					<iaixsl:otherwise>

																							<span>


																													<iaixsl:value-of select="price/@worth_net_formatted"/>
																													<small> netto</small>

																							</span>

																							<span class="gross_price">(<iaixsl:value-of select="price/@worth_formatted"/><small> brutto</small>)</span>
																					</iaixsl:otherwise>
																			</iaixsl:choose>

																		</td>

																		<td class="productslist_product_calculate">
																		<iaixsl:if test="($setPositionelements = 1) and (position() = 1)">
																						<span class="basket-details_label">
																									Ändern
																						</span>
																			</iaixsl:if>


																			<iaixsl:choose>
																					<iaixsl:when test="price/@special_offer='true'">
																							<i class="icon-ok-sign"></i>Spezialangebot
																					</iaixsl:when>
																					<iaixsl:otherwise>
																						<button class="product_calculate" type="submit">
																								<iaixsl:attribute name="title">Anzahl ändern</iaixsl:attribute>
																								<i class="icon-repeat"></i>
																						</button>
																						</iaixsl:otherwise>
																			</iaixsl:choose>


																		</td>

																	</tr>


																	<iaixsl:choose>
																		<iaixsl:when test="/shop/basket/@product_comment_active = 'y' and not(price/@special_offer='true')">


																	<tr class="productslist_comment">

																			<td class="productslist_comment" colspan="5">
																					<iaixsl:if test="/shop/basket/@product_comment_active = 'y'"><iaixsl:attribute name="colspan">6</iaixsl:attribute></iaixsl:if>
																				<div class="prodl_comment_top">
																							<iaixsl:if test="comment or order_files"><iaixsl:attribute name="style">display:block</iaixsl:attribute></iaixsl:if>
																					</div>
																					<div class="prodl_comment">
																							<iaixsl:if test="comment or order_files"><iaixsl:attribute name="style">display:block</iaixsl:attribute></iaixsl:if>


																							<div class="prodl_comment_left">
																									<span>Kommentar eingeben </span>
																									<textarea>
																											<iaixsl:attribute name="name">comment[<iaixsl:value-of select="$setPositionelements"/>_<iaixsl:value-of select="position()"/>]</iaixsl:attribute>
																											<iaixsl:if test="comment">
																													<iaixsl:value-of select="comment"/>
																											</iaixsl:if>
																									</textarea>

																									<button class="btn --solid --secondary save_comment" type="submit">
																											Änderungen speichern
																									</button>

																									<a href="#clearComment" class="btn clear_comment">leeren</a>
																							</div>

																							<div class="prodl_comment_right">
																									<span>Datei zum Produkt hinzufügen</span>

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
																																	<a class="deleteFile">
																																			<iaixsl:attribute name="href"><iaixsl:value-of select="@delete_link"/></iaixsl:attribute>
																																			<iaixsl:attribute name="title">Datei löschen</iaixsl:attribute>
																																			Datei löschen
																																	</a>
																															</li>
																													</iaixsl:for-each>
																											</ol>
																									</iaixsl:if>
																									<div class="prodl_comment_foto">
																											<input type="file" name="comment_photo">
																													<iaixsl:attribute name="name">comment_photo[<iaixsl:value-of select="@id"/>][<iaixsl:value-of select="size/@type"/>][<iaixsl:choose><iaixsl:when test="additional/@hash"><iaixsl:value-of select="additional/@hash"/></iaixsl:when><iaixsl:otherwise>0</iaixsl:otherwise></iaixsl:choose>][]</iaixsl:attribute>
																													<iaixsl:attribute name="size">20</iaixsl:attribute>

																											</input>
																									</div>
																									<div class="prodl_comment_button">
																											<a href="#saveQuantity" class="btn --solid --secondary saveQuantityFile">Datei hinzufügen</a>
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

																	<tr>
																			<td class="productslist_product_info" colspan="5">
																					<iaixsl:if test="/shop/basket/@product_comment_active = 'y'  and not(price/@special_offer='true')"><iaixsl:attribute name="colspan">6</iaixsl:attribute></iaixsl:if>

																					<iaixsl:if test="price/@special_offer='true'">
																							<div class="productslist_product_info">
																								<iaixsl:attribute name="class">productslist_product_info special_offer</iaixsl:attribute>
																								<span>
																										Günstiger dank dem Sonderangebot
																										<b class="special_offer_value"><iaixsl:value-of select="price/@yousave_formatted"/></b>, also
																										<b><iaixsl:value-of select="price/@yousave_percent"/>%</b>
																										des Produktwerts.
																								</span>
																							</div>
																					</iaixsl:if>

																						<iaixsl:choose>
																					<iaixsl:when test="(size/@orderedsum) > (size/@amount) and not(size/@amount = '0') and not(size/@amount = '-1')">
																							<div class="productslist_product_info">
																									Im Moment ist das Produkt in dieser Menge leider nicht verfügbar. Bitte verringern Sie seine Stückzahl 
																									<iaixsl:value-of select="size/@amount"/>
																									, oder wählen Sie ein anderes Produkt.
																							</div>
																					</iaixsl:when>


																					<iaixsl:when test="size/@amount = '0'">
																							<div class="productslist_product_info">
																									Dieses Produkt ist leider ausverkauft. Bitte wählen Sie ein anderes Produkt.
																							</div>
																					</iaixsl:when>

																					<iaixsl:when test="(size/@ordered_points) and not(/shop/basket/@client_points >= 0)">
																							<div class="productslist_product_info">
																									Sie haben nicht genug Treuepunkte für diese Bestellung.
																							</div>
																					</iaixsl:when>

																					<iaixsl:when test="(/shop/page/rebates/code_details/@active = 'y') and (price/@rebate_code_active = 'n')">
																							<div class="productslist_product_info">
																									Der angegebene Rabattcode gilt nicht für dieses Produkt.
																							</div>
																					</iaixsl:when>

																			</iaixsl:choose>

																			<iaixsl:if test="(size/@to_little_for_gross = 'true') and not((size/@orderedsum) > (size/@amount) and not(size/@amount = '0') and not(size/@amount = '-1'))">
																					<div class="productslist_product_info">
																							Wir verfügen über 
																							<iaixsl:value-of select="size/@amount_wholesale"/>
																							 Stück dieses Produkts zum Großhandelspreis. In Ihrem Warenkorb befinden sich 
																							<iaixsl:value-of select="size/@ordered - size/@amount_wholesale"/>
																							 Stück zum Einzelhandelspreis. Der Einheitspreis stellt den Durchschnittspreis für diese Kombination dar.
																					</div>
																			</iaixsl:if>



																			</td>

																	</tr>

																	<iaixsl:if test="@product_type='product_virtual'">
																			<tr>
																					<td colspan="5">
																							<iaixsl:if test="/shop/basket/@product_comment_active = 'y'"><iaixsl:attribute name="colspan">6</iaixsl:attribute></iaixsl:if>
																							<div class="virtual">
																									Nachdem die Produkte bezahlt wurde, wird es auf der Registerkarte <a href="/client-files.php" style="color:#e35c5c;text-decoration:underline">"Meine Dateien"</a> verfügbar sein.
																							</div>
																					</td>
																			</tr>
																	</iaixsl:if>

																</iaixsl:for-each>

															</table>

																</td>

														</tr>
													</iaixsl:for-each>
												</table>
											</iaixsl:otherwise>
										</iaixsl:choose>

                    <table class="basketedit_bar">
                        <tr class="productslist_tools_bottom">
                            <td class="selectAllCheckbox">
                                <iaixsl:if test="count(page/basket-details/product) = 1"><iaixsl:attribute name="style">display: none;</iaixsl:attribute></iaixsl:if>
                                <input class="selectAllCheckbox" id="selectAllCheckbox2" type="checkbox" name="selectAllCheckbox" value=""/>
                                <label for="selectAllCheckbox2">Alle wählen</label>
                            </td>
                            <td>
                                <iaixsl:if test="count(page/basket-details/product) = 1"><iaixsl:attribute name="class">productslist_tools_bottom_one_product</iaixsl:attribute></iaixsl:if>
                                <a href="#removeSelected" class="btn --icon-left icon-trash removeSelected">Aus dem Warenkorb entfernen</a>

                                <a href="#saveQuantity" class="btn --icon-left icon-repeat saveQuantity">Änderungen speichern</a>

                                <a href="#addSelectedToFavorite" class="btn --icon-left icon-save addSelectedToFavorite">Warenkorb speichern</a>
                            </td>
                        </tr>
                    </table>
                </div>

            <iaixsl:if test="/shop/page/basket-details/rebate_local/active/selected/product/@id">
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
            </iaixsl:if>

							
							<iaixsl:if test="/shop/allow_division_order/@is_active = 'true' and not(count(page/basket-details/product[@division='later']) = 0 or count(page/basket-details/product[@division='now']) = 0)">
								<div class="basket__division mb-2 mb-md-4">
									<iaixsl:attribute name="data-shipping_week"><iaixsl:value-of select="/shop/basket/shipping_division_time/@week_amount"/></iaixsl:attribute>
									<iaixsl:attribute name="data-shipping_day"><iaixsl:value-of select="/shop/basket/shipping_division_time/@week_day"/></iaixsl:attribute>
									<div class="basket__division_container p-4">
										<h3 class="basket__division_headline mb-5">Wir haben festgestellt, dass Ihre Bestellung Produkte enthält, die sofort und auf Anfrage erhältlich sind.</h3>
										<div class="basket__division_options d-sm-block d-md-flex">
											<div class="basket__division_icon"><i class="icon-division"/></div>
											<div class="basket__division_option --not-divide">
												<div class="basket__division_group f-group --radio mb-0">
													<input type="radio" id="division_no" name="allow_division_order" value="no" class="f-control">
														<iaixsl:if test="/shop/allow_division_order/@turn_on = 'no'"><iaixsl:attribute name="checked">checked</iaixsl:attribute></iaixsl:if>
													</input>
													<label class="f-label basket__division_label" for="division_no"><strong>Ich werde warten, bis die Bestellung abgeschlossen ist.</strong><span class="basket__division_option_small d-block mt-1">Das Geschäft wird alle Produkte aus der Bestellung auf einmal vervollständigen und versenden.</span>
														<div class="basket__division_option_info --not-divide mt-3 pt-2">Produkte mit längeren Wartezeiten - bereit für den Versand in <strong class="basket__division_weeks"/></div>
													</label>
												</div>
											</div>
											<div class="basket__division_option --divide">
												<div class="basket__division_group f-group --radio mb-0">
													<input type="radio" id="division_yes" name="allow_division_order" value="yes" class="f-control">
														<iaixsl:if test="/shop/allow_division_order/@turn_on = 'yes'"><iaixsl:attribute name="checked">checked</iaixsl:attribute></iaixsl:if>
													</input>
													<label class="f-label basket__division_label" for="division_yes"><strong>Ich möchte Produkte schneller verfügbar erhalten.</strong><span class="basket__division_option_small d-block mt-1">Das Geschäft sendet die verfügbaren Produkte sofort und andere erst nach Fertigstellung.</span>
														<div class="basket__division_option_info --divide mt-3 pt-2">Sofortige Produkte - versandbereit <strong>heute</strong></div>
													</label>
												</div>
											</div>
										</div>
									</div>
								</div>
							</iaixsl:if>

            </form>
            <iaixsl:if test="/shop/basket/delay_time/@unknown_delivery_time = 'true'">
                <div class="unknown_delivery_time">
                    <i class="icon-truck"></i>
                    <div>
                        <b>Im Korb befindet sich Ware, die auf Bestellung geliefert wird.</b> Um die für die Vorbereitung der Bestellung zum Versand benötigte Zeit einzuschätzen, 
                         <a target="_blank">
                            <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/contact/link/@url"/></iaixsl:attribute>
                            kontaktieren Sie den Shopservice.
                        </a>
                    </div>
                </div>
            </iaixsl:if>

            
            <div id="alert_cover" class="projector_alert_55916" style="display:none" onclick="Alertek.hide_alert();">NIE DA SIE</div>

        </iaixsl:if>
        <!--Podsumowanie koszyka (basketedit_summary, 115480.1)-->
        <iaixsl:variable name="txt_60826_advance_a">Bei Bestellung mit Zahlung bei Lieferung ist eine Anzahlung erforderlich:</iaixsl:variable>
        <iaixsl:variable name="txt_60826_advance_header">Bestellung mit Zahlung im Voraus</iaixsl:variable>
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
            <iaixsl:variable name="immediately_txt">Die Ware wird unverzüglich nach Annahme Ihrer Bestellung versandt.</iaixsl:variable>

            <div class="basketedit_summary_container">
                <div class="basketedit_summary">

                    <div class="basketedit_summary_sub">
                        <iaixsl:attribute name="class">basketedit_summary_sub</iaixsl:attribute>
                        
                        <iaixsl:if test="count(/shop/page/basket-details/product) = count(/shop/page/basket-details/product[@product_type='product_virtual'])">
                            <span class="only_virtual">Nachdem die Produkte bezahlt wurde, wird es auf der Registerkarte <a><iaixsl:attribute name="href"><iaixsl:value-of select="/shop/client_files/@link_to_download"/></iaixsl:attribute>"Meine Dateien"</a> verfügbar sein.</span>
                        </iaixsl:if>
                        <div class="basketedit_summary_left">
                            
                            <iaixsl:if test="$txt_60826_advance_a and (/shop/page/basket-details/summary/money/@advance_mode = 'total' and /shop/page/basket-details/summary/money/@prepaid = 'true' and /shop/page/basket-details/summary/money/@advance > 0)">
                                <div class="summary_left_advance">
                                    <iaixsl:if test="$txt_60826_advance_header">
                                        <div class="summary_left_advance_header">
                                            <iaixsl:value-of select="$txt_60826_advance_header"/>
                                        </div>
                                    </iaixsl:if>
                                    Vor der Abwicklung der Bestellung mit Zahlung im Voraus ist eine Anzahlung erforderlich. Sie besteht aus dem vollen Preis für in unserem Lager verfügbare Ware, aus einem Teil des Preises für bei einem Lieferanten zu bestellende Ware, und den Versandkosten auf Grund Ihrer Auswahl in den weiteren Schritten zum Abschluss des Bestellprozesses.
                                </div>
                            </iaixsl:if>

                            
                            <iaixsl:if test="basket/@toshippingfree> 0 and not(basket/@toshippingfree= '')">
                                <div class="toshippingfree">
                                    <div class="toshippingfree_sub">KOSTENLOSER VERSAND ab 
                                        <span class="price"><iaixsl:value-of select="basket/@shippinglimitfree_formatted"/></span><iaixsl:if test="$wholesaler_shipping_gross">&#160;<iaixsl:value-of select="$wholesaler_shipping_gross"/></iaixsl:if></div>

                                    Vermissen Sie nur 
                                    <b><iaixsl:value-of select="/shop/basket/@toshippingfree_formatted"/></b><iaixsl:if test="$wholesaler_shipping_gross">&#160;<iaixsl:value-of select="$wholesaler_shipping_gross"/></iaixsl:if>, um freies Verschiffen zu erhalten!
                                </div>
                            </iaixsl:if>

                            
                            <iaixsl:if test="/shop/client_data/client_balance/limit/@value > '0'">
                                <div class="basketedit_limit_section">
                                    <div class="basketedit_product_summary">
                                        <label>
                                            Schuldenlimit:
                                        </label>
                                        <strong class="limit_total">
                                            <iaixsl:value-of select="/shop/client_data/client_balance/limit/@value_formatted"/>
                                        </strong>
                                    </div>

                                    <div class="basketedit_product_summary">
                                        <label>
                                            Verfügbarer Kreditlimit:
                                        </label>
                                        <strong class="limit_touse">
                                            <iaixsl:value-of select="/shop/client_data/client_balance/limit/@to_use_formatted"/>
                                        </strong>
                                    </div>
                                </div>
                            </iaixsl:if>

                            <iaixsl:if test="(page/basket-details/summary/points/@debit) and (page/basket-details/summary/points/@debit > 0)">
                                <div class="basketedit_summary_debit">
                                    Nach Bezahlung dieser Bestellung erhalten Sie 
                                    <b><iaixsl:value-of select="page/basket-details/summary/points/@debit"/><span> Pkt.</span></b> in Rahmen des Treueprogramms.
                                    <iaixsl:if test="/shop/basket/@client_points != '0'">
                                        Ihr aktueller Kontostand beträgt
                                        <b><iaixsl:value-of select="/shop/basket/@client_points"/><span> Pkt.</span></b>
                                    </iaixsl:if>
                                </div>
                            </iaixsl:if>

                            
                        </div>

                        <div class="basketedit_summary_right">
                            <div class="basketedit_calculations">
                                <div class="basketedit_product_summary">
                                    <label>
                                        Bestellwert:
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
                                                    Versand ab 
                                                </iaixsl:when>
                                                <iaixsl:otherwise>
                                                    Versand ab: 
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
                                                    Versand ohne Angaben
                                                </iaixsl:when>
                                                <iaixsl:otherwise>
                                                    Gratis!
                                                </iaixsl:otherwise>
                                            </iaixsl:choose>
                                        </strong>
                                    </div>
                                </iaixsl:if>

                                <iaixsl:if test="/shop/page/basket-details/summary/money/@total_rebate>0">
                                    <div class="basketedit_rabats_summary">
                                        <label>
                                            Sie sparen:
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
                                                        Per Saldo bezahlt:<br />(Überzahlungen auf dem Kundenkonto)
                                                    </label>

                                                    <strong class="saldo_value minus_sign">
                                                        <iaixsl:value-of select="/shop/page/basket-details/summary/money/@balance_to_pay_formatted"/>
                                                    </strong>
                                                </iaixsl:when>
                                                <iaixsl:when test="not($balance_to_pay > 0) and not($balance_to_pay = '0.00')">
                                                    <label>
                                                        Per Saldo bezahlt:<br />(Unterbezahlung auf dem Kundenkonto)
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
                                    Zahlbetrag: 
                                </label>

                                <strong><iaixsl:value-of select="/shop/page/basket-details/summary/money/@to_pay_formatted"/><iaixsl:if test="not(/shop/client_data/@uses_vat='false')"> inkl. MwSt.</iaixsl:if></strong>
                                <iaixsl:if test="(basket/@points_used) and (basket/@points_used != 0)">
                                    <b>
                                         + 
                                        <span><iaixsl:value-of select="basket/@points_used"/>
                                             Pkt.</span>
                                    </b>
                                </iaixsl:if>
                            </div>

                            
                            <iaixsl:if test="$txt_60826_advance_a and (/shop/page/basket-details/summary/money/@advance > 0)">
                                <div class="basketedit_product_summary advance">
                                    <iaixsl:choose>
                                        <iaixsl:when test="/shop/page/basket-details/summary/money/@advance_mode = 'default' or /shop/page/basket-details/summary/money/@advance_mode = 'none'">
                                            <iaixsl:choose>
                                                <iaixsl:when test="/shop/page/basket-details/summary/money/@cash_on_delivery = 'true' and /shop/page/basket-details/summary/money/@prepaid = 'false'">
                                                    <label class="txt_wrap">Bei Bestellung mit Zahlung bei Lieferung ist eine Anzahlung erforderlich:</label>
                                                    <strong><iaixsl:value-of select="/shop/page/basket-details/summary/money/@advance_formatted"/></strong>
                                                </iaixsl:when>
                                                <iaixsl:when test="/shop/page/basket-details/summary/money/@cash_on_delivery = 'false' and /shop/page/basket-details/summary/money/@prepaid = 'true'">
                                                    <label class="txt_wrap">Bei Bestellung mit Vorkasse erforderliche Anzahlung:</label>
                                                    <strong><iaixsl:value-of select="/shop/page/basket-details/summary/money/@advance_formatted"/></strong>
                                                </iaixsl:when>
                                                <iaixsl:when test="/shop/page/basket-details/summary/money/@cash_on_delivery = 'true' and /shop/page/basket-details/summary/money/@prepaid = 'true'">
                                                    <label class="txt_wrap">Erforderliche Anzahlung:</label>
                                                    <strong><iaixsl:value-of select="/shop/page/basket-details/summary/money/@advance_formatted"/></strong>
                                                </iaixsl:when>
                                            </iaixsl:choose>
                                        </iaixsl:when>
                                        <iaixsl:when test="/shop/page/basket-details/summary/money/@advance_mode = 'total'">
                                            <label class="txt_wrap">Erforderliche Anzahlung:</label>
                                            <strong><iaixsl:value-of select="/shop/page/basket-details/summary/money/@advance_formatted"/></strong>
                                        </iaixsl:when>
                                    </iaixsl:choose>
                                </div>
                            </iaixsl:if>
                            
                            <iaixsl:if test="page/basket-details/summary/payment/instalment">
                                <div id="instalment_payment_basket" class="instalment_payment_basket">
                                    <iaixsl:choose>
                                        <iaixsl:when test="count(/shop/page/basket-details/summary/payment/instalment) = 1">
                                            <iaixsl:for-each select="/shop/page/basket-details/summary/payment/instalment">
                                                <a class="instalment_payment_basket__element --link">
                                                    <iaixsl:attribute name="onclick">calculate_instalments('<iaixsl:value-of select="@minprice"/>','<iaixsl:value-of select="@maxprice"/>','<iaixsl:value-of select="@priceTotal"/>','<iaixsl:value-of select="@alert"/>',$(this).attr('data-window'),'<iaixsl:value-of select="@maxquantity"/>','<iaixsl:value-of select="@name"/>'); return false;</iaixsl:attribute>
                                                    <iaixsl:attribute name="href">javascript:<iaixsl:value-of select="@calculate"/></iaixsl:attribute>
                                                    <iaixsl:attribute name="data-window"><iaixsl:value-of select="@calculate"/></iaixsl:attribute>
                                                    <div class="instalment_payment_basket__img_container">
                                                        <img src="/gfx/ger/instalment_basket.svg?r=1600678629" class="instalment_payment_basket__img"/>
                                                    </div>
                                                    <div class="instalment_payment_basket__text_container">
                                                        <span class="instalment_payment_basket__label">
                                                            <iaixsl:choose>
                                                                <iaixsl:when test="@value_formatted">
                                                                    Sie können Ratenzahlungen, bereits ab <b><iaixsl:value-of select="@value_formatted"/></b> pro Monat leisten
                                                                </iaixsl:when>
                                                                <iaixsl:otherwise>
                                                                    Sie können Ratenzahlungen
                                                                </iaixsl:otherwise>
                                                            </iaixsl:choose>
                                                        </span>
                                                        <span class="instalment_payment_basket__small">Sie können im nächsten Schritt bei der Auswahl der Zahlungsmethoden Raten wählen.</span>
                                                    </div>
                                                </a>
                                            </iaixsl:for-each>
                                        </iaixsl:when>
                                        <iaixsl:otherwise>
                                            <iaixsl:variable name="lowest_instalment_price">
                                                <iaixsl:for-each select="/shop/page/basket-details/summary/payment/instalment">
                                                    <iaixsl:sort select="number(@value)" order="ascending"/>
                                                    <iaixsl:value-of select="@value_formatted"/>
                                                </iaixsl:for-each>
                                            </iaixsl:variable>
                                            <div class="instalment_payment_basket__element">
                                                <div class="instalment_payment_basket__img_container">
                                                    <img src="/gfx/ger/instalment_basket.svg?r=1600678629" class="instalment_payment_basket__img"/>
                                                </div>
                                                <div class="instalment_payment_basket__text_container">
                                                    <span class="instalment_payment_basket__label">
                                                        <iaixsl:choose>
                                                            <iaixsl:when test="/shop/page/basket-details/summary/payment/instalment/@value_formatted and /shop/page/basket-details/summary/payment/instalment/@value_formatted != ''">
                                                                Sie können Ratenzahlungen, bereits ab <b><iaixsl:value-of select="$lowest_instalment_price[1]"/></b> pro Monat leisten
                                                            </iaixsl:when>
                                                            <iaixsl:otherwise>
                                                                Sie können Ratenzahlungen
                                                            </iaixsl:otherwise>
                                                        </iaixsl:choose>
                                                    </span>
                                                    <span class="instalment_payment_basket__small">Sie können im nächsten Schritt bei der Auswahl der Zahlungsmethoden Raten wählen.</span>
                                                </div>
                                            </div>
                                        </iaixsl:otherwise>
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
                                <iaixsl:attribute name="style">display:none !important;</iaixsl:attribute>
                            </iaixsl:if>

                            <iaixsl:variable name="wys_1_68242"> <b>heute</b></iaixsl:variable>

                            <iaixsl:choose>
                                <iaixsl:when test="$wys_1_68242 and (/shop/basket/shipping_time/@week_amount = 0) and (/shop/basket/shipping_time/@week_day)">
                                    Die Bestellung ist versandbereit.
                                    <iaixsl:choose>
                                        <iaixsl:when test="/shop/basket/shipping_time/@today = 'true'">
                                             <b>heute</b>
                                        </iaixsl:when>
                                        <iaixsl:when test="/shop/basket/shipping_time/@week_day = 1">
                                             <b>Montag</b>
                                        </iaixsl:when>
                                        <iaixsl:when test="/shop/basket/shipping_time/@week_day = 2">
                                             <b>Dienstag</b>
                                        </iaixsl:when>
                                        <iaixsl:when test="/shop/basket/shipping_time/@week_day = 3">
                                             <b>Mittwoch</b>
                                        </iaixsl:when>
                                        <iaixsl:when test="/shop/basket/shipping_time/@week_day = 4">
                                             <b>Donnerstag</b>
                                        </iaixsl:when>
                                        <iaixsl:when test="/shop/basket/shipping_time/@week_day = 5">
                                             <b>Freitag</b>
                                        </iaixsl:when>
                                        <iaixsl:when test="/shop/basket/shipping_time/@week_day = 6">
                                             <b>Samstag</b>
                                        </iaixsl:when>
                                        <iaixsl:when test="/shop/basket/shipping_time/@week_day = 7">
                                             <b>Sonntag</b>
                                        </iaixsl:when>
                                    </iaixsl:choose>
                                </iaixsl:when>
                                <iaixsl:when test="$immediately_txt and (/shop/basket/shipping_time/@days = 0) and (/shop/basket/shipping_time/@hours = 0) and (/shop/basket/shipping_time/@minutes = 0)">
                                    <iaixsl:value-of select="$immediately_txt"/>
                                </iaixsl:when>

                                <iaixsl:otherwise>

                                    Vorbereitung Zeit, Ihren Auftrag zu senden ist 
                                    <b>
                                        <iaixsl:if test="(/shop/basket/shipping_time/@days = 0) and (/shop/basket/shipping_time/@hours = 0) and (/shop/basket/shipping_time/@minutes = 0)">
                                             24 Stunden
                                        </iaixsl:if>

                                        <iaixsl:if test="/shop/basket/shipping_time/@days > 0">
                                            <iaixsl:value-of select="/shop/basket/shipping_time/@days"/>
                                            <iaixsl:choose>
                                                <iaixsl:when test="/shop/basket/shipping_time/@days ='1'">
                                                     Tag 
                                                </iaixsl:when>
                                                <iaixsl:otherwise>
                                                     Tagen 
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
                                                             Stunde 
                                                        </iaixsl:otherwise>
                                                    </iaixsl:choose>
                                                </iaixsl:if>
                                            </iaixsl:when>
                                            <iaixsl:otherwise>
                                                <iaixsl:if test="/shop/basket/shipping_time/@hours > 0">
                                                    <iaixsl:value-of select="/shop/basket/shipping_time/@hours"/>
                                                     Stunde 
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
                                <iaixsl:attribute name="onclick">Alertek.show_alert('Der Mindestbestellwert für Großhändler beträgt:  <iaixsl:if test="$signbeforeprice = 'true'"><iaixsl:value-of select="/shop/currency/@name"/><iaixsl:value-of select="$signbetweenpricecurrency"/></iaixsl:if><iaixsl:value-of select="/shop/page/communicates/warning/@value"/><iaixsl:if test="$signbeforeprice = 'false'"><iaixsl:value-of select="$signbetweenpricecurrency"/><iaixsl:value-of select="/shop/currency/@name"/>
                                </iaixsl:if>');</iaixsl:attribute>
                            </iaixsl:if>
                            Zur Kasse
                        </a>
                    </div>

                    <span id="basketedit_summary_buttons_sepratator" class="d-sm-none">
                        <span>oder</span>
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

                            Weiter einkaufen
                        </a>
                    </div>

					<iaixsl:if test="not(/shop/page/communicates/warning[@type = 'order_tomuch'])">
						<iaixsl:if test="/shop/basket/shipping_time/@days and not(basket/@shipping_undefined = 'true')">
							
							<div class="basketedit_summary_shipment_time d-none d-sm-table-cell">
								<iaixsl:if test="/shop/basket/delay_time/@unknown_delivery_time = 'true'">
									<iaixsl:attribute name="style">display:none !important;</iaixsl:attribute>
								</iaixsl:if>

								<iaixsl:variable name="wys_1_68242"> <b>heute</b></iaixsl:variable>

								<iaixsl:choose>
									<iaixsl:when test="$wys_1_68242 and (/shop/basket/shipping_time/@week_amount = 0) and (/shop/basket/shipping_time/@week_day)">
										Die Bestellung ist versandbereit.
										<iaixsl:choose>
											<iaixsl:when test="/shop/basket/shipping_time/@today = 'true'">
												 <b>heute</b>
											</iaixsl:when>
											<iaixsl:when test="/shop/basket/shipping_time/@week_day = 1">
												 <b>Montag</b>
											</iaixsl:when>
											<iaixsl:when test="/shop/basket/shipping_time/@week_day = 2">
												 <b>Dienstag</b>
											</iaixsl:when>
											<iaixsl:when test="/shop/basket/shipping_time/@week_day = 3">
												 <b>Mittwoch</b>
											</iaixsl:when>
											<iaixsl:when test="/shop/basket/shipping_time/@week_day = 4">
												 <b>Donnerstag</b>
											</iaixsl:when>
											<iaixsl:when test="/shop/basket/shipping_time/@week_day = 5">
												 <b>Freitag</b>
											</iaixsl:when>
											<iaixsl:when test="/shop/basket/shipping_time/@week_day = 6">
												 <b>Samstag</b>
											</iaixsl:when>
											<iaixsl:when test="/shop/basket/shipping_time/@week_day = 7">
												 <b>Sonntag</b>
											</iaixsl:when>
										</iaixsl:choose>
									</iaixsl:when>
									<iaixsl:when test="$immediately_txt and (/shop/basket/shipping_time/@days = 0) and (/shop/basket/shipping_time/@hours = 0) and (/shop/basket/shipping_time/@minutes = 0)">
										<iaixsl:value-of select="$immediately_txt"/>
									</iaixsl:when>

									<iaixsl:otherwise>

										Vorbereitung Zeit, Ihren Auftrag zu senden ist 
										<b>
											<iaixsl:if test="(/shop/basket/shipping_time/@days = 0) and (/shop/basket/shipping_time/@hours = 0) and (/shop/basket/shipping_time/@minutes = 0)">
												 24 Stunden
											</iaixsl:if>

											<iaixsl:if test="/shop/basket/shipping_time/@days > 0">
												<iaixsl:value-of select="/shop/basket/shipping_time/@days"/>
												<iaixsl:choose>
													<iaixsl:when test="/shop/basket/shipping_time/@days ='1'">
														 Tag 
													</iaixsl:when>
													<iaixsl:otherwise>
														 Tagen 
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
																 Stunde 
															</iaixsl:otherwise>
														</iaixsl:choose>
													</iaixsl:if>
												</iaixsl:when>
												<iaixsl:otherwise>
													<iaixsl:if test="/shop/basket/shipping_time/@hours > 0">
														<iaixsl:value-of select="/shop/basket/shipping_time/@hours"/>
														 Stunde 
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
									<iaixsl:attribute name="onclick">Alertek.show_alert('Der Mindestbestellwert für Großhändler beträgt:  <iaixsl:if test="$signbeforeprice = 'true'"><iaixsl:value-of select="/shop/currency/@name"/><iaixsl:value-of select="$signbetweenpricecurrency"/></iaixsl:if><iaixsl:value-of select="/shop/page/communicates/warning/@value"/><iaixsl:if test="$signbeforeprice = 'false'"><iaixsl:value-of select="$signbetweenpricecurrency"/><iaixsl:value-of select="/shop/currency/@name"/>
									</iaixsl:if>');</iaixsl:attribute>
								</iaixsl:if>
								Zur Kasse
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
                                Aktiver Rabattcode: 
                            </span>
                            <span class="basketedit_rebatecode_value">
                                <iaixsl:value-of select="/shop/page/rebates/code_details/@number"/>
                            </span>
                            <div class="basketedit_rebatecode_action">
                                <a id="a_remove_code" href="#">[Code löschen]</a>
                                <a id="a_change_code" href="#">[anderen Code verwenden]</a>
                            </div>
                            <form action="/settings.php?from=basket" method="post" id="change_code">
                                <input class="basketedit_rebatecode_input" name="rebates_codes" type="text" value=""/>
                                <input id="global_rebates_codes" name="global_rebates_codes" value="add" type="hidden"/>
                                <input class="btn --solid basketedit_change_code" type="submit" value="">
                                    <iaixsl:attribute name="value">Anderen Code verwenden</iaixsl:attribute>
                                </input>
                            </form>
                        </div>
                        <div class="basketedit_rebatecode_r">
                            <iaixsl:if test="/shop/page/rebates/code_details/@min_order > 0">
                                <div class="basketedit_rebatecode_title_out">
                                    <span class="basketedit_rebatecode_title">
                                        Erforderlicher Warenkorbwert: 
                                    </span>
                                    <span class="basketedit_rebatecode_value">
                                        <iaixsl:value-of select="/shop/page/rebates/code_details/@min_order"/><iaixsl:value-of select="$signbetweenpricecurrency"/><iaixsl:value-of select="/shop/currency/@name"/>
                                    </span>
                                </div>
                            </iaixsl:if>
                            <iaixsl:if test="/shop/page/rebates/code_details/@expires">
                                <div class="basketedit_rebatecode_title_out">
                                    <span class="basketedit_rebatecode_title">
                                        Rabattcode gültig bis: 
                                    </span>
                                    <span class="basketedit_rebatecode_value">
                                        <iaixsl:value-of select="/shop/page/rebates/code_details/@expires"/>
                                    </span>
                                </div>
                            </iaixsl:if>
                            <a href="/client-rebate.php" class="btn --solid basketedit_client_rebate" id="basketedit_client_rebate">
                                <iaixsl:attribute name="title">Detaillierte Auflistung der Rabatte</iaixsl:attribute>
                                Weitere Informationen zu den gewährten Rabatten
                            </a>
                        </div>
                    </iaixsl:if>
                    
                    <iaixsl:if test="/shop/page/rebates/code_details/@active = 'n'">
                        <iaixsl:if test="/shop/rebate_code_delete_client_advanced_rebate/@active = 'y'">
                            <div id="basketedit_rebatecode_activate_info" style="display:none;">
                                 Durch die Eingabe des Rabattcodes überschreiben Sie den Ihrem Konto zugewiesenen Rabatt.
                            </div>
                        </iaixsl:if>

                        <span class="basketedit_rebatecode_activate_txt">Haben Sie einen Rabattcode?</span>

                        <form action="/settings.php?from=basket" method="post">
                            
                            <input onclick="$('#basketedit_rebatecode_activate_info').fadeIn('slow');" class="basketedit_rebatecode_input" name="rebates_codes" type="text" value=""/>
                            <input id="global_rebates_codes" name="global_rebates_codes" value="add" type="hidden"/>
                            <input class="btn --solid basketedit_submit_code" type="submit" value="">
                                <iaixsl:attribute name="value">Code bestätigen</iaixsl:attribute>
                            </input>
                        </form>
                        <a href="/client-rebate.php" class="btn --solid basketedit_client_rebate">
                            <iaixsl:attribute name="title">Detaillierte Auflistung der Rabatte</iaixsl:attribute>
                            Weitere Informationen zu Rabatten
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
                                    Rabatte für die Bestellung
                                </div>

                                <table class="menu_rebates">
                                    <tr>
                                        <th>
                                            <span>Ab dem Bestellwert von</span>
                                        </th>
                                        <th class="menu_rebates_value">
                                            <span>Rabatt</span>
                                        </th>
                                    </tr>

                                    <iaixsl:for-each select="/shop/rebatesLocal/rebate[@value > 0 ]">
                                        <tr>
                                            <iaixsl:if test="@selected = 'selected'">
                                                <iaixsl:attribute name="class">selected</iaixsl:attribute>
                                            </iaixsl:if>
                                            <td class="menu_rebates_threshold">
                                                <iaixsl:value-of select="format-number(@threshold, '#')"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="/shop/currency/@name"/><iaixsl:if test="not(@selected = 'selected') and @left > 0"> - <span>Es fehlen noch 
                                                <iaixsl:value-of select="@left_formatted"/></span></iaixsl:if>
                                            </td>
                                            <td class="menu_rebates_value">
                                                <iaixsl:if test="@selected = 'selected'">
                                                    <strong>IHR RABATT:</strong>
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
                            <strong>Wir prämieren große Bestellungen! </strong>
                            <span>Prüfen Sie, welche kostenlose Produkte wir für Sie vorbereitet haben. </span>

                            <iaixsl:if test="not($showGifts = '1')">
                                <a href="#showGifts" class="btn --solid --secondary basketedit_gifts_btn">
                                    <iaixsl:if test="/shop/page/basket-details/rebate_local/active/selected/product/@id">
                                        <iaixsl:attribute name="data-active">true</iaixsl:attribute>
                                    </iaixsl:if>
                                    <iaixsl:attribute name="title">Wählen Sie Ihr Gratisprodukt aus</iaixsl:attribute>
                                    Wählen Sie Ihr Gratisprodukt aus
                                </a>
                            </iaixsl:if>
                        </div>

                        <div class="basketedit_gifts_wrapper" style="display: none;">
                            <iaixsl:if test="$showGifts = '1' or /shop/page/basket-details/rebate_local/active/selected/product/@id">
                                <iaixsl:attribute name="style">display: block;</iaixsl:attribute>
                            </iaixsl:if>

                            <iaixsl:if test="/shop/page/basket-details/rebate_local/active/products/product">
                                <p class="gift_info">
                                    Ihr Auftrag mehr als 
                                    <b><iaixsl:if test="$signbeforeprice = 'true'"><iaixsl:value-of select="/shop/currency/@name"/><iaixsl:value-of select="$signbetweenpricecurrency"/></iaixsl:if><iaixsl:value-of select="/shop/page/basket-details/rebate_local/active/@threshold"/><iaixsl:if test="$signbeforeprice = 'false'"><iaixsl:value-of select="$signbetweenpricecurrency"/><iaixsl:value-of select="/shop/currency/@name"/></iaixsl:if></b>, so können Sie ein Geschenk zu wählen!
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
                                                            <div id="your_gift_txt">Ihr Geschenk:</div>
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
                                                                <label>Größe: </label>

                                                                <iaixsl:for-each select="sizes/size">
                                                                    <iaixsl:value-of select="@description"/>
                                                                </iaixsl:for-each>
                                                            </div>
                                                        </iaixsl:when>
                                                        <iaixsl:otherwise>
                                                            <div class="gift_choose_size">
                                                                <label>Größe: </label>
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
                                                                Mehr
                                                            </a>
                                                            <div class="btn --outline --icon-left icon-plus gift_choose">
                                                                Wählen Sie dieses Geschenk
                                                            </div>
                                                            <div class="btn --outline --icon-left icon-plus gift_resign">
                                                                Ablehnen dieses Geschenk
                                                            </div>
                                                        </div>
                                                    </iaixsl:if>

                                                    <iaixsl:choose>
                                                        <iaixsl:when test="price/@beforerebate > 0">
                                                            <div class="gift_price">
                                                                <b>Wert</b>
                                                                <span>
                                                                    <iaixsl:value-of select="price/@beforerebate_formatted"/>
                                                                </span>
                                                            </div>
                                                        </iaixsl:when>
                                                        <iaixsl:when test="price/@value > 0">
                                                            <div class="gift_price">
                                                                <b>Wert</b>
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
                                                    <span>Um ein Geschenk zu erhalten, erhöhen Sie den Bestellwert um mindestens  <iaixsl:value-of select="@left_price_formatted"/>   und wählen Sie noch <iaixsl:value-of select="@left_quantity"/> 
                                                        <iaixsl:choose>
                                                            <iaixsl:when test="(@left_quantity = '1' )">
                                                                 ein anderes Produkt.
                                                            </iaixsl:when>
                                                            <iaixsl:when test=" (substring(@left_quantity, string-length(@left_quantity), 1) = '2') or (substring(@left_quantity, string-length(@left_quantity), 1)='3') or (substring(@left_quantity, string-length(@left_quantity), 1)='4') ">  andere Produkte
                                                            </iaixsl:when>
                                                            <iaixsl:otherwise>
                                                                 andere Produkte.
                                                            </iaixsl:otherwise>
                                                        </iaixsl:choose>
                                                    </span>
                                                </iaixsl:when>
                                                <iaixsl:when test="not(@left_price > 0) and (@left_quantity > 0)">
                                                    <span>
                                                        Um ein Geschenk zu erhalten, wählen Sie noch  <iaixsl:value-of select="@left_quantity"/>  <iaixsl:choose> <iaixsl:when test="(@left_quantity = '1' )">  ein anderes Produkt. </iaixsl:when> <iaixsl:when test=" (substring(@left_quantity, string-length(@left_quantity), 1) = '2') or (substring(@left_quantity, string-length(@left_quantity), 1)='3') or (substring(@left_quantity, string-length(@left_quantity), 1)='4') ">  andere Produkte </iaixsl:when> <iaixsl:otherwise>  andere Produkte. </iaixsl:otherwise> </iaixsl:choose>
                                                    </span>
                                                </iaixsl:when>
                                                <iaixsl:when test="(@left_price > 0) and not(@left_quantity > 0)">
                                                    <span> Um ein Geschenk zu erhalten, erhöhen Sie den Bestellwert um mindestens  <iaixsl:value-of select="@left_price_formatted"/>
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
                                                                <label>Größe: </label>

                                                                <iaixsl:for-each select="sizes/size">
                                                                    <iaixsl:value-of select="@description"/><iaixsl:if test="not(position()=last())">, </iaixsl:if>
                                                                </iaixsl:for-each>
                                                            </div>
                                                        </iaixsl:otherwise>
                                                    </iaixsl:choose>

                                                    <iaixsl:if test="@link">
                                                        <a target="_blank">
                                                            <iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
                                                            Mehr
                                                        </a>
                                                    </iaixsl:if>
                                                    <iaixsl:choose>
                                                        <iaixsl:when test="price/@beforerebate > 0">
                                                            <div class="gift_price">
                                                                <b>Wert</b>
                                                                <span>
                                                                    <iaixsl:value-of select="price/@beforerebate_formatted"/>
                                                                </span>
                                                            </div>
                                                        </iaixsl:when>
                                                        <iaixsl:when test="price/@value > 0">
                                                            <div class="gift_price">
                                                                <b>Wert</b>
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
                                        <span class="rebates_for_points col-12">Punkte gegen Rabatt tauschen</span>
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
                                                                <iaixsl:attribute name="title">Nachdem Sie Ihre Punkte gegen den Rabatt eingetauscht haben, wird der Ihrem Konto zugewiesene Rabatt gelöscht.</iaixsl:attribute>
                                                                <iaixsl:attribute name="data-title">Punkte gegen einen Rabatt eintauschen</iaixsl:attribute>

                                                                <iaixsl:attribute name="data-button_txt">Punkte eintauschen</iaixsl:attribute>

                                                                <iaixsl:attribute name="data-confirmation_link">true</iaixsl:attribute>
                                                            </iaixsl:if>

                                                            <iaixsl:if test="/shop/rebate_for_profit_points_delete_rebate_code/@active = 'y'">
                                                                <iaixsl:attribute name="title">Nachdem Sie Ihre Punkte gegen den Rabatt eingetauscht haben, wird der dem Rabattcode zugewiesene Rabatt gelöscht.</iaixsl:attribute>
                                                                <iaixsl:attribute name="data-title">Punkte gegen einen Rabatt eintauschen</iaixsl:attribute>
                                                                <iaixsl:attribute name="data-button_txt">Punkte eintauschen</iaixsl:attribute>

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
                                                                    <strong>IHR RABATT:</strong>
                                                                </iaixsl:if>
                                                                <span>Rabatt
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
                                                                        auf alle folgenden Bestellungen
                                                                    </iaixsl:when>
                                                                    <iaixsl:otherwise>
                                                                        auf diese Bestellung
                                                                    </iaixsl:otherwise>
                                                                </iaixsl:choose>
                                                            </span>
                                                            <span class="for_points_points">
                                                                <iaixsl:value-of select="format-number(@points, '#')"/> Pkt.
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
                                                                    <strong>IHR RABATT:</strong>
                                                                </iaixsl:if>
                                                                <span>Rabatt
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
                                                                        auf alle folgenden Bestellungen
                                                                    </iaixsl:when>
                                                                    <iaixsl:otherwise>
                                                                        auf diese Bestellung
                                                                    </iaixsl:otherwise>
                                                                </iaixsl:choose>
                                                            </span>
                                                            <span class="for_points_points">
                                                                <iaixsl:value-of select="@points"/> Pkt.
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
                <div class="menu_messages_message">Wunschliste wird nur für eingeloggte Kunden gespeichert. <a class="loginPopUpShow" href="/login.php">Loggen Sie sich ein</a> oder <a href="/client-new.php?register">registrieren Sie sich</a>, falls Sie noch kein Konto bei uns besitzen.</div>
            </iaixsl:if>
            <div class="products_bought row" id="favourites_list">
                <div class="col-12">
                <div id="pb_list" class="pb_list">
                    <div class="pb_list_header row d-none d-md-flex">
                        <div class="pb_header_name col-6"></div>
                        <div class="pb_header_date col-2">Auf der Wunschliste seit:</div>
                        <div class="pb_header_price col-2"> Preis:</div>
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
                                        <img class="basket_prod rwd-src" alt="Szczegoly" src="/gfx/ger/loader.gif?r=1600678629">
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
                                                Produktcode: 
                                            </span>
                                            <iaixsl:value-of select="@barcode"/>
                                        </div>
                                    </iaixsl:if>


                                    
                                    <iaixsl:if test="not(sizes/size[@buy_date]/@type='uniw')">
                                        <div class="pb_single_info">
                                            <span>
                                                Größe: 
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
                                    <span class="d-block d-md-none">Auf der Wunschliste seit:</span>
                                    <iaixsl:value-of select="size/@observed_since"/>
                                </div>
                            </div>

                            
                            <div class="col-md-2 col-12 mb-3 mb-md-0">
                                <div class="pb_price">
                                    <span class="d-block d-md-none"> Preis:</span>
                                    <iaixsl:choose>
                                        <iaixsl:when test="price/@value = 0">
                                            <iaixsl:choose>
                                                <iaixsl:when test="price/@points_sum">
                                                    <iaixsl:value-of select="price/@points_sum"/> Pkt.
                                                </iaixsl:when>
                                                <iaixsl:otherwise>
                                                    <a class="col2_54008x_phone" href="/contact.php">auf Anfrage</a>
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
                                                Produkt nicht verfügbar
                                            </span>
                                        </iaixsl:when>
                                        <iaixsl:otherwise>
                                            <a class="btn --solid">
                                                <iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
                                                <iaixsl:attribute name="title">Kaufen Sie jetzt</iaixsl:attribute>
                                                Kaufen Sie jetzt
                                            </a>
                                        </iaixsl:otherwise>
                                    </iaixsl:choose>
                                    <a class="btn --solid mt-2">
                                        <iaixsl:attribute name="href"><iaixsl:value-of select="removeall"/></iaixsl:attribute>
                                        <iaixsl:attribute name="title">Aus der Liste entfernen</iaixsl:attribute>
                                        Aus der Liste entfernen
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
        <!--Hotspot w koszyku strefa 1 (basketedit_hotspot_zone1, 111445.1)-->
            
        <!--Polityka bezpieczeństwa (menu_security_policy, 111703.1)-->
        <iaixsl:if test="/shop/iai/@button_src">
            <div id="menu_security_policy" class="menu_box">
                <iaixsl:choose>
                    <iaixsl:when test="/shop/@trust_level = '1'">
                        <iaixsl:attribute name="class">menu_box supershop</iaixsl:attribute>
                        <img src="/gfx/ger/iai_security_supershop.png?r=1600678629" alt="SuperFair.Shop badge"/>
                        <div class="menu_sub_box">
                            <h2>
                                <iaixsl:attribute name="class">big_label</iaixsl:attribute>
                                Einkäufe in unserem Geschäft sind <strong>SuperFair.Shop<sup>TM</sup></strong> </h2>
                            <p> Wir nutzen das System IdoSell Shop Kunden Erfüllungsprozess Kontrolle über die Reihenfolge und Ordnung zu geben. Wir kümmern uns um Ihre Rechte und Bequemlichkeit. IAI SA unser Geschäft prüft und bestätigt, dass wir die Sendung erklärt in Bezug auf die Nutzung und mögliche Lösungen zu erleichtern Käufe und erhöhen die Sicherheit der Kunden zu senden.</p>

                            <iaixsl:if test="/shop/action/shop_information/@order_link_active='y' or /shop/action/shipping_cost/@order_link_active='y' or /shop/action/payment_methods/@order_link_active='y' or /shop/action/terms/@order_link_active='y' or /shop/action/private_policy/@order_link_active='y' or /shop/action/order_cancel/@order_link_active='y'">
                                <p>
                                    Machen Sie sich bitte mit unseren
                                    <a target="_blank"><iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/terms/@url"/></iaixsl:attribute>Allgemeinen Geschäftsbedingungen</a>, <a target="_blank"><iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/private_policy/@url"/></iaixsl:attribute>Datenschutzbestimmungen </a>sowie Informationen bezüglich des 
                                    <a target="_blank"><iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/order_cancel/@url"/></iaixsl:attribute>Widerrufsrechts </a>vertraut.
                                    Hier können Sie mehr 
                                    <a target="_blank"><iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/shop_information/@url"/></iaixsl:attribute>Über uns</a> erfahren und finden Sie wichtige Informationen zu unseren <a target="_blank"><iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/shipping_cost/@url"/></iaixsl:attribute>Versandkosten</a> und 
                                    <a target="_blank"><iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/payment_methods/@url"/></iaixsl:attribute>Zahlungsbedingungen</a>.
                                </p>
                            </iaixsl:if>
                        </div>
                    </iaixsl:when>
                    <iaixsl:otherwise>
                        <h2>
                            <iaixsl:attribute name="class">big_label</iaixsl:attribute>
                            Einkäufe in unserem Shop sind völlig sicher</h2>
                        <div class="menu_sub_box">
                            <img src="/gfx/ger/iai_security.png?r=1600678629" alt="Idosell security badge"/>
                            <p>Wir verwenden das System <b>IdoSell Shop</b>, welches den Kunden die Möglichkeit gibt, den Bestell- und Bearbeitungsvorgang zu kontrollieren. Wir schützen auch Ihre Rechte. </p>

                            <iaixsl:if test="/shop/action/shop_information/@order_link_active='y' or /shop/action/shipping_cost/@order_link_active='y' or /shop/action/payment_methods/@order_link_active='y' or /shop/action/terms/@order_link_active='y' or /shop/action/private_policy/@order_link_active='y' or /shop/action/order_cancel/@order_link_active='y'">
                                <p>
                                    Machen Sie sich bitte mit unseren
                                    <a target="_blank"><iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/terms/@url"/></iaixsl:attribute>Allgemeinen Geschäftsbedingungen</a>, <a target="_blank"><iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/private_policy/@url"/></iaixsl:attribute>Datenschutzbestimmungen </a>sowie Informationen bezüglich des 
                                    <a target="_blank"><iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/order_cancel/@url"/></iaixsl:attribute>Widerrufsrechts </a>vertraut.
                                </p>

                                <p>
                                    Hier können Sie mehr 
                                    <a target="_blank"><iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/shop_information/@url"/></iaixsl:attribute>Über uns</a> erfahren und finden Sie wichtige Informationen zu unseren <a target="_blank"><iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/shipping_cost/@url"/></iaixsl:attribute>Versandkosten</a> und 
                                    <a target="_blank"><iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/payment_methods/@url"/></iaixsl:attribute>Zahlungsbedingungen</a>.
                                </p>
                            </iaixsl:if>
                        </div>
                    </iaixsl:otherwise>
                </iaixsl:choose>
            </div>
        </iaixsl:if>
        <!--Menu hotspot w koszyku strefa 1 (menu_basketedit_hotspot_zone1, 111446.1)-->
        <iaixsl:if test="page/hotspot/products_zone1 or page/hotspot/products_zone1">

            <div class="hotspot mb-5 skeleton" id="basketedit_hotspot_zone1" data-ajaxLoad="true" data-pageType="basket">
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

        </iaixsl:if>
        
                        </div>
                    </iaixsl:if>
                </div>
             </div>

            
            <iaixsl:if test="not(action/set_render/item) or (action/set_render/item/@name = 'footer')">
                <footer>
                    <iaixsl:attribute name="class"></iaixsl:attribute>
                    <!--Buttony reklamowe (menu_buttons, 112160.1)-->
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
													<iaixsl:when test="image or image_desktop or image_tablet or image_mobile">
														<img src="/gfx/ger/loader.gif?r=1600678629">
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
													<img src="/gfx/ger/loader.gif?r=1600678629">
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
							Meine Bestellung
						</a>
						<ul class="footer_links_sub">
							<li id="order_status" class="menu_orders_item">
								<i class="icon-battery"></i>
								<a>
									<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/orderOpen/@url"/></iaixsl:attribute>
									Überprüfen Sie den Auftragsstatus
								</a>
							</li>
							<li id="order_status2" class="menu_orders_item">
								<i class="icon-truck"></i>
								<a>
									<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/orderOpen/@url"/></iaixsl:attribute>
									Track-Paket
								</a>
							</li>
							<li id="order_rma" class="menu_orders_item">
								<i class="icon-sad-face"></i>
								<a>
									<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/addRma/@url"/></iaixsl:attribute>
									Ich möchte die Ware reklamieren
								</a>
							</li>
							<li id="order_returns" class="menu_orders_item">
								<i class="icon-refresh-dollar"></i>
								<a>
									<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/addReturn/@url"/></iaixsl:attribute>
									Ich möchte die Ware zurückgeben
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
				
				<ul id="menu_account" class="footer_links col-md-4 col-sm-6 col-12">
					<li>
						<a id="menu_account_header" class=" footer_links_label">
							<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/login/@url"/></iaixsl:attribute>
							<iaixsl:attribute name="title"></iaixsl:attribute>
							Mein konto
						</a>
						<ul class="footer_links_sub">
							<iaixsl:choose>
								<iaixsl:when test="basket/@login">
									<li id="account_register" class="menu_orders_item">
										<i class="icon-user"></i>
										<a>
											<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/loginEdit/@url"/></iaixsl:attribute>
											Ihre Daten
										</a>
									</li>
								</iaixsl:when>
								<iaixsl:otherwise>
									<iaixsl:for-each select="/shop/action/registration_options/wholesale">
										<li id="account_register_wholesale" class="menu_orders_item">
											<i class="icon-wholesaler-register"></i>
											<a>
												<iaixsl:attribute name="href"><iaixsl:value-of select="@registration_url"/></iaixsl:attribute>
												Registrieren Sie sich als Großhändler
											</a>
										</li>
									</iaixsl:for-each>
									<iaixsl:for-each select="/shop/action/registration_options/retail">
										<li id="account_register_retail" class="menu_orders_item">
											<i class="icon-register-card"></i>
											<a>
												<iaixsl:attribute name="href"><iaixsl:value-of select="@registration_url"/></iaixsl:attribute>
												Registrieren
											</a>
										</li>
									</iaixsl:for-each>
								</iaixsl:otherwise>
							</iaixsl:choose>
							<li id="account_orders" class="menu_orders_item">
								<i class="icon-menu-lines"></i>
								<a>
									<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/clientOrders/@url"/></iaixsl:attribute>
									Meine Bestellungen
								</a>
							</li>
							<li id="account_boughts" class="menu_orders_item">
								<i class="icon-menu-lines"></i>
								<a>
									<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/productsBought/@url"/></iaixsl:attribute>
									Liste der gekauften Waren
								</a>
							</li>
							<li id="account_basket" class="menu_orders_item">
								<i class="icon-basket"></i>
								<a>
									<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/basket/@url"/></iaixsl:attribute>
									Warenkorb
								</a>
							</li>
							<li id="account_observed" class="menu_orders_item">
								<i class="icon-star-empty"></i>
								<a>
									<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/observed/@url"/></iaixsl:attribute>
									Wunschliste
								</a>
							</li>
							<li id="account_history" class="menu_orders_item">
								<i class="icon-clock"></i>
								<a>
									<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/clientOrders/@url"/></iaixsl:attribute>
									Transaktionsverlauf
								</a>
							</li>
							<li id="account_rebates" class="menu_orders_item">
								<i class="icon-scissors-cut"></i>
								<a>
									<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/clientRebate/@url"/></iaixsl:attribute>
									Ihre Rabatte
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
						<li><span class="footer_links_label">Informationen</span>
							<ul class="footer_links_sub">
								<iaixsl:if test="/shop/action/shop_information/@order_link_active='y' and not(/shop/action/shop_information/@url = '')">
									<li>
										<a>
											<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/shop_information/@url"/></iaixsl:attribute>
											Impressum
										</a>
									</li>
								</iaixsl:if>
								<iaixsl:if test="/shop/action/shipping_cost/@order_link_active='y' and not(/shop/action/shipping_cost/@url = '')">
									<li>
										<a>
											<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/shipping_cost/@url"/></iaixsl:attribute>
											Versandinformationen
										</a>
									</li>
								</iaixsl:if>
								<iaixsl:if test="/shop/action/payment_methods/@order_link_active='y' and not(/shop/action/payment_methods/@url = '')">
									<li>
										<a>
											<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/payment_methods/@url"/></iaixsl:attribute>
											Zahlungsbedingungen
										</a>
									</li>
								</iaixsl:if>
								<iaixsl:if test="/shop/action/terms/@order_link_active='y' and not(/shop/action/terms/@url = '')">
									<li>
										<a>
											<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/terms/@url"/></iaixsl:attribute>
											AGB
										</a>
									</li>
								</iaixsl:if>
								<iaixsl:if test="/shop/action/private_policy/@order_link_active='y' and not(/shop/action/private_policy/@url = '')">
									<li>
										<a>
											<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/private_policy/@url"/></iaixsl:attribute>
											Datenschutz
										</a>
									</li>
								</iaixsl:if>
								<iaixsl:if test="/shop/action/order_cancel/@order_link_active='y' and not(/shop/action/order_cancel/@url = '')">
									<li>
										<a>
											<iaixsl:attribute name="href"><iaixsl:value-of select="/shop/action/order_cancel/@url"/></iaixsl:attribute>
											Widerrufsbelehrung
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
                                                        <img src="/gfx/ger/loader.gif?r=1600678629">
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
                                                    <img src="/gfx/ger/loader.gif?r=1600678629">
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
                                <h2>Bestellung bearbeiten </h2>

                                <strong>
                                    Sie befinden sich im Bearbeiten-Modus der angelegten Bestellung. Um die Bestellung zu ändern, müssen Sie alle Schritte der Bestellung folgen. Wenn Sie nicht durch alle Schritte der Bestellung folgen, verändert sich die zuvor erteilte Bestellung nicht.
                                </strong>
                                <div class="menu_notice_button">
                                    <button onclick="$('#dialog_close').click();" class="btn --solid menu_notice_button">
                                        Fenster schließen
                                    </button>
                                </div>
                                <div class="clearboth"/>
                            </div>

                        </iaixsl:when>


                        <iaixsl:when test="/shop/action_alert/@type = 'order_edit_auction'">

                            <div id="menu_notice">
                                <h2>Bestellung bearbeiten </h2>

                                <strong>
                                    Sie befinden sich im Bearbeiten-Modus der angelegten Bestellung. Sie können das Element, um eine andere zu ersetzen innerhalb der gleichen Gruppe (z.B. andere Farbe oder Größe) oder fügen Sie mehr Waren hinzu, um die Bestellung zu erhöhen. Um die Bestellung zu ändern müssen Sie alle Schritte der Bestellung folgen.
                                </strong>
                                <div class="menu_notice_button">

                                    <button onclick="$('#dialog_close').click();" class="btn --solid menu_notice_button">
                                        Fenster schließen
                                    </button>
                                </div>
                                <div class="clearboth"/>
                            </div>

                        </iaixsl:when>


                        <iaixsl:when test="/shop/action_alert/@type = 'order1'">

                            <div id="menu_notice">
                                <h2>Bestellung bearbeiten </h2>

                                <strong>
                                    Sie befinden sich im Bearbeiten-Modus der angelegten Bestellung. Die vorher ausgewählte Versand- und Zahlungseinstellungen sind markiert. Sie können sie ändern. Um die Bestellung zu ändern müssen Sie alle Schritte der Bestellung folgen.
                                </strong>
                                <div class="menu_notice_button">

                                    <button onclick="$('#dialog_close').click();" class="btn --solid menu_notice_button">
                                        Fenster schließen
                                    </button>
                                </div>
                                <div class="clearboth"/>
                            </div>

                        </iaixsl:when>



                        <iaixsl:when test="/shop/page/@type = 'order2'">
                            <div id="menu_notice">
                                <h2>Bestellung bearbeiten </h2>

                                <strong>
                                    Überprüfen Sie, ob Ihre Bestellung jetzt korrekt ist. Falls ja, klicken Sie bitte auf die Schaltfläche Bestellung ändern, um die Änderungen zu übernehmen. Falls nein, kehren Sie zum Warenkorb zurück und wiederholen Sie den gesamten Vorgang.
                                </strong>
                                <div class="menu_notice_button">

                                    <button onclick="$('#dialog_close').click();" class="btn --solid menu_notice_button">
                                        Fenster schließen
                                    </button>
                                </div>
                                <div class="clearboth"/>
                            </div>

                        </iaixsl:when>


                        <iaixsl:when test="/shop/page/@type = 'order-wrappers'">
                            <div id="menu_notice">
                                <h2>Bestellung bearbeiten </h2>

                                <strong>
                                    In diesem Bearbeitungsschritt können Sie eine Verpackung auswählen. Um die Änderungen übernehmen zu können, müssen Sie alle Schritte der Bestellvorgangs erneut durchlaufen.
                                </strong>
                                <div class="menu_notice_button">

                                    <button onclick="$('#dialog_close').click();" class="btn --solid menu_notice_button">
                                        Fenster schließen
                                    </button>
                                </div>
                                <div class="clearboth"/>
                            </div>

                        </iaixsl:when>


                        <iaixsl:when test="/shop/action_alert/@type = 'add_basket'">

                            <div id="menu_notice">
                                <h2>Bestellung bearbeiten </h2>

                                <strong>
                                    Sie haben den Inhalt Ihres Warenkorbs geändert. Bitte denken Sie daran, dass Sie alle Schritte des Bestellvorgangs erneut durchlaufen müssen, um diese Änderungen zu übernehmen.
                                </strong>
                                <div class="menu_notice_button">

                                    <button onclick="$('#dialog_close').click();" class="btn --solid menu_notice_button">
                                        Fenster schließen
                                    </button>
                                </div>
                                <div class="clearboth"/>
                            </div>

                        </iaixsl:when>



                        <iaixsl:when test="/shop/action_alert/@type = 'change_basket'">

                            <div id="menu_notice">
                                <h2>Bestellung bearbeiten </h2>

                                <strong>
                                    Sie haben den Inhalt Ihres Warenkorbs geändert. Bitte denken Sie daran, dass Sie alle Schritte des Bestellvorgangs erneut durchlaufen müssen, um diese Änderungen zu übernehmen.
                                </strong>
                                <div class="menu_notice_button">

                                    <button onclick="$('#dialog_close').click();" class="btn --solid menu_notice_button">
                                        Fenster schließen
                                    </button>
                                </div>
                                <div class="clearboth"/>
                            </div>

                        </iaixsl:when>


                        <iaixsl:when test="page/projector/product/exchange/@exchange_id">

                            <div id="menu_notice">
                                <h2>Bestellung bearbeiten </h2>

                                <strong>
                                    Sie können das Produkt in Ihrem Warenkorb ersetzen, zum Beispiel die Farbe oder Größe der gleichen Ware wechseln, und das System wird es automatisch mit dem ausgewählten Produkt ersetzen.
                                </strong>
                                <div class="menu_notice_button">

                                    <button onclick="$('#dialog_close').click();" class="btn --solid menu_notice_button">
                                        Fenster schließen
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
                    <h2>Lage</h2>
                </div>
                <div id="xpress_zipcode">
                    <p class="col-md-12">Geben Sie eine Postleitzahl Zustelladresse</p>
                    <div class="form-group">
                        <div class="has-feedback has-required col-md-12 col-xs-12">
                            <input id="xpress_zipcode" class="form-control validate" name="client_zipcode" data-validation="client_zipcode" data-validation-url="/ajax/client-new.php?validAjax=true" data-serialize="data-region" value="" required="required" type="text" data-region="client_region=1143020003">
                                <iaixsl:attribute name="placeholder">Postleitzahl</iaixsl:attribute>
                            </input>
                            <span class="form-control-feedback"/>
                        </div>
                    </div>
                    <div class="xpress_button_sub col-md-12"><a id="xpress_zipcode_submit" class="btn --solid">OK</a></div>
                    <p class="col-md-12"> oder den Standort gemeinsam nutzen, so dass wir, ob dieser Ort für Expresslieferungen bestimmen können zur Verfügung steht.</p>
                    <div class="xpress_button_sub col-md-12"><a id="xpress_zipcode_geolocation" class="btn --solid">Aktie Position</a></div>
                </div>
            </div>
            <div id="xpress_toplayer_error">
                <div class="header_wrapper col-md-12">
                    <h2>Lage</h2>
                </div>
                <div id="xpress_zipcode">
                    <p class="col-md-12">Es tut uns leid, aber unser Express-Kurier hat diesen Bereich nicht unterstützen.</p>
                    <p class="col-md-12">Ihre Bestellung wird in der Standardzeit geliefert werden, und den Kurier wählt bei der Bestellung.</p>
                    <div class="xpress_button_sub col-md-12"><a id="express_close_dialog" href="#" class="btn --solid">OK</a></div>
                </div>
            </div>
        </iaixsl:if>

        <iaixsl:if test="/shop/page/@type = 'prepaid'">
            <div id="menu_preloader" class="menu_preolader_2">
                <div id="menu_notice">
                    <h2>Bestellung stornieren</h2>
                    <strong></strong>
                    <div class="menu_notice_button">
                        <button class="btn --solid prepaid_cancel" onclick="$('#dialog_close').click();">
                            Fenster schließen
                        </button>
                        <button class="btn --solid  prepaid_confirm">
                            Bestellung stornieren
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
                    </iaixsl:when>
                    <iaixsl:otherwise>
                        <script><iaixsl:attribute name="src">/gfx/<iaixsl:value-of select="language/@id"/>/shop.js.gzip?r=1600678629</iaixsl:attribute></script>
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