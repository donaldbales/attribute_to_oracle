rem	drop_user.sql
rem	by Donald J. Bales on 2014-10-20
rem	Drop user DON
prompt Reply with the password for SYS you specified when you created the database...
connect sys as sysdba;
drop user don cascade;
