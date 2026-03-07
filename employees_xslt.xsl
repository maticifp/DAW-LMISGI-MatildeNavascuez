<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
		<html>
			<head>
				<title>Llista d'Empleats</title>
				<style>
                    body { font-family: Arial, sans-serif; margin: 20px; }
                    h2 { color: #333; }
                    h3 { color: blue; font-size: 1.5em; margin-bottom: 5px; }
                    .nom-empleat { font-size: 18px; }
                    .dades-oficina { font-style: italic; color: red; }
                    b { color: black; }
					.b_li { color: red; }
                </style>
			</head>
			<body>
				<h2>Llista d'empleats</h2>
				<ul>
					<xsl:for-each select="employees/employee">
						<xsl:sort select="firstName"/>
						<li>
							<h3>Empleat amb id <xsl:value-of select="@employeeNumber"/>
							</h3>
							<ul>
								<li>
									<span class="nom-empleat">
										<b>Nom: </b>
										<xsl:value-of select="firstName"/> <xsl:value-of select="lastName"/>
									</span>
								</li>
								<li>
									<b>Correu: </b>
									<xsl:value-of select="email"/>
								</li>
								<li>
									<b>Extensió: </b>
									<xsl:value-of select="extension"/>
								</li>
								<li>
									<b>Id del seu superior: </b>
									<xsl:value-of select="reportsTo"/>
								</li>
								<li>
									<b>Posició: </b>
									<xsl:value-of select="jobTitle"/>
								</li>
								<li>
									<b>Dades de l'oficina: <xsl:value-of select="office/@ofCode"/></b>
									<ul class="dades-oficina">
										
										<li>
											<b class="b_li">Teléfon: </b>
											<xsl:value-of select="office/Phone"/>
										</li>
										<li>
											<b class="b_li">Adreça: </b>
											<xsl:value-of select="office/AddressLine1"/>, <xsl:value-of select="office/AddressLine2"/>
										</li>
										<li>
											<b class="b_li">Estat: </b>
											<xsl:value-of select="office/State"/>
										</li>
										<li>
											<b class="b_li">País: </b>
											<xsl:value-of select="office/Country"/>
										</li>
										<li>
											<b class="b_li">Codi Postal: </b>
											<xsl:value-of select="office/PostalCode"/>
										</li>
										<li>
											<b class="b_li">Territori: </b>
											<xsl:value-of select="office/Territory"/>
										</li>
									</ul>
								</li>
							</ul>
							<br/>
						</li>
					</xsl:for-each>
				</ul>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>