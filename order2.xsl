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
		            <div class="form-group">
		                <input id="menu_search_text" type="text" name="text">
			                <iaixsl:attribute name="class">catcomplete</iaixsl:attribute>
			                <iaixsl:attribute name="placeholder">Wpisz czego szukasz</iaixsl:attribute>
		                    
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
            <div class="bottom-header-custom">
            <div class="replaceMe"></div>
           
            </div>

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
                    <div class="row px-0 mb-3 col-12 menu_not_main_wrapper">
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

        <!--CMS na stronie Order2 (order2_cms, 58336.1)-->
        <iaixsl:if test="page/order2/text/body">
    
            <div class="order2_cms">
                <div class="order2_cms_sub">
                          <iaixsl:attribute name="class">order2_cms_sub cm</iaixsl:attribute>

                        <iaixsl:value-of disable-output-escaping="yes" select="page/order2/text/body"/>
                    </div>
              
            </div>
        </iaixsl:if>
        <!--Potwierdzenie zamówienia (order2, 113475.1)-->
				<iaixsl:variable name="txt_60826_advance_a">Wymagana zaliczka:</iaixsl:variable>
				<iaixsl:variable name="wholesalerPrice2">true</iaixsl:variable>
				<iaixsl:variable name="txt_68638_rpoz">Jeśli opłacisz zamówienia przez </iaixsl:variable>
				<iaixsl:variable name="order_edit_button">Zmień zamówienie</iaixsl:variable>
				<iaixsl:variable name="hours_68242"> godz.</iaixsl:variable>
				<iaixsl:variable name="immediately_txt">Zamówienie będzie gotowe do odbioru natychmiast po przyjęciu zamówienia </iaixsl:variable>
				<iaixsl:variable name="n68313_order2_document_invoice"> Rachunek</iaixsl:variable>
				<iaixsl:variable name="n68313_order2_document_e_invoice">Fakturę w formie elektronicznej</iaixsl:variable>
				<iaixsl:variable name="returns_agree_control"></iaixsl:variable>
				<iaixsl:variable name="b2b_mask"></iaixsl:variable>

				<script>
						var only_virtual = '<iaixsl:value-of select="page/order2/@only-virtual"/>';
				</script>

				<div class="n57856_order_overtaker">
						<form class="order2_form">
								<iaixsl:attribute name="action"><iaixsl:value-of select="page/order2/@url"/></iaixsl:attribute>
								<iaixsl:choose>
										<iaixsl:when test="page/order2/@navigation ='order'">
												<iaixsl:attribute name="method">post</iaixsl:attribute>
										</iaixsl:when>
										<iaixsl:when test="page/order2/@navigation ='next'">
												<iaixsl:attribute name="method">get</iaixsl:attribute>
										</iaixsl:when>
										<iaixsl:otherwise>
												<iaixsl:attribute name="method">post</iaixsl:attribute>
										</iaixsl:otherwise>
								</iaixsl:choose>
								<div class="big_label order2_info_label">
										<span class="n57856_label" id="labels">Weryfikacja danych:
										</span>
								</div>

								<div class="order2_info">
                    <iaixsl:if test="/shop/page/order2/payer_address">
                        <iaixsl:attribute name="class">order2_info --invoice</iaixsl:attribute>
                    </iaixsl:if>
										<div class="order2_info_sub" id="order2_info_sub1">
												<div class="order2_info_label_sub">
														<h3 class="order2_info1" id="order2_nagl_1">
																Dane zamawiającego:
														</h3>
														<a class="order2_button_change_mobile d-sm-none">
																<iaixsl:attribute name="href"><iaixsl:value-of select="page/order2/orderclient/@changelink"/></iaixsl:attribute>
																Edytuj
														</a>
												</div>

												<div class="order2_info1" id="order2_box_1">
														<div class="order2_info1_sub">
																<iaixsl:if test="page/order2/orderclient/@firm">
																		<iaixsl:value-of select="page/order2/orderclient/@firm"/><br/>
																</iaixsl:if>
																<iaixsl:if test="not(page/order2/orderclient/@firm)">
																		<iaixsl:value-of select="page/order2/orderclient/@firstname"/><iaixsl:text> </iaixsl:text>
																		<iaixsl:value-of select="page/order2/orderclient/@lastname"/><br/>
																</iaixsl:if>
																<iaixsl:value-of select="page/order2/orderclient/@street"/><br/>
																<iaixsl:value-of select="page/order2/orderclient/@zipcode"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="page/order2/orderclient/@city"/> (<iaixsl:if test="page/order2/orderclient/@province"><iaixsl:value-of select="page/order2/orderclient/@province"/><iaixsl:text>, </iaixsl:text></iaixsl:if><iaixsl:value-of select="page/order2/orderclient/@country_long"/>)<br/>
																<iaixsl:if test="page/order2/orderclient/@nip">
																		NIP: <iaixsl:value-of select="page/order2/orderclient/@nip"/><br/>
																</iaixsl:if>
																<iaixsl:if test="(page/order2/orderclient/@phone1) and not(page/order2/orderclient/@phone1 = '')">
																		telefon: <iaixsl:value-of select="page/order2/orderclient/@phone1"/><br/>
																</iaixsl:if>
																<iaixsl:if test="(page/order2/orderclient/@email) and not(page/order2/orderclient/@email = '')">
																		e-mail: <iaixsl:value-of select="page/order2/orderclient/@email"/><br/>
																</iaixsl:if>

														</div>
														<a class="order2_button_change d-none d-sm-inline-block">
																<iaixsl:attribute name="href"><iaixsl:value-of select="page/order2/orderclient/@changelink"/></iaixsl:attribute>
																Zmień dane zamawiającego
														</a>


												</div>
										</div>
										<div class="order2_info_sub" id="order2_info_sub2">
												<iaixsl:choose>
														<iaixsl:when test="page/order2/stock">

																<div class="order2_info_label_sub">
																		<h3 class="order2_info1" id="order2_nagl_2a">
																				Punkt odbioru zamówienia:
																		</h3>
																		<iaixsl:if test="/shop/page/order2/stock/@other_stocks='true'">
																				<a class="order2_button_change_stock_mobile d-sm-none">
																						<iaixsl:attribute name="href"><iaixsl:value-of select="page/order2/stock/@change_link"/></iaixsl:attribute>
																						Edytuj
																				</a>
																		</iaixsl:if>
																</div>

																<div class="order2_info1" id="order2_box_2b">
																		<div class="order2_info1_sub"><p>
																				<span class="order2_stock_name"><iaixsl:value-of select="page/order2/stock/@name"/></span>
																				<iaixsl:value-of select="page/order2/stock/@street"/><br/>
																				<iaixsl:value-of select="page/order2/stock/@zipcode"/><iaixsl:text> </iaixsl:text>
																				<iaixsl:value-of select="page/order2/stock/@city"/> (<iaixsl:if test="page/order2/stock/@province"><iaixsl:value-of select="page/order2/stock/@province"/><iaixsl:text>, </iaixsl:text></iaixsl:if><iaixsl:value-of select="page/order2/stock/@country"/>)<br/></p>
																		</div>
																		<iaixsl:if test="not(/shop/page/order2/stock/@link = '')">
																				<div class="order2_moreinfo">
																						<a class="order2_stock_moreinfo" target="_blank">
																								<iaixsl:attribute name="href"><iaixsl:value-of select="page/order2/stock/@link"/></iaixsl:attribute>
																								Więcej informacji
																						</a>
																				</div>
																		</iaixsl:if>
																		<iaixsl:if test="/shop/page/order2/stock/@other_stocks='true'">
																				<a class="order2_button_change_stock d-none d-sm-inline-block">
																						<iaixsl:attribute name="href"><iaixsl:value-of select="page/order2/stock/@change_link"/></iaixsl:attribute>
																						Zmień punkt odbioru
																				</a>
																		</iaixsl:if>
																</div>
														</iaixsl:when>
														<iaixsl:otherwise>
																<div class="order2_info_label_sub">
																		<h3 class="order2_info1" id="order2_nagl_2b">
																				Adres dostawy:
																		</h3>
																		<a class="order2_button_change_address_mobile d-sm-none">
																				<iaixsl:attribute name="href"><iaixsl:value-of select="page/order2/deliveryaddress/@changelink"/></iaixsl:attribute>
																				Edytuj
																		</a>
																</div>
																<div class="order2_info1" id="order2_box_2b">
																		<div class="order2_info1_sub">
																				
																				<iaixsl:if test="page/order2/deliveryaddress/@additional">
																						<iaixsl:value-of select="page/order2/deliveryaddress/@additional"/><br/>
																				</iaixsl:if>

																				
																				<iaixsl:value-of select="page/order2/deliveryaddress/@firstname"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="page/order2/deliveryaddress/@lastname"/><br/>
																				<iaixsl:value-of select="page/order2/deliveryaddress/@street"/><br/>
																				<iaixsl:value-of select="page/order2/deliveryaddress/@zipcode"/><iaixsl:text> </iaixsl:text>
																				<iaixsl:value-of select="page/order2/deliveryaddress/@city"/> (<iaixsl:if test="page/order2/deliveryaddress/@province"><iaixsl:value-of select="page/order2/deliveryaddress/@province"/><iaixsl:text>, </iaixsl:text></iaixsl:if><iaixsl:value-of select="page/order2/deliveryaddress/@country_long"/>)<br/>

																				<iaixsl:if test="page/order2/deliveryaddress/@phone and page/order2/deliveryaddress/@phone != ''">
																						telefon: <iaixsl:value-of select="page/order2/deliveryaddress/@phone"/><br/>
																				</iaixsl:if>

																		</div>
																		<a class="order2_button_change_address d-none d-sm-inline-block">
																				<iaixsl:attribute name="href"><iaixsl:value-of select="page/order2/deliveryaddress/@changelink"/></iaixsl:attribute>
																				Zmień punkt dostawy
																		</a>
																</div>
														</iaixsl:otherwise>
												</iaixsl:choose>
										</div>

										<div class="order2_info_sub" id="order2_info_sub3">
												<div class="order2_info_label_sub">
														<h3 class="order2_info1" id="order2_nagl_1">
																Dane odbiorcy:
														</h3>
														<a class="order2_button_change2_mobile d-sm-none">
																<iaixsl:attribute name="href"><iaixsl:value-of select="page/order2/orderclient/@changelink"/></iaixsl:attribute>
																Edytuj
														</a>
												</div>
												<div class="order2_info1" id="order2_box_3">

														<div class="order2_info1_sub">

																<iaixsl:choose>

																		<iaixsl:when test="page/order2/deliveryaddress/@lastname">
																				<iaixsl:value-of select="page/order2/deliveryaddress/@firstname"/><iaixsl:text> </iaixsl:text>
																				<iaixsl:value-of select="page/order2/deliveryaddress/@lastname"/><br/>
																		</iaixsl:when>

																		<iaixsl:otherwise>
																				<iaixsl:if test="page/order2/orderclient/@firm">
																						<iaixsl:value-of select="page/order2/orderclient/@firm"/><br/>
																				</iaixsl:if>

																				<iaixsl:if test="not(page/order2/orderclient/@firm)">
																						<iaixsl:value-of select="page/order2/orderclient/@firstname"/><iaixsl:text> </iaixsl:text>
																						<iaixsl:value-of select="page/order2/orderclient/@lastname"/><br/>
																				</iaixsl:if>
																		</iaixsl:otherwise>
																</iaixsl:choose>

																<iaixsl:value-of select="page/order2/deliveryaddress/@street"/><br/>
																<iaixsl:value-of select="page/order2/deliveryaddress/@zipcode"/><iaixsl:text> </iaixsl:text>
																<iaixsl:value-of select="page/order2/deliveryaddress/@city"/> (<iaixsl:if test="page/order2/deliveryaddress/@province"><iaixsl:value-of select="page/order2/deliveryaddress/@province"/><iaixsl:text>, </iaixsl:text></iaixsl:if><iaixsl:value-of select="page/order2/deliveryaddress/@country_long"/>)<br/>


																<iaixsl:choose>
																		<iaixsl:when test="(not((page/order2/deliveryaddress/@phone) = (page/order2/orderclient/@phone1))) and (not(page/order2/deliveryaddress/@phone = ''))">
																				telefon:
																				<iaixsl:value-of select="page/order2/deliveryaddress/@phone"/><br/>
																		</iaixsl:when>

																		<iaixsl:otherwise>
																				<iaixsl:if test="(page/order2/orderclient/@phone1) and not(page/order2/orderclient/@phone1 = '')">
																						telefon: <iaixsl:value-of select="page/order2/orderclient/@phone1"/><br/>
																				</iaixsl:if>
																		</iaixsl:otherwise>
																</iaixsl:choose>



														</div>
														<a class="order2_button_change2 d-none d-sm-inline-block">
																<iaixsl:attribute name="href"><iaixsl:value-of select="page/order2/orderclient/@changelink"/></iaixsl:attribute>
																Zmień dane odbiorcy
														</a>

												</div>
										</div>

                    <iaixsl:if test="/shop/page/order2/payer_address">
                        <div class="order2_info_sub" id="order2_info_sub5">
                            <div class="order2_info_label_sub">
                                <h3 class="order2_info1" id="order2_nagl_1">
                                    Dane na fakturze:
                                </h3>
                                <a class="order2_button_change2_mobile d-sm-none">
                                    <iaixsl:attribute name="href"><iaixsl:value-of select="page/order2/orderclient/@changelink"/></iaixsl:attribute>
                                    Edytuj
                                </a>
                            </div>
                            <div class="order2_info1" id="order2_box_5">

                                <div class="order2_info1_sub">
																	<iaixsl:if test="page/order2/payer_address/@firm">
																			<iaixsl:value-of select="page/order2/payer_address/@firm"/><br/>
																	</iaixsl:if>
																	<iaixsl:if test="not(page/order2/payer_address/@firm)">
																			<iaixsl:value-of select="page/order2/payer_address/@firstname"/><iaixsl:text> </iaixsl:text>
																			<iaixsl:value-of select="page/order2/payer_address/@lastname"/><br/>
																	</iaixsl:if>
																	<iaixsl:value-of select="page/order2/payer_address/@street"/><br/>
																	<iaixsl:value-of select="page/order2/payer_address/@zipcode"/><iaixsl:text> </iaixsl:text><iaixsl:value-of select="page/order2/payer_address/@city"/> (<iaixsl:if test="page/order2/payer_address/@province"><iaixsl:value-of select="page/order2/payer_address/@province"/><iaixsl:text>, </iaixsl:text></iaixsl:if><iaixsl:value-of select="page/order2/payer_address/@country_long"/>)<br/>
																	<iaixsl:if test="page/order2/payer_address/@nip">
																			NIP: <iaixsl:value-of select="page/order2/payer_address/@nip"/><br/>
																	</iaixsl:if>
																	<iaixsl:if test="(page/order2/payer_address/@phone) and not(page/order2/payer_address/@phone = '')">
																			telefon: <iaixsl:value-of select="page/order2/payer_address/@phone"/><br/>
																	</iaixsl:if>
																	<iaixsl:if test="(page/order2/payer_address/@email) and not(page/order2/payer_address/@email = '')">
																			e-mail: <iaixsl:value-of select="page/order2/payer_address/@email"/><br/>
																	</iaixsl:if>
                                </div>
                                <a class="order2_button_change2 d-none d-sm-inline-block">
                                    <iaixsl:attribute name="href"><iaixsl:value-of select="page/order2/orderclient/@changelink"/></iaixsl:attribute>
                                    Zmień dane na fakturze
                                </a>

                            </div>
                        </div>
                    </iaixsl:if>

								</div>

								<iaixsl:if test="/shop/page/order2/personal_data_processing_texts/email">

										<div class="email_processing_consent">
												<label class="email_processing_consent">
														<input type="checkbox" name="email_processing_consent" value="yes" class="css-checkbox">
																<iaixsl:if test="(/shop/page/order2/personal_data_processing_texts/email/@checked = 'true')">
																		<iaixsl:attribute name="checked">checked</iaixsl:attribute>
																</iaixsl:if>
														</input>
														<i class="css-label"/>
														<span>
																<iaixsl:value-of disable-output-escaping="yes" select="/shop/page/order2/personal_data_processing_texts/email"/>
														</span>
												</label>
										</div>

								</iaixsl:if>

								<div class="order2_info">

										<div id="order2_info_sub4">
											<div class="order2_info_label_sub">
												<h3 class="order2_info1" id="order2_headline_invoice">
														Chcę otrzymać:
												</h3>
											</div>
												<div class="order2_info1" id="order2_box_4">
														<div class="order2_info1_sub">
																<input type="hidden" name="checkinvoice" value="true"/>

																<div class="order2__invoice_group f-group --radio">
																	<input type="radio" class="order2__invoice_input f-control" name="invoice" id="order2_document_confirmation" value="0">
																		<iaixsl:if test="(page/order2/orderinvoice/@request = '0' and not($b2b_mask) and not(page/order2/orderclient/@firm)) or (not(page/order2/orderinvoice/@request = '0') and not(page/order2/orderclient/@firm) and not($b2b_mask))">
																				<iaixsl:attribute name="checked">checked</iaixsl:attribute>
																		</iaixsl:if>
																	</input>
																	<label for="order2_document_confirmation" class="order2__invoice_label f-label">
																		Potwierdzenie zakupu
																	</label>
																</div>

																
																<iaixsl:if test="page/order2/orderinvoice/@e_invoice='true' and $n68313_order2_document_e_invoice">
																	<div class="order2__invoice_group f-group --radio">
																		<input type="radio" class="order2__invoice_input f-control" name="invoice" id="order2_document_e_invoice" value="2">
																			<iaixsl:if test="((page/order2/orderclient/@firm) and (page/order2/orderclient/@firm != '')) or not(page/order2/orderinvoice/@request = '0') or $b2b_mask">
																					<iaixsl:attribute name="checked">checked</iaixsl:attribute>
																			</iaixsl:if>
																		</input>
																		<label for="order2_document_e_invoice" class="order2__invoice_label f-label">
																			Fakturę w formie elektronicznej
																		</label>
																	</div>
																	<div id="e-invoice_dialog">
																			<span class="big_label">Elektroniczne dostarczanie faktur</span>
																			<div>
																					<span class="e-invoice_dialog"><font>Chroń środowisko</font>i przyspiesz otrzymanie faktury</span>
																					<p>W trosce o środowisko oraz Twoją wygodę dajemy Ci możliwość wyboru elektronicznej wysyłki faktur. Teraz szybko i bezpiecznie możesz otrzymywać faktury na swoją skrzynkę mailową. Elektroniczne dostarczanie faktur jest cyfrowym odpowiednikiem faktury papierowej. Zawiera dokładnie te same dane i ma taką samą wartość prawną jak tradycyjny dokument w formie papierowej. Korzystanie z faktury przekazanej w formie elektronicznej jest bezpłatne.</p>
																					<button class="btn --solid --medium">Tak, chcę otrzymać fakturę elektronicznie</button>
																			</div>
																	</div>
																</iaixsl:if>
																<div class="order2__invoice_group f-group --radio">
																	<input type="radio" class="order2__invoice_input f-control" name="invoice" id="order2_document_invoice" value="1">
																		<iaixsl:if test="not(page/order2/orderinvoice/@e_invoice='true') and (page/order2/orderinvoice/@request = '1' or (page/order2/orderclient/@firm) and (page/order2/orderclient/@firm != '') and not(page/order2/orderinvoice/@e_invoice='true'))">
																				<iaixsl:attribute name="checked">checked</iaixsl:attribute>
																		</iaixsl:if>
																	</input>
																	<label for="order2_document_invoice" class="order2__invoice_label f-label">
																		<iaixsl:choose>
																			<iaixsl:when test="/shop/contact/owner/@vat_registered = 'false' and $n68313_order2_document_invoice !=''">
																				<iaixsl:value-of select="$n68313_order2_document_invoice"/>
																			</iaixsl:when>
																			<iaixsl:otherwise>
																				Fakturę drukowaną
																			</iaixsl:otherwise>
																		</iaixsl:choose>
																	</label>
																</div>
														</div>
												</div>
										</div>
								</div>

								<div class="order2_info_sub">
									<div class="order2_info_label_sub">
										<h3 class="order2_info1">
												Dodatkowe informacje:
										</h3>
									</div>
										<div class="order2_info1" id="order2_box_7">
												<div class="order2_info1_sub">
														
														<div class="basketedit_summary_shipment_time">
																<iaixsl:if test="/shop/basket/delay_time/@unknown_delivery_time = 'true'">
																		<iaixsl:attribute name="style">display:none;</iaixsl:attribute>
																</iaixsl:if>
																<iaixsl:if test="/shop/basket/delivery_time/@days and not(basket/@shipping_undefined = 'true')">
																		

																		<iaixsl:variable name="wys_1_68242">dzisiaj</iaixsl:variable>

																		<iaixsl:if test="not((/shop/page/order2/orderdetails/@deliveryid = '0-0') or (/shop/page/order2/orderdetails/@deliveryid = '0-1')) and $wys_1_68242 and (/shop/basket/shipping_time/@week_amount) and (/shop/basket/shipping_time/@week_amount = 0) and (/shop/basket/shipping_time/@week_day)">
																				<div class="shipping_time_order1">

																					<span>
																						Zamówienie będzie gotowe do wysłania 

																						<strong>
																							<iaixsl:choose>
																									<iaixsl:when test="/shop/basket/shipping_time/@today = 'true'">
																											dzisiaj
																									</iaixsl:when>
																									<iaixsl:when test="/shop/basket/shipping_time/@week_day = 1">
																											w poniedziałek
																									</iaixsl:when>
																									<iaixsl:when test="/shop/basket/shipping_time/@week_day = 2">
																											we wtorek
																									</iaixsl:when>
																									<iaixsl:when test="/shop/basket/shipping_time/@week_day = 3">
																											w środę
																									</iaixsl:when>
																									<iaixsl:when test="/shop/basket/shipping_time/@week_day = 4">
																											w czwartek
																									</iaixsl:when>
																									<iaixsl:when test="/shop/basket/shipping_time/@week_day = 5">
																											w piątek
																									</iaixsl:when>
																									<iaixsl:when test="/shop/basket/shipping_time/@week_day = 6">
																											w sobotę
																									</iaixsl:when>
																									<iaixsl:when test="/shop/basket/shipping_time/@week_day = 7">
																											w niedzielę
																									</iaixsl:when>
																							</iaixsl:choose>
																						</strong>
																					</span>
																				</div>

																		</iaixsl:if>

																		<div class="delivery_time_order">
																			<span>
																				<iaixsl:choose>
																						<iaixsl:when test="(/shop/page/order2/orderdetails/@deliveryid = '0-0') or (/shop/page/order2/orderdetails/@deliveryid = '0-1')">
																								<iaixsl:choose>
																										<iaixsl:when test="$immediately_txt and (/shop/basket/delivery_time/@days = 0) and (/shop/basket/delivery_time/@hours = 0) and (/shop/basket/delivery_time/@minutes = 0)">
																												<iaixsl:value-of select="$immediately_txt"/>
																										</iaixsl:when>
																										<iaixsl:otherwise>
																												Odbierz zamówienie 
																										</iaixsl:otherwise>
																								</iaixsl:choose>
																						</iaixsl:when>
																						<iaixsl:when test="$wys_1_68242  and (/shop/basket/delivery_time/@week_amount)  and  (/shop/basket/delivery_time/@week_amount = 0) and (/shop/basket/delivery_time/@hours = 0) and (/shop/basket/delivery_time/@minutes = 0)">
																								Przesyłka powinna być u Ciebie 
																						</iaixsl:when>
																						<iaixsl:when test="/shop/page/order2/orderremarks/@select_date and (/shop/page/order2/orderremarks/@select_date != '')">
																								Przesyłka będzie dostarczona w dniu 
																						</iaixsl:when>
																						<iaixsl:otherwise>
																								Przesyłka będzie u Ciebie 
																						</iaixsl:otherwise>
																				</iaixsl:choose>

																				<iaixsl:choose>
																						<iaixsl:when test="/shop/page/order2/orderremarks/@select_date and (/shop/page/order2/orderremarks/@select_date != '')">
																								<strong><iaixsl:value-of select="/shop/page/order2/orderremarks/@select_date"/><iaixsl:if test="/shop/page/order2/orderremarks/@select_time and (/shop/page/order2/orderremarks/@select_time != '')">,  <iaixsl:value-of select="/shop/page/order2/orderremarks/@select_time"/></iaixsl:if></strong>
																						</iaixsl:when>


																						<iaixsl:when test="$wys_1_68242  and (/shop/basket/delivery_time/@week_amount)  and (/shop/basket/delivery_time/@week_amount = 0) and (/shop/basket/delivery_time/@week_day)">

																							<strong>
																								<iaixsl:choose>
																										<iaixsl:when test="/shop/basket/delivery_time/@week_day = 0">
																												<iaixsl:value-of select="$wys_1_68242"/>
																										</iaixsl:when>
																										<iaixsl:when test="/shop/basket/delivery_time/@week_day = 1">
																												w poniedziałek
																										</iaixsl:when>
																										<iaixsl:when test="/shop/basket/delivery_time/@week_day = 2">
																												we wtorek
																										</iaixsl:when>
																										<iaixsl:when test="/shop/basket/delivery_time/@week_day = 3">
																												w środę
																										</iaixsl:when>
																										<iaixsl:when test="/shop/basket/delivery_time/@week_day = 4">
																												w czwartek
																										</iaixsl:when>
																										<iaixsl:when test="/shop/basket/delivery_time/@week_day = 5">
																												w piątek
																										</iaixsl:when>
																										<iaixsl:when test="/shop/basket/delivery_time/@week_day = 6">
																												w sobotę
																										</iaixsl:when>
																										<iaixsl:when test="/shop/basket/delivery_time/@week_day = 7">
																												w niedzielę
																										</iaixsl:when>
																								</iaixsl:choose>
																							</strong>

																						</iaixsl:when>


																						<iaixsl:when test="(/shop/basket/delivery_time/@days = 0) and (/shop/basket/delivery_time/@hours = 0) and (/shop/basket/delivery_time/@minutes = 0)">
																								 24h.
																						</iaixsl:when>

																						<iaixsl:otherwise>
																								<iaixsl:if test="/shop/basket/delivery_time/@days > 0">
																										w ciągu 
																										<strong><iaixsl:value-of select="/shop/basket/delivery_time/@days"/>
																										<iaixsl:choose>
																												<iaixsl:when test="/shop/basket/delivery_time/@days ='1'">
																														<iaixsl:choose><iaixsl:when test="(/shop/page/order2/orderdetails/@deliveryid = '0-0') or (/shop/page/order2/orderdetails/@deliveryid = '0-1')"></iaixsl:when><iaixsl:otherwise> dnia </iaixsl:otherwise></iaixsl:choose>
																												</iaixsl:when>
																												<iaixsl:otherwise>
																														 dni 
																												</iaixsl:otherwise>
																										</iaixsl:choose></strong>
																								</iaixsl:if>

																							<strong>
																								<iaixsl:choose>
																										<iaixsl:when test="$hours_68242">
																												<iaixsl:if test="/shop/basket/delivery_time/@hours > 0">
																														<iaixsl:value-of select="/shop/basket/delivery_time/@hours"/>
																														<iaixsl:choose>
																																<iaixsl:when test="/shop/basket/delivery_time/@hours > 1">
																																		<iaixsl:value-of select="$hours_68242"/>
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

																								<iaixsl:if test="not(/shop/basket/delivery_time/@hours > 0)">
																										
																								</iaixsl:if>
																							</strong>

																						</iaixsl:otherwise>
																				</iaixsl:choose>
																			</span>
																		</div>

																	
																	<iaixsl:if test="/shop/allow_division_order/@turn_on = 'yes' and /shop/basket/shipping_division_time/@week_amount">
																		<div class="shipping_time_division">
																			<iaixsl:attribute name="data-shipping_week"><iaixsl:value-of select="/shop/basket/shipping_division_time/@week_amount"/></iaixsl:attribute>
																			<iaixsl:attribute name="data-shipping_day"><iaixsl:value-of select="/shop/basket/shipping_division_time/@week_day"/></iaixsl:attribute>
																			<span>
																				Produkty z dłuższym czasem oczekiwania - gotowe do wysłania za 
																				<strong/>
																			</span>
																		</div>
																	</iaixsl:if>
																</iaixsl:if>
														</div>

														<iaixsl:if test="(page/order2/orderdetails/points/@debit) and (page/order2/orderdetails/points/@debit > 0)">
																<div class="basketedit_summary_debit">
																		Po opłaceniu tego zamówienia zyskasz 
																		<strong><iaixsl:value-of select="page/order2/orderdetails/points/@debit"/><span> pkt. </span></strong> w programie lojalnościowym.
																		<iaixsl:if test="not(/shop/basket/@client_points = '0')">
																			Obecnie na swoim koncie masz 
																			<b><iaixsl:value-of select="/shop/basket/@client_points"/><span> pkt. </span></b>
																		</iaixsl:if>
																</div>
														</iaixsl:if>

														
														<iaixsl:if test="/shop/client_data/client_balance/limit/@value > '0'">
																<div class="basketedit_limit_section">
																		<div class="basketedit_product_summary">
																				<label>
																						Dostępny limit zadłużenia:
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



												</div>
										</div>
								</div>


								<div class="order2_info comment_container clearfix">

										<a href="#toggleComments" id="toggle_comments_button" class="d-sm-none">Uwagi dla sklepu i kuriera</a>

										<div class="order2_info_sub order_comments">
												<h3 class="order2_info1">
														Uwagi dla sklepu:
												</h3>
												<div class="order2_info1" id="order2_box_5">
														<div class="order2_info1_sub">

																<textarea name="remarks" class="order2_text"><iaixsl:if test="/shop/page/order2/orderremarks"><iaixsl:value-of select="/shop/page/order2/orderremarks"/></iaixsl:if><iaixsl:if test="not(/shop/page/order2/orderremarks)"></iaixsl:if></textarea>


														</div>
												</div>
										</div>


										<div class="order2_info_sub">
												<h3 class="order2_info1">
														Uwagi dla kuriera:
												</h3>
												<div class="order2_info1" id="order2_box_6">
														<div class="order2_info1_sub">

																<textarea name="deliverer_remarks" class="order2_text"><iaixsl:if test="/shop/page/order2/deliverer_remarks"><iaixsl:value-of select="/shop/page/order2/deliverer_remarks"/></iaixsl:if><iaixsl:if test="not(/shop/page/order2/deliverer_remarks)"></iaixsl:if></textarea>


														</div>
												</div>
										</div>
								</div>
								
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

													<div class="order2__products_wrapper">
														
														<iaixsl:if test="page/order2/ordersproducts/product[not(@product_type = 'product_virtual' or @product_type = 'product_service')]">
															<div class="order2__products mb-5">

																<div class="order2__product --head pb-2 mb-2 d-sm-flex align-items-sm-center mx-sm-n1">
																	<strong class="order2__product_item --name">Zamówione produkty</strong>
																	<span class="order2__product_item --price">Cena jedn.</span>
																	<iaixsl:if test="not(/shop/contact/owner/@vat_registered = 'false')">
																		<span class="order2__product_item --vat">VAT</span>
																	</iaixsl:if>
																	<span class="order2__product_item --quantityity">Ilość</span>
																	<span class="order2__product_item --worth">Wartość</span>
																</div>

																<iaixsl:for-each select="page/order2/ordersproducts/product[not(@product_type = 'product_virtual' or @product_type = 'product_service')]">
																	<div class="order2__product --row mb-3 d-flex flex-wrap align-items-center mx-sm-n1">

																		<div class="order2__product_item --name">
																			<iaixsl:choose>
																				<iaixsl:when test="@gratis='y'">
																					<span class="order2__product_name">
																						<iaixsl:choose>
																							<iaixsl:when test="/shop/allow_division_order/@turn_on = 'yes' and @division = 'now'">
																								<iaixsl:attribute name="class">order2__product_name --now</iaixsl:attribute>
																							</iaixsl:when>
																							<iaixsl:when test="/shop/allow_division_order/@turn_on = 'yes' and @division = 'later'">
																								<iaixsl:attribute name="class">order2__product_name --later</iaixsl:attribute>
																							</iaixsl:when>
																						</iaixsl:choose>
																						<iaixsl:value-of disable-output-escaping="yes" select="@name"/>
																					</span>
																				</iaixsl:when>
																				<iaixsl:otherwise>
																					<a class="order2__product_name --link">
																						<iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
																						<iaixsl:choose>
																							<iaixsl:when test="/shop/allow_division_order/@turn_on = 'yes' and @division = 'now'">
																								<iaixsl:attribute name="class">order2__product_name --link --now</iaixsl:attribute>
																							</iaixsl:when>
																							<iaixsl:when test="/shop/allow_division_order/@turn_on = 'yes' and @division = 'later'">
																								<iaixsl:attribute name="class">order2__product_name --link --later</iaixsl:attribute>
																							</iaixsl:when>
																						</iaixsl:choose>
																						<iaixsl:value-of disable-output-escaping="yes" select="@name"/>
																					</a>
																				</iaixsl:otherwise>
																			</iaixsl:choose>

																			<iaixsl:if test="(price/priceformula/parameters) or (not(@size = '') and (@size != 'uniw')) or (version/@name) or (@product_type = 'product_bundle')">
																				<div class="order2__product_params">
																					
																					<iaixsl:if test="price/priceformula/parameters">
																						<iaixsl:for-each select="price/priceformula/parameters/parameter">
																							<div class="order2__param --priceformula">
																								<span class="param__label"><iaixsl:value-of select="name"/>: </span>
																								<span class="param__value"><iaixsl:value-of select="values/value"/></span>
																							</div>
																						</iaixsl:for-each>
																					</iaixsl:if>
																					
																					<iaixsl:if test="not(@size = '') and (@size != 'uniw')">
																						<div class="order2__param --size">
																							<span class="param__label">Rozmiar: </span>
																							<span class="param__value"><iaixsl:value-of select="@size_desc"/></span>
																						</div>
																					</iaixsl:if>
																					
																					<iaixsl:if test="version/@name">
																						<div class="order2__param --version">
																							<span class="param__label"><iaixsl:value-of select="version/@name"/>: </span>
																							<span class="param__value"><iaixsl:value-of select="version/@product_name"/></span>
																						</div>
																					</iaixsl:if>
																					
																					<iaixsl:if test="@product_type = 'product_bundle'">
																						<div class="order2__param --bundle">
																							<span class="param__label">Składowe zestawu:</span>
																							<div class="param__wrapper">
																								<iaixsl:for-each select="bundled/product">
																									<span class="param__value">
																										<iaixsl:if test="@quantity > 1">
																											<iaixsl:value-of select="@quantity"/>x 
																										</iaixsl:if>

																										<iaixsl:value-of select="@name"/>

																										<iaixsl:if test="not(size/@type='uniw') or ((version) and (not(version/@product_name='')))">
																											(<iaixsl:if test="not(size/@type='uniw')">Rozmiar: <iaixsl:value-of select="size/@description"/></iaixsl:if><iaixsl:if test="not(size/@type='uniw') and ((version) and (not(version/@product_name='')))">, </iaixsl:if><iaixsl:if test="(version) and (not(version/@product_name=''))"><iaixsl:value-of select="version/@name"/>: <iaixsl:value-of select="version/@product_name"/></iaixsl:if>)
																										</iaixsl:if>

																										<iaixsl:if test="@product_type = 'product_virtual'">
																											<span class="param__virtual">Produkt wirtualny</span>
																										</iaixsl:if>

																										<iaixsl:if test="@product_type = 'product_service'">
																											<span class="param__service">Usługa</span>
																										</iaixsl:if>
																									</span>
																								</iaixsl:for-each>
																							</div>
																						</div>
																					</iaixsl:if>
																				</div>
																			</iaixsl:if>

																			<iaixsl:if test="order_files/file">
																				<div class="order2__product_files">
																					<strong class="order2__file_label">Dodane przez Ciebie pliki:</strong>
																					<div class="order2__file_wrapper">
																						<iaixsl:for-each select="order_files/file">
																							<a class="order2__file btn --icon-left icon-link" href="#previewFile">
																							<iaixsl:choose>
																								<iaixsl:when test="@preview = 'true'">
																									<iaixsl:attribute name="rel"><iaixsl:value-of select="@path"/></iaixsl:attribute>
																								</iaixsl:when>
																								<iaixsl:otherwise>
																									<iaixsl:attribute name="href"><iaixsl:value-of select="@path"/></iaixsl:attribute>
																									<iaixsl:attribute name="target">_blank</iaixsl:attribute>
																								</iaixsl:otherwise>
																							</iaixsl:choose>
																							<span><iaixsl:value-of select="@file"/></span>
																						</a>
																						</iaixsl:for-each>
																					</div>
																				</div>
																			</iaixsl:if>

																			<iaixsl:if test="comment">
																				<div class="order2__product_comment">
																					<strong class="order2__comment_label">Wpisane przez Ciebie uwagi do tego produktu:</strong>
																					<span class="order2__comment"><iaixsl:value-of select="comment"/></span>
																				</div>
																			</iaixsl:if>
																		</div>

																		<span class="order2__product_item --price">
																			<iaixsl:if test="@forpoints">
																				<iaixsl:value-of select="@points_for_one"/> pkt.
																			</iaixsl:if>
																			<iaixsl:if test="not(@forpoints)">
																				<iaixsl:value-of select="@detalprice_formatted"/>
																			</iaixsl:if>
																		</span>

																		<iaixsl:if test="not(/shop/contact/owner/@vat_registered = 'false')">
																				<span class="order2__product_item --vat">
																					<span class="order2__product_vat --name">VAT</span>
																					<span class="order2__product_vat --value"><iaixsl:value-of select="@vat"/>%</span>
																				</span>
																		</iaixsl:if>

																		<span class="order2__product_item --quantity"><iaixsl:value-of select="@quantity"/><iaixsl:text disable-output-escaping="yes"> </iaixsl:text><iaixsl:value-of select="@price_unit"/></span>

																		<strong class="order2__product_item --worth">
																			<iaixsl:choose>
																				<iaixsl:when test="@gratis='y'">
																						Gratis!
																				</iaixsl:when>
																				<iaixsl:when test="@forpoints">
																					<iaixsl:value-of select="@points"/>  pkt.
																				</iaixsl:when>
																				<iaixsl:otherwise>
																					<iaixsl:value-of select="@bruttoworth_formatted"/>
																				</iaixsl:otherwise>
																			</iaixsl:choose>
																		</strong>
																	</div>
																</iaixsl:for-each>
															</div>
														</iaixsl:if>

														
														<iaixsl:if test="page/order2/ordersproducts/product[@product_type = 'product_virtual']">
															<div class="order2__products --virtual mb-5">

																<div class="order2__product --head pb-2 mb-2 d-sm-flex align-items-sm-center mx-sm-n1">
																	<strong class="order2__product_item --name">Zamówione produkty wirtualne</strong>
																	<span class="order2__product_item --price">Cena jedn.</span>
																	<iaixsl:if test="not(/shop/contact/owner/@vat_registered = 'false')">
																		<span class="order2__product_item --vat">VAT</span>
																	</iaixsl:if>
																	<span class="order2__product_item --quantityity">Ilość</span>
																	<span class="order2__product_item --worth">Wartość</span>
																</div>

																<iaixsl:for-each select="page/order2/ordersproducts/product[@product_type = 'product_virtual']">
																	<div class="order2__product --row mb-3 d-flex flex-wrap align-items-center mx-sm-n1">

																		<div class="order2__product_item --name">
																			<iaixsl:choose>
																				<iaixsl:when test="@gratis='y'">
																					<span class="order2__product_name">
																						<iaixsl:choose>
																							<iaixsl:when test="/shop/allow_division_order/@turn_on = 'yes' and @division = 'now'">
																								<iaixsl:attribute name="class">order2__product_name --now</iaixsl:attribute>
																							</iaixsl:when>
																							<iaixsl:when test="/shop/allow_division_order/@turn_on = 'yes' and @division = 'later'">
																								<iaixsl:attribute name="class">order2__product_name --later</iaixsl:attribute>
																							</iaixsl:when>
																						</iaixsl:choose>
																						<iaixsl:value-of disable-output-escaping="yes" select="@name"/>
																					</span>
																				</iaixsl:when>
																				<iaixsl:otherwise>
																					<a class="order2__product_name --link">
																						<iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
																						<iaixsl:choose>
																							<iaixsl:when test="/shop/allow_division_order/@turn_on = 'yes' and @division = 'now'">
																								<iaixsl:attribute name="class">order2__product_name --link --now</iaixsl:attribute>
																							</iaixsl:when>
																							<iaixsl:when test="/shop/allow_division_order/@turn_on = 'yes' and @division = 'later'">
																								<iaixsl:attribute name="class">order2__product_name --link --later</iaixsl:attribute>
																							</iaixsl:when>
																						</iaixsl:choose>
																						<iaixsl:value-of disable-output-escaping="yes" select="@name"/>
																					</a>
																				</iaixsl:otherwise>
																			</iaixsl:choose>

																			<iaixsl:if test="(price/priceformula/parameters) or (not(@size = '') and (@size != 'uniw')) or (version/@name) or (@product_type = 'product_bundle')">
																				<div class="order2__product_params">
																					
																					<iaixsl:if test="price/priceformula/parameters">
																						<iaixsl:for-each select="price/priceformula/parameters/parameter">
																							<div class="order2__param --priceformula">
																								<span class="param__label"><iaixsl:value-of select="name"/>: </span>
																								<span class="param__value"><iaixsl:value-of select="values/value"/></span>
																							</div>
																						</iaixsl:for-each>
																					</iaixsl:if>
																					
																					<iaixsl:if test="not(@size = '') and (@size != 'uniw')">
																						<div class="order2__param --size">
																							<span class="param__label">Rozmiar: </span>
																							<span class="param__value"><iaixsl:value-of select="@size_desc"/></span>
																						</div>
																					</iaixsl:if>
																					
																					<iaixsl:if test="version/@name">
																						<div class="order2__param --version">
																							<span class="param__label"><iaixsl:value-of select="version/@name"/>: </span>
																							<span class="param__value"><iaixsl:value-of select="version/@product_name"/></span>
																						</div>
																					</iaixsl:if>
																					
																					<iaixsl:if test="@product_type = 'product_bundle'">
																						<div class="order2__param --bundle">
																							<span class="param__label">Składowe zestawu:</span>
																							<div class="param__wrapper">
																								<iaixsl:for-each select="bundled/product">
																									<span class="param__value">
																										<iaixsl:if test="@quantity > 1">
																											<iaixsl:value-of select="@quantity"/>x 
																										</iaixsl:if>

																										<iaixsl:value-of select="@name"/>

																										<iaixsl:if test="not(size/@type='uniw') or ((version) and (not(version/@product_name='')))">
																											(<iaixsl:if test="not(size/@type='uniw')">Rozmiar: <iaixsl:value-of select="size/@description"/></iaixsl:if><iaixsl:if test="not(size/@type='uniw') and ((version) and (not(version/@product_name='')))">, </iaixsl:if><iaixsl:if test="(version) and (not(version/@product_name=''))"><iaixsl:value-of select="version/@name"/>: <iaixsl:value-of select="version/@product_name"/></iaixsl:if>)
																										</iaixsl:if>

																										<iaixsl:if test="@product_type = 'product_virtual'">
																											<span class="param__virtual">Produkt wirtualny</span>
																										</iaixsl:if>

																										<iaixsl:if test="@product_type = 'product_service'">
																											<span class="param__service">Usługa</span>
																										</iaixsl:if>
																									</span>
																								</iaixsl:for-each>
																							</div>
																						</div>
																					</iaixsl:if>
																				</div>
																			</iaixsl:if>

																			<iaixsl:if test="order_files/file">
																				<div class="order2__product_files">
																					<strong class="order2__file_label">Dodane przez Ciebie pliki:</strong>
																					<div class="order2__file_wrapper">
																						<iaixsl:for-each select="order_files/file">
																							<a class="order2__file btn --icon-left icon-link" href="#previewFile">
																							<iaixsl:choose>
																								<iaixsl:when test="@preview = 'true'">
																									<iaixsl:attribute name="rel"><iaixsl:value-of select="@path"/></iaixsl:attribute>
																								</iaixsl:when>
																								<iaixsl:otherwise>
																									<iaixsl:attribute name="href"><iaixsl:value-of select="@path"/></iaixsl:attribute>
																									<iaixsl:attribute name="target">_blank</iaixsl:attribute>
																								</iaixsl:otherwise>
																							</iaixsl:choose>
																							<span><iaixsl:value-of select="@file"/></span>
																						</a>
																						</iaixsl:for-each>
																					</div>
																				</div>
																			</iaixsl:if>

																			<iaixsl:if test="comment">
																				<div class="order2__product_comment">
																					<strong class="order2__comment_label">Wpisane przez Ciebie uwagi do tego produktu:</strong>
																					<span class="order2__comment"><iaixsl:value-of select="comment"/></span>
																				</div>
																			</iaixsl:if>
																		</div>

																		<span class="order2__product_item --price">
																			<iaixsl:if test="@forpoints">
																				<iaixsl:value-of select="@points_for_one"/> pkt.
																			</iaixsl:if>
																			<iaixsl:if test="not(@forpoints)">
																				<iaixsl:value-of select="@detalprice_formatted"/>
																			</iaixsl:if>
																		</span>

																		<iaixsl:if test="not(/shop/contact/owner/@vat_registered = 'false')">
																				<span class="order2__product_item --vat">
																					<span class="order2__product_vat --name">VAT</span>
																					<span class="order2__product_vat --value"><iaixsl:value-of select="@vat"/>%</span>
																				</span>
																		</iaixsl:if>

																		<span class="order2__product_item --quantity"><iaixsl:value-of select="@quantity"/><iaixsl:text disable-output-escaping="yes"> </iaixsl:text><iaixsl:value-of select="@price_unit"/></span>

																		<strong class="order2__product_item --worth">
																			<iaixsl:choose>
																				<iaixsl:when test="@gratis='y'">
																						Gratis!
																				</iaixsl:when>
																				<iaixsl:when test="@forpoints">
																					<iaixsl:value-of select="@points"/>  pkt.
																				</iaixsl:when>
																				<iaixsl:otherwise>
																					<iaixsl:value-of select="@bruttoworth_formatted"/>
																				</iaixsl:otherwise>
																			</iaixsl:choose>
																		</strong>
																	</div>
																</iaixsl:for-each>
															</div>
														</iaixsl:if>

														
														<iaixsl:if test="page/order2/ordersproducts/product[@product_type = 'product_service']">
															<div class="order2__products --service mb-5">

																<div class="order2__product --head pb-2 mb-2 d-sm-flex align-items-sm-center mx-sm-n1">
																	<strong class="order2__product_item --name">Zamówione usługi</strong>
																	<span class="order2__product_item --price">Cena jedn.</span>
																	<iaixsl:if test="not(/shop/contact/owner/@vat_registered = 'false')">
																		<span class="order2__product_item --vat">VAT</span>
																	</iaixsl:if>
																	<span class="order2__product_item --quantityity">Ilość</span>
																	<span class="order2__product_item --worth">Wartość</span>
																</div>

																<iaixsl:for-each select="page/order2/ordersproducts/product[@product_type = 'product_service']">
																	<div class="order2__product --row mb-3 d-flex flex-wrap align-items-center mx-sm-n1">

																		<div class="order2__product_item --name">
																			<iaixsl:choose>
																				<iaixsl:when test="@gratis='y'">
																					<span class="order2__product_name">
																						<iaixsl:choose>
																							<iaixsl:when test="/shop/allow_division_order/@turn_on = 'yes' and @division = 'now'">
																								<iaixsl:attribute name="class">order2__product_name --now</iaixsl:attribute>
																							</iaixsl:when>
																							<iaixsl:when test="/shop/allow_division_order/@turn_on = 'yes' and @division = 'later'">
																								<iaixsl:attribute name="class">order2__product_name --later</iaixsl:attribute>
																							</iaixsl:when>
																						</iaixsl:choose>
																						<iaixsl:value-of disable-output-escaping="yes" select="@name"/>
																					</span>
																				</iaixsl:when>
																				<iaixsl:otherwise>
																					<a class="order2__product_name --link">
																						<iaixsl:choose>
																							<iaixsl:when test="/shop/allow_division_order/@turn_on = 'yes' and @division = 'now'">
																								<iaixsl:attribute name="class">order2__product_name --link --now</iaixsl:attribute>
																							</iaixsl:when>
																							<iaixsl:when test="/shop/allow_division_order/@turn_on = 'yes' and @division = 'later'">
																								<iaixsl:attribute name="class">order2__product_name --link --later</iaixsl:attribute>
																							</iaixsl:when>
																						</iaixsl:choose>
																						<iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
																						<iaixsl:value-of disable-output-escaping="yes" select="@name"/>
																					</a>
																				</iaixsl:otherwise>
																			</iaixsl:choose>

																			<iaixsl:if test="(price/priceformula/parameters) or (not(@size = '') and (@size != 'uniw')) or (version/@name) or (@product_type = 'product_bundle')">
																				<div class="order2__product_params">
																					
																					<iaixsl:if test="price/priceformula/parameters">
																						<iaixsl:for-each select="price/priceformula/parameters/parameter">
																							<div class="order2__param --priceformula">
																								<span class="param__label"><iaixsl:value-of select="name"/>: </span>
																								<span class="param__value"><iaixsl:value-of select="values/value"/></span>
																							</div>
																						</iaixsl:for-each>
																					</iaixsl:if>
																					
																					<iaixsl:if test="not(@size = '') and (@size != 'uniw')">
																						<div class="order2__param --size">
																							<span class="param__label">Rozmiar: </span>
																							<span class="param__value"><iaixsl:value-of select="@size_desc"/></span>
																						</div>
																					</iaixsl:if>
																					
																					<iaixsl:if test="version/@name">
																						<div class="order2__param --version">
																							<span class="param__label"><iaixsl:value-of select="version/@name"/>: </span>
																							<span class="param__value"><iaixsl:value-of select="version/@product_name"/></span>
																						</div>
																					</iaixsl:if>
																					
																					<iaixsl:if test="@product_type = 'product_bundle'">
																						<div class="order2__param --bundle">
																							<span class="param__label">Składowe zestawu:</span>
																							<div class="param__wrapper">
																								<iaixsl:for-each select="bundled/product">
																									<span class="param__value">
																										<iaixsl:if test="@quantity > 1">
																											<iaixsl:value-of select="@quantity"/>x 
																										</iaixsl:if>

																										<iaixsl:value-of select="@name"/>

																										<iaixsl:if test="not(size/@type='uniw') or ((version) and (not(version/@product_name='')))">
																											(<iaixsl:if test="not(size/@type='uniw')">Rozmiar: <iaixsl:value-of select="size/@description"/></iaixsl:if><iaixsl:if test="not(size/@type='uniw') and ((version) and (not(version/@product_name='')))">, </iaixsl:if><iaixsl:if test="(version) and (not(version/@product_name=''))"><iaixsl:value-of select="version/@name"/>: <iaixsl:value-of select="version/@product_name"/></iaixsl:if>)
																										</iaixsl:if>

																										<iaixsl:if test="@product_type = 'product_virtual'">
																											<span class="param__virtual">Produkt wirtualny</span>
																										</iaixsl:if>

																										<iaixsl:if test="@product_type = 'product_service'">
																											<span class="param__service">Usługa</span>
																										</iaixsl:if>
																									</span>
																								</iaixsl:for-each>
																							</div>
																						</div>
																					</iaixsl:if>
																				</div>
																			</iaixsl:if>

																			<iaixsl:if test="order_files/file">
																				<div class="order2__product_files">
																					<strong class="order2__file_label">Dodane przez Ciebie pliki:</strong>
																					<div class="order2__file_wrapper">
																						<iaixsl:for-each select="order_files/file">
																							<a class="order2__file btn --icon-left icon-link" href="#previewFile">
																							<iaixsl:choose>
																								<iaixsl:when test="@preview = 'true'">
																									<iaixsl:attribute name="rel"><iaixsl:value-of select="@path"/></iaixsl:attribute>
																								</iaixsl:when>
																								<iaixsl:otherwise>
																									<iaixsl:attribute name="href"><iaixsl:value-of select="@path"/></iaixsl:attribute>
																									<iaixsl:attribute name="target">_blank</iaixsl:attribute>
																								</iaixsl:otherwise>
																							</iaixsl:choose>
																							<span><iaixsl:value-of select="@file"/></span>
																						</a>
																						</iaixsl:for-each>
																					</div>
																				</div>
																			</iaixsl:if>

																			<iaixsl:if test="comment">
																				<div class="order2__product_comment">
																					<strong class="order2__comment_label">Wpisane przez Ciebie uwagi do tego produktu:</strong>
																					<span class="order2__comment"><iaixsl:value-of select="comment"/></span>
																				</div>
																			</iaixsl:if>
																		</div>

																		<span class="order2__product_item --price">
																			<iaixsl:if test="@forpoints">
																				<iaixsl:value-of select="@points_for_one"/> pkt.
																			</iaixsl:if>
																			<iaixsl:if test="not(@forpoints)">
																				<iaixsl:value-of select="@detalprice_formatted"/>
																			</iaixsl:if>
																		</span>

																		<iaixsl:if test="not(/shop/contact/owner/@vat_registered = 'false')">
																				<span class="order2__product_item --vat">
																					<span class="order2__product_vat --name">VAT</span>
																					<span class="order2__product_vat --value"><iaixsl:value-of select="@vat"/>%</span>
																				</span>
																		</iaixsl:if>

																		<span class="order2__product_item --quantity"><iaixsl:value-of select="@quantity"/><iaixsl:text disable-output-escaping="yes"> </iaixsl:text><iaixsl:value-of select="@price_unit"/></span>

																		<strong class="order2__product_item --worth">
																			<iaixsl:choose>
																				<iaixsl:when test="@gratis='y'">
																						Gratis!
																				</iaixsl:when>
																				<iaixsl:when test="@forpoints">
																					<iaixsl:value-of select="@points"/>  pkt.
																				</iaixsl:when>
																				<iaixsl:otherwise>
																					<iaixsl:value-of select="@bruttoworth_formatted"/>
																				</iaixsl:otherwise>
																			</iaixsl:choose>
																		</strong>
																	</div>
																</iaixsl:for-each>
															</div>
														</iaixsl:if>

														
														<iaixsl:if test="page/wrappers/wrapper[@selected = 'true']">
															<div class="order2__products --wrapper mb-5">

																<input type="hidden" name="wrapper_id"><iaixsl:attribute name="value"><iaixsl:value-of select="page/wrappers/wrapper[@selected = 'true']/@id"/></iaixsl:attribute></input>

																<div class="order2__product --head pb-2 mb-2 d-sm-flex align-items-sm-center mx-sm-n1">
																	<strong class="order2__product_item --name">Wybrane opakowanie</strong>
																	<span class="order2__product_item --worth">Wartość</span>
																</div>

																<iaixsl:for-each select="page/wrappers/wrapper[@selected = 'true']">
																	<div class="order2__product --row mb-3 d-flex flex-wrap align-items-center mx-sm-n1">

																		<div class="order2__product_item --name">
																			<span class="order2__product_name">
																				<iaixsl:choose>
																					<iaixsl:when test="/shop/allow_division_order/@turn_on = 'yes' and @division = 'now'">
																						<iaixsl:attribute name="class">order2__product_name --now</iaixsl:attribute>
																					</iaixsl:when>
																					<iaixsl:when test="/shop/allow_division_order/@turn_on = 'yes' and @division = 'later'">
																						<iaixsl:attribute name="class">order2__product_name --later</iaixsl:attribute>
																					</iaixsl:when>
																				</iaixsl:choose>
																				<iaixsl:value-of disable-output-escaping="yes" select="name"/>
																			</span>
																		</div>

																		<strong class="order2__product_item --worth">
																			<iaixsl:if test="$signbeforeprice = 'true'">
																				<iaixsl:value-of select="/shop/currency/@name"/>
																				<iaixsl:value-of select="$signbetweenpricecurrency"/>
																			</iaixsl:if>
																			<iaixsl:value-of select="price/@value"/>
																			<iaixsl:if test="$signbeforeprice = 'false'">
																				<iaixsl:value-of select="$signbetweenpricecurrency"/>
																				<iaixsl:value-of select="/shop/currency/@name"/>
																			</iaixsl:if>
																		</strong>
																	</div>
																</iaixsl:for-each>
															</div>
														</iaixsl:if>
													</div>

													
													<iaixsl:if test="/shop/page/order2/orderdetails/@deliveryid !='47-1'">
														<div class="order2__orderdetails mb-5">

															<div class="order2__orderdetails_headline pb-2 mb-2">
																<strong class="order2__orderdetails_name">
																	<iaixsl:choose>
																		<iaixsl:when test="/shop/page/order2/insurance_product">
																			Dostawa, płatności i ubezpieczenia
																		</iaixsl:when>
																		<iaixsl:otherwise>
																			Dostawa i płatność
																		</iaixsl:otherwise>
																	</iaixsl:choose>
																</strong>
															</div>

															<div class="order2__orderdetails_block">
																
																<div class="order2__delivery mb-3">
																	<div class="order2__delivery_item d-flex flex-wrap align-items-end">
																		<strong class="order2__delivery_text">
																			<iaixsl:choose>
																				<iaixsl:when test="not(page/order2/orderdetails/@deliveryname_division)">
																					Forma dostawy: 
																				</iaixsl:when>
																				<iaixsl:otherwise>
																					Forma dostawy dla produktów dostępnych od ręki: 
																				</iaixsl:otherwise>
																			</iaixsl:choose>
																		</strong>

																		<div class="order2__delivery_wrapper">
																			<strong class="order2__delivery_name"><iaixsl:value-of select="page/order2/orderdetails/@deliveryname"/></strong>

																			<a class="order2__delivery_link" href="order1.php">Zmień</a>
																		</div>

																		<strong class="order2__delivery_worth">
																			<iaixsl:if test="(page/order2/shipping/@cost > 0) or (not(page/order2/orderdetails/@deliverytype = 'dvp' and page/order2/stock/@stock_id)) and not(page/order2/shipping/@hide_cost = 'true')">
																				<iaixsl:choose>
																					<iaixsl:when test="page/order2/shipping/@cost_type = 'points'">
																							<iaixsl:value-of select="page/order2/shipping/@points_cost"/> pkt.
																					</iaixsl:when>
																					<iaixsl:when test="page/order2/shipping/@cost = 0">
																						Gratis!
																					</iaixsl:when>
																					<iaixsl:when test="page/order2/shipping/@cost">
																						<iaixsl:value-of select="page/order2/shipping/@cost_formatted"/>
																					</iaixsl:when>
																				</iaixsl:choose>
																			</iaixsl:if>
																		</strong>

																		<iaixsl:if test="/shop/page/order2/shipping/comment and /shop/page/order2/shipping/comment != ''">
																			<div class="order2__delivery_comment"><iaixsl:value-of disable-output-escaping="yes" select="/shop/page/order2/shipping/comment"/></div>
																		</iaixsl:if>
																	</div>

																	
																	<iaixsl:if test="/shop/allow_division_order/@turn_on = 'yes' and /shop/page/order2/orderdetails/@deliveryname_division">
																		<div class="order2__delivery_item --division d-flex flex-wrap">
																			<strong class="order2__delivery_text">
																				Forma dostawy dla produktów z dłuższym czasem oczekiwania: 
																			</strong>

																			<div class="order2__delivery_wrapper">
																				<strong class="order2__delivery_name"><iaixsl:value-of select="page/order2/orderdetails/@deliveryname_division"/></strong>

																				<a class="order2__delivery_link" href="order1.php">Zmień</a>
																			</div>

																			<strong class="order2__delivery_worth">
																				<iaixsl:if test="(page/order2/shipping_division/@cost > 0) or (not(page/order2/orderdetails/@deliverytype_division = 'dvp' and page/order2/stock/@stock_id)) and not(page/order2/shipping_division/@hide_cost = 'true')">
																					<iaixsl:choose>
																						<iaixsl:when test="page/order2/shipping_division/@cost_type = 'points'">
																								<iaixsl:value-of select="page/order2/shipping_division/@points_cost"/> pkt.
																						</iaixsl:when>
																						<iaixsl:when test="page/order2/shipping_division/@cost = 0">
																							Gratis!
																						</iaixsl:when>
																						<iaixsl:when test="page/order2/shipping_division/@cost">
																							<iaixsl:value-of select="page/order2/shipping_division/@cost_formatted"/>
																						</iaixsl:when>
																					</iaixsl:choose>
																				</iaixsl:if>
																			</strong>

																			<iaixsl:if test="/shop/page/order2/shipping_division/comment and /shop/page/order2/shipping_division/comment != ''">
																				<div class="order2__delivery_comment"><iaixsl:value-of disable-output-escaping="yes" select="/shop/page/order2/shipping_division/comment"/></div>
																			</iaixsl:if>
																		</div>
																	</iaixsl:if>
																</div>

																
																<div class="order2__payment mb-3">
																	<iaixsl:if test="not(page/order2/orderdetails/@deliverytype = 'prepaid' and page/order2/orderdetails/@payment_name = '') or (page/order2/orderdetails/@tradeCredit = 'y')">
																		<div class="order2__payment_item d-flex flex-wrap">
																			<strong class="order2__payment_text">Forma płatności: </strong>

																			<div class="order2__payment_wrapper">
																				<strong class="order2__payment_name">
																					<iaixsl:choose>
																						<iaixsl:when test="(page/order2/orderdetails/@deliverytype = 'prepaid') and (page/order2/orderdetails/@tradeCredit = 'y')">
																							kredyt kupiecki
																						</iaixsl:when>
																						<iaixsl:when test="page/order2/orderdetails/@deliverytype = 'dvp'">
																							kredyt kupiecki
																						</iaixsl:when>
																						<iaixsl:otherwise>
																							<iaixsl:value-of select="page/order2/orderdetails/@payment_name"/>
																						</iaixsl:otherwise>
																					</iaixsl:choose>
																				</strong>

																				
																				<iaixsl:if test="page/order2/instalment">
																					<a class="order2__payment_instalment"><iaixsl:attribute name="onclick">calculate_instalments('<iaixsl:value-of select="page/order2/instalment/@minprice"/>','<iaixsl:value-of select="page/order2/instalment/@maxprice"/>','<iaixsl:value-of select="page/order2/instalment/@priceTotal"/>','<iaixsl:value-of select="page/order2/instalment/@alert"/>',$(this).attr('rel'),'<iaixsl:value-of select="page/order2/instalment/@maxquantity"/>');</iaixsl:attribute><iaixsl:attribute name="rel"><iaixsl:value-of select="page/order2/instalment/@calculate"/></iaixsl:attribute>oblicz ratę</a>
																				</iaixsl:if>

																				<iaixsl:if test="not(page/order2/orderdetails/@tradeCredit = 'y')">
																					<a class="order2__payment_link" href="order1.php">Zmień</a>
																				</iaixsl:if>
																			</div>

																			<strong class="order2__payment_worth">
																				<iaixsl:choose>
																					<iaixsl:when test="page/order2/orderdetails/voucher/@value">
																						<iaixsl:if test="$signbeforeprice = 'true'">
																							<span class="currency_order2"><iaixsl:value-of select="/shop/currency/@name"/></span>
																							<iaixsl:value-of select="$signbetweenpricecurrency"/>
																						</iaixsl:if>
																						<iaixsl:value-of select="page/order2/orderdetails/voucher/@value"/>
																						<iaixsl:if test="$signbeforeprice = 'false'">
																							<iaixsl:value-of select="$signbetweenpricecurrency"/>
																							<span class="currency_order2"><iaixsl:value-of select="/shop/currency/@name"/></span>
																						</iaixsl:if>
																					</iaixsl:when>
																					<iaixsl:when test="page/order2/orderdetails/@paymentcost > 0 and page/order2/shipping/@cost">
																						<iaixsl:value-of select="page/order2/orderdetails/@paymentcost_formatted"/>
																					</iaixsl:when>
																				</iaixsl:choose>
																			</strong>

																			<div class="order2__payment_comment">
																				<iaixsl:choose>
																					<iaixsl:when test="page/order2/orderdetails/voucher/@value and (page/order2/orderdetails/@paymentcost > 0)">
																						Dodatkowa opłata 
																						<iaixsl:value-of select="page/order2/orderdetails/@paymentcost_formatted"/>
																					</iaixsl:when>
																					<iaixsl:when test="(page/order2/orderdetails/@deliverytype = 'prepaid') and not(page/order2/orderdetails/@tradeCredit = 'y')">
																						Płatność przed wysyłką
																					</iaixsl:when>
																					<iaixsl:when test="page/order2/orderdetails/@deliverytype = 'dvp' and page/order2/stock/@stock_id">
																						Zapłacisz w naszym punkcie w momencie odbierania zamówienia.
																					</iaixsl:when>
																					<iaixsl:when test="page/order2/orderdetails/@deliverytype = 'dvp'">
																						Zapłacisz odbierając przesyłkę
																					</iaixsl:when>
																				</iaixsl:choose>
																			</div>
																		</div>
																	</iaixsl:if>

																	
																	<iaixsl:if test="/shop/page/order2/balance/@currency_value and /shop/page/order2/balance/@currency_value > 0">
																		<div class="order2__payment_item d-flex flex-wrap">
																			<strong class="order2__payment_text">Opłacone z salda (nadpłaty na koncie klienta)</strong>

																			<strong class="order2__payment_worth minus_sign">
																				<iaixsl:if test="$signbeforeprice = 'true'">
																					<span class="currency_order2"><iaixsl:value-of select="/shop/currency/@name"/></span>
																					<iaixsl:value-of select="$signbetweenpricecurrency"/>
																				</iaixsl:if>
																				<iaixsl:value-of select="/shop/page/order2/balance/@currency_value"/>
																				<iaixsl:if test="$signbeforeprice = 'false'">
																					<iaixsl:value-of select="$signbetweenpricecurrency"/>
																					<span class="currency_order2"><iaixsl:value-of select="/shop/currency/@name"/></span>
																				</iaixsl:if>
																			</strong>
																		</div>
																	</iaixsl:if>

																	
																	<iaixsl:if test="/shop/page/order2/insurance_product">
																		<div class="order2__payment_item d-flex flex-wrap">
																			<strong class="order2__payment_text">Ochrona Kupującego: </strong>

																			<div class="order2__payment_wrapper">
																				<strong class="order2__payment_name"><iaixsl:value-of select="/shop/page/order2/insurance_product/@service"/></strong>
																			</div>

																			<strong class="order2__payment_worth">
																				<iaixsl:if test="/shop/page/order2/insurance_product/@price_gross > 0">
																					<iaixsl:if test="$signbeforeprice = 'true'">
																						<span class="currency_order2"><iaixsl:value-of select="/shop/currency/@name"/></span>
																						<iaixsl:value-of select="$signbetweenpricecurrency"/>
																					</iaixsl:if>
																					<iaixsl:value-of select="/shop/page/order2/insurance_product/@price_gross"/>
																					<iaixsl:if test="$signbeforeprice = 'false'">
																						<iaixsl:value-of select="$signbetweenpricecurrency"/>
																						<span class="currency_order2"><iaixsl:value-of select="/shop/currency/@name"/></span>
																					</iaixsl:if>
																				</iaixsl:if>
																			</strong>

																			<div class="order2__payment_comment">
																				<iaixsl:choose>
																					<iaixsl:when test="/shop/page/order2/insurance_product/@status = 'unconfirmed'">
																						Status: niepotwierdzone
																					</iaixsl:when>
																					<iaixsl:when test="/shop/page/order2/insurance_product/@status = 'confirmed'">
																						Status: potwierdzone
																					</iaixsl:when>
																				</iaixsl:choose>
																			</div>
																		</div>
																	</iaixsl:if>
																</div>
															</div>
														</div>
													</iaixsl:if>

													<div class="basketedit_summary_right">

															<div class="basketedit_calculations">
																	<iaixsl:if test="/shop/basket/summary/products_worth/@value_formatted">
																			<div class="basketedit_product_summary">
																					<label>
																							Wartość zamówienia:
																					</label>

																					<strong>
																							<iaixsl:value-of select="/shop/basket/summary/products_worth/@value_formatted"/>
																					</strong>
																			</div>
																	</iaixsl:if>


																	


																	<iaixsl:choose>
																			<iaixsl:when test="/shop/basket/summary/total_additional_cost_after_rebate/@value">
																					<iaixsl:if test="/shop/basket/summary/total_additional_cost_after_rebate/@value > 0">
																							<div class="basketedit_product_summary">
																									<label>
																											Dodatkowe opłaty:
																									</label>

																									<strong class="paymentcost_value">
																											<iaixsl:attribute name="class">paymentcost_value plus_sign</iaixsl:attribute>
																											<iaixsl:value-of select="/shop/basket/summary/total_additional_cost_after_rebate/@value_formatted"/>
																									</strong>
																							</div>
																					</iaixsl:if>
																			</iaixsl:when>
																			<iaixsl:otherwise>
																					<iaixsl:if test="/shop/basket/summary/total_additional_cost/@value > 0">
																							<div class="basketedit_product_summary">
																									<label>
																											Dodatkowe opłaty:
																									</label>

																									<strong class="paymentcost_value">
																											<iaixsl:attribute name="class">paymentcost_value plus_sign</iaixsl:attribute>
																											<iaixsl:value-of select="/shop/basket/summary/total_additional_cost/@value_formatted"/>
																									</strong>
																							</div>
																					</iaixsl:if>
																			</iaixsl:otherwise>
																	</iaixsl:choose>






																	

																	<iaixsl:if test="/shop/client_data/client_balance/balance/@is_selected_and_allowed_order='true' and /shop/client_data/client_balance/balance[@is_selected_and_allowed_order='true']/@value != 0">
																			<div class="basketedit_product_summary">
																					<label>
																							Opłacone z salda:<br />(nadpłaty na koncie klienta)
																					</label>

																					<strong class="saldo_value">
																							<iaixsl:attribute name="class">saldo_value minus_sign</iaixsl:attribute>
																							
																							<iaixsl:value-of select="/shop/page/order2/balance[@active='y']/@currency_value_formatted"/>
																					</strong>
																			</div>
																	</iaixsl:if>

																	<iaixsl:choose>
																			<iaixsl:when test="/shop/basket/@total_rebate_without_shipping">
																					<iaixsl:if test="/shop/basket/@total_rebate_without_shipping > 0">
																							<div class="basketedit_rabats_summary">
																									<label>
																											Rabat:
																									</label>

																									<strong>
																											<iaixsl:attribute name="class">minus_sign</iaixsl:attribute>
																											<iaixsl:value-of select="/shop/basket/@total_rebate_without_shipping_formatted"/>
																									</strong>
																							</div>
																					</iaixsl:if>
																			</iaixsl:when>
																			<iaixsl:otherwise>
																					<iaixsl:if test="/shop/basket/summary/total_rebate/@value_formatted">
																							<div class="basketedit_rabats_summary">
																									<label>
																											Rabat:
																									</label>

																									<strong>
																											<iaixsl:attribute name="class">minus_sign</iaixsl:attribute>
																											<iaixsl:value-of select="/shop/basket/summary/total_rebate/@value_formatted"/>
																									</strong>
																							</div>
																					</iaixsl:if>
																			</iaixsl:otherwise>
																	</iaixsl:choose>



															</div>

															<div class="basketedit_total_summary">
																	<label>
																			Do zapłaty:
																	</label>
																	<iaixsl:choose>
																			<iaixsl:when test="(/shop/basket/@wholesaler = 'true') and not($wholesalerPrice2)">
																					<strong>
																							<iaixsl:value-of select="/shop/basket/summary/total_to_pay/@value_formatted"/>
																					</strong>
																			</iaixsl:when>
																			<iaixsl:otherwise>
																					<strong>
																							<iaixsl:value-of select="/shop/basket/summary/total_to_pay/@value_formatted"/>
																							<iaixsl:if test="not(/shop/client_data/@uses_vat='false') and not(/shop/contact/owner/@vat_registered = 'false')">
																									 brutto
																							</iaixsl:if>
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

															<iaixsl:if test="/shop/basket/summary/prepaid_discount/@value_formatted and $txt_68638_rpoz">
																	<div style="clear:both"/>
																	<div class="basketedit_product_summary prepaid_discount_wrapper">
																			<label>
																					<iaixsl:value-of select="$txt_68638_rpoz"/>
																					<span id="discount_paiment_name"><iaixsl:value-of select="page/order2/orderdetails/@payment_name"/></span>
																					 otrzymasz dodatkowy rabat:
																			</label>

																			<strong class="paymentcost_value">
																					<iaixsl:attribute name="class">paymentcost_value minus_sign</iaixsl:attribute>
																					<iaixsl:value-of select="/shop/basket/summary/prepaid_discount/@value_formatted"/>
																			</strong>
																	</div>
															</iaixsl:if>

															
															<iaixsl:if test="$txt_60826_advance_a and (/shop/page/order2/orderdetails/@advance > 0)">
																	<div class="basketedit_product_summary advance">
																			<label>Wymagana zaliczka:</label>
																			<strong><iaixsl:value-of select="/shop/page/order2/orderdetails/@advance_formatted"/></strong>
																	</div>
															</iaixsl:if>

													</div>

													<div class="order2_terms_wrapper">


															<div class="order2_terms_wrapper_sub">
																	<label class="order2_terms_conditions">
																			<input type="checkbox" name="order2_terms_conditions" value="yes" class="css-checkbox" required="required"/>
																			<i class="css-label"/>
																			<span><i class="icon-need"></i>  Akceptuję warunki 
																					<a target="_blank">
																							<iaixsl:attribute name="title">Regulamin
																							</iaixsl:attribute>
																							<iaixsl:attribute name="href">
																									<iaixsl:value-of select="/shop/action/terms/@url"/>
																							</iaixsl:attribute>
																							regulaminu
																					</a>
																			</span>
																	</label>
															</div>

															<iaixsl:if test="not($returns_agree_control)">
																	<div class="order2_terms_wrapper_sub">
																			<label class="order2_cancel">
																					<input type="checkbox" name="order2_cancel" value="yes" class="css-checkbox" required="required"/>
																					<i class="css-label"/>
																					<span><i class="icon-need"></i>  Zapoznałem się z moim 
																							<a target="_blank">
																									<iaixsl:attribute name="title">Odstąpienie od umowy
																									</iaixsl:attribute>
																									<iaixsl:attribute name="href">
																											<iaixsl:value-of select="/shop/action/order_cancel/@url"/>
																									</iaixsl:attribute>
																									prawem do odstąpienia od umowy
																							</a>
																					</span>
																			</label>
																	</div>
															</iaixsl:if>

															<iaixsl:if test="page/order2/ordersproducts//product[@product_type = 'product_virtual']">
																	<div class="order2_terms_wrapper_sub virtual">
																			<label class="order2_virtual">
																					<input type="checkbox" name="order2_virtual" value="yes" class="css-checkbox" required="required"/>
																					<i class="css-label"/>
																					<span><i class="icon-need"></i>  Wyrażam zgodę i proszę zarazem o spełnienie świadczenia przed upływem terminu do odstąpienia od umowy. Jestem świadomy/a, że udzielając niniejszej zgody tracę moje prawo do odstąpienia od umowy wraz z momentem rozpoczęcia świadczenia.</span>
																			</label>
																	</div>
															</iaixsl:if>

															<iaixsl:if test="page/order2/ordersproducts//product[@product_type = 'product_service']">
																	<div class="order2_terms_wrapper_sub service">
																			<label class="order2_service">
																					<input type="checkbox" name="order2_service" value="yes" class="css-checkbox" required="required"/>
																					<i class="css-label"/>
																					<span><i class="icon-need"></i>  Wyrażam zgodę i proszę zarazem o rozpoczęcie świadczenia usługi przed upływem terminu do odstąpienia od umowy. Jestem świadomy/a, że w przypadku pełnego wykonania usługi tracę moje prawo do odstąpienia od umowy.</span>
																			</label>
																	</div>
															</iaixsl:if>

															
													</div>

													<div class="basketedit_summary_buttons table_display">

															<div class="btn_wrapper">
																	<input class="btn --solid --large order2_button_order terms_required" type="submit">

																			<iaixsl:attribute name="value">Zamawiam z obowiązkiem zapłaty</iaixsl:attribute>

																			<iaixsl:if test="/shop/order_edit/@order_id">
																					<iaixsl:attribute name="data-change_order">true</iaixsl:attribute>

																					<iaixsl:if test="$order_edit_button">
																							<iaixsl:attribute name="value"><iaixsl:value-of select="$order_edit_button"/></iaixsl:attribute>
																					</iaixsl:if>

																			</iaixsl:if>
																	</input>
																	<div class="button_legend">
																			<i class="icon-need"></i> Pola oznaczone gwiazdką są wymagane.
																	</div>

															</div>
													</div>
												</div>
										</div>
								</div>



								<iaixsl:if test="/shop/page/wrappers">
										<iaixsl:for-each select="/shop/page/wrappers/wrapper">
												<iaixsl:if test="@selected = 'true'">
														<input type="hidden" name="wrapper_id"><iaixsl:attribute name="value"><iaixsl:value-of select="@id"/></iaixsl:attribute></input>
												</iaixsl:if>
										</iaixsl:for-each>
								</iaixsl:if>


						</form>
				</div>
				
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
            <script>
                  app_shop.runApp();
            </script>

 <!-- !CUSTOM SCRIPTS -->
            <script src="/data/include/cms/b2b4kom/JS/app.js" >
                <iaixsl:attribute name="defer"></iaixsl:attribute>
                <iaixsl:attribute name="type">module</iaixsl:attribute>
            </script>
            <script src="/data/include/cms/b2b4kom/JS/basketDetailsHover.js" >
                <iaixsl:attribute name="defer"></iaixsl:attribute>
                <iaixsl:attribute name="type">module</iaixsl:attribute>
            </script>
            <script src="/data/include/cms/b2b4kom/JS/footerRotateChevron.js" >
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