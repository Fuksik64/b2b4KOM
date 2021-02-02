<?xml version="1.0" encoding="UTF-8"?>
<iaixsl:stylesheet xmlns:php="http://php.net/xsl" xmlns:iaixsl="http://www.w3.org/1999/XSL/Transform" xmlns:iaielement="http://iai-system.com/ddd" xmlns:fb="http://www.facebook.com/2008/fbml" version="1.0" exclude-result-prefixes="php iaielement fb"><iaixsl:output indent="no" method="html" doctype-system="about:legacy-compat" version="1.0" encoding="UTF-8"/><iaixsl:strip-space elements="table tr td img"/><iaixsl:decimal-format name="yen" NaN="" grouping-separator="," decimal-separator="."/><iaixsl:template match="shop">

                <iaixsl:if test="page/projector/products_associated_zone2">
                    <div class="main_hotspot mb-4" id="products_associated_zone2">
                        <iaixsl:if test="not(page/projector/products_associated_zone2/product)">
                            <iaixsl:attribute name="data-ajaxload">true</iaixsl:attribute>
                            <iaixsl:attribute name="data-pagetype">projector</iaixsl:attribute>
                        </iaixsl:if>
                        <iaixsl:choose>
                            <iaixsl:when test="page/projector/products_associated_zone2/product or page/projector/products_associated_zone2/opinion">
                                <h2>
                                    <iaixsl:choose>
                                        <iaixsl:when test="page/projector/products_associated_zone2/@link">
                                            <a class="big_label">
                                                <iaixsl:attribute name="href"><iaixsl:value-of select="page/projector/products_associated_zone2/@link"/></iaixsl:attribute><iaixsl:attribute name="title"></iaixsl:attribute>
                                                <iaixsl:choose><iaixsl:when test="page/projector/products_associated_zone2/@name"><iaixsl:choose><iaixsl:when test="contains(page/projector/products_associated_zone2/@name,'|')"><span><iaixsl:value-of select="substring-before(page/projector/products_associated_zone2/@name,'|')"/></span><small><iaixsl:value-of select="substring-after(page/projector/products_associated_zone2/@name,'|')"/></small></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="page/projector/products_associated_zone2/@name"/></iaixsl:otherwise></iaixsl:choose></iaixsl:when><iaixsl:otherwise>Produkte, die mit diesem Produkt zusammen gekauft wurden</iaixsl:otherwise></iaixsl:choose>
                                            </a>
                                        </iaixsl:when>
                                        <iaixsl:otherwise>
                                            <span class="big_label">
                                                <iaixsl:choose><iaixsl:when test="page/projector/products_associated_zone2/@name"><iaixsl:choose><iaixsl:when test="contains(page/projector/products_associated_zone2/@name,'|')"><span><iaixsl:value-of select="substring-before(page/projector/products_associated_zone2/@name,'|')"/></span><small><iaixsl:value-of select="substring-after(page/projector/products_associated_zone2/@name,'|')"/></small></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="page/projector/products_associated_zone2/@name"/></iaixsl:otherwise></iaixsl:choose></iaixsl:when><iaixsl:otherwise>Produkte, die mit diesem Produkt zusammen gekauft wurden</iaixsl:otherwise></iaixsl:choose>
                                            </span>
                                        </iaixsl:otherwise>
                                    </iaixsl:choose>
                                </h2>
                                
                                <div class="align_row main_hotspot_sub">
                                    <div class="products_wrapper row mx-0">
                                
                                        <iaixsl:for-each select="page/projector/products_associated_zone2/*">
                                            <iaixsl:variable name="var_name"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of disable-output-escaping="yes" select="product/name/text()"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of disable-output-escaping="yes" select="name/text()"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                            <iaixsl:variable name="var_icon"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/icon"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="icon"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                            <iaixsl:variable name="var_icon_small"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/icon_small"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="icon_small"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                            <iaixsl:variable name="var_link"><iaixsl:choose><iaixsl:when test="product"><iaixsl:value-of select="product/@link"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="@link"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable>
                                            <iaixsl:variable name="var_yousave"></iaixsl:variable>

                                            <div class="product_wrapper col-12 col-sm-3">
                                            
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

                                                    <img src="/gfx/ger/loader.gif?r=1598273390" class="b-lazy">
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
                                                                            <iaixsl:value-of select="$var_points"/><span class="currency"> Pkt.</span>
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
                                                                                <iaixsl:attribute name="title">Klicken Sie hier, um zum Kontaktformular zu gelangen</iaixsl:attribute>
                                                                                <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/contact/link/@url"/></iaixsl:attribute>
                                                                                Preis auf Anfrage
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
                                                                            <iaixsl:value-of select="$var_points"/><span class="currency"> Pkt.</span>
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
                                                                            <iaixsl:value-of select="$var_points_net"/><span class="currency"> Pkt.</span>
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
                                                                                <iaixsl:attribute name="title">Klicken Sie hier, um zum Kontaktformular zu gelangen</iaixsl:attribute>
                                                                                <iaixsl:attribute name="href"><iaixsl:value-of select="/shop/contact/link/@url"/></iaixsl:attribute>
                                                                                Preis auf Anfrage
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
                                                                            <iaixsl:value-of select="$var_points_net"/><span class="currency"> Pkt.</span>
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
                                                            Bewertung:<iaixsl:value-of disable-output-escaping="yes" select="@note"/>/5
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
        
            </iaixsl:template><iaixsl:template match="//image"><iaixsl:if test="@type='swf'"><object type="application/x-shockwave-flash"><iaixsl:attribute name="data"><iaixsl:value-of select="@src"/></iaixsl:attribute><iaixsl:attribute name="data"><iaixsl:value-of select="@src"/></iaixsl:attribute><iaixsl:attribute name="width"><iaixsl:value-of select="@width"/></iaixsl:attribute><iaixsl:attribute name="height"><iaixsl:value-of select="@height"/></iaixsl:attribute><param name="movie"><iaixsl:attribute name="value"><iaixsl:value-of select="@src"/></iaixsl:attribute></param><param name="bgcolor"><iaixsl:attribute name="bgcolor"><iaixsl:value-of select="@bgcolor"/></iaixsl:attribute></param></object></iaixsl:if><iaixsl:if test="not(@type='swf')"><img alt="" class="pic"><iaixsl:attribute name="src"><iaixsl:value-of select="@src"/></iaixsl:attribute><iaixsl:if test="@width &gt; 0"><iaixsl:attribute name="width"><iaixsl:value-of select="@width"/></iaixsl:attribute></iaixsl:if><iaixsl:if test="@height &gt; 0"><iaixsl:attribute name="height"><iaixsl:value-of select="@height"/></iaixsl:attribute></iaixsl:if></img></iaixsl:if></iaixsl:template><iaixsl:template name="escape-quote-string"><iaixsl:param name="str"/><iaixsl:param name="escape" select="'quot'"/><iaixsl:param name="quoting" select="'1'"/><iaixsl:variable name="escape_sign"><iaixsl:choose><iaixsl:when test="$escape=&quot;apos&quot;"><iaixsl:value-of select="&quot;'&quot;"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="string('&quot;')"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable><iaixsl:if test="$quoting"><iaixsl:value-of select="$escape_sign"/></iaixsl:if><iaixsl:choose><iaixsl:when test="contains($str,$escape_sign)"><iaixsl:variable name="before-first-apostrophe" select="substring-before($str,$escape_sign)"/><iaixsl:variable name="after-first-apostrophe" select="substring-after($str,$escape_sign)"/><iaixsl:value-of select="$before-first-apostrophe"/>\<iaixsl:value-of select="$escape_sign"/><iaixsl:text/><iaixsl:call-template name="escape-quote-string"><iaixsl:with-param name="str" select="$after-first-apostrophe"/><iaixsl:with-param name="escape" select="$escape"/><iaixsl:with-param name="quoting" select="0"/></iaixsl:call-template></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="$str"/></iaixsl:otherwise></iaixsl:choose><iaixsl:if test="$quoting"><iaixsl:value-of select="$escape_sign"/></iaixsl:if></iaixsl:template></iaixsl:stylesheet>