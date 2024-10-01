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
BZh91AY&SY2��K ��E�@ ���?�������@�D@0  `�5k]d(@ 0��OBa� �z�FODf���24�p�ѓF�hdd0�2 dh �2�CFM4i���� ��i� @�=U%=Gꁠ Ѡ ��2   h �B$��Ɋz�S���d��i�� z��4	M$Ț��i�M���L��4�A���6��b"���҈��M��cr*s#��)6��ZBcM	��{|k9dQ�B��MI9����W:���h�ZzʋC��� VE(�+&$T���xc�xRc.̮w�8Z����j۟H�Qo�&�Ӓ��44ۥk7�*ʙS�����=�����_��q�%_9쮡\q�ԇ�1Й.�Yn��m&\�����       �GG��Nf�7�x�8�z���oI��g�H���fja��z���&I�,!B�M�NFLGrwq!!!"۸$$^5��,�+��F:0^Z�[�S��SRؙ�ċ�\Q0�c2��f��RU���3k�� zw\��oo�h�� & ��ڶ�2�� �û<:�{���62����PB>$����
@`y=�x�+���y����=/ʲ�4��-�51�գ��n��a��6��
5+e���I��p���!B��m�`�^�̖ܢ�-�hR3SB�����"�P�M!t#���k�G|�`�p6���NR$Q ��������`�k�ګ>��a.}�q�T��� ��W���}��2���Đ`�]���@��z�Z���͉�G�(�n� ���A��<���4r�H�e�m�Qpr�m���D�q� ���~��Q,��x���/g���{�o�7�����c�RHOCe:!!����Ƥ��$=���=�
���I$�6g�W{��J�V��M�[�O!^�A_y>,������,���q�<�~SW]Ơ��x�4��_�Z;�t�Y�!	�YI�=%Դ��V�����7��$�����B ��3a4O�&"�E�p��$�I$�����֢.\K&�偩@�h�e�'��vB�G������µ�t�{�q�]�\~����#`H!�:	�� �욓w�x����Q
��v3f�b���CM��C���@����,f��
�4}^+���^o�j��������*���֫�!º�!�`�����Ԣ�:�B��$$(��L�a��4�B3�z�[��%\Eq^�`=s�;\�����EzꝹ�;���W`��v��(R�SzP�`���!�!ԫ~��L�	e))NH��<EvQ[�T�{���rzD]�;s������)K۝����x �����@ѥ�Z���k�W+�xA`|~/�+�+��oh;�rx�����Ԡc�
�[����w:�Ey�X��WZ`:d��(f��1�c��BI$���U��#$�먭����q̄�$�W`�QZ�)K�܋�x�t!$�II$�F�1�b�8�y�C6�?��fΡ�G4�E��n<���M�i��C�>������)3M� jR_�w$S�	(���