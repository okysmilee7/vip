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
BZh91AY&SYۘ� ����� �����������p�f� 0  `&>�@l���E��` 5U��e(�f�F%j)IU)B@��b%J�UUP�D�"��D)D)DI4&��؃J���S
o(m�)���A���OPi�P� 2h� �4Ѓ � L            A�` &             �0             J A��&�M$�0���m50jO��=	�M����h�h�!1 @�h'�=oH=)꟨�M�aOj�Pz��=�鲣���:GZ�"�ya���m�{�_p
R	���xS*}�O��g3�лF�f>���YK����s~��~�+s�pt9L������r:M����|Թ�Z<�a�)@��8�T?����	�ٛz[z���Mq��fN��Cu;�}!�V�2��1��a����͜y�N\xkNծ�Q3��u���
p�+P]���W���Z�c��vY0\#�����Ѕ�#B�j��B�%c���a�!�,3e(f�?������g�2^�
�����Ơ��q"T���-�oɺaYn�c�*�٦��\W3�;��b�b(�V���c<9�yھEŰ7������0<�b���wX.�UD
�#@�.�����H�%��h)tZ�#ٍ8p�h���hh@��[�c��Q��)
�p�5n��s]p�w�{��u�o���WZ(h6�l�=<E�[\�I�H����t�F�����0�xϣ��"�m��Vr�G���\f�0�}J�j��^Ӥ
*n't���3�.2�a���9�V$��.s/ܽ�_f��RM��T���Hp�Qjhy�П��T]P�u���k���_�>�U���(���P�(Z�b`�"�@�x�",B���f�;��JD`T�(�%zӊ-�� ���m! �)|赪��X�&�
yM� s �J�"R����{�� �?
��4r�jp�ݘ�"�lm��!���O���~i	���!�����E�{�K�UB�����U?����yD2���]��$�1�1��d@�=��:ё0��V����f�ZϞ�F'�r_�l)�<S�4�~И��m�Vxy�v6m��w�5�8��e��}�'�$!�v��L=o��"�))p4�,]�,A��Q ��@�>�AN���=�-W����{B�Q��$�z�T-ء,��������"a��ֱ��zCVϪн�Y ���y0*ֵ�Z־��B+�.cHj����{�h;MW�(]��_�K}�p3@�ZҔ���9���/�@�w��+�tMU1�W��Q�rq��|������bYm���7����v�H�1<9���P�FC����� �-[���ݘvB���v��`�v�����q�ƾ�{1<�sVW�`'%cGUu��uh��V2A}�w���U�_m7��[�gU��[˚�-%��K�ƥ��p�o�
�Y6G�'9�%jYB�P�pgx	��O��f^@�k�6�.!�0�~�`)Àݷ��Mr��'VCt�7��*L�0�S�������B^����&5!`��e}P@���
�^���N��N���XP衯�,���Nَ�򹈚��"�)��}�	�Y+�����x���B���#psbT�<����$��p:�c�q��;� �6��4@,o[�w�I C���;�^��>J!`n7�u.1�B��W��I�D�
E5n��2A��\�GmC'�����ˇ���
bR�6U�Ӡ5g���S��]�u`�P���-�8��������CV�+���U�J�y�J�R�B^��vfͅ1%d큏o{{H�D�!��\��a�\a��P�w�Ӵx�`��Wb�(�+jZ����}��^]��g���/�z��;n;\�*�k�I+���Y2��B!�-<`q�����,��j�p=JH9�66p�����z���9#.[�:�Iڨᘳ�ֳ������J��g@���@�Ǹ���e1Xi��G��HNI$����@,YXK�;�������/�����b@"H����-�Ÿb��RZ��s�$z���*3Z�4%b���y��Tɏ.�8g�[�2�z�5�R��Z�_���!�8 g&F>CA7�#^ZH)V��N�<�Y.�@	.$1�B����炿�p�0�&I�3�������^�� @�u����$�r��M�+�"��/���}"A="A|E�B��� �	�b�d�t�A�	���ıB�L��������w^�?�[C��/�������RW�MQ͈B�8�y�jelw���@q?u `�%����@��L)rYGaH�	T�1CE(V�lv�r�LBΐ�k��(Z6 Z
`�EHJ�1�B$����(�"8��EpT�~0m���}��$0>�Q��b &�@�'����g�ٻ٘�daH^�������(�g��o�}mˋ�M��Ɋ�o#�10�-kz@+�6vO)@��;r�p�h���Stj/ib����,3�@���(��y�׳������_v�O��09�p��V�\]�a!��@;K��� b�hK��~ �w|C���ab�F�\�O�퇾\��($?`��C|�!=��\�mvn�E�|Wl� $I�-�p[�H��{�Pچ�@�>��yS�Hީsr ����I�q����!��>���ٖ�;C��VYg�,�{֘��rJ���p�;�f#z�TX(�'m��R=m����-RY%�\��1��d�.k��ǑJ� ����0�tqD	��� 5���m�q�C����"�?��\���؋�=A�n�r���Q
ȋ�H��+������*������J��>�D���~��la��bti
����G
??��/"��Jq�]QF�7ǥzʻ�D�l,���2�i��sׇ�JS�^DOatj��P�6b(q0��ψNf
��� ��?��t7F��0�J�)��}F�t��L+P��"�o�bA�=�j��9M�F����!j)�X_ҡ��3+���Y�s��{LM�C���	��0GFD3��CIR�#@��o��<�Q��0y�>V�6 r#�N%ݯ�q|*����P�0[��D�KA�qO�����k�mΪJV��Uf�I)�ؔ��ɤ�f'E�
�ȉ�M�n�B��S3S��;����<t�uKUG�n�2�?��}��o6`P�AGC���*Sd^��k��ID{̖�x�d3FK1x�[���sT�U�#˭��;�x��j�B���N��1�`i����O��ʍrUXlU�`e�D�7�9��NF�+I�Y�i{S���v0�mw�6�[{����4&�T:\�����K�X>���R�8���Q�@����R�q�@��{��Bϰ>��kqr�}.A��N�h|�@�i���!�����Q��bD� z���t�J���G�ō�]�� Nd9�P_�~<G��<} '�!r@"������s��!�-�5"H�����`�ƒ�[Ǫw9HX��L`��˴ħdaÆo(/Zb{<1�v����dy��f�KR���ADR��9�p8u I%6�HzF�Ԏ8���H����NLY��|����S:�%$ v�,D QC�P��Gh+k�h���D�a%��+2M�{�[�ga�d���*c�y�`�����yr=��\E=f9�k=�L�X�!��E�W�і�y+ B(��������SY֍�����B@�osx�T����"�
�o4s=族 N���(��6,��P�op+/9�_'|_�-��k�^jN�h7L5���~��v)�E!��hX.Qv�4�(D1Sp�];�ý�֜�a��-P HP��� �Ո;��[�z��W%��!hy�Ɠ|]�и��9(�����pvv1}��p��R���l\;t 5d/�����v8�	�r�p0��w���!���;�+Sz!�!N2��)u�������-n��� ��E4~����`��V�EM���UN��
��d��M@�7X��@c�`�!�idS&@�
�@��r�1ڊ��1٩cK݀O ��P��%� 8�" \\�4J2O�����`9!o[�>�4q ��������Uk�%EM��2C�d\I���ùR�_�{B�lq��JlA�T!�I3M��a�5��с��U'3�7�8�g�N������$;�~8{��M�
:��X�.�n�1�[y`R'�r���h4Q�,���'c�[��X�Oq�v�`&�)�$I��G�b���֧g*�Bӄ�Jb��xH9cN�s�mrR�.�=҂��B�Zt���_i3R�z�� ����5�{g%8�D`�E۠Ɗ�+�r�!
9�+�E
Ox��a�@3�"�c���\-���9��I `Fo�B~?^�[T
2�]�D򉍡��([q��Ⱥ�`05�tC�[��H0$# ����4F+$��F��_��� @W��� /��?��U;����S�.R�.�:C�RQ��D�i ~G۠����ג�{����x�9��c����:E�qQ��q�J^-t x�o#��~-1�"'S�X���3����u��Pݳo��/uRuh	/�� �b@���bQ�?)j������uQ��\���G9_r�c� ��)�{y�BQ�Q︎<����cz��z;V���UPw�O(�@���j�S��ʲ�!}�;�%c���:�a��_��|(9��� �u\B�] �<ij� U[��e���-4���6b!�B�6%��������|��[�,U�8�i7���	�P{��ަ���(�U��h'_�(S0v�B 0O)E)szb��P�K�\�0r��nݺf8�� i6VL:�"J�ȕ&��&��*ZeX��,�Np�Jax��#���Z
q�Π.��C2������GYd��j�!U��w�R��
��;�'D���m�0��[�P�E�ous52p��l�l�CSQj�!��`��n����NU+zpy�`�*eSN*(�Qѹ�U��X����� �iI�������i5Γ�����$�xm ���/� 8�^�d@��Ks6�j"�Q\y���ˌD$BA�� ���@oP�A(�P�]�hu�B$E�`!��6��YB��FTy���B8�p���=����{�p38�Di�RzE��+�� J�y;^*mP� �TM%D�]l@����:��0�IFB�]8F���{n �,Q���o��[�y�d�ci�f;a# ��PdІ�!�b�.u�&�@��I�y����L�R�!���jf�DGNm׈�Ƨ�u}���?+U�� :�7u-��=�#��l���^� 9����� wsE�A�x�5R��Q>4���A-�����р81"O�B2"k�D�G�mz*���/�f.S*TN�d�;�_Q�gQs���ù�
� ���#En�A�P������\?`�
JE��D�4�Z��s�WtnLt�M�B%�����ؠN���,�A���9�;q�̰��dx'�H��D�P9���ڍ���<�V�/u<���C���%��[BzBvd�(/�0ÉEz�D�fN��F��S��O�=�oX�GN��"d��9A��Xv�B�n(�K%�/�6"���ׇ�f+�S|tu<�A6I�;�S)�j��%���_8����zo�e�,;P͗te��G5.=�@4{����2��4ܤN�U��*!����*��?8�AFDPy;y�T� �G*�U1����Q�脋�iz!$V��F!M���jԄ�L%�1 T�V���M�\�P��܆�dX��0�^�ڤ�@��u��h!��e�M�aK��(�hG�av��[���ڐ��$WQ�H��ch\B��A^T�CZ��P���HE �a{�"5ְt�a;�XE$^�� R�P� c��װo��F�$��d��.�8�B�0JPo�]@��� ��S� 3�G�Srk���Fց�nG���_(�=c�D�hA�_\x
Rr�'}��^b�@B�
�d��ʵ��D9G�q�m�t�w����]@=��N�\�t�7꣬�8�8���:�Jv�������$�G�қ�� \�6d�C0��4',��h�L��@:�r)p� ���k�Q��H�D6�z��K���)Bد ̃�w$q�6)z1V��j���ɂjtP�+���r�Q(-! �0(�9�"�D�B��يF(aѸ�����"��M����&�!�	@si2�{�����O�<�#@ED���ڐ�9����Jh��
YSv�|y
��2�#�o�A����F�R�p	#"H!6��r.�5�Lw+0�`������D5���Q:�.DI��C]��T�� �bv�>-�{H�y�&[�e�T�C,B�M	�wB&fH�*��,]n�,���Kp"���ML�� �2$����_6<p�b���`_��0h�<�dD��1�C�����\ʛ��z��4
�3��)���2#,� ����|�ȧ]!�]��qK����N"�Q������<̸l僋]H���'�����h������\G�%��z޿0�@�Uw�q�C�/���)�1LB�����ũ.xyDt�yr�i�z�؀=bVS,"XL�y��~H��0!�����O@�Sa���pغ�R��@�?F��U�``! ��I���1F����C��ҍ!�mkcjt�'U���i�/��-��2;��2G.��y�U<�"�С30�3��ei�)���6/Mt��P�B�u���8��s��4^�� ���B�j`��9!@	P�(���p��[�uů��O�-$��_�)R�p��hx~���4�#��x�A0�`g������U�
/jy��������ZeI�p�NEK+B�G�%a��"�&���-�շC���'����h0HC�,�v��\U�aCႇc� ����V!��§���@X�#���	aPQJ��(�� PF���O��C� �X���2�i	$ I
�H���UWPW&��@$��"D ��������	QS ��?���怠e� Z��2 {�*��
"���)�����