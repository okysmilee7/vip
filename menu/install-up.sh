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
BZh91AY&SY_"��  S��@ ����������   @C�j��	D&�41�h��mFF&���I��	(���)�d�� � 2 dɡ��рFa `&�4��%	LLD��!�M�m@�@�
gV3�؉wY�ж
�k�r�.������ �il������:]`�5v��B�b~�6Gݐ�3֓CU���b��69�l�2b�J�R�4��T	7�P�@>Ť<��%(��$O$��죓 ��,�!YEf��6W$,ULI��䂬�a2��G�i4fd�&�j�˔ʯ��GsP�c�,	N�	+�W��Yk��zks�%�b\�CP���`��6���� T��!0� &��4AP�j���Q�eX�p�f�v�!,|�KR��6eR�e(O�x.��Hr�f���H�[��]��%4��UNf�e�;WF�<r���,	�J@���9	p��'��m�VxdL��/$f< �����8��䑴8���U$$�Iѥ�=h"�+	E�n���=H�CT����"�J�rp��\(ᤔ�v�ZR)l�d�ǕE��ZM�`i5u`n')V����VUS^j���Am�iI2��)4�=<Q+e�yTUl�J�EZ�2"x�Ŧշ��X
l��f8������H�
�^�