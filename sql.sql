create table repair_record(
	order_create_time date COMMENT '订单创建时间',
	order_modify_time date COMMENT '订单修改时间',
	order_num varchar(20) primary key COMMENT '订单号',
	automobile_frame_number varchar(100) COMMENT '车架号*',
	service_station_no varchar(17) COMMENT '服务站编号',
	service_station_split_no varchar(13) COMMENT '分店编号',
	repair_person_allow varchar(18) COMMENT '送修人',
	is_himself varchar(1) COMMENT '送修人是否为车主 0不是 1车主',
	customer_desc varchar(1000) COMMENT '客户描述症状',
	automobile_doctor_diagnosis_result varchar(1000) COMMENT '维修技师诊断结果',
	doctor_advice varchar(1000) COMMENT '维修技师建议',
	service_type varchar(5) COMMENT '服务类型 0检测 1保养 2维修 3美容 4事故 1-2保养加维修',
	service_adviser varchar(10) COMMENT '服务顾问',
	doctor_team_no varchar(20)	COMMENT '维修团队',
	repair_doctor_no varchar(20) COMMENT '主维修技师no',
	check_doctor_no varchar(20)	COMMENT '复查技师no',
	last_check_doctor_no varchar(20) COMMENT '最终质检技师',
	cust_call_back_num varchar(12) COMMENT '客户回访电话',
	Call_back_result varchar(3) COMMENT '回访结果 客户打分分数',
	cust_call_back_memo varchar(1000) COMMENT '客户回访的应答',
	cust_satisfaction varchar(3) COMMENT '客户满意度 客户自己评价',
	cust_memo varchar(1000) COMMENT '客户自己评价内容',
	cust_assess_pic varchar(200) COMMENT '客户上传照片路径',
	is_need_invoice varchar(1) COMMENT '是否需要发票 0不需要 1需要',
	invoice_title varchar(100) COMMENT '发票抬头',
	invoice_status varchar(1) COMMENT '发票状态 0未打印 1已打印',
	order_status varchar(2) COMMENT '订单状态 1待接车 2待派单 3待检查 4待维修 5待完成 6待结账 7工单信息待完善 8待回访 9完成',
	part_consume_count int COMMENT '配件总价格',
	fact_part_consume_count int COMMENT '配件实付价格',
	man_hour_count int COMMENT '工时数',
	fact_man_hour_count int COMMENT '工时实付数',
	total_prices int COMMENT '总价格',
	fact_total_prices int COMMENT '实付价格'
) COMMENT '车辆维修详情表';

create table part_order_record(
	parent_order_id varchar (35) COMMENT '父类订单编号',
	part_order_id varchar (35) COMMENT	'零件订单编号',
	order_generate_time Timestamp COMMENT '订单创建时间',
	order_car varchar (20) COMMENT '订单对应的汽车',
	kuguan_id varchar (20) COMMENT '订货库管',
	order_sa varchar (20) COMMENT '下订单sa',
	part_id varchar (40) COMMENT '配件编号',
	part_name varchar (50) COMMENT '配件名字',
	order_status varchar (2) COMMENT '订单状态 0库管报价 1SA下订单 2库管订货 3库管已入库 4该配件已出库 5配件调换'
	purchase_price Integer COMMENT '购买价格',
	supplier_id varchar (20) COMMENT '供应商id',
	modify_time Timestamp COMMENT '修改时间',
	modify_sa varchar (20) COMMENT '修改sa',
	store_id varchar (20) COMMENT '门店id',
	part_unit varchar (20) COMMENT '配件单位',
	sale_price Integer COMMENT '销售价格',
	fact_sale_price Integer COMMENT '实际销售价格',
	repair_order varchar (20) COMMENT '维修订单号'
) COMMENT '配件订单记录表' ;

create table stroage_record(
	storage_time Timestamp COMMENT '入库时间',
	storage_status varchar (2) COMMENT '状态',
	storage_checker_id varchar (20)COMMENT '入库员id',
	warehouse_site varchar (10)COMMENT '库存位置',
	part_id varchar (40) COMMENT '配件id',
	part_name varchar (50) COMMENT '配件名字',
	store_id varchar (20) COMMENT '门店id',
	part_unit varchar (20) COMMENT '配件单位',
	buy_price Integer COMMENT '入库价格'
)COMMENT '入库记录表';

create table part_stock(
	part_id varchar(40) COMMENT '配件编号',
	part_name varchar(50) COMMENT '配件名字',
	part_desc varchar(200) COMMENT '配件描述',
	part_stock Integer COMMENT '配件库存量', 
	part_site varchar(10) COMMENT '配件位置',
	warehouse_id varchar(20) COMMENT '配件库编号',
	store_id varchar(20) COMMENT '门店id',
	part_unit varchar(20) COMMENT '配件单位'
)COMMENT '配件库存';

create table sale_part_record(
	generate_data Timestamp COMMENT '销售时间',
	part_id varchar(40) COMMENT '配件编号',
	part_name varchar(50) COMMENT '配件名称',
	kuguan_id varchar(20) COMMENT '库管id',
	pick_id varchar(20) COMMENT '领料人id',
	automobile_id varchar(20) COMMENT '汽车id',
	sale_price Integer COMMENT '销售价格',
	fact_sale_price Integer COMMENT '实际出售价格',
	repair_id varchar(20) COMMENT '工单号'
)COMMENT '配件出库记录';

create table supplier_info(
	supplier_id varchar(20) COMMENT '供应商id',
	supplier_name varchar(50) COMMENT '供应商名字',
	supplier_desc varchar(200) COMMENT '供应商描述',
	home_phone varchar(15) COMMENT '供应商电话',
	e_mail varchar(50) COMMENT '供应商e-mail',
	address varchar(100) COMMENT '供应商地址',
	bank_card_number varchar(20) COMMENT '银行账户',
	bank_name varchar(50) COMMENT '账户名称',
	card_holder_name varchar(50) COMMENT '银行名称',
	QQ varchar(15) COMMENT '联系QQ',
	generate_time Timestamp COMMENT '插入时间',
	modify_time Timestamp COMMENT '修改时间',
	store_id varchar(20) COMMENT '门店编号'
)COMMENT '配件供应商信息';

CREATE TABLE Customer(
	id_Card_No varchar(100) PRIMARY KEY COMMENT '身份证号码*',
	name varchar(50) NOT NULL COMMENT '姓名*',
	nation varchar(5) COMMENT '民族',
	birthday date COMMENT '出生日期',
	address varchar(80) COMMENT '家庭地址',
	phone_Num varchar(50) NOT NULL COMMENT '手机号码*',
	second_phone_num varchar(50) COMMENT '备用手机号*',
	home_Num varchar(50) COMMENT '家庭电话号码*',
	emergency_Num varchar(12) COMMENT '紧急联系电话',
	gender varchar(1) COMMENT '性别 1代表男    0代表女',
	hobby varchar(200) COMMENT '兴趣 爱好',
	works_Property varchar(50) COMMENT '工作类型',
	QQ_num varchar(50) COMMENT 'QQ号码*',
	nike_name varchar(20) COMMENT '会员昵称',
	e_mail varchar(50) COMMENT 'e-mail',
	create_time date NOT NULL COMMENT '创建时间',
	modify_time date COMMENT '修改时间',
	ext1 varchar(100) COMMENT '备注字段',
	ext2 varchar(500) COMMENT '备注字段',
	ext3 varchar(20) COMMENT '备注字段',
	ext4 varchar(20) COMMENT '备注字段',
	ext5 date COMMENT '备注字段'
) COMMENT '用户表' ;


create table automobile(
	automobile_license varchar(50) COMMENT '车牌号',
	frame_number varchar(100) primary key COMMENT '车架号',
	engine_number varchar(17) COMMENT '发动机号',
	automobile_brand varchar(20) COMMENT '汽车品牌',
	automobile_model varchar(20) COMMENT '汽车型号',
	automobile_output_value varchar(5) COMMENT '排量',
	automobile_color varchar(8) comment '汽车颜色',
	seat int COMMENT '座位数',
	automobile_insurance_company varchar(40) COMMENT '汽车保险公司',
	compulsory_insurance_time varchar(80) COMMENT '交强险的有效期',
	other_insurance_time varchar(80) COMMENT '其他保险的有效期',
	insurance_type varchar(15) COMMENT '保险类型',
	automobile_pic varchar(100) COMMENT '汽车照片路径',
	create_time date COMMENT '创建时间',
	modify_time date COMMENT '修改时间',
	owner varchar(100) COMMENT '所有者',
	read	varchar(10)	COMMENT '认证密码',
	ext2 varchar(500) COMMENT '备注字段',
	ext3 varchar(20) COMMENT '备注字段',
	ext4 varchar(20) COMMENT '备注字段',
	ext5 date COMMENT '备注字段'
) COMMENT '车辆信息表';
