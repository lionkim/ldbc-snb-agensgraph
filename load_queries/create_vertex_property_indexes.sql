SELECT queries.* FROM (
VALUES 
($$CREATE UNIQUE PROPERTY INDEX ON forum ((id::INT8))$$),
($$CREATE UNIQUE PROPERTY INDEX ON message ((id::INT8))$$),
($$CREATE UNIQUE PROPERTY INDEX ON post ((id::INT8))$$),
($$CREATE UNIQUE PROPERTY INDEX ON "Comment" ((id::INT8))$$),
($$CREATE UNIQUE PROPERTY INDEX ON organization ((id::INT8))$$),
($$CREATE UNIQUE PROPERTY INDEX ON person ((id::INT8))$$),
($$CREATE UNIQUE PROPERTY INDEX ON place ((id::INT8))$$),
($$CREATE UNIQUE PROPERTY INDEX ON tag ((id::INT8))$$),
($$CREATE UNIQUE PROPERTY INDEX ON tagclass ((id::INT8))$$),
($$CREATE INDEX ON ldbc.person USING gin (properties JSONB_path_ops)$$),
($$CREATE INDEX ON ldbc.tag USING gin (properties JSONB_path_ops)$$),
($$CREATE INDEX ON ldbc.place USING gin (properties JSONB_path_ops)$$),
($$CREATE PROPERTY INDEX ON message ( (creationDate::INT8) DESC, (id::INT8) ASC )$$),
($$CREATE PROPERTY INDEX ON post ( (creationDate::INT8) DESC, (id::INT8) ASC )$$),
($$CREATE PROPERTY INDEX ON "Comment" ( (creationDate::INT8) DESC, (id::INT8) ASC )$$)) queries;
