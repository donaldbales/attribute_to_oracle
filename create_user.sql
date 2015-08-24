rem	create_users.sql
rem	by Donald J. Bales on 2014-10-20
rem	Create user DON
prompt Reply with the password for SYS you specified when you created the database...
connect sys as sysdba;
set feedback  off;
set linesize  1000;
set newpage   1;
set pagesize  0;
set trimspool on;
spool create_users.sub;
prompt set echo      on;;
prompt set feedback  on;;
prompt set linesize  1000;;
prompt set newpage   1;;
prompt set pagesize  32767;;
prompt set trimspool on;;
prompt spool create_users.txt;;
prompt create user don identified by don;;
prompt alter  user don default tablespace users temporary tablespace temp;;
prompt grant all privileges to don;;
prompt grant execute on SYS.DBMS_LOCK to don;;
select 'grant select on '||view_name||' to don;'
from  SYS.DBA_VIEWS
where owner = 'SYS'
and   view_name like 'DBA\_%' escape '\'
order by 1;
select 'grant select on '||view_name||' to don;'
from  SYS.DBA_VIEWS
where owner = 'SYS'
and   view_name like 'V\_$%' escape '\'
order by 1;
prompt set echo      off;;
prompt set feedback  on;;
prompt set linesize  1000;;
prompt set newpage   1;;
prompt set pagesize  32767;;
prompt set trimspool on;;
prompt spool off;;
spool off;
@create_users.sub
connect don/don
@pl.prc
@ddl_.pks
@ddl_.pkb
prompt All done. Type "exit" to exit SQL*Plus.
