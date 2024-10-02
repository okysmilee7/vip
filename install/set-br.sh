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
BZh91AY&SYkI�t  a߀@y�&E�����@�h  �QF���OQ��I��i����=M6�Q�0A�F�14��4���0       (�Mj3!&)�i���z�P���Yd���c�>��~��A�'��r�)� ��U��ه��a����Ƿ�Zf���O<�{�!!�
����tC�`N�daL��U�[X�!xҁ�̅t�1��tтV'������kz�J�˖�yȲx@�a��ٱ_aݡ;d�θd�w��Ѫ��K���v:�l��sc��a�o���W%邾�xX>�Ѧ�L=@/v�W�}_Wc�� �Y�}Z=#��7��G0�a��v��Y�`?wvP�c07\:Ǡ�����i�B��J�F�����ڄ�t�Y��_��|7��$d�?�0��!����C��x�����v��P67f��W�|���4^|��ማM1L9"��N�ؕa��f2K���l4��ح�JQ�F��_��C`����J:��ܔ\�^K��n������̄�Jx�s����p�����iY'�=��{{��-J��uR�`R��É��cya�X��z^:Yz�K�,�N�1c��;�69Q6��ȯ�!H���"�(H5�� 