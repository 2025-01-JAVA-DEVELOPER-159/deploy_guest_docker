
1. 인스턴스상태메뉴에서 인스턴스 중지후 작업메뉴에서 인스턴스설정  사용자데이타편집한후
   사용자데이타추가 항목에 붙여넣고 저장후 인스턴스상태메뉴에서 인스턴스 시작

```
Content-Type: multipart/mixed; boundary="//"
MIME-Version: 1.0
--//
Content-Type: text/cloud-config; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment; filename="cloud-config.txt"
#cloud-config
cloud_final_modules:
- [scripts-user, always]
--//
Content-Type: text/x-shellscript; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment; filename="userdata.txt"
#!/bin/bash
sudo ufw allow ssh
sudo ufw allow 22
sudo ufw allow 443
sudo ufw allow 8080
sudo ufw allow 80
sudo ufw status 
sudo ufw enable

--//
```