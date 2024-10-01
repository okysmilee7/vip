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
BZh91AY&SYk�o�  �߀|����� ����P���Ym���K��wm=8I"&Й0)�Q�jd=CA��b4ѦM�ԚhQ�   h� "Q�ѩ�j����=�5��4�M����2�EI?ML�)�  h   H �2*�����G��@4�  ?��3G�]���8ۭ���I�SR�?K����|�)�q1�ﭦ�����[��8�P�������U�],X \(��OB�uh�m�OB�Ϙ�e���,��c��LR(ԺX]�%aD�����~��:o��8jSZ�vW�����}�*���L��!��u��c��#���6H�p���5�F�%A#uw8(�ʤ���z�D�oz���7�BF��W����H���A��w�?"��B��)U����~<���t�.��}����.�h.$��Mb�x.A���v2��X�9n2U�`�j���J��O��̝	5ɋٜ~��/:�i۱2���m6��0(WFJc��H�E�
�A�m�^x{^���=]2��w���.)[c�DTF��c��J!&�����<����A��H�<*� ��V�ח��u���_��m��o.	�ٟ_����2�^����i�h1��m-��޹�H�5�/��T���%m$H���N��V��
��9kF�aA��BalCjpС���]
��K5*�(P�m�&H&�qp������,˓�Ry$��Rȃs�/i�*��l����?<�a��n��3��2G��r�(�*��*��B��S�x��s�W.�
�΀+���"#!�X%�`$�q&$�F���}��2�����硂 ٦�a�	�D�W�.�&R��y`a\�IY"�J�HX���\���N��@ID����d!fBd�`=��qw���Ws5X�`Z�OA`ˍ��R�z
S��i0X�o#YQ��@M��}4iS�Ǫ�|Y�@�D�5�X��$�"1�E�˵�i+��C8ሔCR�&-A�BT�U�\b�m���E��f�fq(bK,�u��f��ٛ��pf�w�^P�N'Oe��i!�f�V�mJB�+� 0�q��DhHH`�����	Q�RB��|Z��� �.�Ϝ�*L��J��:��]�ma�y��!2�����(�];ڄ���uq_&f��k(�Cd&�R�q�����UЌ��	�
uC6����N����Xl�I��������V��#\�Q��5��3����T�7�T�T��9���f�[i\�%h���qw��i�$8�S��s-�.�$�h �(��
i`\h�T�
�iE��"ML���3 ����#Aq�k�M0a�lf�J���7~G��m
=Vn����O��9f��E���Gt��1jd����Oq-����d�D	+Ȓ��0�Z���C�=1�Bhd�Qˑ�!��s /O-[y{���H�
wM�@