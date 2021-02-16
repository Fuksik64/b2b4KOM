<?xml version="1.0" encoding="UTF-8"?>
<iaixsl:stylesheet xmlns:php="http://php.net/xsl" xmlns:iaixsl="http://www.w3.org/1999/XSL/Transform" xmlns:iaielement="http://iai-system.com/ddd" xmlns:fb="http://www.facebook.com/2008/fbml" version="1.0" exclude-result-prefixes="php iaielement fb"><iaixsl:output indent="no" method="html" doctype-system="about:legacy-compat" version="1.0" encoding="UTF-8"/><iaixsl:strip-space elements="table tr td img"/><iaixsl:decimal-format name="yen" NaN="" grouping-separator="," decimal-separator="."/><iaixsl:template match="shop">
            <div id="orderdetails_payments">
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
                        <div class="show_history_container">
                            <a href="#orderdetails_payments_content">View payment history</a>
                        </div>
                    </iaixsl:if>
                    <div id="orderdetails_payments_content" class="orderdetails_payments_content">
                        <iaixsl:if test="page/prepaid/details/@paymentstatus != 'g' and /shop/page/prepaid_methods/item and (page/prepaid/prepaid_history/item[position() = last()]/@status = 'n' or page/prepaid/prepaid_history/@show_payment_button = 'true')">
                            <iaixsl:attribute name="style">display: none;</iaixsl:attribute>
                        </iaixsl:if>
                        <h2 class="big_label">
                            <span>Payment history </span>
                            <iaixsl:if test="page/prepaid/order/@payment_info = 'true'">
                                <a href="#payment_status_explanation" class="show_status_explanation"><i class="icon-question"></i></a>
                                <div style="display:none;"><iaixsl:value-of disable-output-escaping="yes" select="page/prepaid/payment_status_explanation"/></div>
                            </iaixsl:if>

                        </h2>
                        <table>
                            <iaixsl:for-each select="page/prepaid/prepaid_history/item">
                                <iaixsl:if test="not(count(/shop/page/prepaid/prepaid_history/item) - position() > 10)">
                                    <tr>
                                        <td class="icon">
                                            <iaixsl:if test="@icon">
                                                <img>
                                                    <iaixsl:attribute name="src"><iaixsl:value-of select="@icon"/></iaixsl:attribute>
                                                    <iaixsl:attribute name="alt"><iaixsl:value-of select="@payment_name"/></iaixsl:attribute>
                                                </img>
                                            </iaixsl:if>
                                        </td>
                                        <td class="date add_td">
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
                                        </td>
                                        <td class="status add_td">
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
                                                         Amount to pay is 
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

                                                        <table class="orderdetails_transfer">
                                                            <tr>
                                                                <td><span>Recipient name: </span></td>
                                                                <td><strong><iaixsl:value-of select="additional_info/data/@receiver"/></strong></td>
                                                            </tr>
                                                            <tr>
                                                                <td><span>Account number: </span></td>
                                                                <td><strong><iaixsl:value-of select="additional_info/data/@account"/></strong></td>
                                                            </tr>

                                                            <iaixsl:if test="additional_info/data/@bankname != ''">
                                                                <tr>
                                                                    <td><span>Bank: </span></td>
                                                                    <td><strong><iaixsl:value-of select="additional_info/data/@bankname"/></strong></td>
                                                                </tr>
                                                            </iaixsl:if>
                                                            <iaixsl:if test="additional_info/data/@swift_bic != ''">
                                                                <tr>
                                                                    <td><span>SWIFT: </span></td>
                                                                    <td><strong><iaixsl:value-of select="additional_info/data/@swift_bic"/></strong></td>
                                                                </tr>
                                                            </iaixsl:if>
                                                            <tr>
                                                                <td><span>Transfer title: </span></td>
                                                                <td><strong><iaixsl:value-of select="additional_info/data/@title"/></strong></td>
                                                            </tr>
                                                            <tr>
                                                                <td><span>Transfer amount: </span></td>
                                                                <td><strong>
                                                                    <iaixsl:value-of select="amount/client_currency/@value_formatted"/>

                                                                </strong>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </iaixsl:if>
                                                </iaixsl:if>
                                            </iaixsl:if>


                                        </td>
                                    </tr>

                                    
                                </iaixsl:if>
                            </iaixsl:for-each>
                        </table>
                    </div>


                </iaixsl:if>
            </div>
        </iaixsl:template><iaixsl:template match="//image"><iaixsl:if test="@type='swf'"><object type="application/x-shockwave-flash"><iaixsl:attribute name="data"><iaixsl:value-of select="@src"/></iaixsl:attribute><iaixsl:attribute name="data"><iaixsl:value-of select="@src"/></iaixsl:attribute><iaixsl:attribute name="width"><iaixsl:value-of select="@width"/></iaixsl:attribute><iaixsl:attribute name="height"><iaixsl:value-of select="@height"/></iaixsl:attribute><param name="movie"><iaixsl:attribute name="value"><iaixsl:value-of select="@src"/></iaixsl:attribute></param><param name="bgcolor"><iaixsl:attribute name="bgcolor"><iaixsl:value-of select="@bgcolor"/></iaixsl:attribute></param></object></iaixsl:if><iaixsl:if test="not(@type='swf')"><img alt="" class="pic"><iaixsl:attribute name="src"><iaixsl:value-of select="@src"/></iaixsl:attribute><iaixsl:if test="@width &gt; 0"><iaixsl:attribute name="width"><iaixsl:value-of select="@width"/></iaixsl:attribute></iaixsl:if><iaixsl:if test="@height &gt; 0"><iaixsl:attribute name="height"><iaixsl:value-of select="@height"/></iaixsl:attribute></iaixsl:if></img></iaixsl:if></iaixsl:template><iaixsl:template name="escape-quote-string"><iaixsl:param name="str"/><iaixsl:param name="escape" select="'quot'"/><iaixsl:param name="quoting" select="'1'"/><iaixsl:variable name="escape_sign"><iaixsl:choose><iaixsl:when test="$escape=&quot;apos&quot;"><iaixsl:value-of select="&quot;'&quot;"/></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="string('&quot;')"/></iaixsl:otherwise></iaixsl:choose></iaixsl:variable><iaixsl:if test="$quoting"><iaixsl:value-of select="$escape_sign"/></iaixsl:if><iaixsl:choose><iaixsl:when test="contains($str,$escape_sign)"><iaixsl:variable name="before-first-apostrophe" select="substring-before($str,$escape_sign)"/><iaixsl:variable name="after-first-apostrophe" select="substring-after($str,$escape_sign)"/><iaixsl:value-of select="$before-first-apostrophe"/>\<iaixsl:value-of select="$escape_sign"/><iaixsl:text/><iaixsl:call-template name="escape-quote-string"><iaixsl:with-param name="str" select="$after-first-apostrophe"/><iaixsl:with-param name="escape" select="$escape"/><iaixsl:with-param name="quoting" select="0"/></iaixsl:call-template></iaixsl:when><iaixsl:otherwise><iaixsl:value-of select="$str"/></iaixsl:otherwise></iaixsl:choose><iaixsl:if test="$quoting"><iaixsl:value-of select="$escape_sign"/></iaixsl:if></iaixsl:template></iaixsl:stylesheet>