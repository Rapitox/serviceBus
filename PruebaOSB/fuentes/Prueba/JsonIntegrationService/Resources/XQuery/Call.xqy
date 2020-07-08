xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare default element namespace "";
(:: import schema at "../Schema/reqSchema.xsd" ::)

declare variable $req as element() (:: schema-element(request) ::) external;

declare function local:func($req as element() (:: schema-element(request) ::)) as element() (:: schema-element(request) ::) {
    <request>
        <rut>{fn:data($req/rut)}</rut>
    </request>
};

local:func($req)