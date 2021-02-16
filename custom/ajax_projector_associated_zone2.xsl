<?xml version="1.0" encoding="UTF-8"?>
<iaixsl:stylesheet xmlns:php="http://php.net/xsl" xmlns:iaixsl="http://www.w3.org/1999/XSL/Transform" xmlns:iaielement="http://iai-system.com/ddd" xmlns:fb="http://www.facebook.com/2008/fbml" version="1.0" exclude-result-prefixes="php iaielement fb"><iaixsl:output indent="no" method="html" doctype-system="about:legacy-compat" version="1.0" encoding="UTF-8"/><iaixsl:strip-space elements="table tr td img"/><iaixsl:decimal-format name="yen" NaN="" grouping-separator="," decimal-separator="."/><iaixsl:template match="shop">
                <iaixsl:if test="page/projector/products_associated_zone2">

                    <section id="products_associated_zone2" class="hotspot mb-5 --list col-12">
                        
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
                                                    Najczęściej kupowane z tym produktem
                                                    </iaixsl:when>
                                                    <iaixsl:otherwise>Produkty kupione z tym produktem</iaixsl:otherwise>
                                                </iaixsl:choose>
                                            </span>
                                        </span>
                                    </iaixsl:otherwise>
                                </iaixsl:choose>
                            </h2>

                            <div class="products d-flex flex-wrap">
                                <iaixsl:for-each select="page/projector/products_associated_zone2/*">
                                    
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
                                                <iaixsl:attribute name="data-src"><iaixsl:value-of disable-output-escaping="yes" select="$var_icon"/></iaixsl:attribute>
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

                <iaixsl:if test="/shop/page/projector/products_associated_zone2/@iairs_ajax"> </iaixsl:if>
                <iaixsl:if test="/shop/page/projector/products_associated_zone2/@hotspot_ajax"> </iaixsl:if>
                
            </iaixsl:template><iaixsl:template match="//image"><iaixsl:if test="@type='swf'"><object type="application/x-shockwave-flash"><iaixsl:attribute name="data"><iaixsl:value-of select="@src"/></iaixsl:attribute><iaixsl:attribute name="data"><iaixsl:value-of select="@src"/></iaixsl:attribute><iaixsl:attribute name="width"><iaixsl:value-of select="@width"/></iaixsl:attribute><iaixsl:attribute name="height"><iaixsl:value-of select="@height"/></iaixsl:attribute><param name="movie"><iaixsl:attribute name="value"><iaixsl:value-of select="@src"/></iaixsl:attribute></param><param name="bgcolor"><iaixsl:attribute name="bgcolor"><iaixsl:value-of select="@bgcolor"/></iaixsl:attribute></param></object></iaixsl:if><iaixsl:if test="not(@type='swf')"><img alt="" class="pic"><iaixsl:attribute name="src"><iaixsl:value-of select="@src"/></iaixsl:attribute><iaixsl:if test="@width &gt; 0"><iaixsl:attribute name="width"><iaixsl:value-of select="@width"/></iaixsl:attribute></iaixsl:if><iaixsl:if test="@height &gt; 0"><iaixsl:attribute name="height"><iaixsl:value-of select="@height"/></iaixsl:attribute></iaixsl:if></img></iaixsl:if></iaixsl:template><iaixsl:template name="escape-quote-string"><iaixsl:param name="str"/><iaixsl:param name="escape" select="'quot'"/><iaixsl:param name="quoting" select="'1'"/><iaixsl:variable name="escape_sign"><iaixsl:choose><iaixsl:when test="$escape=&quot;apos&quot;"><iaixsl:value-of select="&quot;'&quot;"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="string('&quot;')"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable><iaixsl:if test="$quoting"><iaixsl:value-of select="$escape_sign"/></iaixsl:if><iaixsl:choose><iaixsl:when test="contains($str,$escape_sign)"><iaixsl:variable name="before-first-apostrophe" select="substring-before($str,$escape_sign)"/><iaixsl:variable name="after-first-apostrophe" select="substring-after($str,$escape_sign)"/><iaixsl:value-of select="$before-first-apostrophe"/>\<iaixsl:value-of select="$escape_sign"/><iaixsl:text/><iaixsl:call-template name="escape-quote-string"><iaixsl:with-param name="str" select="$after-first-apostrophe"/><iaixsl:with-param name="escape" select="$escape"/><iaixsl:with-param name="quoting" select="0"/></iaixsl:call-template></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="$str"/></iaixsl:otherwise></iaixsl:choose><iaixsl:if test="$quoting"><iaixsl:value-of select="$escape_sign"/></iaixsl:if></iaixsl:template></iaixsl:stylesheet>