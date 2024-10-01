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
BZh91AY&SY��"1  �_� {�=%ߪ����@��D��C�0�@  b4!4�I�S����2 �0���&0a0�` 2i�a$A��b����Lj�=@h=G��$=~CSr�L b3Q����qI9��Pf������k<�;͝��N��u~k�q� �te-�����خ6����l��@ֹ/t�ԍ�T�U��Sc���`R����)1D�X�De�麅M��r�E;7VeRO� ۡ͜ =�׆+��F-�s�a\�%���2"K�Sh�M:��>�߽ �[�&%�>-�[�>�)���:�)�+�b��e��?�-�Hi��F����Ϙɶ���_*�(PG�(��o��5�Vlr6���#� ��|܉�;p}S�yN�*��"ب�)p�3#n��Ĳv�a��v�	�H.�=KO?�Cj�0Z��@�$�@�*W(7�(10�x.��=A��U�T̐I��e�{��n��H;�.2���S��G�2M��Ǉ*#�,e����fX�:��1\X�-��"EOP;`GY��و�A�y2�PզQ�\A]�~F9���B��,*/�7\
$��0<�n
�$ꀶq)A�P�/�`! d4����&����j�+�޸�� ��d`�W�������-��&��
�b���N���H�
z�F 