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
BZh91AY&SY��� ���m}����������PD@  `����Ml� RU  �*
��L����4=iF�<�� hѦ�� @4444@b�� M  �  8�����  4 4   �CCC@4 h� 4� ��  aP�24MLF��hCЏ$�S�&����A"��4 �LDڙ�d�C��{M&С����G�&LGI&́\v�{h+�Ɠ�L-M��6�i�U1!#�Y, ��>�s�X`@��Ȋ�p*�aX`c�Q
~�G��,&b{��"ZY�N�I�K-p�eG�b< ��X�IXV��1���5�_�F�y["b3oc�$VƅCV�.`��d��� !h\\̲́q�BE�=f>�����?�A�QZ�Q4>H�@�2�Ɖ$2���PĄ�4������0x��M�sЗ�I��cD],l�������zK�̋-���j숭��|�^��H��8h�d{D@��k��?�%��a��=²{L�un++�!�v�DP�4Λx~�;#��Q��KM��dizK�S�
C�_�F��G��e��t�K���>E�.���4�� ���m��t(wR�q
���(�,�.�P�c.�w�B�Y�ϕ- �U&T� �5�[	b���H�c��Ǌ�}S���5U��.$O��N�p�yQ�b��!H��f�Ff��gNVrSA��A��4P�i�:�}�%������K�T1�8�T��i�I��/H��ĕ�|_]q�W�����gYZ�f�ͻ"$�`Ɔ���G�q�Wz�)��4�P�)�#
J����R�LH�I�m�!����$Q�����}@@�O�K��U5_����}{�x�8
R_B���l��Tj�Nj8���$�@v����<��f_!����C&�K�P
��1�!���M��ߣ���%�22����g۳N�#Li�z�G��i,}R8{`����j@�I�1I/;ȅ'�B=�B�i��
y�b_e�������z	@�-�!))Hp���Hr5,,0?�3�D����6�n����T�^�ѕ�����K5ii��D��q�Tm��x���B^Vòne�3zJKZK�CP ��h|��0"�B���-n��a�x	�6VЖH��\՗�f��x�r������n+J�[��������l�`���� <3�m�/��Eb9�t������AV���M�ӧg7�J�u�PX4rv��2&�������(��wM8���8�֯D,*�G��$4����A���6/�����q#����G��{#x\ZQ�=��y����	g6O��7UW��`�ҽS��֣X���N�6�����.+?h��H�e�F��5"���)��;5�2B�1|*�s|��������#ng�ѐɜBT��pt�
�
��Ύ B�TCsc��Bgrf*�;�����M�Nb�d	�s�A��PP�+m߁��ʾ2a`ra{�eN���,�UI���0�Y��V�;�W0�~ک��$nA�N�D��7��NČW�<eI��̅
mr��Vq�QH�(&�@�i&�_��K���ֈU�j�p�hd����,�$��9-2�~�0
�ɔ��;�|�L��腛f#Ym!���-����( +0��IXb�%= 0�{䞓9`A��J͙�ks [y|*0� �c�p��>��k��	U���|�*Y�#�QC�r��J���H5xj��(�~��4�Rfmp`3�\��.���3�)��M$�RO�誽a�`FD�-������D����#Sp�F��H�dt9-E�7�L�΍dWV:W�+c���zAj,<q��L�	���D��\VTE�\�(@�}e���VBT��<�
Q��]И�fD��H��yz���k
G%4�fh8��_�h��TV�k}��Ȋ#M&1�/BY�1���m��i~�zGBAZ�M� 
u�r�_�I@
 d s\�3�'<���`6
���:�A\	����9�����ߘa�)Y�" $z`�g��H��jI.Wu�"h�i���5qiW�3�p �
1�K���l$0�D �D���$��04e����O``cђɰ�%�/̀�hTU���c~^C#a�״5��~Ӭ�=b�JAڈ��+�*��EG��i�-���4cKnHYh;�aE�i�ٝL�1�3#�p!�9 >"Eh�(kB\���6�����3�EƓt��p����`���y�m�G�M6W
�A%�-� ,;9|�9�H��y������s�6+E��d5dЈ��L��B�H�B���"cm�y�!�������S5{��(#0�U�(s�z�Av�)O�+)vhPRU e�	C���J`BeC�R	��j�'p��-5oJu���kp!q���RC L.����P�V'b�FL�J��I�hSG900��H����`�$-)rbzZ���8z::�.�\1�WU��˃�x��QVg2I``j&���7.4 ����!$0�DkMZ�2;��c0�`G�����<c"ƂX1��!̵8(�W�#Yb����w	Cl���e�0 TZe	-iB����)�-�QW1%�.�JYV5ɖRͥ��$����EI7�"���8B$FE�-Ҽe��41��D��_`Dj'1���#H��)E��)�H�P�lu؍���������'t�E�	�Lc��H'I����c��4R�BTcP�!�Io�����4�~��VgN&l�ը��H뢸Z�A�� 8�I��-�!y��F&�	�E�U�hh��}�Jf�%�?GQ,yg`��3�Qy��8O�ƈ��℃���;�]��+��Q�t�$$�@tҬ��`��u΀�L}& ��f�X7o��yL�AC����"Z��z~�d�-��G���_��#�"#B��2'>�-/Ɯ>�=@������!J�,�$�(ܩ
B���.�p�!�QǸ