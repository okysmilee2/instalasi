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
BZh91AY&SY�݁  �_�Tp}���~�ގ����  D   � P P.�ժ �j53SQ�F��4��hF����2M�S@� d��A�b@�11  82 ɦ!�� �0��4bb4  1P)�G��'ꞣOP�@�4�� ���E4�F"d���M�jd��)��=@=C��zd���D�n,Ip�/>ь�p>��T�Z=u��ѢjN�2���(������	|�.�Kw�#����M#)�
*�&���Q��)�<�XY�(�M2���AVu��y�:?\�RnT47k�,;��a��R�%�C�:p5zAX�T�*�j�G�q,ƙd�s� �/��0UJ3���Jݧ�˒l� \�X�׆D�A죟�t�;���l�W}��gP)ndP��7
��4�* �	��I�wtA�Q)�ř_�!ä�����LWY���a^�y�k�i���F�F�)&��s)�7��"2%����ھ����ǌ�U��D�}�?�t?�ݨn���g����.q�椷��I��a�g
d0�'��1��t	e��9�~�m���q�V�������)�d���LaZ��҄�'�=j�nI����,�5&L�v��+�mۈ�EUn��$�*�۰�2�ӡ���yFl�[r�N�QSb/�LI��� ���~�y�RrRTDcJl����Q�`�Zu��0Lg.q�8�kM(`pr	�t9�J�1�%S����:�]S@�փ�}����#Pb�>n���	�ӕG��W"�[<�*Y�������*a�\|2ؼ��7���G�!V7v�'4Z@����4�����+iKxxe1����"⛟��0�g$��T)Q�%�%okܕoMAV%�rz*T(�UHd���i7�¸3p\�u����f�ǣ�ɯJ���Z�Y�����H��Ĝ��sYڒ@�S$?�w$S�	��0