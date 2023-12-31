<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:ns0="http://www.oorsprong.org/websamples.countryinfo"
                xmlns:UUIDUserFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.UUIDUserFunction"
                xmlns:IsUserInGroupFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.IsUserInGroupFunction"
                xmlns:IsUserInRoleFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.IsUserInRoleFunction"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:DVMFunctions="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.functions.dvm.DVMFunctions"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:tns="http://tempuri.org/PurchaseOrderSchema.xs"
                xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:XrefFunctions="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.functions.xref.XrefFunctions"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:BasicCredentialsUserFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.BasicCredentialsUserFunction"
                exclude-result-prefixes="xsd oracle-xsl-mapper xsi xsl ns0 tns UUIDUserFunction IsUserInGroupFunction IsUserInRoleFunction DVMFunctions oraxsl XrefFunctions BasicCredentialsUserFunction"
                xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/"
                xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../../../BS/CountryInfo.wsdl"/>
        <oracle-xsl-mapper:rootElement name="FullCountryInfoResponse"
                                       namespace="http://www.oorsprong.org/websamples.countryinfo"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="XSD">
        <oracle-xsl-mapper:schema location="../../../../Resources/CountryInfoEBM.xsd"/>
        <oracle-xsl-mapper:rootElement name="TumUlkeBilgileriYanit"
                                       namespace="http://tempuri.org/PurchaseOrderSchema.xs"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [WED JUL 19 10:50:18 EEST 2023].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:param name="TransactionId"/>
  <xsl:template match="/">
    <tns:TumUlkeBilgileriYanit>
      <tns:pReqInfo>
        <xsl:if test="$TransactionId">
          <tns:TRANSACTION_ID>
            <xsl:value-of select="$TransactionId"/>
          </tns:TRANSACTION_ID>
        </xsl:if>
        <tns:RETURN_CODE>100</tns:RETURN_CODE>
        <tns:RETURN_MESSAGE>Basarili</tns:RETURN_MESSAGE>
      </tns:pReqInfo>
      <xsl:if test="/ns0:FullCountryInfoResponse/ns0:FullCountryInfoResult">
        <tns:TumUlkeBilgileriSonuc>
          <xsl:if test="/ns0:FullCountryInfoResponse/ns0:FullCountryInfoResult/ns0:sISOCode">
            <tns:sISOKod>
              <xsl:value-of select="/ns0:FullCountryInfoResponse/ns0:FullCountryInfoResult/ns0:sISOCode"/>
            </tns:sISOKod>
          </xsl:if>
          <xsl:if test="/ns0:FullCountryInfoResponse/ns0:FullCountryInfoResult/ns0:sName">
            <tns:sAd>
              <xsl:value-of select="/ns0:FullCountryInfoResponse/ns0:FullCountryInfoResult/ns0:sName"/>
            </tns:sAd>
          </xsl:if>
          <xsl:if test="/ns0:FullCountryInfoResponse/ns0:FullCountryInfoResult/ns0:sCapitalCity">
            <tns:sBaskent>
              <xsl:value-of select="/ns0:FullCountryInfoResponse/ns0:FullCountryInfoResult/ns0:sCapitalCity"/>
            </tns:sBaskent>
          </xsl:if>
          <xsl:if test="/ns0:FullCountryInfoResponse/ns0:FullCountryInfoResult/ns0:sPhoneCode">
            <tns:sTelefonKod>
              <xsl:value-of select="/ns0:FullCountryInfoResponse/ns0:FullCountryInfoResult/ns0:sPhoneCode"/>
            </tns:sTelefonKod>
          </xsl:if>
          <xsl:if test="/ns0:FullCountryInfoResponse/ns0:FullCountryInfoResult/ns0:sContinentCode">
            <tns:sKitaKod>
              <xsl:value-of select="/ns0:FullCountryInfoResponse/ns0:FullCountryInfoResult/ns0:sContinentCode"/>
            </tns:sKitaKod>
          </xsl:if>
          <xsl:if test="/ns0:FullCountryInfoResponse/ns0:FullCountryInfoResult/ns0:sCurrencyISOCode">
            <tns:sParaBirimiISOKod>
              <xsl:value-of select="/ns0:FullCountryInfoResponse/ns0:FullCountryInfoResult/ns0:sCurrencyISOCode"/>
            </tns:sParaBirimiISOKod>
          </xsl:if>
          <xsl:if test="/ns0:FullCountryInfoResponse/ns0:FullCountryInfoResult/ns0:sCountryFlag">
            <tns:sUlkeBayragi>
              <xsl:value-of select="/ns0:FullCountryInfoResponse/ns0:FullCountryInfoResult/ns0:sCountryFlag"/>
            </tns:sUlkeBayragi>
          </xsl:if>
          <xsl:if test="/ns0:FullCountryInfoResponse/ns0:FullCountryInfoResult/ns0:Languages">
            <tns:Dilleri>
              <xsl:for-each select="/ns0:FullCountryInfoResponse/ns0:FullCountryInfoResult/ns0:Languages/ns0:tLanguage">
                <tns:tDil>
                  <xsl:if test="ns0:sISOCode">
                    <tns:sISOKod>
                      <xsl:value-of select="ns0:sISOCode"/>
                    </tns:sISOKod>
                  </xsl:if>
                  <xsl:if test="ns0:sName">
                    <tns:sAd>
                      <xsl:value-of select="ns0:sName"/>
                    </tns:sAd>
                  </xsl:if>
                </tns:tDil>
              </xsl:for-each>
            </tns:Dilleri>
          </xsl:if>
        </tns:TumUlkeBilgileriSonuc>
      </xsl:if>
    </tns:TumUlkeBilgileriYanit>
  </xsl:template>
</xsl:stylesheet>
