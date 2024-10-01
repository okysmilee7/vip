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
BZh91AY&SY�O=: Q��!x���?�������@D@  P�*���
 �I)�2z���&$ƣ�i�ibi=@=L�̚hd 1@0@�F� 2�d�C ��2 i� 4��4 s&� FA�L1 Ѧ���"D � �O@)��l����"h���z��5�) {�-s�켏���!�/��♉�{��ä��=���4�a�u3W"�+.-&F;.�E�,�^�|�c0T}Ћ���a�;(N��ШE���6�9�\`��e���`}4�C0�|���A��<�񎘠{�a����J,E5a3>`pv��%��n��d#&����X��Y���;<�Y�
�"��S������G,䀮<4ES "+�9��$�
H���aq�h3��A�0�ݨ����X��{q���B��`�5So흎Oh�ˋ���O����@�<g�@�%0�@#l	$@�4u�h�"����ި�F���J�&1��k���\�������\d��,϶���'����u�%/=6CG��߮��(*��Ol�W�ؐ�J����~�qQmu�L%��A�(���jG3.J�^G�28�ܝ=Q�q�8���h�1����$�����;�pkюz��ZY+֚����Fq��_������|����;*����eụ��,~�}�cؚ-5<SvEc������eY����)�τ���8�7�ɷvz6��S��OE]��QZ�~c܃��ۧ�����*�J�&��;	Bk�^1�hKS�������FM[9�Iہ#ЍFrG��Nw�&��C$M�W6ő#�Vv�C�L�-|mh;���r8U �y�f�Zi}hQ���`!�&�{���UD�l�U5��[��h���W��`Q��|��$#)��#��h����!]�b���kQEԺLa���N��B��%,�n֍FX�=��� � ���Fbi��!T���ɘ�3+J��y�R'^^�0X�(��b���o� G)]U���a�������AJ�#2��Ceh���&kia#{�-�w�e�֦af<-Tj���pī��6����8��ta�Ѝ�#1zB�Rj^ 1��a�H=|�Π�;SzO�X����9��e �2ۺf�hĥ�MP�Zݥ	ʺĮ�U�t�b.RA*����U���!?�Ao�>Nz��0�������d=3fðG8�B��/8Gi���w����=��@��E���]ʑ{�q��h8SQ�+�L?^���/BYeP-��{�a�HU&(�v�)ϹZHc�2BUҐ�+G��h�B�@PX��\�����ѸE34��b'���p! �) �YAq%JB�@���)���j��W�z&�8aa*�=�yu�[��̌��8ԊI���֍�r�ij��v�p5��:��	���A!qwgʲ�H�������|O��0�?�2` ���w$S�	
4�Ӡ