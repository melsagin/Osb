<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0"
                xmlns:UUIDUserFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.UUIDUserFunction"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:IsUserInGroupFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.IsUserInGroupFunction"
                xmlns:ns0="http://tempuri.org/PurchaseOrderSchema.xs"
                xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:IsUserInRoleFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.IsUserInRoleFunction"
                xmlns:XrefFunctions="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.functions.xref.XrefFunctions"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:DVMFunctions="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.functions.dvm.DVMFunctions"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:BasicCredentialsUserFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.BasicCredentialsUserFunction"
                exclude-result-prefixes="oracle-xsl-mapper xsi xsd xsl ns0 oraext UUIDUserFunction IsUserInGroupFunction oraxsl IsUserInRoleFunction XrefFunctions DVMFunctions BasicCredentialsUserFunction"
                xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:client="http://xmlns.oracle.com/OSB/CountryInfo/CountryInfoCheckReqABCS"
                xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/"
                xmlns:ns2="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:ns1="http://xmlns.oracle.com/Service/CountryInfoCheckEBF/CountryInfoCheckEBF">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../../../../Resources/CountryInfoCheckReqABCS.wsdl"/>
        <oracle-xsl-mapper:rootElement name="COUNTRY_ISO_CODE_REQUEST_REQ"
                                       namespace="http://tempuri.org/PurchaseOrderSchema.xs"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="WSDL">
        <oracle-xsl-mapper:schema location="../../../../Resources/CountryInfoCheckEBF.wsdl"/>
        <oracle-xsl-mapper:rootElement name="UlkeISOKodIstek" namespace="http://tempuri.org/PurchaseOrderSchema.xs"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [FRI JUL 28 15:30:37 EEST 2023].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:template match="/">
    <ns0:UlkeISOKodIstek>
      <ns0:pReqInfo>
        <ns0:TRANSACTION_ID>
          <xsl:value-of select="oraext:generate-guid()"/>
        </ns0:TRANSACTION_ID>
        <ns0:RETURN_CODE>129</ns0:RETURN_CODE>
        <ns0:RETURN_MESSAGE>İşlem başlatıldı.</ns0:RETURN_MESSAGE>
      </ns0:pReqInfo>
      <xsl:if test="/ns0:COUNTRY_ISO_CODE_REQUEST_REQ/ns0:S_COUNTRY_NAME">
        <ns0:sUlkeAdi>
          <xsl:value-of select="/ns0:COUNTRY_ISO_CODE_REQUEST_REQ/ns0:S_COUNTRY_NAME"/>
        </ns0:sUlkeAdi>
      </xsl:if>
    </ns0:UlkeISOKodIstek>
  </xsl:template>
</xsl:stylesheet>
