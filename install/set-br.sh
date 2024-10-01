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
BZh91AY&SY�]{z  d߀@y�&E�����@�P  �   h    �I6��jmOHz�� ��    �   R&SE6E?I�G�'�i=��"�RW���1;��1ZE��بԶMJ��Q�O�se���F_�N] v��hx<_D둫�АE$���h�rm���2'$���}pD�S�p�zF��,�p�L��&��E����q}Ʋ��X�μ�{G"����tmjԟ�v�#�"#wY�l#�s�ovk�^��w���Nlh;�rw��<��	��W��
���2����v{Gƌ�Wս�i U*�VOx|���>k�;�Σ���M.-������m�n�p�I�1;�C��?�%Lu�$��dFA*|�Y��@�-�F�"!��' ���d4to�G��f"#�;�C���H�k�/[���a���NhsD�����	�-�淤�!������,2��v�<���踍X���B�A0��2�k�6����\6/&�`���8�4 ��.�ox]/�0.� ���A��q����h���	YMêS�&Bh�֠����@�km�R�0�GrPd�u���-k.Z�Xx�h&-�LGp�O�JV_���)�����