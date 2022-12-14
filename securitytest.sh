#/bin/bash
#securitytest site credentials for basic auth
creds=""

#Set random sleep up to 5 seconds between tests
random=$(echo $(( $RANDOM % 35 + 1 )))

#Zscaler Security Test Sites
zurl1="http://securitytest.zsdemo.com/malicious/archive/eicar_enc.zip"
zurl2="http://securitytest.zsdemo.com/malicious/embedded/test.ppt"
zurl3="http://securitytest.zsdemo.com/malicious/boot/flpy-eic"
zurl4="http://securitytest.zsdemo.com/malicious/packers/w32_test_sample_StnPee1.13.exe"
zurl5="http://securitytest.zsdemo.com/malicious/filetypes/test.pdf"
zurl6="http://securitytest.zsdemo.com/interrogator/zsrl_md5_test2.bin"
zurl7="http://securitytest.zsdemo.com/ba-demo/exe_kryptik_46527d53a046ebc4e4ca08843af47a13.bin"
zurl8="http://securitytest.zsdemo.com/ba-demo/exe_zbot_2adf9f87b6eb060db57ddf1d43580c29.bin"
zurl9="http://securitytest.zsdemo.com/ba-demo/teslacrypt_ransomware_86140b27dc6252315f48bda7acf5b180.bin"
zurl10="http://securitytest.zsdemo.com/ba-demo/sodinokibi_327bd8a60fb54aaaba8718c890dda09d.bin"
zurl11="http://securitytest.zsdemo.com/ba-demo/doc_c690215acb6bdf14701c51cc1873a792.bin"
zurl12="http://securitytest.zsdemo.com/poc-1.html"
zurl13="http://securitytest.zsdemo.com/phishing-watermark.html"
zurl14="http://securitytest.zsdemo.com/phproxy/index.php"
zurl15="http://securitytest.zsdemo.com/xss.php?q=%3Cscript%3Enew+Image().src=%22http%3A//localhost/xss?xss=%22+document.cookie;%3C/script%3E"
zurl16="http://securitytest.zsdemo.com/pri-test.htm"
zurl17="http://securitytest.zsdemo.com/malicious/trojan.txt"
zurl18="http://securitytest.zsdemo.com/metasploit/cve-2013-0025.html"
zurl19="http://securitytest.zsdemo.com/metasploit/cve-2013-1347.html"
zurl20="http://securitytest.zsdemo.com/metasploit/cve-2013-2460.html"
zurl21="http://securitytest.zsdemo.com/metasploit/cve-2013-3163.html"
zurl22="http://securitytest.zsdemo.com/metasploit/JSObfusc-1.htm"
zurl23="http://securitytest.zsdemo.com/ba-demo/non-web-threat-simulator.exe"
zurl24="http://securitytest.zsdemo.com/portmap/ddns/xsph"
zurl25="http://securitytest.zsdemo.com/awsvirtual/sgguo/fre-webhop/warzonedns/"

#Other Security Sites not Zscaler
badurl1="https://evil.com/vid/?id=0"
badurl2="http://evil.com/vid/?id=0"
badurl3="http://cgiirc.blitzed.org/"
badurl4="http://www.fakebankstatement.co.uk/"
badurl5="http://en.rian.ru/"
badurl6="https://secure.eicar.org/eicar.com"
badurl7="https://secure.eicar.org/eicar.com.txt"
badurl8="https://secure.eicar.org/eicarcom2.zip"

#Random Browsing URLs
randomurl1="https://developers.google.com"
randomurl2="https://dlptest.com/sample-data/namessndob/"
randomurl3="https://mail.yahoo.com"
randomurl4="http://www.wikihow.com"
randomurl5="http://www.adobe.com"
randomurl6="https://www.cnet.com"
randomurl7="https://wordpress.com"
randomurl8="https://www.intuit.com"
randomurl9="https://reddit.com"
randomurl10="https://www.quora.com"

# Start tests with curl

while true 
do

#Conduct speedtest
sleep $random 
echo "Starting speed test. This will take several minutes..."
speedtest

echo "Starting Zscaler hosted security tests. This will take several minutes..."
sleep $random
curl -s $zurl1 \
-u "$creds" \
> /dev/null

sleep $random 
curl -s $zurl2 \
-u "$creds" \
> /dev/null

sleep $random 
curl -s $zurl3 \
-u "$creds" \
> /dev/null

sleep $random 
curl -s $zurl4 \
-u "$creds" \
> /dev/null

sleep $random 
curl -s $zurl5 \
-u "$creds" \
> /dev/null

sleep $random 
curl -s $zurl6 \
-u "$creds" \
> /dev/null

sleep $random 
curl -s $zurl7 \
-u "$creds" \
> /dev/null

sleep $random 
curl -s $zurl8 \
-u "$creds" \
> /dev/null

sleep $random 
curl -s $zurl9 \
-u "$creds" \
> /dev/null

sleep $random 
curl -s $zurl10 \
-u "$creds" \
> /dev/null

sleep $random 
curl -s $zurl11 \
-u "$creds" \
> /dev/null

sleep $random 
curl -s $zurl12 \
-u "$creds" \
> /dev/null

sleep $random 
curl -s $zurl13 \
-u "$creds" \
> /dev/null

sleep $random 
curl -s $zurl14 \
-u "$creds" \
> /dev/null

sleep $random 
curl -s $zurl15 \
-u "$creds" \
> /dev/null

sleep $random 
curl -s $zurl16 \
-u "$creds" \
> /dev/null

sleep $random 
curl -s $zurl17 \
-u "$creds" \
> /dev/null

sleep $random 
curl -s $zurl18 \
-u "$creds" \
> /dev/null

sleep $random 
curl -s $zurl19 \
-u "$creds" \
> /dev/null

sleep $random 
curl -s $zurl20 \
-u "$creds" \
> /dev/null

sleep $random 
curl -s $zurl21 \
-u "$creds" \
> /dev/null

sleep $random 
curl -s $zurl22 \
-u "$creds" \
> /dev/null

sleep $random 
curl -s $zurl23 \
-u "$creds" \
> /dev/null

sleep $random 
curl -s $zurl24 \
-u "$creds" \
> /dev/null

sleep $random 
curl -s $zurl25 \
-u "$creds" \
> /dev/null


echo "Starting additional security tests. This will take several minutes..."

sleep $random 
curl -s $badurl1 \
-u "$creds" \
> /dev/null

sleep $random 
curl -s $badurl2 \
-u "$creds" \
> /dev/null

sleep $random 
curl -s $badurl3 \
-u "$creds" \
> /dev/null

sleep $random 
curl -s $badurl4 \
-u "$creds" \
> /dev/null

sleep $random 
curl -s $badurl5 \
-u "$creds" \
> /dev/null

sleep $random 
curl -s $badurl6 \
-u "$creds" \
> /dev/null

sleep $random 
curl -s $badurl7 \
-u "$creds" \
> /dev/null

sleep $random 
curl -s $badurl8 \
-u "$creds" \
> /dev/null

echo "Starting random website tests. This will take several minutes..."

sleep $random 
curl -s $randomurl1 \
-u "$creds" \
> /dev/null

sleep $random 
curl -s $randomurl2 \
-u "$creds" \
> /dev/null

sleep $random 
curl -s $randomurl3 \
-u "$creds" \
> /dev/null

sleep $random 
curl -s $randomurl4 \
-u "$creds" \
> /dev/null

sleep $random 
curl -s $randomurl5 \
-u "$creds" \
> /dev/null

sleep $random 
curl -s $randomurl6 \
-u "$creds" \
> /dev/null

sleep $random 
curl -s $randomurl7 \
-u "$creds" \
> /dev/null

sleep $random 
curl -s $randomurl8 \
-u "$creds" \
> /dev/null

sleep $random 
curl -s $randomurl9 \
-u "$creds" \
> /dev/null

sleep $random 
curl -s $randomurl10 \
-u "$creds" \
> /dev/null
done