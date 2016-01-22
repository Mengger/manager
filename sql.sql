create table repair_record(
	order_create_time date COMMENT '��������ʱ��',
	order_modify_time date COMMENT '�����޸�ʱ��',
	order_num varchar(20) primary key COMMENT '������',
	automobile_frame_number varchar(100) COMMENT '���ܺ�*',
	service_station_no varchar(17) COMMENT '����վ���',
	service_station_split_no varchar(13) COMMENT '�ֵ���',
	repair_person_allow varchar(18) COMMENT '������',
	is_himself varchar(1) COMMENT '�������Ƿ�Ϊ���� 0���� 1����',
	customer_desc varchar(1000) COMMENT '�ͻ�����֢״',
	automobile_doctor_diagnosis_result varchar(1000) COMMENT 'ά�޼�ʦ��Ͻ��',
	doctor_advice varchar(1000) COMMENT 'ά�޼�ʦ����',
	service_type varchar(5) COMMENT '�������� 0��� 1���� 2ά�� 3���� 4�¹� 1-2������ά��',
	service_adviser varchar(10) COMMENT '�������',
	doctor_team_no varchar(20)	COMMENT 'ά���Ŷ�',
	repair_doctor_no varchar(20) COMMENT '��ά�޼�ʦno',
	check_doctor_no varchar(20)	COMMENT '���鼼ʦno',
	last_check_doctor_no varchar(20) COMMENT '�����ʼ켼ʦ',
	cust_call_back_num varchar(12) COMMENT '�ͻ��طõ绰',
	Call_back_result varchar(3) COMMENT '�طý�� �ͻ���ַ���',
	cust_call_back_memo varchar(1000) COMMENT '�ͻ��طõ�Ӧ��',
	cust_satisfaction varchar(3) COMMENT '�ͻ������ �ͻ��Լ�����',
	cust_memo varchar(1000) COMMENT '�ͻ��Լ���������',
	cust_assess_pic varchar(200) COMMENT '�ͻ��ϴ���Ƭ·��',
	is_need_invoice varchar(1) COMMENT '�Ƿ���Ҫ��Ʊ 0����Ҫ 1��Ҫ',
	invoice_title varchar(100) COMMENT '��Ʊ̧ͷ',
	invoice_status varchar(1) COMMENT '��Ʊ״̬ 0δ��ӡ 1�Ѵ�ӡ',
	order_status varchar(2) COMMENT '����״̬ 1���ӳ� 2���ɵ� 3����� 4��ά�� 5����� 6������ 7������Ϣ������ 8���ط� 9���',
	part_consume_count int COMMENT '����ܼ۸�',
	fact_part_consume_count int COMMENT '���ʵ���۸�',
	man_hour_count int COMMENT '��ʱ��',
	fact_man_hour_count int COMMENT '��ʱʵ����',
	total_prices int COMMENT '�ܼ۸�',
	fact_total_prices int COMMENT 'ʵ���۸�'
) COMMENT '����ά�������';

create table part_order_record(
	parent_order_id varchar (35) COMMENT '���ඩ�����',
	part_order_id varchar (35) COMMENT	'����������',
	order_generate_time Timestamp COMMENT '��������ʱ��',
	order_car varchar (20) COMMENT '������Ӧ������',
	kuguan_id varchar (20) COMMENT '�������',
	order_sa varchar (20) COMMENT '�¶���sa',
	part_id varchar (40) COMMENT '������',
	part_name varchar (50) COMMENT '�������',
	order_status varchar (2) COMMENT '����״̬ 0��ܱ��� 1SA�¶��� 2��ܶ��� 3�������� 4������ѳ��� 5�������'
	purchase_price Integer COMMENT '����۸�',
	supplier_id varchar (20) COMMENT '��Ӧ��id',
	modify_time Timestamp COMMENT '�޸�ʱ��',
	modify_sa varchar (20) COMMENT '�޸�sa',
	store_id varchar (20) COMMENT '�ŵ�id',
	part_unit varchar (20) COMMENT '�����λ',
	sale_price Integer COMMENT '���ۼ۸�',
	fact_sale_price Integer COMMENT 'ʵ�����ۼ۸�',
	repair_order varchar (20) COMMENT 'ά�޶�����'
) COMMENT '���������¼��' ;

create table stroage_record(
	storage_time Timestamp COMMENT '���ʱ��',
	storage_status varchar (2) COMMENT '״̬',
	storage_checker_id varchar (20)COMMENT '���Աid',
	warehouse_site varchar (10)COMMENT '���λ��',
	part_id varchar (40) COMMENT '���id',
	part_name varchar (50) COMMENT '�������',
	store_id varchar (20) COMMENT '�ŵ�id',
	part_unit varchar (20) COMMENT '�����λ',
	buy_price Integer COMMENT '���۸�'
)COMMENT '����¼��';

create table part_stock(
	part_id varchar(40) COMMENT '������',
	part_name varchar(50) COMMENT '�������',
	part_desc varchar(200) COMMENT '�������',
	part_stock Integer COMMENT '��������', 
	part_site varchar(10) COMMENT '���λ��',
	warehouse_id varchar(20) COMMENT '�������',
	store_id varchar(20) COMMENT '�ŵ�id',
	part_unit varchar(20) COMMENT '�����λ'
)COMMENT '������';

create table sale_part_record(
	generate_data Timestamp COMMENT '����ʱ��',
	part_id varchar(40) COMMENT '������',
	part_name varchar(50) COMMENT '�������',
	kuguan_id varchar(20) COMMENT '���id',
	pick_id varchar(20) COMMENT '������id',
	automobile_id varchar(20) COMMENT '����id',
	sale_price Integer COMMENT '���ۼ۸�',
	fact_sale_price Integer COMMENT 'ʵ�ʳ��ۼ۸�',
	repair_id varchar(20) COMMENT '������'
)COMMENT '��������¼';

create table supplier_info(
	supplier_id varchar(20) COMMENT '��Ӧ��id',
	supplier_name varchar(50) COMMENT '��Ӧ������',
	supplier_desc varchar(200) COMMENT '��Ӧ������',
	home_phone varchar(15) COMMENT '��Ӧ�̵绰',
	e_mail varchar(50) COMMENT '��Ӧ��e-mail',
	address varchar(100) COMMENT '��Ӧ�̵�ַ',
	bank_card_number varchar(20) COMMENT '�����˻�',
	bank_name varchar(50) COMMENT '�˻�����',
	card_holder_name varchar(50) COMMENT '��������',
	QQ varchar(15) COMMENT '��ϵQQ',
	generate_time Timestamp COMMENT '����ʱ��',
	modify_time Timestamp COMMENT '�޸�ʱ��',
	store_id varchar(20) COMMENT '�ŵ���'
)COMMENT '�����Ӧ����Ϣ';

CREATE TABLE Customer(
	id_Card_No varchar(100) PRIMARY KEY COMMENT '���֤����*',
	name varchar(50) NOT NULL COMMENT '����*',
	nation varchar(5) COMMENT '����',
	birthday date COMMENT '��������',
	address varchar(80) COMMENT '��ͥ��ַ',
	phone_Num varchar(50) NOT NULL COMMENT '�ֻ�����*',
	second_phone_num varchar(50) COMMENT '�����ֻ���*',
	home_Num varchar(50) COMMENT '��ͥ�绰����*',
	emergency_Num varchar(12) COMMENT '������ϵ�绰',
	gender varchar(1) COMMENT '�Ա� 1������    0����Ů',
	hobby varchar(200) COMMENT '��Ȥ ����',
	works_Property varchar(50) COMMENT '��������',
	QQ_num varchar(50) COMMENT 'QQ����*',
	nike_name varchar(20) COMMENT '��Ա�ǳ�',
	e_mail varchar(50) COMMENT 'e-mail',
	create_time date NOT NULL COMMENT '����ʱ��',
	modify_time date COMMENT '�޸�ʱ��',
	ext1 varchar(100) COMMENT '��ע�ֶ�',
	ext2 varchar(500) COMMENT '��ע�ֶ�',
	ext3 varchar(20) COMMENT '��ע�ֶ�',
	ext4 varchar(20) COMMENT '��ע�ֶ�',
	ext5 date COMMENT '��ע�ֶ�'
) COMMENT '�û���' ;


create table automobile(
	automobile_license varchar(50) COMMENT '���ƺ�',
	frame_number varchar(100) primary key COMMENT '���ܺ�',
	engine_number varchar(17) COMMENT '��������',
	automobile_brand varchar(20) COMMENT '����Ʒ��',
	automobile_model varchar(20) COMMENT '�����ͺ�',
	automobile_output_value varchar(5) COMMENT '����',
	automobile_color varchar(8) comment '������ɫ',
	seat int COMMENT '��λ��',
	automobile_insurance_company varchar(40) COMMENT '�������չ�˾',
	compulsory_insurance_time varchar(80) COMMENT '��ǿ�յ���Ч��',
	other_insurance_time varchar(80) COMMENT '�������յ���Ч��',
	insurance_type varchar(15) COMMENT '��������',
	automobile_pic varchar(100) COMMENT '������Ƭ·��',
	create_time date COMMENT '����ʱ��',
	modify_time date COMMENT '�޸�ʱ��',
	owner varchar(100) COMMENT '������',
	read	varchar(10)	COMMENT '��֤����',
	ext2 varchar(500) COMMENT '��ע�ֶ�',
	ext3 varchar(20) COMMENT '��ע�ֶ�',
	ext4 varchar(20) COMMENT '��ע�ֶ�',
	ext5 date COMMENT '��ע�ֶ�'
) COMMENT '������Ϣ��';
