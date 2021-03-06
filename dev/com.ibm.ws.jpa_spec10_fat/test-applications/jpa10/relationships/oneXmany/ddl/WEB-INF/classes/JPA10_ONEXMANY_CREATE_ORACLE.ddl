             <sql>CREATE TABLE ${schemaname}.EmbedIDOMEntityA (id NUMBER NOT NULL, password VARCHAR2(255), userName VARCHAR2(255), PRIMARY KEY (id));
CREATE TABLE ${schemaname}.EmbedIDOMEntityB (country VARCHAR2(255) NOT NULL, id NUMBER NOT NULL, name VARCHAR2(255), salary NUMBER, PRIMARY KEY (country, id));
CREATE TABLE ${schemaname}.IDClassOMEntityA (id NUMBER NOT NULL, password VARCHAR2(255), userName VARCHAR2(255), PRIMARY KEY (id));
CREATE TABLE ${schemaname}.IDClassOMEntityB (country VARCHAR2(255) NOT NULL, id NUMBER NOT NULL, name VARCHAR2(255), salary NUMBER, PRIMARY KEY (country, id));
CREATE TABLE ${schemaname}.OMContainerTypeEntityA (id NUMBER NOT NULL, name VARCHAR2(255), PRIMARY KEY (id));
CREATE TABLE ${schemaname}.OMContainerTypeEntityB (id NUMBER NOT NULL, name VARCHAR2(255), PRIMARY KEY (id));
CREATE TABLE ${schemaname}.OMCTEA_GCT (OMCONTAINERTYPEENTITYA_ID NUMBER, GENERICIZEDCOLLECTIONTYPE_ID NUMBER);
CREATE TABLE ${schemaname}.OMCTEA_GLT (OMCONTAINERTYPEENTITYA_ID NUMBER, GENERICIZEDLISTTYPE_ID NUMBER);
CREATE TABLE ${schemaname}.OMCTEA_GMKT (OMCONTAINERTYPEENTITYA_ID NUMBER, genericizedMapWithKeyType_ID NUMBER, ELEMENT_ID NUMBER);
CREATE TABLE ${schemaname}.OMCTEA_GMT (OMCONTAINERTYPEENTITYA_ID NUMBER, genericizedMapType_ID NUMBER, GENERICIZEDMAPTYPE_KEY NUMBER, VALUE_ID NUMBER, KEY0 NUMBER);
CREATE TABLE ${schemaname}.OMCTEA_GST (OMCONTAINERTYPEENTITYA_ID NUMBER, GENERICIZEDSETTYPE_ID NUMBER);
CREATE TABLE ${schemaname}.OMCTEA_OLT (OMCONTAINERTYPEENTITYA_ID NUMBER, ORDEREDLISTTYPE_ID NUMBER);
CREATE TABLE ${schemaname}.OMCTEA_UGCT (OMCONTAINERTYPEENTITYA_ID NUMBER, UNGENERICIZEDCOLLECTIONTYPE_ID NUMBER);
CREATE TABLE ${schemaname}.OMCTEA_UGLT (OMCONTAINERTYPEENTITYA_ID NUMBER, UNGENERICIZEDLISTTYPE_ID NUMBER);
CREATE TABLE ${schemaname}.OMCTEA_UGMKT (OMCONTAINERTYPEENTITYA_ID NUMBER, ungenericizedMapWithKeyType_ID NUMBER, ELEMENT_ID NUMBER);
CREATE TABLE ${schemaname}.OMCTEA_UGMT (OMCONTAINERTYPEENTITYA_ID NUMBER, ungenericizedMapType BLOB);
CREATE TABLE ${schemaname}.OMCTEA_UGST (OMCONTAINERTYPEENTITYA_ID NUMBER, UNGENERICIZEDSETTYPE_ID NUMBER);
CREATE TABLE ${schemaname}.OMEntA (id NUMBER NOT NULL, name VARCHAR2(255), PRIMARY KEY (id));
CREATE TABLE ${schemaname}.OMEntA_OMEntB_CA (OMENTA_ID NUMBER, CASCADEALL_ID NUMBER);
CREATE TABLE ${schemaname}.OMEntA_OMEntB_CM (OMENTA_ID NUMBER, CASCADEMERGE_ID NUMBER);
CREATE TABLE ${schemaname}.OMEntA_OMEntB_CP (OMENTA_ID NUMBER, CASCADEPERSIST_ID NUMBER);
CREATE TABLE ${schemaname}.OMEntA_OMEntB_CRF (OMENTA_ID NUMBER, CASCADEREFRESH_ID NUMBER);
CREATE TABLE ${schemaname}.OMEntA_OMEntB_CRM (OMENTA_ID NUMBER, CASCADEREMOVE_ID NUMBER);
CREATE TABLE ${schemaname}.OMEntB_CA (id NUMBER NOT NULL, name VARCHAR2(255), PRIMARY KEY (id));
CREATE TABLE ${schemaname}.OMEntB_CM (id NUMBER NOT NULL, name VARCHAR2(255), PRIMARY KEY (id));
CREATE TABLE ${schemaname}.OMEntB_CP (id NUMBER NOT NULL, name VARCHAR2(255), PRIMARY KEY (id));
CREATE TABLE ${schemaname}.OMEntB_CRF (id NUMBER NOT NULL, name VARCHAR2(255), PRIMARY KEY (id));
CREATE TABLE ${schemaname}.OMEntB_CRM (id NUMBER NOT NULL, name VARCHAR2(255), PRIMARY KEY (id));
CREATE TABLE ${schemaname}.OMEntB_DR (id NUMBER NOT NULL, name VARCHAR2(255), PRIMARY KEY (id));
CREATE TABLE ${schemaname}.OneXManyDRUniJoinTable (ENT_A NUMBER, ENT_B NUMBER);
CREATE TABLE ${schemaname}.RELOM_EIDOMENTA (ENT_A_ID NUMBER, ENT_B_ID NUMBER, ENT_B_CTRY VARCHAR2(255));
CREATE TABLE ${schemaname}.RELOM_IDCOMENTA (ENT_A_ID NUMBER, ENT_B_ID NUMBER, ENT_B_CTRY VARCHAR2(255));
CREATE TABLE ${schemaname}.XMLEmbedIDOMEntityA (id NUMBER NOT NULL, password VARCHAR2(255), userName VARCHAR2(255), PRIMARY KEY (id));
CREATE TABLE ${schemaname}.XMLEmbedIDOMEntityB (country VARCHAR2(255) NOT NULL, id NUMBER NOT NULL, name VARCHAR2(255), salary NUMBER, PRIMARY KEY (country, id));
CREATE TABLE ${schemaname}.XMLIDClassOMEntityA (id NUMBER NOT NULL, password VARCHAR2(255), userName VARCHAR2(255), PRIMARY KEY (id));
CREATE TABLE ${schemaname}.XMLIDClassOMEntityB (country VARCHAR2(255) NOT NULL, id NUMBER NOT NULL, name VARCHAR2(255), salary NUMBER, PRIMARY KEY (country, id));
CREATE TABLE ${schemaname}.XMLOMContainerTypeEntityA (id NUMBER NOT NULL, name VARCHAR2(255), PRIMARY KEY (id));
CREATE TABLE ${schemaname}.XMLOMContainerTypeEntityB (id NUMBER NOT NULL, name VARCHAR2(255), PRIMARY KEY (id));
CREATE TABLE ${schemaname}.XMLOMCTEA_GCT (XMLOMCONTAINERTYPEENTITYA_ID NUMBER, GENERICIZEDCOLLECTIONTYPE_ID NUMBER);
CREATE TABLE ${schemaname}.XMLOMCTEA_GLT (XMLOMCONTAINERTYPEENTITYA_ID NUMBER, GENERICIZEDLISTTYPE_ID NUMBER);
CREATE TABLE ${schemaname}.XMLOMCTEA_GMKT (XMLOMCONTAINERTYPEENTITYA_ID NUMBER, genericizedMapWithKeyType_ID NUMBER, ELEMENT_ID NUMBER);
CREATE TABLE ${schemaname}.XMLOMCTEA_GMT (XMLOMCONTAINERTYPEENTITYA_ID NUMBER, genericizedMapType_ID NUMBER, GENERICIZEDMAPTYPE_KEY NUMBER, VALUE_ID NUMBER, KEY0 NUMBER);
CREATE TABLE ${schemaname}.XMLOMCTEA_GST (XMLOMCONTAINERTYPEENTITYA_ID NUMBER, GENERICIZEDSETTYPE_ID NUMBER);
CREATE TABLE ${schemaname}.XMLOMCTEA_OLT (XMLOMCONTAINERTYPEENTITYA_ID NUMBER, ORDEREDLISTTYPE_ID NUMBER);
CREATE TABLE ${schemaname}.XMLOMCTEA_UGCT (XMLOMCONTAINERTYPEENTITYA_ID NUMBER, UNGENERICIZEDCOLLECTIONTYPE_ID NUMBER);
CREATE TABLE ${schemaname}.XMLOMCTEA_UGKMT (XMLOMCONTAINERTYPEENTITYA_ID NUMBER, ungenericizedMapWithKeyType_ID NUMBER, ELEMENT_ID NUMBER);
CREATE TABLE ${schemaname}.XMLOMCTEA_UGLT (XMLOMCONTAINERTYPEENTITYA_ID NUMBER, UNGENERICIZEDLISTTYPE_ID NUMBER);
CREATE TABLE ${schemaname}.XMLOMCTEA_UGMT (XMLOMCONTAINERTYPEENTITYA_ID NUMBER, ungenericizedMapType BLOB);
CREATE TABLE ${schemaname}.XMLOMCTEA_UGST (XMLOMCONTAINERTYPEENTITYA_ID NUMBER, UNGENERICIZEDSETTYPE_ID NUMBER);
CREATE TABLE ${schemaname}.XMLOMEntA (id NUMBER NOT NULL, name VARCHAR2(255), PRIMARY KEY (id));
CREATE TABLE ${schemaname}.XMLOMEntA_XMLOMEntB_CA (XMLOMENTA_ID NUMBER, CASCADEALL_ID NUMBER);
CREATE TABLE ${schemaname}.XMLOMEntA_XMLOMEntB_CM (XMLOMENTA_ID NUMBER, CASCADEMERGE_ID NUMBER);
CREATE TABLE ${schemaname}.XMLOMEntA_XMLOMEntB_CP (XMLOMENTA_ID NUMBER, CASCADEPERSIST_ID NUMBER);
CREATE TABLE ${schemaname}.XMLOMEntA_XMLOMEntB_CRF (XMLOMENTA_ID NUMBER, CASCADEREFRESH_ID NUMBER);
CREATE TABLE ${schemaname}.XMLOMEntA_XMLOMEntB_CRM (XMLOMENTA_ID NUMBER, CASCADEREMOVE_ID NUMBER);
CREATE TABLE ${schemaname}.XMLOMEntA_XMLOMEntB_DR (XMLOMENTA_ID NUMBER, DEFAULTRELATIONSHIP_ID NUMBER);
CREATE TABLE ${schemaname}.XMLOMEntB_CA (id NUMBER NOT NULL, name VARCHAR2(255), PRIMARY KEY (id));
CREATE TABLE ${schemaname}.XMLOMEntB_CM (id NUMBER NOT NULL, name VARCHAR2(255), PRIMARY KEY (id));
CREATE TABLE ${schemaname}.XMLOMEntB_CP (id NUMBER NOT NULL, name VARCHAR2(255), PRIMARY KEY (id));
CREATE TABLE ${schemaname}.XMLOMEntB_CRF (id NUMBER NOT NULL, name VARCHAR2(255), PRIMARY KEY (id));
CREATE TABLE ${schemaname}.XMLOMEntB_CRM (id NUMBER NOT NULL, name VARCHAR2(255), PRIMARY KEY (id));
CREATE TABLE ${schemaname}.XMLOMEntB_DR (id NUMBER NOT NULL, name VARCHAR2(255), PRIMARY KEY (id));
CREATE TABLE ${schemaname}.XMLRELOM_EIDOMENTA (ENT_A NUMBER, ENT_B_ID NUMBER, ENT_B_CTRY VARCHAR2(255));
CREATE TABLE ${schemaname}.XMLRELOM_IDCOMENTA (ENT_A NUMBER, ENT_B_ID NUMBER, ENT_B_CTRY VARCHAR2(255));
