Method=""
if [[ $1 ]]; then
	echo "Parse........."
	Method=$1
else
	echo "input Method Name"
	read Method 
fi

echo $Method
CLASSNAME=GenJavaSignature
CLASSFILE=/tmp/${CLASSNAME}.java
touch $CLASSFILE 
JAVA_CODE=\
"public class ${CLASSNAME}{\n"\
"	native $Method; \n"\
"}"

echo -e $JAVA_CODE > $CLASSFILE

#javac $CLASSFILE  > /dev/null 2>&1
javac $CLASSFILE  > /dev/null 

if [[ $? == 1 ]]; then
	echo "函数名称错误 请重新输入"
	exit 1;
else
	echo "****************Result***************"
fi
MY_PWD=`pwd`
cd /tmp
javah $CLASSNAME
cat ${CLASSNAME}.h |grep "Method:"
cat ${CLASSNAME}.h |grep "Signature:"

cd $MY_PWD 
