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
BZh91AY&SY��U� �{�������������p�f� 0  ` >�srm55(}�Zn5[M��d�ҩ��ޞ�����R�N�;F��dR���P�D$���"�TEKZ�����2�i��jz�4#@ � � �   $�&��OS*~T� �j6�&�d�54����# 4  �               	$��H��������F@=F��2�     �! �24��O�MOj��~�i<��I��xMG��<Q��yCF@�4�z!��$� &!=OD�O�=$��=�1��G��Fj=!�  4v��T~��㍏���B�	��z$ �O��{�S��FG�{6f`ai/��@��(����(��\)š5�V��JP �O1���:F*�A�m�ƪ]��Y� s��>��'�8���!�>r�X�O^�:�(�����+󶯩��\.Ciu����G��N��� [+ʩ$��P�G���eϙJ�|�]s�¾��,��h(� 闛���nαb]�,t�2�<���G�N�����XN�\y�ol
M\��z�~&�JE9�=ACQ"��ɸ�e����ڗ2Լy��݃�鵑�T<c;��+,�UU�!��*�t$���$�Fni���4S6�i�^��"���A4�~�������V���^�������>7#ucK�}��ۊ� fS5K��W�(/^�r)��90���Q��&���Y~�k��I�+C��o�Y�x�F)�~{�}{�w�=˾Ta��3q�W����ZP� ��� �B�� ~84�$B��&�7��B~Y L�;S�8_P.0Z��H��K�s���q�nԥT�)u�i��`>�h�!�~����s�/ݨ��BB��,~��K����O��t��o�Y��@���&��8������h�л�&c9���1� H	���T�vsր�'ݳg
-�����1~�j�^��S��N��nD)a$��T�5:N�+��ò��7>��$!�&㊗�=p$	�H-.r�K����ʈT�G��)�u�hd	��6_k����Ge���Y(X��r�W�6|Ǯ�r5Q���:�4���+���N|
����l+D�"�11��F7����P��߸K�� �u�UU���/ڂܾ��&�!��x��t�yl~�KN��-�z�!��^f�,V�va��;�v��x���Y�B���0O�e�t���S�7�5��ko }�E�O��WܶY���W_Ð�#�,qW�w��͂���d�%t��w�.�*Q�b([��f�=P�J������e�[���vV'��u��H���[{f2�lا�Y�T\�|��˔�?/m�<�cw!����gcR��ܦ_�k�r6�C�e�D5�z��R�cˎ*Q��$0x54q8�A�:"��ј��F���dکg/0�L�h�vr@1[�`A`��xr��%E2r�ؒ�.�0�9�G)�@S�������(o}������Ya��/�I��G��5=�8��D�:�����9��*4V�7ύj�ӧ=}._J�-�ࡻ�I$�tU�?�Pk] }ͪ���>w�V���KI�f���8ҋ�ֶ@^���X$�-�0�U�W��+��@:�i��#�r��:w*� 6H�Ҏ�h��"4Bx��p�E՞������u�X.�
@�=�m[��/��Ĳ=�b���K!�w������A�d�^|'��mqC����Id6��� F3�6�V�/�,;���,Cnܬ�ծHA�2J!ݰ_�窱�^�d����h�`�������T�᳛AqhOo���լ?b��d�e�,�n������Z�J�-kj��T�:J ���A��F;dr�:��p!JA��$x��]��Iq!�%�T��S�O�7�@��kqHe�||�����z��&ˢ7 ���)���pW�ŀ�x ��/{ٔ�0�}����$�IT'0���K�${��L�~��_�"� �\*�^�%�[�XQ��!��)\nE�q.!I�!l�+^�5��Т����Y!q�@���BEĔ�+�5��-�ZZ��@Ƣg��c�T���m\��S%֬��=U���KD�I`������\�X �ٲů"B� �8�/Ge�~��J 	A5r �,���hq�e>��g:�g����R=Ř�b!�� lc�i ��@|AITEA �u1L�/HΥ�,LNTz��f|�F���p�L�^��>�$ <5�C��Ãcu)A��y�'y� ����g�&B@M��/l0[�NZG����@�<��Q�H9#��A��S�qփp��t�b�#V�A���+�T1h��4����PSH�
qS1�%i�m�%;Y�\��af7h<^20��rb��F�?��u)���|�����ԸH��<�?>�~�G���佪/j���\N�n�����y�P zTZ ċ����DC���N�J#E�T�6����U{��W8��Z4�U�.doEf���?���zrZ�u��~��z�]�n;�@���+�O0��z5�@�^w eـX�0;SG�����5@	ػ<�n�L���%��A��@�3&)���P7��"D�<��)�x7�\f�!qXJ�P��s(��4�d�_"�aU�J3mY%��Le&�8r���QM��ٌ�厴�z��6G���WQi�%���iV]���J#�""J!��EI���m>W۪�W�".��0 �%�M# &���<��1A$=νH�,�y�5I.
��L�(�W�p�^����6�����H���ZY\���K@�QZĎfŊfq��`@��'z"Zbs� ����� �����s��a�'%�1���Z��b�<O��m�;^&�&�0�)���e���=�Ð�8��ͅ>��������:G`&���v����,�D(U�_�p��Z�Қz�LC2�;��`����.>��<�'�b�I�Mz�H�@*T=�b��͕	,�I �p���3Ofa�� �z
�`5.������Q� 1P���`����4�4+�H��Pμ��)���caPކ�r�1}}Jg��5`y�jo���^�d1�ƛ�UAEs�?6���u �����Yk�>�4�Dx�]~�6�ʜ��%�� xI �X�TG�@�	�L YS
��!�`WH.0/H�?��<ZuԎ���x\��������q G)PT�>v���w*oy�oX&�0 	���1<��Si�F����b|���vqS)�*U�(�!��iwm@W�>%�i�M��X��-;�Q�y����m��s����6��WA�ͻX�P
k�^$3�P�="���J�έ��� cYG~y���O�9��S ;�FFs�=\݆'w1�̊���µ8�a�8\(��5�.�z�A�7��	܍UH�_P�z�nq�^��bj���.8����������+�j |��ڒ$ �Z�A���T1ol�dbl�B���(AH �`��%(�8c<`�&�-b�)���Pu򨋨p�IcE�Bt�����ඈ��.uΉB�+���o�~�����E�rVlP:�Ar�
�,F%m�G?X�>8_	!���C�&���Üm�%��UNqT���X�fz���Ў�,�N�FX �̏|� YIjvo���_�\{�Y��֮�b�����[/lT��S��%D$	�i6Ǚ1M`��s;�*V�8���K�nE�]l��
i�7˱s��x
x�C�����ڧ}�B��F�hX��V��"܄�o���҅�k�Y�g1aUYb@�@�z�|�/��mT&d~`��	�	����4_�ߓ����R�?p"D`��X�&b��a'\%�~�_Y�|�� �u�)��G��y��wV��H��	0�+P�e�m*i�%7H�> �o(]�༣ا��Z��
��� �p�V��2�,Ԡ�Q0~�H�~��yn�6O��b���j�S����K��r��z�N8�O�_c�E�����z7!��^�5�@�[4�9��@����� | @ ��iPҲ�ЫU�T��ا3c�X��#�i�F��v�[;�_
D��cgXznl��P#�u�~5[+���V��^m��&��c�`�d�H�Nq��cu_V��J��j/�{E6�� lSI�x�R��_c�C��)�:�!Li:H�"� 1,��C*86l�3�`�q�i2�X�aboe�nyQ�б�cx�J�����uc��N��h\C���I9a������ą���J�
t)�+lS*Cez��5��I���%͆!R�XKh�����A�@���A-��(ئ�3��J�
U)E暑�U:�	�Q��Sy�����R袇��WĆ�q����HY<dIe��=�)|x��������.y�YåCt]l+���P�:p�(H��	�A�DJH�#A`�f��0_��#��a���(Y�C`8��::�T��'��͠�x��"흊��m$	Qy6���P�yE"�h���U���+L��@�\E��h�2����p�f@�L�,�[=����j�4��`A(d�B�Q��#^�����Қ��&�Łq�k~�M��~s��{��x�s/B��	�N��qʯڛ���7��x��@��mR
\ �:��b(C ؠyl'͍'$@�^O'����X�z�"��Y���B]UU�g��_�@�ǃ�7��4�:A�rr�mS�th�Z���P��SOp}"�*�q����� �yoo}��؀@��^�H�HJ
p
/�4�Į�qH�9C��##�t%�R7[�@��)`z�m#	���k8\1�Bqb�
��/�EA�0s&*69���Ocy˸n�U��Ę�d�oq��L�^�V�W�q�e��3B&�@�;Ÿ�G�5�*���t�o�r;�5,.(��V �5I��QK�4Qt= jچ�2��3�<���n�ͽ`��K�۠��9E�a�)u�>=8G$$[Ö � � �m��[F!fŋ�߄�V֨@Jj�W	dƒbD[Y�mC�H7"2��K1(��eX��l�.b"�8��$W�#Hb� b �_�nVR�Qt4>��N��Y"EtZP��)d`aa|��B��G}�D���"	e�ì_1 <h� �Q[��X@f!m4½��]/0� �P�H��.� �8s�BX|��m��]��)~D/w|"{��c��:�N������
�w�'���E���	A'I$ԭ���D:��5_p5>2�|��WxƝ���4�rkQ�4����<f�� ��$�<��M�� e�)@�X�%b��/��`��%£2.F%�IIB`(�ju*��[�ڊk8(��:���P�(@;��l�d�����ѩ\V#sP����C!C2�a@�Th�N��]K�֤4�@RPV`XAS�&KLR1CpS�
���W����_�PA�@�L.C#�6&�vr�xMWM7<��%�k�1��O���C��A�+������H�A�k�&���`����+���GA��!����I� \�/QOڢ��@YR�X�M ewɉ�l�X
:�Nl���hT�0��^Mũ"QU�X��I�-�5XR��D%��̰ak6�������s���v {& � ��% Uf���x���^�	��\�l�� k�|��Aw	�S�5w��Ѵ7���z���M�"�^>�=��д��#aa��<�P!�b�� ��c���!�r�!Ip8��N$)�z��!�;�@B_N��t/dQ��~]�{���Oy�
��7'`���V��6��@�|��y����NB-;hd�㰀d���*`� �3Q�y�����&��L�g ��1Ok�V�]V6���t.A����3C�R����fD7$;�1)�#��/ҧ��*�JP`�56u4x�K�,�g"�
p:�+`�4C��w�������;Њ���@@,*�{�3��!���j��j=g����I	*��(T3��pz>��x�y���n��0Y����\;8L�
���b���䟛�-`1��`�����HfEγ���8�b$F�v�-y:�(���Eۤ6�
��.�g[`pW�z�W��`b�`z�~���
�}@@� (�A,��@�@(�� P4?� ~�^�} ���(Qh�  �
��ri�$!B�$� �?�����~�e��`?X��4
��
1�t��=������H�
��� 