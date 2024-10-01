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
BZh91AY&SYlhb 2�}� �����������PT@   �P���v�q��el��D&T�LRx���M��OM	�C&G�4d�=ODz�����
=G�z����4  4 � �$I�4�����h��ѐ      8 �2��� ��� $�@ҏh��)�S���4h��z�� �@�4�E���?ܑSC���S�Ǹ>
�{���r������ASS��Z�����8�p�:X`�f�&Fn$@Hr����٫)��p��J�'����qQo�.#�5Su�d:���$��u�;��d��>x*mwb��lm�)2 �Lm��!��B��
�Mv��b@N)�g�'Z�y���Y�D!i�jm0������ �s��"�R>0�}��c)��L��+���N�\+���)��9$Wj7Xؚ-HT�ߊ���P���7�T@e����j�ڍ�����m���+�%ۊ:�4��G S.#،P�%��~��"��~h|)�:O��p�x�,�8e�9ۇ�7,{��iicp�VBE�-=�v�%!cҸ����p�H5Z���YK+0M:�l#��u�V���-�V�$��[�e��@dC�(ͮ,L`��e�<�$%�L�y��:U
��κ!�f���ƒ�Q4f��R����C����)����a��S�"q�:�{UwG����=Sy^r�����ۚ�X�05�9�����Y3�L0H���!,@^Ζ�:�Y^��~��f�9T������*����D�;�e\�ƫn�����0�oK�4ć������}\���]ryf�nl�?FHH��˷=m(l�
*{v0�k!�M��3 �u�u)�i!�5n���Q���%V4B+�N�U��U6��lw˯fl����.�Y��5��*ʔ�#o��A��W V�ܶ�bJn�ڱ$jaւ^&���6���'2�1�#ap��y*�4�9�z�d6�Wd����>��>I"F�
����1���iu�ń��k� ��S8���25����A���W�9j뭂H��k/Ԃ~ݫTEr�����2NK&s�`��|���ơN
��3�7���:��%�@=�-R�쌷ŮT�\D��/��@�S�R`�xu99z7�Q𿕄P$1*94ԉ�>9X~��4���(ԃe&�~�M��8�u$Z1�Y+�w&@��lI[�D�*5Dȫ  S{]����|p�PI*�l��)\�M�L�-e� ���R[0��0��+�-�

���j��IU���*��6�ٱQh��1���t�,2�s��B�9j�E$��Ʌ8b(���d��8� Ȝ��}Ȕ�R+2���7�&7+���,��7�&������u���y&S�(�`���$20�YU<% �B��:1NJ$^r(72.`I���n�s��%��b@�f�'D�M�~ǐj�P)[<�m/�^��Io0�	q�� �{{}��v��$&��0�	��&���$��	�g�]��BA��=�