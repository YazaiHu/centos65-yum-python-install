rpm -qa|grep python|xargs rpm -ev --allmatches --nodeps
whereis python |xargs rm -frv
rpm -qa|grep yum|xargs rpm -ev --allmatches --nodeps
whereis yum |xargs rm -frv

rpm --force -Uvh --replacepkgs rpm*.rpm
rpm --force -Uvh --replacepkgs python*.rpm
rpm --force -Uvh --replacepkgs rpm-python*.rpm yum*.rpm
