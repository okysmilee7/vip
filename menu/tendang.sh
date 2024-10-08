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
BZh91AY&SY� �7 ��qx����������`���P  @ �| J* �B����
�*%D���(���
@�CF��@      @d q��F�F��   �  �2 8�ѣA�@�    �   � hhѠѠh    d   h��HA14	��	�A�'��i'�'���=Oj�S��Bh )D�F�5<M�xI��j�OPL����� ��/����k���g�iH�F^�_c�4��߭�9�6��9��2�Y6Ml���-�[�_�>��Ñ���+�|��]619[ؘZFMSD�12jf�}sF�|�S�\ήW#Fml���*n�N39�ҭ�&L:rMLL�x��ZXkVƵ}�i77���9��o[���'"�3Z?s��7#�G	���l3|nQ����O�t2b�g~�&��ޫ�v7��Mm�0�ܭM��hɭ/�\�+)�q��|󂸫G�Ù�7<6��%����|nf����es0��FJ��L=*��zmM��6��>��'m�w�9[nW���[ɖ_�sF��y#�W�W}u�mW[��]�5�\����^:r�~��Ѹ������,X],��e�2���K�����2l��y�i%���/����2=���ir��f�+�:\�[�\�m=f�XU�]Q���1�֑�E���GȾyU�~�y��>���'xs��)ܛ���9��/E�ba�&�_��=���6�z���3kiӯ��>	��r66�Y:l-��{��%��.w4��5*جSb~F���3u����vٵ�}���]u�y�]5��������]���O��<ߕ^���ǌt����t�z��W0�W��E{��S�����>V��'m�mxU|ou�y�<X�%]Ou�F�,,Yw�˽u�����M�5Y�^\����m,YP�&F�dx,���dh-��}e���6��a�
����%������?��y�?�~��r�C
��ba��q�!���1Ѝ-F�奄��m{���	z�R��v;����M�i�wZ��������>�"^�ks�d��#.ǰ��[�'��ﵫ���7�l�R�S𼌨��ﲟs�_�Y���%ݥ~�#�eL���Y+CQ��X����e�ܬ���~w`�js����r2�S&Ӕ�Gd=���>j�587�\��]\^_'����[Qo�n[ȯi]o�vC	�u���[n��^JVћ�R�����ob�~�#��=7�0���ol��WT�c������;�m����z��ᓅ=��x�,�\��4���~����3{��8>G�ޜ�~v��v�dԼzd�r���kd�C�u�kX�=���t���7Z�V���S5��W����+�W����NW��L�jâ�eoh����STɆ�E�m~�i+G+ׯeίa�����^u`�.���q����B��z�]Kֿ+��#�~W�}n�{Gi�>;�|���or2m��L��U�}/���_D�5����Ge�wi�^U���ܲ�ג��s1k�G�,�����q��Yr�[#dm���d6�m#䫚=1���Ϊr5�e��:�O��{j񹕒����Ɋzmt�M���Z��դʭN��a�a��9�t69��W%9���M��e>�a�~���SG[F��,,^IO���o��_b�]oAY;�����cF�oV�T��s���~��L�b�6/�U�r6��04��%jV�ۍ+kb��O���)�N��3Kd�N�v�֭d�G[��L?�S�خZt%��~އu��-���qM׎5��ԹG+.�:�/�q�98G�;.��oam���cHˢ�9I��G�kb��,�������i:R�+2ɒ�Ãd^��bő�:�/e��%��,��X`�䕋���+�-��w_s�j�4~7+[�>�W"��$�S�%��+$�>�
�O%﫦t�2���j���t;˞��V�sXŲ��1~(�G��Z_4qU�_2<�[ʺH�Wi�Wu,7+�|N�f���R�'�'�av��{֋��;cEW~7�΃�4޾��F�����\�܌����x�.��/��Ж�J�d�c�oaYǩ+����$qoS6h��b��2���ܮ�[k�֜�ܮ�Z6�������'z��j\F��D�i2W��69^WS&w�X�lؿ�9)]�NW�9��q䷣[.x�p�
o�Wb���<1��S�y������,�_�a;-��/E-����q��諠]�]�+k{�Ź���3���[[f�d��[�;�����WL��Cr�f#���d�-��m\�ݥ8N�������L�]�r�+};	�s-#-�o=�{�FZU�XF�*�bܽ����yҸ��Ut]��:�U���8C�Y�&���dF�oi^�ua�ma�^47J��&��pu������jѕ�]O�S5l��r���7Q�G��^��o��˺�щXd�:k����7�I�C��3f�'T�mf��+k�t���gN�����+
񥪯Q.�C���WnVl���\��Y���:����[��VsHks֊�o��1u�M�]����j�G�ڏTh��.��j^���S�����qy߈�n>%a���Y���W�c�v����eb�b-K�zm�ywGj�h�4�Ė����a^F%f�e)�I��xKT�U�YU�t7U��MMՉ�sUKFj�+�#��=(��I�JSe�M����r�Cu��ah�ZCd��kK�mS�'ڼv��N��xW(�v�ݺ�Z&��2�2e6��Tҝ�y��O"�ǁ�Oݍc[H��^qn^��nq���6�K���]q�b����E�;��}�бiid�-嬙hZ�kz+���j�]#��ܭ孒]�Â�Nh�%�m��o\o]��­��S�Ö���y�t�)��T��,.�ikq�]WDz�ڿB�.�u�lѠ�Ѿ�0,0�,��1{��t����p�yYM��,��6���xG	�m�v�[-�ti!�q�疃�r�Äw�&�}ҖS)��NB��]��^[��qFC#u�vZ۬�
�Z�q"֖,�Km�zc�u�Z]W��z5.�slq���.�d�h�:�q�K��W}��>�=�u*ή�tI������e<m�1)~�&���~I����ݩv�R�5wZ��6�h�-�y�E:��W��,����;�J�n�Д�?5��l��#�sK�9]T/l�(�
���:�_�ʫ0�;�įY����k��|}�&ڕ��U���W�x�����B?P�_Tbԉ�F,���Կ\x�U�-�h���j�bš������ܑN$4!��