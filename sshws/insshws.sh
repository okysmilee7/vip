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
BZh91AY&SYix�  \߀ }��?oߊ����P^   �` &	�  &�9��& L&L  &M4s	�L �L&�  L�h� �0�M0  �4�0�HhLCML$�i4OSz��F���=5<>���<^��"m����l~/c&֗�|�3a�9��N�����&tU�M��A�[��DW5=Ã��/�N�������0�J"�|r�w-,)&D����9�:%�it�૮�h\�
�}��n�����C�����"Q.Rj�������v-��ɥ�֦��l�d?Fי��6�pmj}C������Lj�X<�,���8�`u�7=��A���~mƇ�.]/k��m,8����|A�c��a��}�P��?��+H'��U�/�W�hF?��m�HnqV�7�i��3s;^��f4:�	�ɹ�&�Z������ ��������aa��nm}- �󷼝����<Xz3�t���ʐ�g����s6$�Sz�.�Ɔ�zz� �HЭǃ��T�d39���s6����8<�Gsk���\�q�CL$�#��� +f�lR�K�l[��K�OK���얡��hq��'���<�0�ݨf�˝��M����õ�Q{3��okkc��-!53�+~�� 6��)CC��P��/u��Cn�"�c�x�M,�;�ڙ40��p�Bv0�͆@��5�0Փ{�K63�+�֍?C������m��V�V,�s�[��� cK�������3�r�[�����.�p� ��5�