#!/usr/bin/env bash
echo -e "开始检测TS_USER_AGENTS.ts文件是否存在"
authPath="/ql/scripts/TS_USER_AGENTS.ts"
if [[ ! -f "$authPath" ]]; then
  echo "TS_USER_AGENTS.ts文件不存在"
    cd /ql/scripts
  touch TS_USER_AGENTS.ts
  wget -q --no-check-certificate https://ghproxy.com/https://github.com/gys619/jdd/raw/main/TS_USER_AGENTS.ts -O TS_USER_AGENTS.ts.new
  mv -f TS_USER_AGENTS.ts.new TS_USER_AGENTS.ts
  echo "TS_USER_AGENTS.ts文件写入成功"
  echo -e "TS_USER_AGENTS.ts文件创建成功\n"
else
 echo -e "TS_USER_AGENTS.ts存在...\n"
fi

autoPath="/ql/scripts/jd_jxmc_novicetaskv2.ts"
if [[ ! -f "$autoPath" ]]; then
  echo "jd_jxmc_novicetaskv2.ts文件不存在"
    cd /ql/scripts
  touch jd_jxmc_novicetaskv2.ts
  wget -q --no-check-certificate https://ghproxy.com/https://github.com/gys619/jdd/raw/main/jd_jxmc_novicetaskv2.ts -O jd_jxmc_novicetaskv2.ts.new
  mv -f jd_jxmc_novicetaskv2.ts.new jd_jxmc_novicetaskv2.ts
  echo "jd_jxmc_novicetaskv2.ts文件写入成功"
  echo -e "jd_jxmc_novicetaskv2.ts文件创建成功\n"
else
 echo -e "jd_jxmc_novicetaskv2.ts存在...\n"
fi


exit 0