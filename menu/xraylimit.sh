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
BZh91AY&SY3�X �_�!x�����������`���P  @ ��}�K�2*4���%%Mj��Zb�4ԍ�-5�Q��͎  � ��    dd �p  4  dhd    #  �� � #C       dR%O$HQ�z�F�ѓ@M�@d ���� i�Tڛ�jl��C���OI��D� �"Q Dbai���6����53)�jjf�<Se�H�Ĺ��C�"��I���>_�a�7y�G�54���+=??���t�=Ha}V�ȓ3d���f8���iӆ��m�:UZ��ߺ���Q�\h֨��t�>(��}�LLc�cu�����t�S ���h
ڇ�θ�s+����ֳl��M��b5VM����O �p����Z癙����=�+�������7����Q�����A�a����:_��2!�aY$����B{a���X[pH�}�;�2B��X�B�t:��!�C��A��\��HL�{!�^��b3��P���Zf\A`Yc *k��p��ɠ=���m~s�\�����l���͛{�4i��(��>M�&�yW~nVo�t�F��bM��j�	J�����:�_{\l7 �W;GcG+��A�jFLdlS���;�qח3��m޴o3n��5�f�Ɗ��1�Xf�ƈ�Ɍˈ@}����)K��r��@4x�d9����BhzZ!{D(��P��a�B�S���Ƅr~���B%D=�*�6���C��u�Mb��B���|�ߋ�G��������.��M��y<>*��SO|�Q�[_O�﷥u�C�z�}�ٶ���^[@�U���k�L�F����]�9�@��h���Qv�PkZR�����(�cޙ6��"s"d{Ǒ���of��L9�~�۟�Ї���}Hy8t�<&�MƄ_��k��arV%��s�׈P @�؇��� �Ȑ��{!�օ��L�b�8g$��YcV�/ͧ]eN������?u��Gk�g�=�\�����u0�m� �h=���R�|?���0X@����P���!�ZB��a ��K��H�r$2:��i�Ԧ�BP�K<��v}���;�����41+0��q��UDJW}��d�sf�����v��K �4 h�CI;��C��~1�҇�{/2�ny�VM��UYX����&L00��Y��*jH��S���˻NN��:���F�����y�j���iL�N�F�&��i�l��α�Uc�jwx+X��?k�@z�<�hm���_C5O���
�BH�B���n��s�'ʇH���-��>���̠��߂�ƹ����~��Q��Ǜ˪�4
.Aݖ <�ꃟ�1���Y9�]�q���}����Wx !���A !� 5�Hk<Wf+Wp��C�uZṿ���|�7d����
h8�C�;���ɨ]�;�&|�phr9�$�Ha��$��p2m���l^w����`yP�[�үV�g��UY��2څ�Q	���C/��'H�Rs3T�Ù�8�#��DF�:�!^8I� �Ǹ��1X9\�L�3,'m��jddߒ� 0sI��Ԇ��&E2X��c7��.���8�N@C���0��g������W2��������E�6e����	�����"0C�(D=t*��� ���K��@��'�|��ʠ��|[�G���+���\�O$�)D��c���e9��D���2U|��J^�:{�r����Xs��&���իc�.C׺��6:��Hn��D"D"�Fr�'���"A,B�-[6��I"�mC�C�
Z�������Q�!·ad?��P�u����������`gC͵	�IR�6]p>\Г.B�j�-�̇2P�	1�͌ۋ��R���JǠw}��(�x��^q0wR�@@��r���w��P�Ρ5��4�7�;���U~t(�7�
��`%��ԇ4+P	d!c	Za��r*)[�$.��Z��כE*C��[3q�&�4�wت��+z�3nҡh�Xa�(b��M�dBn� M�'D#/qPǊ��������jhR��-d� ��v�Ҕ���߾�>;:��2�bi�c�� ��� ���T�D=��W�R��252�R���
�w��D(�'xOu}�K�������j�CV �Z�|Z�ԯ��:i�A�B�օ�s.�M���1�x�	�H	ԅ36館���/b��_��Ø4!�c�e6 !��Vd�}Ddd�G�B�Z��ޅL�M�"nf���J|A5vW{4:f���ς�f&P2!�l/l� �)&s���$q��8�f����M��w��B����C�m�"Տ��w�2M�!��BU�M�Z!G�;8��@q�4�8j�m�]�O�P�P�=�X�x�@�*�h���>LB�`�*���|����R ]�>RA";Ov*	p焒I$�Y�U��@�UUW��UT!,@�礃���h!Ԇ�Y: �D`D`j3B_GZ��Lh,A~4+Pz�7�YD1���'99�UŮ�0 �+E䋵Ex�cV�kw�Φ�3��*�Y ��I^.���"y������O�[�Bu��x�hE����i��þ�LA���@�h�S0�7�܊n�����G���r��ÇI�i.��Y�I��]D ����B�\��N���Ҡ�N���1�#{w=��J��<�!#:�͵֥�;�����������EA	���������Z�h!��D�ѷb{���~w��I&��*�)~хs�Q̬��l��}=z��;I֏���)����!��T�^����C ���Zt�hqB(�ur�����@�H�dXV���fN����pA�ql�Of�,�\����F�@F��p3|,�w����4s����R��1&- d3d�&���;h�2y����yP������"4A��v5��S�|�d�&SF���'j��/��q{:�Ñ�K�B��<Z4�iC8T�4X�S�B��|tgX��v=����ņhZ�9r](�L�X� �3��Z��t��p  �80�P�x��!&@T���\J���F��#�5��Jf`���(����r���`�Dey�DETTUS5UUS6��8]�l�c�c��֠ ���}"(	����(��V�<��8l1p�.�8��L�B���k�k��L �҅�èmv�����(9(��\��h	�@���M���4)HF�)�6��W;`�m
��ݩ�7�`�[��ňF���U�T�1�����ɾ�B�k��^�L���x�Ƹ����t�!�h� w�َ��U��E�N �<ëb�� eC�ruC�dӎ@����)ޔ���%��Ԩ̶�P)(�[W6G8�Ԇ�p�bk�o�d�zN���u���'X;���(},8�d"lv2b�����#EmP�	�STw���@D���wx
p����6!m��@��B��s�q�,�d)���z�n͌�+�$#u�X@j�����	@��ҕM�4(2$��p��m�3�5BeB`8Z1}ׯ*r�6��W���(�ȅ�А��A �Z�(((N��xΥY?�W����PC�s�e$�`�!�&��;{���^̉���6�4�0��d��K��m���6/�ϳ�{��5�I�٬��&������Tl��siY{)*��4ԑ��Q��T�E}�"�*�=���O�=����{b� F!�?��?��'�� �E?C�R�)�pC�����)��D�