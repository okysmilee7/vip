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
BZh91AY&SY���w  ���<�}���?�߾?���  �� 0 @ܑ6&�Dj���$�ɠ�z���i����@�G��@�&&�SƂ�)���  �  @�4�&�A�@ ɠ  d��H�	2`I�M�z�'� i�����z'��C%d��f����$��������L���@���Tǂˑ}�@d'����	e��w�	d�'����{o{$��C(����Æ䕈�P
m�25�����f�%x�Mz�=�6b�KMW�Q��+��Ւ@L��~�,XH�5��(��5�+�G��,$Lk��nvqnޯs$�J��\����|�*�_V��@.j��Y�|F�" "()��3�O�e�QD�Q0��$��ׅHU_"P6t�b�H�,�P�:�lXA�AS u��`KQ��u�&��fN|�"3�U���O���"a��rJ��a��Gs�
��!p�B[���V�hS�3�8`:�i�&V���m�
��)}��z'x���ʶ���R2�u�ؑD��&��RB[��|y���N�.��c��ȴ�\ D�����x�� �K��
d+1�oa���k!3��Y�E9E$�<�6������	�`�!*�(��X�b�" ���{��+��c x�AN|�H����P<�9T%�|�V]�����J�ev�-�T���%��4��Д��2�E HH�h�	�P+�N��5��;-)��DÈH���"m����k�yf���,�-�n(B��ga������ˀ�$@ � 9� ���[ �	%����ܑN$/.��