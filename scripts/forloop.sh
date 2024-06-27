#SRCDIR="/etc/s6-rc/source/04-ok-multi-user"
SRCDIR="/tmp/04-ok-multi-user"
VERB=2

for LOWDIR in $(ls -1 ${SRCDIR})
do
  SRCTYPE=$(cat ${SRCDIR}/${LOWDIR}/type)
  if [ "${SRCTYPE}" = "longrun" ] || [ "${SRCTYPE}" = "oneshot" ]
  then
    mkdir -p ${SRCDIR}/${LOWDIR}/dependencies.d/
    touch ${SRCDIR}/${LOWDIR}/dependencies.d/ok-local ; 
  else
    [ ${VERB} = 2 ] && echo "${SRCDIR}/${LOWDIR} is neither a oneshot nor a longrun service."
  fi
done

