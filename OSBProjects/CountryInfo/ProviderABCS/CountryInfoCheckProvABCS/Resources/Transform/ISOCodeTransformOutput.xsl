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
        <oracle-xsl-mapper:rootElement name="CountryISOCodeResponse"
                                       namespace="http://www.oorsprong.org/websamples.countryinfo"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="XSD">
        <oracle-xsl-mapper:schema location="../../../../Resources/CountryInfoEBM.xsd"/>
        <oracle-xsl-mapper:rootElement name="UlkeISOKodYanit" namespace="http://tempuri.org/PurchaseOrderSchema.xs"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [WED JUL 19 10:39:52 EEST 2023].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:param name="TransactionId"/>
  <xsl:template match="/">
    <tns:UlkeISOKodYanit>
      <tns:pReqInfo>
        <xsl:if test="$TransactionId">
          <tns:TRANSACTION_ID>
            <xsl:value-of select="$TransactionId"/>
          </tns:TRANSACTION_ID>
        </xsl:if>
        <tns:RETURN_CODE>100</tns:RETURN_CODE>
        <tns:RETURN_MESSAGE>Basarili</tns:RETURN_MESSAGE>
      </tns:pReqInfo>
      <xsl:if test="/ns0:CountryISOCodeResponse/ns0:CountryISOCodeResult">
        <tns:UlkeISOKodSonuc>
          <xsl:value-of select="/ns0:CountryISOCodeResponse/ns0:CountryISOCodeResult"/>
        </tns:UlkeISOKodSonuc>
      </xsl:if>
    </tns:UlkeISOKodYanit>
  </xsl:template>
</xsl:stylesheet>
