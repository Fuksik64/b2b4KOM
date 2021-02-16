<?xml version="1.0" encoding="UTF-8"?>
<iaixsl:stylesheet xmlns:php="http://php.net/xsl" xmlns:iaixsl="http://www.w3.org/1999/XSL/Transform" xmlns:iaielement="http://iai-system.com/ddd" xmlns:fb="http://www.facebook.com/2008/fbml" version="1.0" exclude-result-prefixes="php iaielement fb"><iaixsl:output indent="no" method="html" doctype-system="about:legacy-compat" version="1.0" encoding="UTF-8"/><iaixsl:strip-space elements="table tr td img"/><iaixsl:decimal-format name="yen" NaN="" grouping-separator="," decimal-separator="."/><iaixsl:template match="shop">
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
				</iaixsl:template><iaixsl:template match="//image"><iaixsl:if test="@type='swf'"><object type="application/x-shockwave-flash"><iaixsl:attribute name="data"><iaixsl:value-of select="@src"/></iaixsl:attribute><iaixsl:attribute name="data"><iaixsl:value-of select="@src"/></iaixsl:attribute><iaixsl:attribute name="width"><iaixsl:value-of select="@width"/></iaixsl:attribute><iaixsl:attribute name="height"><iaixsl:value-of select="@height"/></iaixsl:attribute><param name="movie"><iaixsl:attribute name="value"><iaixsl:value-of select="@src"/></iaixsl:attribute></param><param name="bgcolor"><iaixsl:attribute name="bgcolor"><iaixsl:value-of select="@bgcolor"/></iaixsl:attribute></param></object></iaixsl:if><iaixsl:if test="not(@type='swf')"><img alt="" class="pic"><iaixsl:attribute name="src"><iaixsl:value-of select="@src"/></iaixsl:attribute><iaixsl:if test="@width &gt; 0"><iaixsl:attribute name="width"><iaixsl:value-of select="@width"/></iaixsl:attribute></iaixsl:if><iaixsl:if test="@height &gt; 0"><iaixsl:attribute name="height"><iaixsl:value-of select="@height"/></iaixsl:attribute></iaixsl:if></img></iaixsl:if></iaixsl:template><iaixsl:template name="escape-quote-string"><iaixsl:param name="str"/><iaixsl:param name="escape" select="'quot'"/><iaixsl:param name="quoting" select="'1'"/><iaixsl:variable name="escape_sign"><iaixsl:choose><iaixsl:when test="$escape=&quot;apos&quot;"><iaixsl:value-of select="&quot;'&quot;"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="string('&quot;')"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable><iaixsl:if test="$quoting"><iaixsl:value-of select="$escape_sign"/></iaixsl:if><iaixsl:choose><iaixsl:when test="contains($str,$escape_sign)"><iaixsl:variable name="before-first-apostrophe" select="substring-before($str,$escape_sign)"/><iaixsl:variable name="after-first-apostrophe" select="substring-after($str,$escape_sign)"/><iaixsl:value-of select="$before-first-apostrophe"/>\<iaixsl:value-of select="$escape_sign"/><iaixsl:text/><iaixsl:call-template name="escape-quote-string"><iaixsl:with-param name="str" select="$after-first-apostrophe"/><iaixsl:with-param name="escape" select="$escape"/><iaixsl:with-param name="quoting" select="0"/></iaixsl:call-template></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="$str"/></iaixsl:otherwise></iaixsl:choose><iaixsl:if test="$quoting"><iaixsl:value-of select="$escape_sign"/></iaixsl:if></iaixsl:template></iaixsl:stylesheet>