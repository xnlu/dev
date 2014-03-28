<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<body>
				<h1>Applications</h1>
				<ol>
					<xsl:for-each select="developer/application">
						<xsl:sort select="name"/>
						<xsl:if test="price &lt; 25">
							<li>
								<span class="id">
									<xsl:value-of select="id"></xsl:value-of>
								</span>
								<span class="name">
									<xsl:value-of select="name"></xsl:value-of>
								</span>
								<span class="price">
									<xsl:value-of select="price"></xsl:value-of>
								</span>
						</li>
						</xsl:if>
					</xsl:for-each>
				</ol>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>