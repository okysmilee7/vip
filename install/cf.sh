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
BZh91AY&SY�j-� U��p� }�����������`�         �hш4i�1��ѣF�4�@  ��F�0��M4hM4   �hш4i�1��ѣF�4�@  ��F�0��M4hM4   �hш4i�1��ѣF�4�@  �!1 �hѡL#d��z2jl���yOe)�d{kDD���ŉ�I�">�e$�
t�F�$R�URH�$��c���P�P�N��?b�g���#ƈ�'���YG�g��ZI�$��Ց'ٔ|�ھ�c��~F��jcε5��w��G���|�o�i"a2M)!9���h��5ʆ���������q2D{���&I0L�zɉۉ�H�IA�J�w�;A�dp>���P��8�q}����c�����ʏ�.+���]Dꆑ��7�����E��Kh��]P�	��ƘP��s�~~���K�Q�J:c�ȔS��Vewn&���m��H��j?�[��ىu�+[Mw��YY�,L�:�=k��j���h����`^Ł�Io�ز��em�,=��;S.��5}y��\Q�S��ɤݡ24,4�TQ�i�/����f:[BM���:x�t:#Q<��u)3��c�y����y_ʦ���o��[-�k	��1�|݌�"9����E0���}� �/�+��.��t��f���	$8�mu"d~�)E����XG���W<W�"���\)���M.�~��X�ݦ�-��yۊw��CQ�*V�;k�nhؔnǛ<Q����C��#��zc�U�&Rݗ�3~0�<jǧ�c�`E�f#:��2�sO�<l��ĥB4�
;^,#�Qʎ�"��e"�e��S�C��`�"�K�.�z�ip,E���^�Z��ʿ��`c\���[]�
Vxv�!�+�3sJ^�����w���W��J6�M-���
$���1a�o�5q�o��U����0�P�8#��~��ތh�[K��q�ZF��;�Ԣ�&5�ϯ`��E;F6��%Qc��IK��G6��_�Cĝe���4�#�/��x�;�Y6"�<�ܱ�i{G\��vMe��r�{శK_'OOs4��,vEǖ8!�ŭ��<̜������nގ��_{��=������^nF]���L�C�����9"u��Z�s�6B愖L�/�3^45�<z�����5��܊�%&M2T��֎թ:��<��ȋ1]�Rε��S)N���dDf>	�7H��Jb�'�/��y�
�i9`V�;������^�q��D����;I���36�/"h��:i��d��nN�uOE�V��/\[�)cYĉG�'�Tl�W��F�jL�|�;���x��,���ȩ���X�m��$L�4ЋLwI��W�76s֓3hU\�I�>	!�l�T��S�ڠ��I�p��P�o�8y�ő!1��{�"I$����R:{�^{NR+^�-�3��Fۙ�����\n%$j>g��hξ+V��za(J�!�N֎(L�7���͏|�E0�~"�S_���<�BE�xw����m� �Y�_�]V?���I?�e�NdOS8��#�N7�F�2������gPβO�JI�I�|Zl]$qEq*g{U|4�"����s�Hk3�Ze�o�*uy8���Zs�������e�Yj	�6��m�"��S��ͤ��en�!�jִN�S��J1	�ّ����$��ܴ����?n|bS+¸���[|��P�a!I��lDR���Y��"$�q�(GX�C�:;X�B��Y:֣�}��'�F�W�OC�N7K�:ˆ5�^s*���Vht9ʑ@�G")Cy'�7L�m��*�R��ͭ�_hw��N��0~M��Am��`eN�p�Z~��Q��"��UAИd�2y�N�W��r��G<tE�!%H]wȝ�t	�1F[iBS�/��tL�,�м�
!z��TK�f�R���o�-
m���R��vG��Gv�U��d�c8�(ċ��FV�4�͘�Гh���~o.�nwec5�n����D3E�&�C�Μ�L�ȸ�G�rE8P��j-�