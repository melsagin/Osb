<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0"
                xmlns:UUIDUserFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.UUIDUserFunction"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:IsUserInGroupFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.IsUserInGroupFunction"
                xmlns:ns0="http://tempuri.org/PurchaseOrderSchema.xs"
                xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:IsUserInRoleFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.IsUserInRoleFunction"
                xmlns:XrefFunctions="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.functions.xref.XrefFunctions"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:DVMFunctions="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.functions.dvm.DVMFunctions"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:BasicCredentialsUserFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.BasicCredentialsUserFunction"
                exclude-result-prefixes="oracle-xsl-mapper xsi xsd xsl ns0 UUIDUserFunction IsUserInGroupFunction oraxsl IsUserInRoleFunction XrefFunctions DVMFunctions BasicCredentialsUserFunction"
                xmlns:plnk="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:client="http://xmlns.oracle.com/Service/CountryInfoCheckEBF/CountryInfoCheckEBF"
                xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/"
                xmlns:ns1="http://docs.oasis-open.org/wsbpel/2.0/plnktype"
                xmlns:ns2="http://xmlns.oracle.com/OSB/CountryInfo/CountryInfoCheckReqABCS">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../../../../Resources/CountryInfoCheckEBF.wsdl"/>
        <oracle-xsl-mapper:rootElement name="TumUlkeBilgileriYanit"
                                       namespace="http://tempuri.org/PurchaseOrderSchema.xs"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="WSDL">
        <oracle-xsl-mapper:schema location="../../../../Resources/CountryInfoCheckReqABCS.wsdl"/>
        <oracle-xsl-mapper:rootElement name="FULL_COUNTRY_INFO_RESPONSE_REQ"
                                       namespace="http://tempuri.org/PurchaseOrderSchema.xs"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [TUE AUG 01 09:13:22 EEST 2023].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:template match="/">
    <ns0:FULL_COUNTRY_INFO_RESPONSE_REQ>
      <xsl:if test="/ns0:TumUlkeBilgileriYanit/ns0:pReqInfo">
        <ns0:P_REQ_INFO>
          <xsl:if test="/ns0:TumUlkeBilgileriYanit/ns0:pReqInfo/ns0:TRANSACTION_ID">
            <ns0:TRANSACTION_ID>
              <xsl:value-of select="/ns0:TumUlkeBilgileriYanit/ns0:pReqInfo/ns0:TRANSACTION_ID"/>
            </ns0:TRANSACTION_ID>
          </xsl:if>
          <xsl:if test="/ns0:TumUlkeBilgileriYanit/ns0:pReqInfo/ns0:RETURN_CODE">
            <ns0:RETURN_CODE>
              <xsl:value-of select="/ns0:TumUlkeBilgileriYanit/ns0:pReqInfo/ns0:RETURN_CODE"/>
            </ns0:RETURN_CODE>
          </xsl:if>
          <xsl:if test="/ns0:TumUlkeBilgileriYanit/ns0:pReqInfo/ns0:RETURN_MESSAGE">
            <ns0:RETURN_MESSAGE>
              <xsl:value-of select="/ns0:TumUlkeBilgileriYanit/ns0:pReqInfo/ns0:RETURN_MESSAGE"/>
            </ns0:RETURN_MESSAGE>
          </xsl:if>
        </ns0:P_REQ_INFO>
      </xsl:if>
      <xsl:if test="/ns0:TumUlkeBilgileriYanit/ns0:TumUlkeBilgileriSonuc">
        <ns0:FULL_COUNTRY_INFO_RESULT>
          <xsl:if test="/ns0:TumUlkeBilgileriYanit/ns0:TumUlkeBilgileriSonuc/ns0:sISOKod">
            <ns0:S_ISO_CODE>
              <xsl:value-of select="/ns0:TumUlkeBilgileriYanit/ns0:TumUlkeBilgileriSonuc/ns0:sISOKod"/>
            </ns0:S_ISO_CODE>
          </xsl:if>
          <xsl:if test="/ns0:TumUlkeBilgileriYanit/ns0:TumUlkeBilgileriSonuc/ns0:sAd">
            <ns0:S_NAME>
              <xsl:value-of select="/ns0:TumUlkeBilgileriYanit/ns0:TumUlkeBilgileriSonuc/ns0:sAd"/>
            </ns0:S_NAME>
          </xsl:if>
          <xsl:if test="/ns0:TumUlkeBilgileriYanit/ns0:TumUlkeBilgileriSonuc/ns0:sBaskent">
            <ns0:S_CAPITAL_CITY>
              <xsl:value-of select="/ns0:TumUlkeBilgileriYanit/ns0:TumUlkeBilgileriSonuc/ns0:sBaskent"/>
            </ns0:S_CAPITAL_CITY>
          </xsl:if>
          <xsl:if test="/ns0:TumUlkeBilgileriYanit/ns0:TumUlkeBilgileriSonuc/ns0:sTelefonKod">
            <ns0:S_PHONE_CODE>
              <xsl:value-of select="/ns0:TumUlkeBilgileriYanit/ns0:TumUlkeBilgileriSonuc/ns0:sTelefonKod"/>
            </ns0:S_PHONE_CODE>
          </xsl:if>
          <xsl:if test="/ns0:TumUlkeBilgileriYanit/ns0:TumUlkeBilgileriSonuc/ns0:sKitaKod">
            <ns0:S_CONTINENT_CODE>
              <xsl:value-of select="/ns0:TumUlkeBilgileriYanit/ns0:TumUlkeBilgileriSonuc/ns0:sKitaKod"/>
            </ns0:S_CONTINENT_CODE>
          </xsl:if>
          <xsl:if test="/ns0:TumUlkeBilgileriYanit/ns0:TumUlkeBilgileriSonuc/ns0:sParaBirimiISOKod">
            <ns0:S_CURRENCY_ISO_CODE>
              <xsl:value-of select="/ns0:TumUlkeBilgileriYanit/ns0:TumUlkeBilgileriSonuc/ns0:sParaBirimiISOKod"/>
            </ns0:S_CURRENCY_ISO_CODE>
          </xsl:if>
          <xsl:if test="/ns0:TumUlkeBilgileriYanit/ns0:TumUlkeBilgileriSonuc/ns0:sUlkeBayragi">
            <ns0:S_COUNTRY_FLAG>
              <xsl:value-of select="/ns0:TumUlkeBilgileriYanit/ns0:TumUlkeBilgileriSonuc/ns0:sUlkeBayragi"/>
            </ns0:S_COUNTRY_FLAG>
          </xsl:if>
          <ns0:LANGUAGES>
            <xsl:for-each select="/ns0:TumUlkeBilgileriYanit/ns0:TumUlkeBilgileriSonuc/ns0:Dilleri/ns0:tDil">
              <ns0:T_LANGUAGE>
                <xsl:if test="ns0:sISOKod">
                  <ns0:S_ISO_CODE>
                    <xsl:value-of select="ns0:sISOKod"/>
                  </ns0:S_ISO_CODE>
                </xsl:if>
                <xsl:if test="ns0:sAd">
                  <ns0:S_NAME>
                    <xsl:value-of select="ns0:sAd"/>
                  </ns0:S_NAME>
                </xsl:if>
              </ns0:T_LANGUAGE>
            </xsl:for-each>
          </ns0:LANGUAGES>
        </ns0:FULL_COUNTRY_INFO_RESULT>
      </xsl:if>
    </ns0:FULL_COUNTRY_INFO_RESPONSE_REQ>
  </xsl:template>
</xsl:stylesheet>
