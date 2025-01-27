" key idea.
" inoreabbrev [<expr>] [<buffer>] [lhs] [rhs]

let s:SQLKeywords = [
      \ 'ABORT', 'ACTION', 'ADD', 'AFTER', 'ALL', 'ALTER', 'ANALYZE', 'AND', 'AS',
      \ 'ASC', 'ATTACH', 'AUTOINCREMENT', 'BEFORE', 'BEGIN', 'BETWEEN', 'BY',
      \ 'CASCADE', 'CASE', 'CAST', 'CHECK', 'COLLATE', 'COLUMN', 'COMMIT',
      \ 'CONFLICT', 'CONSTRAINT', 'CREATE', 'CROSS', 'CURRENT_DATE',
      \ 'CURRENT_TIME', 'CURRENT_TIMESTAMP', 'DATABASE', 'DEFAULT', 'DEFERRABLE',
      \ 'DEFERRED', 'DELETE', 'DELIMITER', 'DESC', 'DETACH', 'DISTINCT', 'DROP', 'EACH',
      \ 'ELSE', 'END', 'ESCAPE', 'EXCEPT', 'EXCLUSIVE', 'EXISTS', 'EXPLAIN',
      \ 'FAIL', 'FOR', 'FOREIGN', 'FROM', 'FULL', 'GLOB', 'GROUP', 'HAVING', 'IF',
      \ 'IGNORE', 'IMMEDIATE', 'IN', 'INDEX', 'INDEXED', 'INITIALLY', 'INNER',
      \ 'INSERT', 'INSTEAD', 'INTERSECT', 'INTO', 'IS', 'ISNULL', 'JOIN', 'KEY',
      \ 'LEFT', 'LIKE', 'LIMIT', 'MATCH', 'NATURAL', 'NO', 'NOT', 'NOTNULL',
      \ 'NULL', 'OF', 'OFFSET', 'ON', 'OR', 'ORDER', 'OUTER', 'PLAN', 'PRAGMA',
      \ 'PRIMARY', 'QUERY', 'RAISE', 'REFERENCES', 'REGEXP', 'REINDEX', 'RELEASE',
      \ 'RENAME', 'REPLACE', 'RESTRICT', 'RIGHT', 'ROLLBACK', 'ROW', 'SAVEPOINT',
      \ 'SELECT', 'SET', 'TABLE', 'TEMP', 'TEMPORARY', 'THEN', 'TO',
      \ 'TRANSACTION', 'TRIGGER', 'UNION', 'UNIQUE', 'UPDATE', 'USING', 'VACUUM',
      \ 'VALUES', 'VIEW', 'VIRTUAL', 'WHEN', 'WHERE',
      \ ]

fun! s:SetSQLinoreabbrev(SQLList) abort
  " because use Ex command inoreabbrev, so can not use map(), use for loop instead.
  " map(map(a:SQLList, 'toupper(v:val)'), '"inoreabbrev <buffer> " . a:SQLList . v:val')
  for SQL in a:SQLList
    exec "inoreabbrev <buffer> " . tolower(SQL) . " " SQL
  endfor
endfun

call s:SetSQLinoreabbrev(s:SQLKeywords)
