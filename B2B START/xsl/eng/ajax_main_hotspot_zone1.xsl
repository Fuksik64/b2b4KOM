<?xml version="1.0" encoding="UTF-8"?>
<iaixsl:stylesheet xmlns:php="http://php.net/xsl" xmlns:iaixsl="http://www.w3.org/1999/XSL/Transform" xmlns:iaielement="http://iai-system.com/ddd" xmlns:fb="http://www.facebook.com/2008/fbml" version="1.0" exclude-result-prefixes="php iaielement fb"><iaixsl:output indent="no" method="html" doctype-system="about:legacy-compat" version="1.0" encoding="UTF-8"/><iaixsl:strip-space elements="table tr td img"/><iaixsl:decimal-format name="yen" NaN="" grouping-separator="," decimal-separator="."/><iaixsl:template match="shop">
                <iaixsl:if test="page/hotspot/products_zone1">
                    <section id="main_hotspot_zone1" class="hotspot mb-5">
                        
                        <iaixsl:variable name="headline_after_products_zone1">View all</iaixsl:variable>
                        
                        <iaixsl:if test="not(page/hotspot/products_zone1/product)">
                            <iaixsl:attribute name="data-ajaxLoad">true</iaixsl:attribute>
                            <iaixsl:attribute name="data-pageType">main</iaixsl:attribute>
                        </iaixsl:if>
                        <iaixsl:choose>
                            <iaixsl:when test="count(page/hotspot/products_zone1/product) > 0">
                                <iaixsl:variable name="main_hotspot_zone1_lazy">true</iaixsl:variable>
                                <iaixsl:variable name="main_hotspot_zone1_b2b_var">Product not available in retail sales. Please register to see the wholesale prices.</iaixsl:variable>

                                
                                <h2>
                                    <iaixsl:choose>
                                        <iaixsl:when test="page/hotspot/products_zone1/@link">
                                            <a class="headline">
                                                <iaixsl:attribute name="href"><iaixsl:value-of select="page/hotspot/products_zone1/@link"/></iaixsl:attribute>
                                                <iaixsl:attribute name="title">Click here to view all products</iaixsl:attribute>

                                                <span class="headline__name">
                                                    <iaixsl:choose>
                                                        <iaixsl:when test="page/hotspot/products_zone1/@name"><iaixsl:value-of select="page/hotspot/products_zone1/@name"/></iaixsl:when>
                                                        <iaixsl:otherwise>Special offers</iaixsl:otherwise>
                                                    </iaixsl:choose>
                                                </span>
                                                <iaixsl:if test="$headline_after_products_zone1">
                                                    <span class="headline__after"><iaixsl:value-of select="$headline_after_products_zone1"/></span>
                                                </iaixsl:if>
                                            </a>
                                        </iaixsl:when>
                                        <iaixsl:otherwise>
                                            <span class="headline">
                                                <span class="headline__name">
                                                    <iaixsl:choose>
                                                        <iaixsl:when test="page/hotspot/products_zone1/@name"><iaixsl:value-of select="page/hotspot/products_zone1/@name"/></iaixsl:when>
                                                        <iaixsl:otherwise>Special offers</iaixsl:otherwise>
                                                    </iaixsl:choose>
                                                </span>
                                            </span>
                                        </iaixsl:otherwise>
                                    </iaixsl:choose>
                                </h2>
                                <div class="products d-flex flex-wrap">
                                    <div class="col-12 col-sm-8">
                                        <ul class="slickslider">
                                            <iaixsl:for-each select="page/hotspot/products_zone1/product[not(position() > 4)]">
                                                <li class="d-flex align-items-start">
                                                    
                                                    <a class="product__icon d-flex justify-content-center align-self-center align-items-center col-6">
                                                        <iaixsl:attribute name="data-product-id"><iaixsl:value-of select="@id"/></iaixsl:attribute>
                                                        <iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
                                                        <iaixsl:attribute name="title"><iaixsl:value-of disable-output-escaping="yes" select="name/text()"/></iaixsl:attribute>
                                                        <img src="/gfx/eng/loader.gif?r=1600678618">
                                                            <iaixsl:choose>
                                                                <iaixsl:when test="$main_hotspot_zone1_lazy">
                                                                    <iaixsl:attribute name="data-src-small"><iaixsl:value-of disable-output-escaping="yes" select="icon"/></iaixsl:attribute>
                                                                    <iaixsl:attribute name="data-src"><iaixsl:value-of disable-output-escaping="yes" select="icon"/></iaixsl:attribute>
                                                                    <iaixsl:attribute name="class">b-lazy</iaixsl:attribute>
                                                                </iaixsl:when>
                                                                <iaixsl:otherwise>
                                                                    <iaixsl:attribute name="src"><iaixsl:value-of select="icon"/></iaixsl:attribute>
                                                                </iaixsl:otherwise>
                                                            </iaixsl:choose>
                                                            <iaixsl:attribute name="alt"><iaixsl:value-of disable-output-escaping="yes" select="name/text()"/></iaixsl:attribute>
                                                        </img>
                                                    </a>

                                                    <div class="col-6 product__description">
                                                        
                                                        <h3>
                                                            <a class="product__name">
                                                                <iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
                                                                <iaixsl:attribute name="title"><iaixsl:value-of disable-output-escaping="yes" select="name/text()"/></iaixsl:attribute>
                                                                <iaixsl:value-of disable-output-escaping="yes" select="name/text()"/>
                                                            </a>
                                                        </h3>

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
                                                                                    <iaixsl:value-of select="$var_points"/><span class="currency"> PTS</span>
                                                                                </span>
                                                                            </iaixsl:if>
                                                                        </iaixsl:when>
                                                                        <iaixsl:when test="(($var_value = 0) and $var_points = '') or ($var_value = 0 and $main_hotspot_zone1_b2b_var and not($main_hotspot_zone1_b2b_var = '') and not(/shop/basket/@wholesaler = 'true'))">
                                                                            <iaixsl:choose>
                                                                              <iaixsl:when test="$main_hotspot_zone1_b2b_var and not($main_hotspot_zone1_b2b_var = '')">
                                                                              <a class="price --phone" href="/signin.php">
                                                                                  <iaixsl:attribute name="title"><iaixsl:value-of select="$main_hotspot_zone1_b2b_var"/></iaixsl:attribute>
                                                                                  <iaixsl:value-of select="$main_hotspot_zone1_b2b_var"/>
                                                                              </a>
                                                                              </iaixsl:when>
                                                                              <iaixsl:otherwise>
                                                                                <a class="price --phone" href="/contact.php">
                                                                                  <iaixsl:attribute name="title">Click here to go to the contact form</iaixsl:attribute>
                                                                                  Call for Price
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
                                                                                    <iaixsl:value-of select="$var_points_net"/><span class="currency"> PTS</span>
                                                                                </span>
                                                                            </iaixsl:if>
                                                                        </iaixsl:when>
                                                                        <iaixsl:when test="(($var_net_value = 0) and $var_points_net = '') or ($var_net_value = 0 and $main_hotspot_zone1_b2b_var and not($main_hotspot_zone1_b2b_var = '') and not(/shop/basket/@wholesaler = 'true'))">
                                                                                <iaixsl:choose>
                                                                                    <iaixsl:when test="$main_hotspot_zone1_b2b_var and not($main_hotspot_zone1_b2b_var = '')">
                                                                                    <a class="price --phone" href="/signin.php">
                                                                                        <iaixsl:attribute name="title"><iaixsl:value-of select="$main_hotspot_zone1_b2b_var"/></iaixsl:attribute>
                                                                                        <iaixsl:value-of select="$main_hotspot_zone1_b2b_var"/>
                                                                                    </a>
                                                                                    </iaixsl:when>
                                                                                    <iaixsl:otherwise>
                                                                                     <a class="price --phone" href="/contact.php">
                                                                                        <iaixsl:attribute name="title">Click here to go to the contact form</iaixsl:attribute>
                                                                                        Call for Price
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
                                                        <iaixsl:if test="firm">
                                                            <div class="product__firm">
                                                                Producer:
                                                                <a>
                                                                    <iaixsl:attribute name="href"><iaixsl:value-of select="firm/@productslink"/></iaixsl:attribute>
                                                                    <iaixsl:value-of disable-output-escaping="yes" select="firm/@name"/>
                                                                </a>
                                                            </div>
                                                        </iaixsl:if>
                                                        <iaixsl:if test="cleardescription">
                                                            <div class="product__cleardescription mb-3">
                                                                <iaixsl:value-of disable-output-escaping="yes" select="cleardescription/text()"/>
                                                            </div>
                                                        </iaixsl:if>

                                                        <a class="btn --solid --medium  more-button">
                                                            <iaixsl:attribute name="href"><iaixsl:value-of select="@link"/></iaixsl:attribute>
                                                            Buy Now

                                                        </a>
                                                    </div>

                                                </li>
                                            </iaixsl:for-each>
                                        </ul>
                                    </div>
                                    <div id="slick-pager" class="col-12 col-sm-4 d-flex flex-wrap my-3 my-sm-0 p-0">
                                        <iaixsl:for-each select="page/hotspot/products_zone1/product[not(position() > 4)]">
                                            <a href="" class="col-3 col-sm-6 d-flex justify-content-center">
                                                <iaixsl:attribute name="data-slick-index"><iaixsl:value-of select="position()-1"/></iaixsl:attribute>

                                                <img src="/gfx/eng/loader.gif?r=1600678618">
                                                    <iaixsl:choose>
                                                        <iaixsl:when test="$main_hotspot_zone1_lazy">
                                                            <iaixsl:attribute name="data-src-small"><iaixsl:value-of disable-output-escaping="yes" select="icon_small"/></iaixsl:attribute>
                                                            <iaixsl:attribute name="data-src"><iaixsl:value-of disable-output-escaping="yes" select="icon_small"/></iaixsl:attribute>
                                                            <iaixsl:attribute name="class">b-lazy</iaixsl:attribute>
                                                        </iaixsl:when>
                                                        <iaixsl:otherwise>
                                                            <iaixsl:attribute name="src"><iaixsl:value-of select="icon_small"/></iaixsl:attribute>
                                                        </iaixsl:otherwise>
                                                    </iaixsl:choose>
                                                    <iaixsl:attribute name="alt"><iaixsl:value-of disable-output-escaping="yes" select="name/text()"/></iaixsl:attribute>
                                                </img>
                                            </a>
                                        </iaixsl:for-each>
                                    </div>
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

                <iaixsl:if test="/shop/page/hotspot/products_zone1/@hotspot_ajax"> </iaixsl:if>
                <iaixsl:if test="/shop/page/hotspot/products_zone1/product/sizes/size/availability/@id"> </iaixsl:if>
                <iaixsl:if test="/shop/page/hotspot/products_zone1/product/category/@id"> </iaixsl:if>
                <iaixsl:if test="/shop/page/hotspot/products_zone1/product/@version_name"> </iaixsl:if>
                <iaixsl:if test="/shop/page/hotspot/products_zone1/product/price/@price_formatted"> </iaixsl:if>
                <iaixsl:if test="/shop/page/hotspot/products_zone1/product/price/@detalprice_net_formatted"> </iaixsl:if>
                <iaixsl:if test="/shop/page/hotspot/products_zone1/product/price/@price_formatted"> </iaixsl:if>
                <iaixsl:if test="/shop/page/hotspot/products_zone1/product/price/@price_net_formatted"> </iaixsl:if>
                <iaixsl:if test="/shop/page/hotspot/products_zone1/product/price/@value=0"> </iaixsl:if>
                <iaixsl:if test="/shop/page/hotspot/products_zone1/product/price/@maxprice_net_formatted"> </iaixsl:if>

            </iaixsl:template><iaixsl:template match="//image"><iaixsl:if test="@type='swf'"><object type="application/x-shockwave-flash"><iaixsl:attribute name="data"><iaixsl:value-of select="@src"/></iaixsl:attribute><iaixsl:attribute name="data"><iaixsl:value-of select="@src"/></iaixsl:attribute><iaixsl:attribute name="width"><iaixsl:value-of select="@width"/></iaixsl:attribute><iaixsl:attribute name="height"><iaixsl:value-of select="@height"/></iaixsl:attribute><param name="movie"><iaixsl:attribute name="value"><iaixsl:value-of select="@src"/></iaixsl:attribute></param><param name="bgcolor"><iaixsl:attribute name="bgcolor"><iaixsl:value-of select="@bgcolor"/></iaixsl:attribute></param></object></iaixsl:if><iaixsl:if test="not(@type='swf')"><img alt="" class="pic"><iaixsl:attribute name="src"><iaixsl:value-of select="@src"/></iaixsl:attribute><iaixsl:if test="@width &gt; 0"><iaixsl:attribute name="width"><iaixsl:value-of select="@width"/></iaixsl:attribute></iaixsl:if><iaixsl:if test="@height &gt; 0"><iaixsl:attribute name="height"><iaixsl:value-of select="@height"/></iaixsl:attribute></iaixsl:if></img></iaixsl:if></iaixsl:template><iaixsl:template name="escape-quote-string"><iaixsl:param name="str"/><iaixsl:param name="escape" select="'quot'"/><iaixsl:param name="quoting" select="'1'"/><iaixsl:variable name="escape_sign"><iaixsl:choose><iaixsl:when test="$escape=&quot;apos&quot;"><iaixsl:value-of select="&quot;'&quot;"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="string('&quot;')"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable><iaixsl:if test="$quoting"><iaixsl:value-of select="$escape_sign"/></iaixsl:if><iaixsl:choose><iaixsl:when test="contains($str,$escape_sign)"><iaixsl:variable name="before-first-apostrophe" select="substring-before($str,$escape_sign)"/><iaixsl:variable name="after-first-apostrophe" select="substring-after($str,$escape_sign)"/><iaixsl:value-of select="$before-first-apostrophe"/>\<iaixsl:value-of select="$escape_sign"/><iaixsl:text/><iaixsl:call-template name="escape-quote-string"><iaixsl:with-param name="str" select="$after-first-apostrophe"/><iaixsl:with-param name="escape" select="$escape"/><iaixsl:with-param name="quoting" select="0"/></iaixsl:call-template></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="$str"/></iaixsl:otherwise></iaixsl:choose><iaixsl:if test="$quoting"><iaixsl:value-of select="$escape_sign"/></iaixsl:if></iaixsl:template></iaixsl:stylesheet>