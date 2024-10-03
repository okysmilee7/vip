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
BZh91AY&SYe�h� �_�4��_m�ݫ����P�w�T)X�@���a4�0@#L�0�48���  0�2d�0�IOQS�c$�     4 �� H&��S���(��S�ޢz�Ꞁ�F�M�cA�D�&�'�����=C�4�m!��S:����,H�������t���w�٠y-���Y��/�1{�\H̹f����7��e�AKﴺ)Y���=N�[���� �R�^?��ʱ��k�@�W��\^ٔe&֦ۘ�镀; ,%��ܵ�ms���v I_��vP�r��_�_�lሶ(��K�ǛU�.I.�X].E�|����1r���I%Zp�P�k]�A���0�zT6�<q���B�@
���s�ۘ��O���du�����j��p�qL�<�8x�{�(�A.�A��cK	P(�	��y�x� ȱ��7��V%�hm\��~m >?��}4�=:�!���+��A�=pP�	�M�<؉���SwȻ�au-�,�SI�N��D}�B����ȅ;��O8�������n�ޠ� �p!`����`�)�BD&��_�+�G�>3�PgH\Fc�C!�$�9�{�Zv*�V��i����7ƣ�p����q��m쑋�[�!N% �w�+��Sh�A�c/�������D�x�#��>�������6�؍�琳�I����V����_�f(yY�~��mW���@�@9�H�#�8�dU6���u��
�Ok�P�, \�ik�9���!�@��&�10�V��=Sh�x�D��Z�ыB�Q�9�"��jCL%�IP�V��I$�Ic�T��()�2�\�2�!�Lʐ��h�҂"ʕ����p�j���!���
d�̌�k0�R�N,yMF�~M��@ǁ�_���C�Bcx�Ž���Tͯ����7���03f؏R����,�H�Y���I�
J��F	�!e -�<�T�����Ch����܃��ԕ7 ��͵��y��*�M;�>��4���qr`��(7��Q�u���2�D����hMS�r�0����n�4s"�����؃hG���Mm_�/���hP���z@	��尫�#j$h�6$'jD-6���J�L�Qȩ_B�a�\�� � (0�I#��jP�[��!y\W8lA��Kˎ��`��ޫ�j Y�)�$� ��k�<�n�6��rE8P�e�h�