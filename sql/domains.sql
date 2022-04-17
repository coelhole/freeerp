SET SQL DIALECT 3;



CREATE DOMAIN X AS
CHAR(1) CHARACTER SET ASCII
DEFAULT ''
NOT NULL
CHECK (value='X' or value='')
COLLATE ASCII;

CREATE DOMAIN YN AS
CHAR(1) CHARACTER SET ASCII
CHECK ((VALUE = 'Y') OR (VALUE = 'N'))
COLLATE ASCII;

CREATE DOMAIN "alpha" AS
BLOB SUB_TYPE 1 SEGMENT SIZE 80 CHARACTER SET ASCII
CHECK (
value similar to '[a-zA-Z]*'
)
COLLATE ASCII;

CREATE DOMAIN "alpha1" AS
CHAR(1) CHARACTER SET ASCII
CHECK (
value similar to '[a-zA-Z]'
)
COLLATE ASCII;

CREATE DOMAIN "alpha2" AS
CHAR(2) CHARACTER SET ASCII
CHECK (
value similar to '[a-zA-Z]*'
)
COLLATE ASCII;

CREATE DOMAIN "alpha3" AS
CHAR(3) CHARACTER SET ASCII
CHECK (
value similar to '[a-zA-Z]*'
)
COLLATE ASCII;

CREATE DOMAIN "alpha4" AS
CHAR(4) CHARACTER SET ASCII
CHECK (
value similar to '[a-zA-Z]*'
)
COLLATE ASCII;

CREATE DOMAIN "alphanum" AS
BLOB SUB_TYPE 1 SEGMENT SIZE 80 CHARACTER SET ASCII
CHECK (
value similar to '[a-zA-Z0-9]*'
)
COLLATE ASCII;

CREATE DOMAIN "alphanum1" AS
CHAR(1) CHARACTER SET ASCII
CHECK (value similar to '[a-zA-Z0-9]')
COLLATE ASCII;

CREATE DOMAIN "alphanum2" AS
CHAR(2) CHARACTER SET ASCII
CHECK (value similar to '[a-zA-Z0-9]*')
COLLATE ASCII;

CREATE DOMAIN "alphanum3" AS
CHAR(3) CHARACTER SET ASCII
CHECK (value similar to '[a-zA-Z0-9]*')
COLLATE ASCII;

CREATE DOMAIN "alphanum4" AS
CHAR(4) CHARACTER SET ASCII
CHECK (value similar to '[a-zA-Z0-9]*')
COLLATE ASCII;

CREATE DOMAIN "asciichar" AS
CHAR(1) CHARACTER SET ASCII
COLLATE ASCII;

CREATE DOMAIN "asciistring" AS
BLOB SUB_TYPE 1 SEGMENT SIZE 80 CHARACTER SET ASCII
COLLATE ASCII;

CREATE DOMAIN "bit" AS
CHAR(1) CHARACTER SET ASCII
CHECK ((value='0') or (value='1'))
COLLATE ASCII;

CREATE DOMAIN "bits" AS
BLOB SUB_TYPE 1 SEGMENT SIZE 80 CHARACTER SET ASCII
CHECK (
value similar to '[0-1]*'
)
COLLATE ASCII;

CREATE DOMAIN "bits16" AS
CHAR(16) CHARACTER SET ASCII
CHECK (value similar to '[0-1]*')
COLLATE ASCII;

CREATE DOMAIN "bits24" AS
CHAR(24) CHARACTER SET ASCII
CHECK (value similar to '[0-1]*')
COLLATE ASCII;

CREATE DOMAIN "bits32" AS
CHAR(32) CHARACTER SET ASCII
CHECK (value similar to '[0-1]*')
COLLATE ASCII;

CREATE DOMAIN "bits4" AS
CHAR(4) CHARACTER SET ASCII
CHECK (value similar to '[0-1]*')
COLLATE ASCII;

CREATE DOMAIN "bits40" AS
CHAR(40) CHARACTER SET ASCII
CHECK (value similar to '[0-1]*')
COLLATE ASCII;

CREATE DOMAIN "bits48" AS
CHAR(48) CHARACTER SET ASCII
CHECK (value similar to '[0-1]*')
COLLATE ASCII;

CREATE DOMAIN "bits56" AS
CHAR(56) CHARACTER SET ASCII
CHECK (value similar to '[0-1]*')
COLLATE ASCII;

CREATE DOMAIN "bits64" AS
CHAR(64) CHARACTER SET ASCII
CHECK (value similar to '[0-1]*')
COLLATE ASCII;

CREATE DOMAIN "bits8" AS
CHAR(8) CHARACTER SET ASCII
CHECK (value similar to '[0-1]*')
COLLATE ASCII;

CREATE DOMAIN "boolint" AS
SMALLINT
CHECK (value = 0 or value = 1);

CREATE DOMAIN "boolstring" AS
CHAR(5) CHARACTER SET ASCII
CHECK ((value = 'true') or (value = 'false'))
COLLATE ASCII;

CREATE DOMAIN "day" AS
SMALLINT
CHECK (value >= 1 and value <= 31);

CREATE DOMAIN "dayname" AS
CHAR(9) CHARACTER SET ASCII
CHECK (value in (
'Sunday',
'Monday',
'Tuesday',
'Wednesday',
'Thursday',
'Friday',
'Saturday'
))
COLLATE ASCII;

CREATE DOMAIN "dayoftheweek" AS
CHAR(2) CHARACTER SET ASCII
CHECK (value in ('Mo', 'Tu', 'We', 'Th', 'Fr', 'Sa', 'Su'))
COLLATE ASCII;

CREATE DOMAIN "hexs" AS
BLOB SUB_TYPE 1 SEGMENT SIZE 80 CHARACTER SET ASCII
CHECK (value similar to '[0-9,A-F]*')
COLLATE ASCII;

CREATE DOMAIN "int1" AS
SMALLINT
CHECK (value>=-128 and value <= 127);

CREATE DOMAIN "loalpha" AS
BLOB SUB_TYPE 1 SEGMENT SIZE 80 CHARACTER SET ASCII
CHECK (
value similar to '[a-z]*'
)
COLLATE ASCII;

CREATE DOMAIN "loalpha1" AS
CHAR(1) CHARACTER SET ASCII
CHECK (value similar to '[a-z]')
COLLATE ASCII;

CREATE DOMAIN "loalpha2" AS
CHAR(2) CHARACTER SET ASCII
CHECK (value similar to '[a-z]*')
COLLATE ASCII;

CREATE DOMAIN "loalpha3" AS
CHAR(3) CHARACTER SET ASCII
CHECK (value similar to '[a-z]*')
COLLATE ASCII;

CREATE DOMAIN "loalpha4" AS
CHAR(4) CHARACTER SET ASCII
CHECK (value similar to '[a-z]*')
COLLATE ASCII;

CREATE DOMAIN "money" AS
DECIMAL(18,4);

CREATE DOMAIN "month" AS
SMALLINT
CHECK ((VALUE>=1) AND (VALUE<=12));

CREATE DOMAIN "monthabbrev" AS
CHAR(4) CHARACTER SET ASCII
CHECK (value in ('Jan','Feb','Mar','Apr','May','June','July','Aug','Sept','Oct','Nov','Dec'))
COLLATE ASCII;

CREATE DOMAIN "monthname" AS
CHAR(8) CHARACTER SET ASCII
CHECK (value in ('January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'))
COLLATE ASCII;

CREATE DOMAIN "numc" AS
BLOB SUB_TYPE 1 SEGMENT SIZE 80 CHARACTER SET ASCII
CHECK (
value similar to '[0-9]*'
)
COLLATE ASCII;

CREATE DOMAIN "numc1" AS
CHAR(1) CHARACTER SET ASCII
CHECK (value similar to '[0-9]')
COLLATE ASCII;

CREATE DOMAIN "numc2" AS
CHAR(2) CHARACTER SET ASCII
CHECK (value similar to '[0-9]*')
COLLATE ASCII;

CREATE DOMAIN "numc3" AS
CHAR(3) CHARACTER SET ASCII
CHECK (value similar to '[0-9]*')
COLLATE ASCII;

CREATE DOMAIN "numc4" AS
CHAR(4) CHARACTER SET ASCII
CHECK (value similar to '[0-9]*')
COLLATE ASCII;

CREATE DOMAIN "numc5" AS
CHAR(5) CHARACTER SET ASCII
CHECK (value similar to '[0-9]*')
COLLATE ASCII;

CREATE DOMAIN "numc6" AS
CHAR(6) CHARACTER SET ASCII
CHECK (value similar to '[0-9]*')
COLLATE ASCII;

CREATE DOMAIN "numc7" AS
CHAR(7) CHARACTER SET ASCII
CHECK (value similar to '[0-9]*')
COLLATE ASCII;

CREATE DOMAIN "numc8" AS
CHAR(8) CHARACTER SET ASCII
CHECK (value similar to '[0-9]*')
COLLATE ASCII;

CREATE DOMAIN "octs" AS
BLOB SUB_TYPE 1 SEGMENT SIZE 80 CHARACTER SET ASCII
CHECK (value similar to '[0-7]*')
COLLATE ASCII;

CREATE DOMAIN "pint" AS
INTEGER
CHECK (value > 0);

CREATE DOMAIN "pint1" AS
SMALLINT
CHECK (value > 0 and value <= 127);

CREATE DOMAIN "raw" AS
BLOB SUB_TYPE 0 SEGMENT SIZE 80;

CREATE DOMAIN "sex" AS
CHAR(1) CHARACTER SET ASCII
CHECK ((VALUE = 'F') OR (VALUE = 'M'))
COLLATE ASCII;

CREATE DOMAIN "smallmoney" AS
DECIMAL(10,4);

CREATE DOMAIN "uint1" AS
SMALLINT
CHECK (value>=0 and value <= 255);

CREATE DOMAIN "uniqueidentifier" AS
CHAR(38) CHARACTER SET ASCII
COLLATE ASCII;

CREATE DOMAIN "upalpha" AS
BLOB SUB_TYPE 1 SEGMENT SIZE 80 CHARACTER SET ASCII
CHECK (
value similar to '[A-Z]*'
)
COLLATE ASCII;

CREATE DOMAIN "upalpha1" AS
CHAR(1) CHARACTER SET ASCII
CHECK (value similar to '[A-Z]')
COLLATE ASCII;

CREATE DOMAIN "upalpha2" AS
CHAR(2) CHARACTER SET ASCII
CHECK (value similar to '[A-Z]*')
COLLATE ASCII;

CREATE DOMAIN "upalpha3" AS
CHAR(3) CHARACTER SET ASCII
CHECK (value similar to '[A-Z]*')
COLLATE ASCII;

CREATE DOMAIN "upalpha4" AS
CHAR(4) CHARACTER SET ASCII
CHECK (value similar to '[A-Z]*')
COLLATE ASCII;

CREATE DOMAIN "utf8char" AS
CHAR(1) CHARACTER SET UTF8
COLLATE UTF8;

CREATE DOMAIN "utf8string" AS
BLOB SUB_TYPE 1 SEGMENT SIZE 80 CHARACTER SET UTF8
COLLATE UTF8;

CREATE DOMAIN "weekday" AS
CHAR(2) CHARACTER SET ASCII
CHECK (value in ('Mo', 'Tu', 'We', 'Th', 'Fr'))
COLLATE ASCII;

CREATE DOMAIN "weekend" AS
CHAR(2) CHARACTER SET ASCII
CHECK (value in ('Sa', 'Su'))
COLLATE ASCII;

CREATE DOMAIN "win1252char" AS
CHAR(1) CHARACTER SET WIN1252
COLLATE WIN1252;

CREATE DOMAIN "win1252string" AS
BLOB SUB_TYPE 1 SEGMENT SIZE 80 CHARACTER SET WIN1252
COLLATE WIN1252;

CREATE DOMAIN "year" AS
SMALLINT
CHECK (value >= 1000 and value <= 9999);





COMMENT ON DOMAIN X IS
'elementary data type that stores Yes/No (X/ ) information [tipo básico de dado que armazena informação do tipo Sim/Não (X/)]';

COMMENT ON DOMAIN YN IS
'yes/no (Y/N) [sim/não (S/N)]';

COMMENT ON DOMAIN "alpha" IS
'alpha-string [cadeia alfabética]';

COMMENT ON DOMAIN "alpha1" IS
'an ASCII letter [uma letra ASCII]';

COMMENT ON DOMAIN "alpha2" IS
'2-ASCII letter string [cadeia de 2 letras ASCII]';

COMMENT ON DOMAIN "alpha3" IS
'3-ASCII letter string [cadeia de 3 letras ASCII]';

COMMENT ON DOMAIN "alpha4" IS
'4-ASCII letter string [cadeia de 4 letras ASCII]';

COMMENT ON DOMAIN "alphanum" IS
'alphanumeric string [cadeia alfanumérica]';

COMMENT ON DOMAIN "alphanum1" IS
'an ASCII alphanumeric char [um caractere ASCII alfanumérico]';

COMMENT ON DOMAIN "alphanum2" IS
'2-ASCII alphanumeric string [cadeia de 2 caracteres ASCII alfanuméricos]';

COMMENT ON DOMAIN "alphanum3" IS
'3-ASCII alphanumeric string [cadeia de 3 caracteres ASCII alfanuméricos]';

COMMENT ON DOMAIN "alphanum4" IS
'4-ASCII alphanumeric string [cadeia de 4 caracteres ASCII alfanuméricos]';

COMMENT ON DOMAIN "asciichar" IS
'ASCII char [caractere ASCII]';

COMMENT ON DOMAIN "asciistring" IS
'ASCII string';

COMMENT ON DOMAIN "bit" IS
'0-1 bit value stored as char(1) [valor de bit 0-1 armazenado como char(1)]';

COMMENT ON DOMAIN "bits" IS
'0-1 string [cadeia de 0s e 1s]';

COMMENT ON DOMAIN "bits16" IS
'a 16-bit aggregation stored as a char(16) string [um agregado de 16 bits armazenado como uma cadeia de 16 caracteres]';

COMMENT ON DOMAIN "bits24" IS
'a 24-bit aggregation stored as a char(24) string [um agregado de 24 bits armazenado como uma cadeia de 24 caracteres]';

COMMENT ON DOMAIN "bits32" IS
'a 32-bit aggregation stored as a char(32) string [um agregado de 32 bits armazenado como uma cadeia de 32 caracteres]';

COMMENT ON DOMAIN "bits4" IS
'a 4-bit aggregation stored as a char(4) string [um agregado de 4 bits armazenado como uma cadeia de 4 caracteres]';

COMMENT ON DOMAIN "bits40" IS
'a 40-bit aggregation stored as a char(40) string [um agregado de 40 bits armazenado como uma cadeia de 40 caracteres]';

COMMENT ON DOMAIN "bits48" IS
'a 48-bit aggregation stored as a char(48) string [um agregado de 48 bits armazenado como uma cadeia de 48 caracteres]';

COMMENT ON DOMAIN "bits56" IS
'a 56-bit aggregation stored as a char(56) string [um agregado de 56 bits armazenado como uma cadeia de 56 caracteres]';

COMMENT ON DOMAIN "bits64" IS
'a 64-bit aggregation stored as a char(64) string [um agregado de 64 bits armazenado como uma cadeia de 64 caracteres]';

COMMENT ON DOMAIN "bits8" IS
'a 8-bit aggregation stored as a char(8) string [um agregado de 8 bits armazenado como uma cadeia de 8 caracteres]';

COMMENT ON DOMAIN "boolint" IS
'int boolean type: 0 = false, 1 = true [tipo booleano inteiro: 0 = falso, 1 = verdadeiro]';

COMMENT ON DOMAIN "boolstring" IS
'true or false [true (verdadeiro) ou false (falso)]';

COMMENT ON DOMAIN "day" IS
'day [dia]';

COMMENT ON DOMAIN "dayname" IS
'day name [nome de dia]';

COMMENT ON DOMAIN "dayoftheweek" IS
'days of the week [dias da semana: seg (Mo), ter (Tu), qua (We), qui (Fr), sex (Th), sab (Sa), dom (Su)]';

COMMENT ON DOMAIN "hexs" IS
'hexadecimal string [número hexadecimal armazenado como uma string]';

COMMENT ON DOMAIN "int1" IS
'1-byte signed int [inteiro de 1 byte com sinal]';

COMMENT ON DOMAIN "loalpha" IS
'lower alpha-string [cadeia de caracteres contendo apenas letras minúsculas]';

COMMENT ON DOMAIN "loalpha1" IS
'lower ASCII letter [letra ASCII minúscula]';

COMMENT ON DOMAIN "loalpha2" IS
'lower ASCII 2-letter string (cadeia de 2 letras ASCII minúsculas)';

COMMENT ON DOMAIN "loalpha3" IS
'lower ASCII 3-letter string (cadeia de 3 letras ASCII minúsculas)';

COMMENT ON DOMAIN "loalpha4" IS
'lower ASCII 4-letter string (cadeia de 4 letras ASCII minúsculas)';

COMMENT ON DOMAIN "money" IS
'monetary value [valor monetário]';

COMMENT ON DOMAIN "month" IS
'month [mês]';

COMMENT ON DOMAIN "monthabbrev" IS
'abbreviations of the names of the months [abreviaturas dos nomes dos meses]';

COMMENT ON DOMAIN "monthname" IS
'month name [nome de mês]';

COMMENT ON DOMAIN "numc" IS
'character string with only digits [cadeia de caracteres contendo apenas algarismos numéricos]';

COMMENT ON DOMAIN "numc1" IS
'a numeric digit stored as a char [um algarismo numérico armazenado como um caractere]';

COMMENT ON DOMAIN "numc2" IS
'numeric-2 [cadeira de caracteres contendo 2 algarismos numéricos]';

COMMENT ON DOMAIN "numc3" IS
'numeric-3 [cadeia de caracteres contendo 3 algarismos numéricos]';

COMMENT ON DOMAIN "numc4" IS
'numeric-4 [cadeia de caracteres contendo 4 algarismos numéricos]';

COMMENT ON DOMAIN "numc5" IS
'numeric-5 [cadeia de caracteres contendo 5 algarismos numéricos]';

COMMENT ON DOMAIN "numc6" IS
'numeric-6 [cadeia de caracteres contendo 6 algarismos numéricos]';

COMMENT ON DOMAIN "numc7" IS
'numeric-7 [cadeia de caracteres contendo 7 algarismos numéricos]';

COMMENT ON DOMAIN "numc8" IS
'numeric-8 [cadeia de caracteres contendo 8 algarismos numéricos]';

COMMENT ON DOMAIN "octs" IS
'0-7 octal string [número octal armazenado como uma string]';

COMMENT ON DOMAIN "pint" IS
'positive int type [tipo inteiro positivo: 1-2147483647]';

COMMENT ON DOMAIN "pint1" IS
'positive int <= 127 [inteiro positivo <= 127]';

COMMENT ON DOMAIN "raw" IS
'byte sequence / binary data';

COMMENT ON DOMAIN "sex" IS
'sex (F = female / M = male) [sexo (F = feminino / M = masculino)]';

COMMENT ON DOMAIN "smallmoney" IS
'small monetary value [valor monetário pequeno]';

COMMENT ON DOMAIN "uint1" IS
'1-byte unsigned int [inteiro de 1 byte sem sinal]';

COMMENT ON DOMAIN "uniqueidentifier" IS
'uniqueidentifier [identificador único universal, UUID]';

COMMENT ON DOMAIN "upalpha" IS
'upper alpha-string [cadeia de caracteres contendo apenas letras maiúsculas]';

COMMENT ON DOMAIN "upalpha1" IS
'upper ASCII letter [letra ASCII maiúscula]';

COMMENT ON DOMAIN "upalpha2" IS
'upper ASCII 2-letter string (cadeia de 2 letras ASCII maiúsculas)';

COMMENT ON DOMAIN "upalpha3" IS
'upper ASCII 3-letter string (cadeia de 3 letras ASCII maiúsculas)';

COMMENT ON DOMAIN "upalpha4" IS
'upper ASCII 4-letter string (cadeia de 4 letras ASCII maiúsculas)';

COMMENT ON DOMAIN "utf8char" IS
'UTF-8 char [caractere UTF-8]';

COMMENT ON DOMAIN "utf8string" IS
'UTF-8 string';

COMMENT ON DOMAIN "weekday" IS
'weekdays [dias (de meio de) de semana: seg (Mo), ter (Tu), qua (We), qui (Fr), sex (Th)]';

COMMENT ON DOMAIN "weekend" IS
'weekend [final de semana: sab (Sa) ou dom (Su)]';

COMMENT ON DOMAIN "win1252char" IS
'WIN1252 char [caractere WIN1252]';

COMMENT ON DOMAIN "win1252string" IS
'WIN1252 string [cadeia de caracteres WIN1252]';

COMMENT ON DOMAIN "year" IS
'year [ano]';

