## Troubles (if found, & Solution)  

---
### problem : code deploy log check  
- ref : https://docs.aws.amazon.com/ko_kr/codedeploy/latest/userguide/deployments-view-logs.html#deployments-view-logs-instance-unix  
- solution : less /var/log/aws/codedeploy-agent/codedeploy-agent.log
---
### problem : mkdir whether dir exists or not 
- ref : https://stackoverflow.com/questions/793858/how-to-mkdir-only-if-a-directory-does-not-already-exist
- solution : mkdir -p dir
---
### there is no java 12 package in apt  
#### env variable setting in ubuntu
- ref : https://stackoverflow.com/questions/793858/how-to-mkdir-only-if-a-directory-does-not-already-exist
- solution : mkdir -p dir
#### env variable setting in ubuntu
- ref : https://stackoverflow.com/questions/793858/how-to-mkdir-only-if-a-directory-does-not-already-exist
- solution : mkdir -p dir

---
### problem : check open port 
- ref : https://zetawiki.com/wiki/%EB%A6%AC%EB%88%85%EC%8A%A4_%EB%A1%9C%EC%BB%AC%EC%84%9C%EB%B2%84_%EC%97%B4%EB%A6%B0_%ED%8F%AC%ED%8A%B8_%ED%99%95%EC%9D%B8
- solution : apt install net-tools; netstat -tnlp;

---

### codedeploy BlockTraffic is too slow.  
- rer : https://lovemewithoutall.github.io/it/aws-codedeploy-blocktraffic-tuning/  
- solution : ec2 > load balancing > Target groups > ... > attribute > edit Deregistration delay 300 -> 5

---
### jar 실행 시, ambiguous redirect 날 경우
- solution : log file 이 없는 경우이다.
 