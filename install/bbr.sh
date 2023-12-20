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
BZh91AY&SY
	u�  �_�@0}s��8��
����P��
H SISM0�  h h�4d���`F�b0L�`�!LI�dɐa�<SC4����sFLL LFi�#ɀF�M
~���h�h�zA�4��jm$4�g�,<�;�Um�gQ;X�c7�s;�Ffz��Xu�xUU�L�4�$N�&����z�\�#���D�;�x������0Z�(tͬ$�5�8k���-�j8dP;6P�h�'�/�ݝ���Tʺ�.*J�D��Pb�`
[V�*�BvI�kM��C8]	;<F��yqБqe�]�iL*IH��y&vυJ��<*���U�$��{�y�d|�dc�i�oٙ&=�X�U^�-[�ـ|��@��4�������"��v�f�h�$u������()�8�Uj>�����eg���.��`,!�B=?�OfC�T�	�G茤#戮&RJ�〷gA\�vY)l1�o�{��|�Z�~K�K���$�����`����� 
��=y������)��
Z����S5>*5_��s��\��M�����$�0;��ٱ-
��Kr����	��͞I��,�[��)����;d5&d�|A�_ ���^$z*+KS� �?%r8Q���0�F�N1���a�ɝuMB
��	���
n
xl�^�bk��u�r*� s3ķ �.����kg/X��z1�u�ղM�V*DM��:��m��Q�΀�$���r�� 	xS�H�K�pBPX��쫴%.S�nt:n�$K���z
uj�7cGa;sXiV�qr�/݉F���Z �y$f�a���ǐ�ok�9��a�L����Z���b������{�_��Ap��]��B@(%פ