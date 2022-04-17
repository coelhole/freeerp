SET SQL DIALECT 3;




/* table definitions */

/* LC001AR01 */
CREATE TABLE LC001AR01 (
    NUM3K          "numc3" NOT NULL,
    ALPHA3K			"upalpha3" NOT NULL,
    ALPHA2K			"upalpha2" NOT NULL,
	GEONMID			"pint",
	NUM3SPRG		"numc3" NOT NULL,
	NUM3M49			YN NOT NULL,
	NUM3ISO			YN NOT NULL,
	ALPHA3ISO		YN NOT NULL,
	ALPHA2ISO		YN NOT NULL,
	ACTV			YN NOT NULL,
	CONSTRAINT		PK_LC001AR01 PRIMARY KEY (NUM3K),
	CONSTRAINT		UQ_LC001AR01_001 UNIQUE (GEONMID)
);

/* LC001AR03 */
CREATE TABLE LC001AR03 (
    NUM3K          "numc3" NOT NULL,
    ALPHA3K			"upalpha3" NOT NULL,
    ALPHA2K			"upalpha2" NOT NULL,
	GEONMID			"pint",
	NUM3M49			YN NOT NULL,
	NUM3ISO			YN NOT NULL,
	ALPHA3ISO		YN NOT NULL,
	ALPHA2ISO		YN NOT NULL,
	ACTV			YN NOT NULL,
	CONSTRAINT		PK_LC001AR03 PRIMARY KEY (NUM3K),
	CONSTRAINT		UQ_LC001AR03_001 UNIQUE (GEONMID)
);

/* LC001AR04 */
CREATE TABLE LC001AR04 (
    NUM3K          "numc3" NOT NULL,
    ALPHA3K			"upalpha3" NOT NULL,
    ALPHA2K			"upalpha2" NOT NULL,
	GEONMID			"pint",
	NUM3SPRG		"numc3" NOT NULL,
	NUM3M49			YN NOT NULL,
	NUM3ISO			YN NOT NULL,
	ALPHA3ISO		YN NOT NULL,
	ALPHA2ISO		YN NOT NULL,
	ACTV			YN NOT NULL,
	CONSTRAINT		PK_LC001AR04 PRIMARY KEY (NUM3K),
	CONSTRAINT		UQ_LC001AR04_001 UNIQUE (GEONMID)
);

/* LC001AR05 */
CREATE TABLE LC001AR05 (
    NUM3K          "numc3" NOT NULL,
    ALPHA3K			"upalpha3" NOT NULL,
    ALPHA2K			"upalpha2" NOT NULL,
	GEONMID			"pint",
	NUM3SPRG		"numc3" NOT NULL,
	NUM3M49			YN NOT NULL,
	NUM3ISO			YN NOT NULL,
	ALPHA3ISO		YN NOT NULL,
	ALPHA2ISO		YN NOT NULL,
	ACTV			YN NOT NULL,
	CONSTRAINT		PK_LC001AR05 PRIMARY KEY (NUM3K),
	CONSTRAINT		UQ_LC001AR05_001 UNIQUE (GEONMID)
);

/* LC001AR06 */
CREATE TABLE LC001AR06 (
    NUM3K          "numc3" NOT NULL,
    ALPHA3K			"upalpha3" NOT NULL,
    ALPHA2K			"upalpha2" NOT NULL,
	GEONMID			"pint",
	NUM3SPRG		"numc3" NOT NULL,
	NUM3M49			YN NOT NULL,
	NUM3ISO			YN NOT NULL,
	ALPHA3ISO		YN NOT NULL,
	ALPHA2ISO		YN NOT NULL,
	ACTV			YN NOT NULL,
	CONSTRAINT		PK_LC001AR06 PRIMARY KEY (NUM3K),
	CONSTRAINT		UQ_LC001AR06_001 UNIQUE (GEONMID)
);

/* LC001AR07 */
CREATE TABLE LC001AR07 (
    NUM3K          "numc3" NOT NULL,
    ALPHA3K			"upalpha3" NOT NULL,
    ALPHA2K			"upalpha2" NOT NULL,
	GEONMID			"pint",
	NUM3SPRG		"numc3" NOT NULL,
	NUM3M49			YN NOT NULL,
	NUM3ISO			YN NOT NULL,
	ALPHA3ISO		YN NOT NULL,
	ALPHA2ISO		YN NOT NULL,
	ACTV			YN NOT NULL,
	CONSTRAINT		PK_LC001AR07 PRIMARY KEY (NUM3K),
	CONSTRAINT		UQ_LC001AR07_001 UNIQUE (GEONMID)
);

/* LC001AR08 */
CREATE TABLE LC001AR08 (
    NUM3K          "numc3" NOT NULL,
    ALPHA3K			"upalpha3" NOT NULL,
    ALPHA2K			"upalpha2" NOT NULL,
	GEONMID			"pint",
	NUM3SPRG		"numc3" NOT NULL,
	NUM3M49			YN NOT NULL,
	NUM3ISO			YN NOT NULL,
	ALPHA3ISO		YN NOT NULL,
	ALPHA2ISO		YN NOT NULL,
	ACTV			YN NOT NULL,
	CONSTRAINT		PK_LC001AR08 PRIMARY KEY (NUM3K),
	CONSTRAINT		UQ_LC001AR08_001 UNIQUE (GEONMID)
);

/* LC001AR09 */
CREATE TABLE LC001AR09 (
    NUM3K          "numc3" NOT NULL,
    ALPHA3K			"upalpha3" NOT NULL,
    ALPHA2K			"upalpha2" NOT NULL,
	GEONMID			"pint",
	NUM3SPRG		"numc3" NOT NULL,
	NUM3M49			YN NOT NULL,
	NUM3ISO			YN NOT NULL,
	ALPHA3ISO		YN NOT NULL,
	ALPHA2ISO		YN NOT NULL,
	ACTV			YN NOT NULL,
	CONSTRAINT		PK_LC001AR09 PRIMARY KEY (NUM3K),
	CONSTRAINT		UQ_LC001AR09_001 UNIQUE (GEONMID)
);

/* LC001AR10 */
CREATE TABLE LC001AR10 (
    TRRT		"numc3" NOT NULL,
    CNTR		"numc3" NOT NULL,
	CONSTRAINT	PK_LC001AR10 PRIMARY KEY (TRRT)
);

/* LC001AR11 */
CREATE TABLE LC001AR11 (
	OLDNUM3K		"numc3" NOT NULL,
	NEWNUM3K		"numc3" NOT NULL,
	CONSTRAINT	PK_LC001AR11 PRIMARY KEY (OLDNUM3K,NEWNUM3K)
);


/* table descriptions */

/* LC001AR01 */
COMMENT ON TABLE LC001AR01 IS
'country or area codes [códigos para países ou áreas geográficas]';

/* LC001AR03 */
COMMENT ON TABLE LC001AR03 IS
'continent codes [códigos para continentes]';

/* LC001AR04 */
COMMENT ON TABLE LC001AR04 IS
'subcontinent codes - LC001AR05-LC001AR06 union [códigos para subcontinentes - união LC001AR05-LC001AR06]';

/* LC001AR05 */
COMMENT ON TABLE LC001AR05 IS
'subcontinent codes - table 1 [códigos para subcontinentes - tabela 1]';

/* LC001AR06 */
COMMENT ON TABLE LC001AR06 IS
'subcontinent codes - table 2 [códigos para subcontinentes - tabela 2]';

/* LC001AR07 */
COMMENT ON TABLE LC001AR07 IS
'country codes - LC001AR08-LC001AR09 union [códigos para países - união LC001AR08-LC001AR09]';

/* LC001AR08 */
COMMENT ON TABLE LC001AR08 IS
'country or territory codes - table 1 [códigos para países ou territórios - tabela 1]';

/* LC001AR09 */
COMMENT ON TABLE LC001AR09 IS
'country or territory codes - table 2 [códigos para países ou territórios - tabela 2]';

/* LC001AR10 */
COMMENT ON TABLE LC001AR10 IS
'territory-country codes relation [relação de códigos território-país]';

/* LC001AR11 */
COMMENT ON TABLE LC001AR11 IS
'codes no longer in use - old-new numeric-3 codes mapping [códigos desusados - mapeamento dos códigos de 3 dígitos numéricos antigos-novos]';



/* field descriptions */

/* LC001AR01 */

COMMENT ON COLUMN LC001AR01.NUM3K IS
'country or area numeric-3 code [código de país ou área de 3 dígitos numéricos]';

COMMENT ON COLUMN LC001AR01.NUM3SPRG IS
'super region numeric-3 code [código de país ou área, de 3 dígitos numéricos, da super-região]';

COMMENT ON COLUMN LC001AR01.ALPHA3K IS
'alpha-3 code [código de país ou área de 3 letras]';

COMMENT ON COLUMN LC001AR01.ALPHA2K IS
'alpha-2 code [código de país ou área de 2 letras]';

COMMENT ON COLUMN LC001AR01.GEONMID IS
'geoname ID [ID do nome geográfico]';

COMMENT ON COLUMN LC001AR01.NUM3M49 IS
'is numeric-3 key an UN-M49 code? [o código de 3 dígitos numéricos é um código M49-ONU?]';

COMMENT ON COLUMN LC001AR01.NUM3ISO IS
'is numeric-3 key an ISO 3166-1 numeric code? [o código de 3 dígitos numéricos é um código ISO 3166-1 numérico?]';

COMMENT ON COLUMN LC001AR01.ALPHA3ISO IS
'is alpha-3 key an ISO 3166-1 alpha-3 code? [o código de 3 letras é um código ISO 3166-1 de 3 letras?]';

COMMENT ON COLUMN LC001AR01.ALPHA2ISO IS
'is alpha-2 key an ISO 3166-1 alpha-2 code? [o código de 2 letras é um código ISO 3166-1 de 2 letras?]';

COMMENT ON COLUMN LC001AR01.ACTV IS
'active [ativo]';

/* LC001AR03 */

COMMENT ON COLUMN LC001AR03.NUM3K IS
'continent numeric-3 code [código de 3 dígitos numéricos para o continente]';

COMMENT ON COLUMN LC001AR03.ALPHA3K IS
'continent alpha-3 code [código de 3 letras para o continente]';

COMMENT ON COLUMN LC001AR03.ALPHA2K IS
'continent alpha-2 code [código de 2 letras para o continente]';

COMMENT ON COLUMN LC001AR03.GEONMID IS
'geoname ID [ID do nome geográfico]';

COMMENT ON COLUMN LC001AR03.NUM3M49 IS
'is numeric-3 key an UN-M49 code? [o código de 3 dígitos numéricos é um código M49-ONU?]';

COMMENT ON COLUMN LC001AR03.NUM3ISO IS
'is numeric-3 key an ISO 3166-1 numeric code? [o código de 3 dígitos numéricos é um código ISO 3166-1 numérico?]';

COMMENT ON COLUMN LC001AR03.ALPHA3ISO IS
'is alpha-3 key an ISO 3166-1 alpha-3 code? [o código de 3 letras é um código ISO 3166-1 de 3 letras?]';

COMMENT ON COLUMN LC001AR03.ALPHA2ISO IS
'is alpha-2 key an ISO 3166-1 alpha-2 code? [o código de 2 letras é um código ISO 3166-1 de 2 letras?]';

COMMENT ON COLUMN LC001AR03.ACTV IS
'active [ativo]';

/* LC001AR04 */

COMMENT ON COLUMN LC001AR04.NUM3K IS
'subcontinent numeric-3 code [código de 3 dígitos numéricos para o subcontinente]';

COMMENT ON COLUMN LC001AR04.NUM3SPRG IS
'super region numeric-3 code [código de 3 dígitos numéricos da super-região]';

COMMENT ON COLUMN LC001AR04.ALPHA3K IS
'subcontinent alpha-3 code [código de 3 letras para o subcontinente]';

COMMENT ON COLUMN LC001AR04.ALPHA2K IS
'subcontinent alpha-2 code [código de 2 letras para o subcontinente]';

COMMENT ON COLUMN LC001AR04.GEONMID IS
'geoname ID [ID do nome geográfico]';

COMMENT ON COLUMN LC001AR04.NUM3M49 IS
'is numeric-3 key an UN-M49 code? [o código de 3 dígitos numéricos é um código M49-ONU?]';

COMMENT ON COLUMN LC001AR04.NUM3ISO IS
'is numeric-3 key an ISO 3166-1 numeric code? [o código de 3 dígitos numéricos é um código ISO 3166-1 numérico?]';

COMMENT ON COLUMN LC001AR04.ALPHA3ISO IS
'is alpha-3 key an ISO 3166-1 alpha-3 code? [o código de 3 letras é um código ISO 3166-1 de 3 letras?]';

COMMENT ON COLUMN LC001AR04.ALPHA2ISO IS
'is alpha-2 key an ISO 3166-1 alpha-2 code? [o código de 2 letras é um código ISO 3166-1 de 2 letras?]';

COMMENT ON COLUMN LC001AR04.ACTV IS
'active [ativo]';

/* LC001AR05 */

COMMENT ON COLUMN LC001AR05.NUM3K IS
'subcontinent numeric-3 code [código de 3 dígitos numéricos para o subcontinente]';

COMMENT ON COLUMN LC001AR05.NUM3SPRG IS
'super region numeric-3 code [código de 3 dígitos numéricos da super-região]';

COMMENT ON COLUMN LC001AR05.ALPHA3K IS
'subcontinent alpha-3 code [código de 3 letras para o subcontinente]';

COMMENT ON COLUMN LC001AR05.ALPHA2K IS
'subcontinent alpha-2 code [código de 2 letras para o subcontinente]';

COMMENT ON COLUMN LC001AR05.GEONMID IS
'geoname ID [ID do nome geográfico]';

COMMENT ON COLUMN LC001AR05.NUM3M49 IS
'is numeric-3 key an UN-M49 code? [o código de 3 dígitos numéricos é um código M49-ONU?]';

COMMENT ON COLUMN LC001AR05.NUM3ISO IS
'is numeric-3 key an ISO 3166-1 numeric code? [o código de 3 dígitos numéricos é um código ISO 3166-1 numérico?]';

COMMENT ON COLUMN LC001AR05.ALPHA3ISO IS
'is alpha-3 key an ISO 3166-1 alpha-3 code? [o código de 3 letras é um código ISO 3166-1 de 3 letras?]';

COMMENT ON COLUMN LC001AR05.ALPHA2ISO IS
'is alpha-2 key an ISO 3166-1 alpha-2 code? [o código de 2 letras é um código ISO 3166-1 de 2 letras?]';

COMMENT ON COLUMN LC001AR05.ACTV IS
'active [ativo]';

/* LC001AR06 */

COMMENT ON COLUMN LC001AR06.NUM3K IS
'subcontinent numeric-3 code [código de 3 dígitos numéricos para o subcontinente]';

COMMENT ON COLUMN LC001AR06.NUM3SPRG IS
'super region numeric-3 code [código de 3 dígitos numéricos da super-região]';

COMMENT ON COLUMN LC001AR06.ALPHA3K IS
'subcontinent alpha-3 code [código de 3 letras para o subcontinente]';

COMMENT ON COLUMN LC001AR06.ALPHA2K IS
'subcontinent alpha-2 code [código de 2 letras para o subcontinente]';

COMMENT ON COLUMN LC001AR06.GEONMID IS
'geoname ID [ID do nome geográfico]';

COMMENT ON COLUMN LC001AR06.NUM3M49 IS
'is numeric-3 key an UN-M49 code? [o código de 3 dígitos numéricos é um código M49-ONU?]';

COMMENT ON COLUMN LC001AR06.NUM3ISO IS
'is numeric-3 key an ISO 3166-1 numeric code? [o código de 3 dígitos numéricos é um código ISO 3166-1 numérico?]';

COMMENT ON COLUMN LC001AR06.ALPHA3ISO IS
'is alpha-3 key an ISO 3166-1 alpha-3 code? [o código de 3 letras é um código ISO 3166-1 de 3 letras?]';

COMMENT ON COLUMN LC001AR06.ALPHA2ISO IS
'is alpha-2 key an ISO 3166-1 alpha-2 code? [o código de 2 letras é um código ISO 3166-1 de 2 letras?]';

COMMENT ON COLUMN LC001AR06.ACTV IS
'active [ativo]';

/* LC001AR07 */

COMMENT ON COLUMN LC001AR07.NUM3K IS
'country/territory numeric-3 code [código de 3 dígitos numéricos para o país/território]';

COMMENT ON COLUMN LC001AR07.NUM3SPRG IS
'super region numeric-3 code [código de 3 dígitos numéricos da super-região]';

COMMENT ON COLUMN LC001AR07.ALPHA3K IS
'country/territory alpha-3 code [código de 3 letras para o país/território]';

COMMENT ON COLUMN LC001AR07.ALPHA2K IS
'country/territory alpha-2 code [código de 2 letras para o país/território]';

COMMENT ON COLUMN LC001AR07.GEONMID IS
'geoname ID [ID do nome geográfico]';

COMMENT ON COLUMN LC001AR07.NUM3M49 IS
'is numeric-3 key an UN-M49 code? [o código de 3 dígitos numéricos é um código M49-ONU?]';

COMMENT ON COLUMN LC001AR07.NUM3ISO IS
'is numeric-3 key an ISO 3166-1 numeric code? [o código de 3 dígitos numéricos é um código ISO 3166-1 numérico?]';

COMMENT ON COLUMN LC001AR07.ALPHA3ISO IS
'is alpha-3 key an ISO 3166-1 alpha-3 code? [o código de 3 letras é um código ISO 3166-1 de 3 letras?]';

COMMENT ON COLUMN LC001AR07.ALPHA2ISO IS
'is alpha-2 key an ISO 3166-1 alpha-2 code? [o código de 2 letras é um código ISO 3166-1 de 2 letras?]';

COMMENT ON COLUMN LC001AR07.ACTV IS
'active [ativo]';

/* LC001AR08 */

COMMENT ON COLUMN LC001AR08.NUM3K IS
'country/territory numeric-3 code [código de 3 dígitos numéricos para o país/território]';

COMMENT ON COLUMN LC001AR08.NUM3SPRG IS
'super region numeric-3 code [código de 3 dígitos numéricos da super-região]';

COMMENT ON COLUMN LC001AR08.ALPHA3K IS
'country/territory alpha-3 code [código de 3 letras para o país/território]';

COMMENT ON COLUMN LC001AR08.ALPHA2K IS
'country/territory alpha-2 code [código de 2 letras para o país/território]';

COMMENT ON COLUMN LC001AR08.GEONMID IS
'geoname ID [ID do nome geográfico]';

COMMENT ON COLUMN LC001AR08.NUM3M49 IS
'is numeric-3 key an UN-M49 code? [o código de 3 dígitos numéricos é um código M49-ONU?]';

COMMENT ON COLUMN LC001AR08.NUM3ISO IS
'is numeric-3 key an ISO 3166-1 numeric code? [o código de 3 dígitos numéricos é um código ISO 3166-1 numérico?]';

COMMENT ON COLUMN LC001AR08.ALPHA3ISO IS
'is alpha-3 key an ISO 3166-1 alpha-3 code? [o código de 3 letras é um código ISO 3166-1 de 3 letras?]';

COMMENT ON COLUMN LC001AR08.ALPHA2ISO IS
'is alpha-2 key an ISO 3166-1 alpha-2 code? [o código de 2 letras é um código ISO 3166-1 de 2 letras?]';

COMMENT ON COLUMN LC001AR08.ACTV IS
'active [ativo]';

/* LC001AR09 */

COMMENT ON COLUMN LC001AR09.NUM3K IS
'country/territory numeric-3 code [código de 3 dígitos numéricos para o país/território]';

COMMENT ON COLUMN LC001AR09.NUM3SPRG IS
'super region numeric-3 code [código de 3 dígitos numéricos da super-região]';

COMMENT ON COLUMN LC001AR09.ALPHA3K IS
'country/territory alpha-3 code [código de 3 letras para o país/território]';

COMMENT ON COLUMN LC001AR09.ALPHA2K IS
'country/territory alpha-2 code [código de 2 letras para o país/território]';

COMMENT ON COLUMN LC001AR09.GEONMID IS
'geoname ID [ID do nome geográfico]';

COMMENT ON COLUMN LC001AR09.NUM3M49 IS
'is numeric-3 key an UN-M49 code? [o código de 3 dígitos numéricos é um código M49-ONU?]';

COMMENT ON COLUMN LC001AR09.NUM3ISO IS
'is numeric-3 key an ISO 3166-1 numeric code? [o código de 3 dígitos numéricos é um código ISO 3166-1 numérico?]';

COMMENT ON COLUMN LC001AR09.ALPHA3ISO IS
'is alpha-3 key an ISO 3166-1 alpha-3 code? [o código de 3 letras é um código ISO 3166-1 de 3 letras?]';

COMMENT ON COLUMN LC001AR09.ALPHA2ISO IS
'is alpha-2 key an ISO 3166-1 alpha-2 code? [o código de 2 letras é um código ISO 3166-1 de 2 letras?]';

COMMENT ON COLUMN LC001AR09.ACTV IS
'active [ativo]';

/* LC001AR10 */

COMMENT ON COLUMN LC001AR10.TRRT IS
'territory code [código do território]';

COMMENT ON COLUMN LC001AR10.CNTR IS
'country code [código do país]';

/* LC001AR11 */

COMMENT ON COLUMN LC001AR11.OLDNUM3K IS
'old numeric-3 code [código de 3 dígitos numéricos antigo]';

COMMENT ON COLUMN LC001AR11.NEWNUM3K IS
'new numeric-3 code [código de 3 dígitos numéricos novo]';




/* privileges */

/* LC001AR01 */

GRANT SELECT, REFERENCES(NUM3K,ALPHA3K,ALPHA2K,GEONMID,NUM3SPRG,NUM3M49,NUM3ISO,ALPHA3ISO,ALPHA2ISO,ACTV) ON LC001AR01 TO PUBLIC;
GRANT SELECT, REFERENCES(NUM3K,ALPHA3K,ALPHA2K,GEONMID,NUM3SPRG,NUM3M49,NUM3ISO,ALPHA3ISO,ALPHA2ISO,ACTV) ON LC001AR01 TO ROUSER;

/* LC001AR03 */

GRANT SELECT, REFERENCES(NUM3K,ALPHA3K,ALPHA2K,GEONMID,NUM3M49,NUM3ISO,ALPHA3ISO,ALPHA2ISO,ACTV) ON LC001AR03 TO PUBLIC;
GRANT SELECT, REFERENCES(NUM3K,ALPHA3K,ALPHA2K,GEONMID,NUM3M49,NUM3ISO,ALPHA3ISO,ALPHA2ISO,ACTV) ON LC001AR03 TO ROUSER;

/* LC001AR04 */

GRANT SELECT, REFERENCES(NUM3K,ALPHA3K,ALPHA2K,GEONMID,NUM3SPRG,NUM3M49,NUM3ISO,ALPHA3ISO,ALPHA2ISO,ACTV) ON LC001AR04 TO PUBLIC;
GRANT SELECT, REFERENCES(NUM3K,ALPHA3K,ALPHA2K,GEONMID,NUM3SPRG,NUM3M49,NUM3ISO,ALPHA3ISO,ALPHA2ISO,ACTV) ON LC001AR04 TO ROUSER;

/* LC001AR05 */

GRANT SELECT, REFERENCES(NUM3K,ALPHA3K,ALPHA2K,GEONMID,NUM3SPRG,NUM3M49,NUM3ISO,ALPHA3ISO,ALPHA2ISO,ACTV) ON LC001AR05 TO PUBLIC;
GRANT SELECT, REFERENCES(NUM3K,ALPHA3K,ALPHA2K,GEONMID,NUM3SPRG,NUM3M49,NUM3ISO,ALPHA3ISO,ALPHA2ISO,ACTV) ON LC001AR05 TO ROUSER;

/* LC001AR06 */

GRANT SELECT, REFERENCES(NUM3K,ALPHA3K,ALPHA2K,GEONMID,NUM3SPRG,NUM3M49,NUM3ISO,ALPHA3ISO,ALPHA2ISO,ACTV) ON LC001AR06 TO PUBLIC;
GRANT SELECT, REFERENCES(NUM3K,ALPHA3K,ALPHA2K,GEONMID,NUM3SPRG,NUM3M49,NUM3ISO,ALPHA3ISO,ALPHA2ISO,ACTV) ON LC001AR06 TO ROUSER;

/* LC001AR07 */

GRANT SELECT, REFERENCES(NUM3K,ALPHA3K,ALPHA2K,GEONMID,NUM3SPRG,NUM3M49,NUM3ISO,ALPHA3ISO,ALPHA2ISO,ACTV) ON LC001AR07 TO PUBLIC;
GRANT SELECT, REFERENCES(NUM3K,ALPHA3K,ALPHA2K,GEONMID,NUM3SPRG,NUM3M49,NUM3ISO,ALPHA3ISO,ALPHA2ISO,ACTV) ON LC001AR07 TO ROUSER;

/* LC001AR08 */

GRANT SELECT, REFERENCES(NUM3K,ALPHA3K,ALPHA2K,GEONMID,NUM3SPRG,NUM3M49,NUM3ISO,ALPHA3ISO,ALPHA2ISO,ACTV) ON LC001AR08 TO PUBLIC;
GRANT SELECT, REFERENCES(NUM3K,ALPHA3K,ALPHA2K,GEONMID,NUM3SPRG,NUM3M49,NUM3ISO,ALPHA3ISO,ALPHA2ISO,ACTV) ON LC001AR08 TO ROUSER;

/* LC001AR09 */

GRANT SELECT, REFERENCES(NUM3K,ALPHA3K,ALPHA2K,GEONMID,NUM3SPRG,NUM3M49,NUM3ISO,ALPHA3ISO,ALPHA2ISO,ACTV) ON LC001AR09 TO PUBLIC;
GRANT SELECT, REFERENCES(NUM3K,ALPHA3K,ALPHA2K,GEONMID,NUM3SPRG,NUM3M49,NUM3ISO,ALPHA3ISO,ALPHA2ISO,ACTV) ON LC001AR09 TO ROUSER;

/* LC001AR10 */

GRANT SELECT, REFERENCES(TRRT,CNTR) ON LC001AR10 TO PUBLIC;
GRANT SELECT, REFERENCES(TRRT,CNTR) ON LC001AR10 TO ROUSER;

/* LC001AR11 */

GRANT SELECT, REFERENCES(OLDNUM3K,NEWNUM3K) ON LC001AR11 TO PUBLIC;
GRANT SELECT, REFERENCES(OLDNUM3K,NEWNUM3K) ON LC001AR11 TO ROUSER;
