# match: cp .. ...

/^ cp / b match
b end

:match

  # print and read next line
  n
  /^[a-z]* #/ b end

  # f22: cp: cannot stat â/tmp/xfrm-monitor.outâ: No such file or directory
  # f28: cp: cannot stat '/tmp/xfrm-monitor.out': No such file or directory
  s/â/'/g
  s/â/'/g
  s/'/'/g
  s/`/'/g

b match

:end
