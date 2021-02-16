<?xml version="1.0" encoding="UTF-8"?>
<iaixsl:stylesheet xmlns:php="http://php.net/xsl" xmlns:iaixsl="http://www.w3.org/1999/XSL/Transform" xmlns:iaielement="http://iai-system.com/ddd" xmlns:fb="http://www.facebook.com/2008/fbml" version="1.0" exclude-result-prefixes="php iaielement fb"><iaixsl:output indent="no" method="html" doctype-system="about:legacy-compat" version="1.0" encoding="UTF-8"/><iaixsl:strip-space elements="table tr td img"/><iaixsl:decimal-format name="yen" NaN="" grouping-separator="," decimal-separator="."/><iaixsl:template match="shop">
						<div class="orderdetails_summary_price">
							<div class="orderdetails_calculations">
								<div class="orderdetails_product_summary">
									<label>Produktwert: </label>
									<strong><iaixsl:value-of select="page/prepaid/details/@currencycost_formatted"/></strong>
								</div>

								<iaixsl:if test="page/prepaid/details/@deliveryid != '47'">
									<div class="orderdetails_product_summary">
										<label>Zusätzliche Gebühren: </label>
										<strong id="additional_cost_prepaid"><iaixsl:value-of select="page/prepaid/details/@currency_additional_cost_formatted"/></strong>
									</div>
								</iaixsl:if>
								<div style="clear:both"/>
							</div>
							<iaixsl:if test="page/prepaid/details/@deliveryid != '47'">
								<div class="orderdetails_total_summary">
									<label>
										Gesamtzahlbetrag: 
									</label>
									<strong id="currencytotal_prepaid"><iaixsl:value-of select="page/prepaid/details/@currencytotal_formatted"/> inkl. MwSt.</strong>
									<iaixsl:if test="/shop/page/prepaid/points/@display">
										<span>
											 + 
											<iaixsl:value-of select="/shop/page/prepaid/points/@order_cost"/> Pkt. 
										</span>
									</iaixsl:if>
								</div>
							</iaixsl:if>
							
							<iaixsl:if test="(/shop/page/prepaid/details/@advance > 0)">
								<div class="orderdetails_product_summary advance">
										<label class="txt_wrap">Erforderliche Anzahlung: </label>
										<strong><iaixsl:value-of select="/shop/page/prepaid/details/@advance_formatted"/></strong>
								</div>
							</iaixsl:if>
							<iaixsl:if test="page/prepaid/prepaid_history/@currencysum and page/prepaid/prepaid_history/@currencysum != '0.00' and page/prepaid/prepaid_history/@currencysum != '-0.00' and /shop/page/prepaid/order/@payment_paid_formatted">
								<div class="orderdetails_product_summary already_paid">
									<label>Bereits bezahlt:</label>
									<strong><iaixsl:value-of select="/shop/page/prepaid/order/@payment_paid_formatted"/></strong>
								</div>
								<div class="orderdetails_product_summary left_to_pay">
									<label>Links zu zahlen:</label>
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
															Sie haben aber du hast deine Rückkehr aufgegeben
														</iaixsl:when>
														<iaixsl:otherwise>
															Sie haben aber Sie haben die Zahlung storniert
														</iaixsl:otherwise>
													</iaixsl:choose>
												</iaixsl:when>
												<iaixsl:otherwise>
													<iaixsl:choose>
														<iaixsl:when test="amount/@mark='negativ'">
															Sie haben
														</iaixsl:when>
														<iaixsl:otherwise>
															Sie haben
														</iaixsl:otherwise>
													</iaixsl:choose>
												</iaixsl:otherwise>
											</iaixsl:choose>
											<strong><iaixsl:value-of select="@payment_name"/></strong>
											<iaixsl:choose>
												<iaixsl:when test="amount/@mark='negativ'">
													 als Form der Rückgabe gewählt.
												</iaixsl:when>
												<iaixsl:otherwise>
													 als Zahlungsart ausgewählt.
												</iaixsl:otherwise>
											</iaixsl:choose>
											<br/>
											<iaixsl:if test="@first_pay = 'false' and @status = 'n' and /shop/page/prepaid/details/@msg = ''">
												<strong class="selected_payment_history_unfinished">Wenn Sie aus irgendeinem Grund den Zahlungsprozess nicht abgeschlossen haben.</strong>
											</iaixsl:if>

										</div>
									</div>
								</iaixsl:for-each>
							</iaixsl:if>
						</div>
					</iaixsl:template><iaixsl:template match="//image"><iaixsl:if test="@type='swf'"><object type="application/x-shockwave-flash"><iaixsl:attribute name="data"><iaixsl:value-of select="@src"/></iaixsl:attribute><iaixsl:attribute name="data"><iaixsl:value-of select="@src"/></iaixsl:attribute><iaixsl:attribute name="width"><iaixsl:value-of select="@width"/></iaixsl:attribute><iaixsl:attribute name="height"><iaixsl:value-of select="@height"/></iaixsl:attribute><param name="movie"><iaixsl:attribute name="value"><iaixsl:value-of select="@src"/></iaixsl:attribute></param><param name="bgcolor"><iaixsl:attribute name="bgcolor"><iaixsl:value-of select="@bgcolor"/></iaixsl:attribute></param></object></iaixsl:if><iaixsl:if test="not(@type='swf')"><img alt="" class="pic"><iaixsl:attribute name="src"><iaixsl:value-of select="@src"/></iaixsl:attribute><iaixsl:if test="@width &gt; 0"><iaixsl:attribute name="width"><iaixsl:value-of select="@width"/></iaixsl:attribute></iaixsl:if><iaixsl:if test="@height &gt; 0"><iaixsl:attribute name="height"><iaixsl:value-of select="@height"/></iaixsl:attribute></iaixsl:if></img></iaixsl:if></iaixsl:template><iaixsl:template name="escape-quote-string"><iaixsl:param name="str"/><iaixsl:param name="escape" select="'quot'"/><iaixsl:param name="quoting" select="'1'"/><iaixsl:variable name="escape_sign"><iaixsl:choose><iaixsl:when test="$escape=&quot;apos&quot;"><iaixsl:value-of select="&quot;'&quot;"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="string('&quot;')"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable><iaixsl:if test="$quoting"><iaixsl:value-of select="$escape_sign"/></iaixsl:if><iaixsl:choose><iaixsl:when test="contains($str,$escape_sign)"><iaixsl:variable name="before-first-apostrophe" select="substring-before($str,$escape_sign)"/><iaixsl:variable name="after-first-apostrophe" select="substring-after($str,$escape_sign)"/><iaixsl:value-of select="$before-first-apostrophe"/>\<iaixsl:value-of select="$escape_sign"/><iaixsl:text/><iaixsl:call-template name="escape-quote-string"><iaixsl:with-param name="str" select="$after-first-apostrophe"/><iaixsl:with-param name="escape" select="$escape"/><iaixsl:with-param name="quoting" select="0"/></iaixsl:call-template></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="$str"/></iaixsl:otherwise></iaixsl:choose><iaixsl:if test="$quoting"><iaixsl:value-of select="$escape_sign"/></iaixsl:if></iaixsl:template></iaixsl:stylesheet>