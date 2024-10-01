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
BZh91AY&SY��  ���1s�����������PD@  P�\���뻶��g]�v��i42�$�x�di�5=!��F���i���4���F��L#E?T�@�A��� � �"D�y5O#T�HS��=���@z�HzC�����C��i�@�ɠ d�  2dA"�ЛE&'��2z�44    ����G4=Ư�˱�� 1�%b'J���F�$	uL&�Gκ�����~A%��L{�]�c�!���2�7��eI�����r�k����e����$#z����S�_�Ǩ�SȦ�K8�(,��HVbhmfx���|:�r��s����iSvʣs�'([�Џ=���1ۼh�]�F����d�j.�Wru�N������l5���O�[zXe#���[�{}��C��L�r�|���ᰖV���S!�b�JjL縀S����~�~�S�m8p�>P�Yd����{��e�����*��o#�	.�2ڞg��߅��7mV�1�Ƽ��3Np����Z��Mɉ&׀5v��@���Q
vp�n�@��E�40��JhF=Z�nHN�H�"�ќ� �HW�G��r�ją\Qk{T��e������"��GP�{�?� �Ɂ�� �����*1��i'��D�5����é���3W&/g�$�z�j�$�*_�a���yyn�(��)��H񒩬bWs.-������G��{
fa������k�N�ΈXr]u(�����!Rn�gkOr�%~���S���(~�����שOru�'+�X�H�z�Kn���2#0�i�̐}��..�����m\˶����ِX����l/14sUQ��pt�M�G$#�C+5$�U�[�a�3uPg �����p�H��<��yc��T\���^���Ȏ��jK����wzY ����̜�y��u�Li�� ��i�����W0�i ��`��MIP)Q��;&��'J�A\x5@�>]MӾs�H8�Ό7M��E25̋AH#��AN�0�Go5�@ᡤ��)�wE��1˛goa��y���ͱ}��_���(��8��:�i���ȕ[�%���`%�ת���p�0x0hm��2@�
 R�q�z�n���J(�m"	,���S(�~�g����ް�T(��S�x��7�[��N�m�4��s��("��R5�
����\Qr�e��hHQG����_2
���Q��j`�s���'s�z6
�I��GC,��!~V���yl˰�8e�'8c�hV�Mq�%��)k��h�T��I��1�7Dި1h��X����B6j��E�9R�y��[�V�{e���&#-�h��O���l@� ��J�GJ��(�fElQ�*7��֚�3��
��Q	� ��#yq���'e�[S��#U[=��"=I�D����u��2B��(yX`5��O=�IP�h��`&#�*
A�,"��=�x���=�j[�����	�L7�yw� X&1��w$S�	�^�