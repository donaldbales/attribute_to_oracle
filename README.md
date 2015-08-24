# attribute_to_oracle
How does Ruby on Rails map it's scaffolded data types to Oracle?

## And the Answer Is ...
<pre>rails generate scaffold test1 attribute_binary:binary attribute_boolean:boolean attribute_date:date attribute_datetime:datetime attribute_decimal:decimal attribute_float:float attribute_integer:integer attribute_references:references attribute_string:string attribute_text:text attribute_time:time --force

      invoke  active_record
      remove    db/migrate/20150824172310_create_test1s.rb
      create    db/migrate/20150824172907_create_test1s.rb
       force    app/models/test1.rb
      invoke    test_unit
   identical      test/models/test1_test.rb
       force      test/fixtures/test1s.yml
      invoke  resource_route
       route    resources :test1s
      invoke  scaffold_controller
       force    app/controllers/test1s_controller.rb
      invoke    erb
       exist      app/views/test1s
       force      app/views/test1s/index.html.erb
   identical      app/views/test1s/edit.html.erb
       force      app/views/test1s/show.html.erb
   identical      app/views/test1s/new.html.erb
       force      app/views/test1s/_form.html.erb
      invoke    test_unit
       force      test/controllers/test1s_controller_test.rb
      invoke    helper
   identical      app/helpers/test1s_helper.rb
      invoke      test_unit
      invoke    jbuilder
       force      app/views/test1s/index.json.jbuilder
       force      app/views/test1s/show.json.jbuilder
      invoke  assets
      invoke    coffee
   identical      app/assets/javascripts/test1s.coffee
      invoke    scss
   identical      app/assets/stylesheets/test1s.scss
      invoke  scss
   identical    app/assets/stylesheets/scaffolds.scss

C:\Users\don\Documents\Work\attribute_to_oracle>rake db:migrate
== 20150824172907 CreateTest1s: migrating =====================================
-- create_table(:test1s)
rake aborted!
StandardError: An error has occurred, all later migrations canceled:

OCIError: ORA-00904: "ATTRIBUTE_REFERENCE_ID": invalid identifier: ALTER TABLE "TEST1S" ADD CONSTRAINT "FK_RAILS_ADA301C23D"
FOREIGN KEY ("ATTRIBUTE_REFERENCE_ID")
  REFERENCES "ATTRIBUTE_REFERENCES" ("ID")
stmt.c:250:in oci8lib_210.so
C:/Users/don/Documents/Work/attribute_to_oracle/db/migrate/20150824172907_create_test1s.rb:3:in `change'
C:in `migrate'
ActiveRecord::StatementInvalid: OCIError: ORA-00904: "ATTRIBUTE_REFERENCE_ID": invalid identifier: ALTER TABLE "TEST1S" ADD CONSTRAI
NT "FK_RAILS_ADA301C23D"
FOREIGN KEY ("ATTRIBUTE_REFERENCE_ID")
  REFERENCES "ATTRIBUTE_REFERENCES" ("ID")
stmt.c:250:in oci8lib_210.so
C:/Users/don/Documents/Work/attribute_to_oracle/db/migrate/20150824172907_create_test1s.rb:3:in `change'
C:in `migrate'
OCIError: ORA-00904: "ATTRIBUTE_REFERENCE_ID": invalid identifier
stmt.c:250:in oci8lib_210.so
C:/Users/don/Documents/Work/attribute_to_oracle/db/migrate/20150824172907_create_test1s.rb:3:in `change'
C:in `migrate'
Tasks: TOP => db:migrate
(See full trace by running task with --trace)

rem It's angry because I don't have a table call ATTRIBUTE_REFERENCES created.
rem And that make sense, because it was trying to create a foreign key 
rem constraint.

SQL*Plus: Release 12.1.0.2.0 Production on Mon Aug 24 13:05:24 2015

Copyright (c) 1982, 2014, Oracle.  All rights reserved.

Last Successful login time: Mon Aug 24 2015 12:29:35 -05:00

Connected to:
Oracle Database 12c Enterprise Edition Release 12.1.0.2.0 - 64bit Production
With the Partitioning, OLAP, Advanced Analytics and Real Application Testing options

SQL> desc test1s
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ID                                        NOT NULL NUMBER(38)
 ATTRIBUTE_BINARY                                   BLOB
 ATTRIBUTE_BOOLEAN                                  NUMBER(1)
 ATTRIBUTE_DATE                                     DATE
 ATTRIBUTE_DATETIME                                 DATE
 ATTRIBUTE_DECIMAL                                  NUMBER(38)
 ATTRIBUTE_FLOAT                                    BINARY_FLOAT
 ATTRIBUTE_INTEGER                                  NUMBER(38)
 ATTRIBUTE_REFERENCES_ID                            NUMBER(38)
 ATTRIBUTE_STRING                                   VARCHAR2(255 CHAR)
 ATTRIBUTE_TEXT                                     CLOB
 ATTRIBUTE_TIME                                     DATE
 CREATED_AT                                NOT NULL DATE
 UPDATED_AT                                NOT NULL DATE
 
</pre>
