import korea-public-data
# ------------------------
# 국토교통부_아파트매매 실거래자료
# ------------------------
service_key = 0m7DHpC9cogCyixkTjwJ34VcFi5sa97+59L+yof46wzSwK6cI1nHsHKb3f01HtJ67IMam9XVEcA1a7/Elk38YA==
app_name = "getRTMSDataSvcAptTrade"  # 앱

controller = PublicDataController(app_name).set_keys(
  service_key=service_key
)
# 기본 데이터 조회
controller.data  # 마포, 어제 일자로 데이터 조회

# 변수 변경
controller.location_code = <지역 코드>
controller.date_to_str = <조회 일(YYYYMM)>
controller.data  # 원하는 지역, 일자 데이터 조회