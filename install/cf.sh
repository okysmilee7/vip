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
BZh91AY&SYD3�� U��p� }�����������`�    h    GF�A�L�A�F&�4��   4�=@�4 4       p4h�4Ʉ��bhѣ@i�  F�A�L�A�F&�4��   p4h�4Ʉ��bhѣ@i�  T����&&��&�	�i2`�ڌ�٥6�jy�f���W��6'�'���b�J6
�V�,���$M$Ԫ1����Ȉ�Q��h�$�ҡ�}�����HR�*"���w䴏�?w���䟏�yY�~���Woa����y�	�i��mnwc��������7��>��9ɉ�Ԓ��-�"F���i,�"#���c��&��,bi&]=bi�80�dII����ࡤߴ5�?ci����P"C@�b$�x�Lq�7ɤ_zQ�˪���QB��ri/��~j�u|��-+��B�g��LR��?��}�/��W��D��ڍՔx���J,��3=ǫ#[����8m��FTp��O�[�֢^���̷��`*UFx���u-���LEl��8�VW�v/�mT.%��̏{�>���>���ᙟݡ���T=,o;pI����m37�:��vF��{�Ƌ��0����u��ciXI�|a���Q!�;_����?��o��:K	;2���4D���G���a��4���~ܯ�Ƽ���녫}��I!��oΉ���S	*9���S�WDW�"�Ӻ�Y���N�,q>�lo<s�,ۅ��1����>�6\"�hþ؋���G�;v�7�?r\�lǮ;����^	I�1�;#<z�V<{�/m1k:�٬�\�;q��G:ʔj����XG�QԏC�}�m�H��j��ǂP�l�(��R��Яd�-����^�����u�lD��01������סeaO6��8EqNn�K�E�����qE��Dg�i��S���M�,.oL�Ϳ��#�\a�ϑUż��ai�tk�#��O��0:�Qq.�%װ���{��Q�	�S��`�����C�%Qc]�yҗ��G^����Kȡi���9n4Ǣ6��\X��VMȱQNê3-���IZ(aSL�9��.qw�.�W{���J�4]�)V ։p�H�FS�D��Ű|ҡH��5�(�,D� &���u�[���+�˻=i��������b���-ۻ�7B���6��б�Ҏ/3��д��"�ID�NiYCЏbܝ���V��y�j+�+-��V��ʇ��u�#1ޚ�	d��-�Ӎ8��Oɍaڳ
Ќ����{���:���\m�D�����o��3�5<�F��1K�%�\��;h������W+�,kX��N�Q��%�~�4ƞQl���Z�0�#-���2���ba���Ԗ�I��B=Jⅇ;�q������-ܒI;��$5��T��S��I)6RI��GO�چ߶5�:T��C�1A���>H�$�T�GJ��ǭ��㬋B�����6���c~b�Z��$��l���kRӡ|ZZ\r���%L���3�D&�?�Yf���\�\>ɢ��S�ŕ��hZ
a���2��49�y��L�bt{q�!���	(�m;�T�P)w�(xRDhgZP�P=˙��Y>��;�'k��b�9�+�Y��U��4�-�+`,���Ci��Z�-[eS��莓�m��/g0򯸶t�cR�ʁ���]j�Kl,�}������ �����6��%8��ّ��xI!��q����c?,�(���]B�g!�BcP�Cy�e�98�5�xO��m"$�����9��P���hX;V�J�v16]Rs?+a��<n�@�6�Nh�{��F�h�x�"�R=��E�8��wI����kʴ�U<��X��K�z�9�����-��)7ۂ���e����6Q��M�u$`]Bc''�9�n�w�z.�e�a��]�T��!�Ҙ��x�I��kZ����aC8�M۪о�
T�~��TK�n�)����ao��U�Ȳ��&7��G�y�~<��F�!��#/3�9�$��i�}i7π�^w,x>�N��}ٙ��2���D3��'
C�m�6	��-ArE8P�D3��