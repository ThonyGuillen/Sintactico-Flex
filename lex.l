%{
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "sin.tab.h"
void yyerror (char * s);
int yylex();
%}


DIGITO [0-9]
LETRA [a-zA-Z]
ESPACIO [" "]


ENTERO {DIGITO}{0,4}


COMENTARIOIZQ ["/*"|"//"|"--"]
COMENTARIODER ["/*"]
GUIONES [-_]
COMA [,]
PUNTO [.]
PUNTOCOMA [;]
DOSPUNTOS ":"








ID {LETRA}({LETRA}|{DIGITO}|{GUIONES})*
INT (-?[1-9]{DIGITO}{0,4})|0+
FLOAT {DIGITO}{0,8}{PUNTO}{DIGITO}{1,8}+
CADENA \"[^\n"]*\"




OPERADORARITMETICO ["+"|"*"|"/"|"-"]
OPERADORLOGICO "=="|">="|"<"|">"|"<="|"!"|"!="
IGUAL ["="]




LLAVEIZQ ["{"]
LLAVEDER ["}"]
PARI "("
PARD ")"
CORCHETEDER "]"
CORCHETEIZQ "["




CONSTANTE False|None|True|const
OPERADORLOG and|not|or
DECLARACION as|async|global|nonlocal|with|pass|switch|throws|using|identifier|native
VERIFICACION assert|in|instanceof|assertRaises
FINALIZADORES break
DEFsimbN class|enum|interface|package|auto|explicit|export|extern|friend|inline|mutable|namespace|BLOCK|varargs|recursion
CONTINUAR continue
ELIMINADORES del|delete|BACKSPACE
CONDICIONES elif|if|if_exists|if_not_exists
SINO else
CAPTURAS except|catch
SIEMPRE finally
BUCLE for|MIENTRA
HACER do
IMPORTACION from|import
COMPARATORES is
LEVANTA raise
DEVUELVE return|yield|hash
PRUEBA try
METODOS abstract|native|static|void|setf|flags|unsetf
TIPO_DATO boolean|byte|char|double|float|int|long|short|bool|dec|oct|hex|basefield|struct|union|unsigned|int8|int16|int32|int64|m64|m128|m128d|m128i|unsigned|ascii|bin|bytearray|bytes|complex|dict|frozenset|memoryview|set|str|tuple|frozendict|nonetype|octal|unbound|unhashable|unicode|dictreader
ACCIONES default
VALORFINAL final|null
IMPLEMENTACION implements
INSTANCIA new
CATEGORIA private|protected|public|object|generator|subclass
MODO strictfp
LLAMADA super|CALL
BLOQUE synchronized
REFERENCIA this|self
LANZADORES throw
VARIABLE transient|volatile|let
CONTROLADORES asm|goto|ios|endl|flush|elseif|enddeclare|endfor|endforeach|endif|endswitch|endMIENTRA|leave|delattr|isinstance|locals|open|setattr|type|vars|input|metaclass
CONVERSION const_cast|dynamic_cast|register|reinterpret_cast|signed|typedef|virtual|cdecl|declspec|dllexport|dllimport|fastcall|stdcall|var|chr|ord|byteswap
FLUJO stream
ENTRADAS cin
SALIDAS cout|cerr
OPERACION streambuf|istream|ostream|iostream|o|operator|sizeof|static_cast|typeid|typename|alignof|try_cast|pow|sum|abs
CLASE SItream|ofstream|fstream
DESCARTES skipws
DIRECCIONES left|rigth|internal|adjustfield
MUESTRAS showbase|showpoint|showpos
FORMATO uppercase|scientific|fixed|unitbuf|floatfield|format|repr|round|slice|sorted|sliceable
PLANTILLA template
ARCHIVOS include
COMPILADOR assume|compile
PUNTERO based|box
DELEGADOS delegate|multiple_inheritance
EVENTOS event
REGISTRO gc|nogc
ENGANCHE hook
HEREDAR multiple_inheritance|single_inheritance|extends
ESTADO noop|sealed
PIN pin
PROPIEDADES property
CLONAR clone
PRINCIPAL main
DESENGANCHE unhook
IDENTIFICACION uuidof
RESTRICCION strict
DEPURACION debugger
MODIFICADOR register|awaitable|virtualmethod
ASIGNACION ASSIGN
CERRAR CLOSE
EJECUCION exec|getattr
EVALUAR eval
SIMPLIFICAR coroutine
GESTIONAR ellipsis|traceback
INICIALIZAR init
OBTENER iter
BOOK json|pickle|queue|sys|argparse|bisect|calendar|codecs|collections|decimal|descriptor|diff|doctest|elementtree|fileinput|fnmatch
MEMORIA memory
VISUALIZACION reload
CADENAS lambda|width|precision|fill|reversed
ARRAYS array|list|max|min|filter|map|all|any
ASINCRONO asyncio
MANEJO buffer|deque|callable|protocol|qualname|unbound|underscore|forceinline|unpacking|chain|main|listdir|len|die|echo|empty|isset
INCLUSION print
OPTIMIZACION unrolling
CONTADOR enumerate
GENERADOR range
REGRESAR zip
AVANCE next
OP suma|resta|multiplicacion|division
LECTURA read
CONCATENACION concatenar
PARIMPAR par|impar
CASO case
LONGITUD length
PRI PRIn
ORDENAR order
DEF def




%%




{DEF} { return DEF; }
{ORDENAR} { return ORDENAR; }
{PRI} { return PRI; }
{CADENA} { return CADENA; }
{INT} { return INT; }
{FLOAT} { return FLOAT; }
{OPERADORARITMETICO} { return OPERADORARITMETICO; }
{IGUAL} { return IGUAL; }
{OPERADORLOGICO} { return OPERADORLOGICO; }
{LLAVEIZQ} { return LLAVEIZQ; }
{LLAVEDER} { return LLAVEDER; }
{PARI} { return PARI; }
{PARD} { return PARD; }
{DOSPUNTOS} { return DOSPUNTOS; }
{COMA} { return COMA; }
{PUNTOCOMA} { return PUNTOCOMA; }
{CORCHETEDER} { return CORCHETEDER; }
{CORCHETEIZQ} { return CORCHETEIZQ; }
{CONSTANTE} { return CONSTANTE; }
{OPERADORLOG} { return OPERADORLOG; }
{DECLARACION} { return DECLARACION; }
{VERIFICACION} { return VERIFICACION; }
{FINALIZADORES} { return FINALIZADORES; }
{DEFsimbN} { return DEFsimbN; }
{CONTINUAR} { return CONTINUAR; }
{ELIMINADORES} { return ELIMINADORES; }
{CONDICIONES} { return CONDICIONES; }
{SINO} { return SINO; }
{CAPTURAS} { return CAPTURAS; }
{SIEMPRE} { return SIEMPRE; }
{BUCLE} { return BUCLE; }
{HACER} { return HACER; }
{IMPORTACION} { return IMPORTACION; }
{COMPARATORES} { return COMPARATORES; }
{LEVANTA} { return LEVANTA; }
{DEVUELVE} { return DEVUELVE; }
{PRUEBA} { return PRUEBA; }
{METODOS} { return METODOS; }
{TIPO_DATO} { return TIPO_DATO; }
{ACCIONES} { return ACCIONES; }
{VALORFINAL} { return VALORFINAL; }
{IMPLEMENTACION} { return IMPLEMENTACION; }
{INSTANCIA} { return INSTANCIA; }
{CATEGORIA} { return CATEGORIA; }
{MODO} { return MODO; }
{LLAMADA} { return LLAMADA; }
{BLOQUE} { return BLOQUE; }
{REFERENCIA} { return REFERENCIA; }
{LANZADORES} { return LANZADORES; }
{VARIABLE} { return VARIABLE; }
{CONTROLADORES} { return CONTROLADORES; }
{CONVERSION} { return CONVERSION; }
{FLUJO} { return FLUJO; }
{ENTRADAS} { return ENTRADAS; }
{SALIDAS} { return SALIDAS; }
{OPERACION} { return OPERACION; }
{CLASE} { return CLASE; }
{DESCARTES} { return DESCARTES; }
{DIRECCIONES} { return DIRECCIONES; }
{MUESTRAS} { return MUESTRAS; }
{FORMATO} { return FORMATO; }
{PLANTILLA} { return PLANTILLA; }
{ARCHIVOS} { return ARCHIVOS; }
{COMPILADOR} { return COMPILADOR; }
{PUNTERO} { return PUNTERO; }
{DELEGADOS} { return DELEGADOS; }
{EVENTOS} { return EVENTOS; }
{REGISTRO} { return REGISTRO; }
{ENGANCHE} { return ENGANCHE; }
{HEREDAR} { return HEREDAR; }
{ESTADO} { return ESTADO; }
{PIN} { return PIN; }
{PROPIEDADES} { return PROPIEDADES; }
{CLONAR} { return CLONAR; }
{DESENGANCHE} { return DESENGANCHE; }
{IDENTIFICACION} { return IDENTIFICACION; }
{RESTRICCION} { return RESTRICCION; }
{DEPURACION} { return DEPURACION; }
{MODIFICADOR} { return MODIFICADOR; }
{ASIGNACION} { return ASIGNACION; }
{CERRAR} { return CERRAR; }
{EJECUCION} { return EJECUCION; }
{EVALUAR} { return EVALUAR; }
{SIMPLIFICAR} { return SIMPLIFICAR; }
{GESTIONAR} { return GESTIONAR; }
{INICIALIZAR} { return INICIALIZAR; }
{OBTENER} { return OBTENER; }
{BOOK} { return BOOK; }
{MEMORIA} { return MEMORIA; }
{VISUALIZACION} { return VISUALIZACION; }
{CADENAS} { return CADENAS; }
{ARRAYS} { return ARRAYS; }
{ASINCRONO} { return ASINCRONO; }
{MANEJO} { return MANEJO; }
{INCLUSION} { return INCLUSION; }
{OPTIMIZACION} { return OPTIMIZACION; }
{CONTADOR} { return CONTADOR; }
{GENERADOR} { return GENERADOR; }
{REGRESAR} { return REGRESAR; }
{AVANCE} { return AVANCE; }
{ID} { return ID; }
{ENTERO} { return ENTERO; }




\n {
    // Ignorar los saltos de línea
}
















. {
    // Ignorar cualquier otro carácter
}








%%
int yywrap (void) {return 1;};