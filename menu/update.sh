#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SYr�PF  �_� �밗%�*����Psot��J��L��i�i���d�5 �1 �S�3D   @@A����       ����T�SyP��C&�  ��IBaMO)�6#$�##M4� �D��8,����<��)X�H�ׇGD�΅M�g)�� �ch�@�D�k0 M0�� Sg�!�     �9Ɂ6������]ϟ` b$FI�p@��}�J4��#��]����:�����4!"z@�~�jְ)�9MC��x4ա�Q�y�	.� 0��HHHHHHHHHHM4TT�F�,�!!!!!2~B6r��QΣ~Z�ُ\��F'ܻ��#�x��q����W_����g|����p�!!�� ��툏=�IO2�-v0y<���#�^8�#e��W0�������ʢ��eB�3����G��p�X��#����G�ud�I$���v���#��K�����1��ΑDttk���G�sjF*@�^c�m�G��'�n�<6��Z]t�Z�p�����(�a'F�B�4"�#L�s��|�=7�*��(HLM��j�F�#gQ�9��B���Y�l�4������\�pzv�PFd�#��#���Px��Ͱ�$�*�/�!��H�������58omg��e*#[ ��-qSF�DzG{p�-�5��I��GT�@��s��YN8�:6԰F�I$�I��G�#�a���{��Z�4���w$S�	.e`