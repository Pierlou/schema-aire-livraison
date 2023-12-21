@echo off

call setenv.bat

%python% py/creer-documentation-page.py
%python% py/creer-documentation-table.py

%python% py/creer-documentation-page-ultra.py
%python% py/creer-documentation-table-ultra.py

pause