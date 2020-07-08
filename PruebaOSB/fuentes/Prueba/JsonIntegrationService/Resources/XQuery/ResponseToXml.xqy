xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare default element namespace "";
(:: import schema at "../Schema/reqSchema.xsd" ::)

declare variable $respJson as element() (:: schema-element(response) ::) external;

declare function local:func($respJson as element() (:: schema-element(response) ::)) as element() (:: schema-element(response) ::) {
    <response>
        <rut>{fn:data($respJson/rut)}</rut>
        <nombre>{fn:data($respJson/nombre)}</nombre>
    </response>
};

local:func($respJson)