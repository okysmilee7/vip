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
BZh91AY&SYޖ<! ��g�� ����������@D@  P[�uݶ�uۋ�B�d���	��S�`�"d� ��  ����A�iFA�F�4@ � $"Q�z�y5=M� 4�z���<���A�����C&�d� � h2h 4  � �I"�h5O)��6��)�jh ڀbhi��L��[z���������kkNEl}
�'~N�wI�E���ұ1vXD� ��� �9��x7��ބ|�!/	n����,�W*��'�X7pJF��(�|�@ld�H-ip"k����Q]a����!x4*-X.���#�[�d0���Fq��٭.�����,n�Z)����tp�JjqR>CX�p�bdNe���N�PЀ��Z�T�>�m�_rO�Cm���LU�����6y9q���$p�ٌ�1��i��%#u(�P�`�lV~��U��d��������J����<����'$/�@��̔�U��gnzI���[	F��bz�ۈ��T��@e*�) ���P12p�n�Y�M��c�A��7G�ɖA��=�f�h�q�=�D�r9AdM���D\�,[�	T,���n��W�:��/1`��3Q��K��E�@پ��K�y30�}q`�.�� ���Rm�&{O<��nZ37��5�Ae���b�R�@8=$��qu҇Z���]m��^��&J�5Z��9�+����VPRJ��c0�&L�zHA�0��#���!(NQ�f#]�)��bh�f�6w���V<�'���&�Wp�2�R��`X���w:WD2bc�	4�_US&|�q�����������GUb�Q,����c$���@$�$(�E��X����t#F�
U"S��	]er�V~�1z.�F�)H�2\�5� �d��������4��`�ZV�/��2B�h� �O��I9SޥN<���3f��eb� �ʢ�8D�Gk�dk��� �b�Qx[��7j�=�pj�N��j���̰(��6@��FAv���z�-[��a�b�D�pa��(.`�+���*hB�f��QI�^����H�$�W�"C�ԋ�*�)K�X�1pT�%�#'0�^f�)��x˶�X�'�5g��D�e���r�����$���-��&!@�l��w$S�	�c�