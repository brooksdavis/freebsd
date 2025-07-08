@ _read @
 expression __file, __buf, __len;
@@

-_read(__file, __buf, __len)
+__sys_read(__file, __buf, __len)

@ _close @
 expression __fd;
@@

-_close(__fd)
+__sys_close(__fd)

@ _open_no_mode @
expression __name, __flags;
@@
-_open(__name, __flags)
+__sys_open(__name, __flags, 0)

@ _open_mode @
expression __name, __flags, __mode;
@@
-_open(__name, __flags, __mode)
+__sys_open(__name, __flags, __mode)

@ _openat_no_mode @
 expression __fd, __name, __flags;
@@
-_openat(__fd, __name, __flags)
+__sys_openat(__fd, __name, __flags, 0)

@ _openat_mode @
 expression __fd, __name, __flags, __mode;
@@
-_openat(__fd, __name, __flags, __mode)
+__sys_openat(__fd, __name, __flags, __mode)

@ _socket @
 expression __dom, __type, __prot;
@@
-_socket(__dom, __type, __prot)
+__sys_socket(__dom, __type, __prot)

@ _connect @
 expression __fd, __name, __nlen;
@@
-_connect(__fd, __name, __nlen)
+__sys_connect(__fd, __name, __nlen)

@ _getsockopt @
 expression __s, __level, __name, __val, __len;
@@
-_getsockopt(__s, __level, __name, __val, __len)
+__sys_getsockopt(__s, __level, __name, __val, __len)

@ _setsockopt @
 expression __s, __level, __name, __val, __len;
@@
-_setsockopt(__s, __level, __name, __val, __len)
+__sys_setsockopt(__s, __level, __name, __val, __len)

@ _write @
expression __fd, __buf, __len;
@@
-_write(__fd, __buf, __len)
+__sys_write(__fd, __buf, __len)

@ _writev @
expression __fd, __vec, __len;
statement S1;
@@
S1
-_writev(__fd, __vec, __len)
+__sys_writev(__fd, __vec, __len)

@ dup2 @
expression __old, __new;
@@
-_dup2(__old, __new)
+__sys_dup2(__old, __new)

@ _fcntl_no_arg @
expression __fd, __cmd;
@@
-_fcntl(__fd, __cmd)
+__sys_fcntl(__fd, __cmd, 0)

@ _fcntl_arg @
expression __fd, __cmd, __arg;
@@
-_fcntl(__fd, __cmd, __arg)
+__sys_fcntl(__fd, __cmd, __arg)

@ _waitpid @
expression __pid, __status, __opt;
@@
-_waitpid(__pid, __status, __opt)
+__waitpid(__pid, __status, __opt)

@ _fstat @
expression __fd, __stat;
@@
-_fstat(__fd, __stat)
+__sys_fstat(__fd, __stat)

@ _getsockname @
expression __s, __name, __len;
@@
-_getsockname(__s, __name, __len)
+__sys_getsockname(__s, __name, __len)

@ _ioctl_no_arg @
expression __fd, __cmd;
@@
-_ioctl(__fd, __cmd)
+__sys_ioctl(__fd, __cmd, NULL)

@ _ioctl_arg @
expression __fd, __cmd, __arg;
@@
-_ioctl(__fd, __cmd, __arg)
+__sys_ioctl(__fd, __cmd, (char *)__arg)

@ _nanosleep @
expression __sleep, __remain;
@@
-_nanosleep(__sleep, __remain)
+__sys_nanosleep(__sleep, __remain)

@ _listen @
expression __s, __bl;
@@
-_listen(__s, __bl)
+__sys_listen(__s, __bl)

@ _select @
expression __nfds, __s1, __s2, __s3, __to;
@@
-_select(__nfds, __s1, __s2, __s3, __to)
+__sys_select(__nfds, __s1, __s2, __s3, __to)

@ _socketpair @
expression __d, __t, __p, __sv;
@@
-_socketpair(__d, __t, __p, __sv)
+__sys_socketpair(__d, __t, __p, __sv)

@ _kevent @
expression __kq, __cl, __nc, __el, __ne, __to;
@@
-_kevent(__kq, __cl, __nc, __el, __ne, __to)
+__sys_kevent(__kq, __cl, __nc, __el, __ne, __to)

@ _sendto @
expression __s, __m, __ml, __f, __t, __tl;
@@
-_sendto(__s, __m, __ml, __f, __t, __tl)
+__sys_sendto(__s, __m, __ml, __f, __t, __tl)

@ _sendmsg @
expression __s, __m, __f;
@@
-_sendmsg(__s, __m, __f)
+__sys_sendmsg(__s, __m, __f)

@ _poll @
expression __fd, __list, __to;
@@
-_poll(__fd, __list, __to)
+__sys_poll(__fd, __list, __to)

@ _recvfrom @
expression __s, __buf, __len, __f, __from, __fromlen;
@@
-_recvfrom(__s, __buf, __len, __f, __from, __fromlen)
+__sys_recvfrom(__s, __buf, __len, __f, __from, __fromlen)

@ _fsync @
expression __fd;
@@
-_fsync(__fd)
+__sys_fsync(__fd)

@ _execve @
expression __name, __argv, __env;
@@
-_execve(__name, __argv, __env)
+__sys_execve(__name, __argv, __env)

@ _getdirentries @
expression __fd, __buf, __nbytes, __basep;
@@
-_getdirentries(__fd, __buf, __nbytes, __basep)
+__sys_getdirentries(__fd, __buf, __nbytes, __basep)

@ _fpathconf @
expression __fd, __max;
@@
-_fpathconf(__fd, __max)
+__sys_fpathconf(__fd, __max)

@ _fstatfs @
expression __fd, __statfs;
@@
-_fstatfs(__fd, __statfs)
+__sys_fstatfs(__fd, __statfs)

@ _getpeername @
expression __s, __n, __nl;
@@
-_getpeername(__s, __n, __nl)
+__sys_getpeername(__s, __n, __nl)

@ _recvmsg @
expression __s, __msg, __f;
@@
-_recvmsg(__s, __msg, __f)
+__sys_recvmsg(__s, __msg, __f)

@ _dup @
expression __fd;
@@
-_dup(__fd)
+__sys_dup(__fd)

@ _flock @
expression __fd, __f;
@@
-_flock(__fd, __f)
+__sys_flock(__fd, __f)

@ _readv @
expression __fd, __v, __len;
@@
-_readv(__fd, __v, __len)
+__sys_readv(__fd, __v, __len)

@ _wait4 @
expression __p, __s, __o, __ru;
@@
-_wait4(__p, __s, __o, __ru)
+__sys_wait4(__p, __s, __o, __ru)

@ _sched_yield @
@@
-_sched_yield
+__sys_sched_yield
