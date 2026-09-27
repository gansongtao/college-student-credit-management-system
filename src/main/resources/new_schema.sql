-- ----------------------------
-- Sequence structure for customer_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "new_schema"."customer_seq";
CREATE SEQUENCE "new_schema"."customer_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Table structure for ganst_class
-- ----------------------------
DROP TABLE IF EXISTS "new_schema"."ganst_class";
CREATE TABLE "new_schema"."ganst_class" (
  "gst_classid" int4,
  "gst_stuid" int4 NOT NULL
)
WITH (orientation=ROW)
;

-- ----------------------------
-- Records of ganst_class
-- ----------------------------
INSERT INTO "new_schema"."ganst_class" VALUES (1, 1);
INSERT INTO "new_schema"."ganst_class" VALUES (1, 2);
INSERT INTO "new_schema"."ganst_class" VALUES (2, 3);
INSERT INTO "new_schema"."ganst_class" VALUES (3, 4);
INSERT INTO "new_schema"."ganst_class" VALUES (4, 6);
INSERT INTO "new_schema"."ganst_class" VALUES (4, 52);

-- ----------------------------
-- Table structure for ganst_courses
-- ----------------------------
DROP TABLE IF EXISTS "new_schema"."ganst_courses";
CREATE TABLE "new_schema"."ganst_courses" (
  "gst_cno" varchar(6) COLLATE "pg_catalog"."default" NOT NULL,
  "gst_cname" varchar(30) COLLATE "pg_catalog"."default" NOT NULL,
  "gst_ccredit" numeric(5,1)
)
WITH (orientation=ROW)
;

-- ----------------------------
-- Records of ganst_courses
-- ----------------------------
INSERT INTO "new_schema"."ganst_courses" VALUES ('C01', 'C++', 4.0);
INSERT INTO "new_schema"."ganst_courses" VALUES ('C02', 'UML', 4.0);
INSERT INTO "new_schema"."ganst_courses" VALUES ('C03', 'JAVA', 3.0);
INSERT INTO "new_schema"."ganst_courses" VALUES ('C04', '算法分析与设计', 3.0);
INSERT INTO "new_schema"."ganst_courses" VALUES ('C05', '数据库原理及应用', 3.0);
INSERT INTO "new_schema"."ganst_courses" VALUES ('C06', '数据结构与算法', 4.0);
INSERT INTO "new_schema"."ganst_courses" VALUES ('C07', '计算机组成原理', 4.0);
INSERT INTO "new_schema"."ganst_courses" VALUES ('C08', '英语', 6.0);
INSERT INTO "new_schema"."ganst_courses" VALUES ('C09', '数字生活', 2.0);
INSERT INTO "new_schema"."ganst_courses" VALUES ('C10', '音乐鉴赏', 2.0);
INSERT INTO "new_schema"."ganst_courses" VALUES ('C11', '体育1', 2.0);

-- ----------------------------
-- Table structure for ganst_coursesbk
-- ----------------------------
DROP TABLE IF EXISTS "new_schema"."ganst_coursesbk";
CREATE TABLE "new_schema"."ganst_coursesbk" (
  "gst_cno" varchar(6) COLLATE "pg_catalog"."default" NOT NULL,
  "gst_cname" varchar(30) COLLATE "pg_catalog"."default" NOT NULL,
  "gst_ccredit" numeric(5,1)
)
WITH (orientation=ROW)
;

-- ----------------------------
-- Records of ganst_coursesbk
-- ----------------------------
INSERT INTO "new_schema"."ganst_coursesbk" VALUES ('C01', 'C++', 4.0);
INSERT INTO "new_schema"."ganst_coursesbk" VALUES ('C02', 'UML', 4.0);
INSERT INTO "new_schema"."ganst_coursesbk" VALUES ('C03', 'JAVA', 3.0);
INSERT INTO "new_schema"."ganst_coursesbk" VALUES ('C04', '算法分析与设计', 3.0);
INSERT INTO "new_schema"."ganst_coursesbk" VALUES ('C05', '数据库原理及应用', 3.0);
INSERT INTO "new_schema"."ganst_coursesbk" VALUES ('C06', '数据结构与算法', 4.0);
INSERT INTO "new_schema"."ganst_coursesbk" VALUES ('C07', '计算机组成原理', 4.0);
INSERT INTO "new_schema"."ganst_coursesbk" VALUES ('C08', '英语', 6.0);
INSERT INTO "new_schema"."ganst_coursesbk" VALUES ('C09', '数字生活', 2.0);
INSERT INTO "new_schema"."ganst_coursesbk" VALUES ('C10', '音乐鉴赏', 2.0);
INSERT INTO "new_schema"."ganst_coursesbk" VALUES ('C11', '体育1', 2.0);

-- ----------------------------
-- Table structure for ganst_curriculum
-- ----------------------------
DROP TABLE IF EXISTS "new_schema"."ganst_curriculum";
CREATE TABLE "new_schema"."ganst_curriculum" (
  "gst_courseid" int4,
  "gst_course" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "gst_teaname" varchar(255) COLLATE "pg_catalog"."default",
  "gst_term" varchar(2) COLLATE "pg_catalog"."default",
  "gst_length" varchar(3) COLLATE "pg_catalog"."default",
  "gst_test" varchar(6) COLLATE "pg_catalog"."default",
  "gst_credit" int4,
  "gst_classid" int4
)
WITH (orientation=ROW)
;

-- ----------------------------
-- Records of ganst_curriculum
-- ----------------------------
INSERT INTO "new_schema"."ganst_curriculum" VALUES (1, 'C++', '刘涛', '2', '3', '考查', 4, 2);
INSERT INTO "new_schema"."ganst_curriculum" VALUES (2, 'UML', '刘涛', '1', '2', '考试', 4, 1);
INSERT INTO "new_schema"."ganst_curriculum" VALUES (3, 'JAVA', '吴碧艳', '1', '2', '考查', 3, 2);
INSERT INTO "new_schema"."ganst_curriculum" VALUES (4, '算法分析与设计', '张莹', '2', '1', '考试', 1, 3);
INSERT INTO "new_schema"."ganst_curriculum" VALUES (5, '数据库原理及应用', '张莹', '1', '3', '考试', 3, 3);
INSERT INTO "new_schema"."ganst_curriculum" VALUES (6, '数据结构与算法', '张宁雅', '2', '1', '考试', 1, 4);
INSERT INTO "new_schema"."ganst_curriculum" VALUES (7, '计算机组成原理', '叶帅', '1', '2', '考查', 2, 4);
INSERT INTO "new_schema"."ganst_curriculum" VALUES (8, '英语', '叶帅', '2', '6', '考试', 6, 2);
INSERT INTO "new_schema"."ganst_curriculum" VALUES (9, '数字生活', '杨光美', '1', '2', '考查', 2, 3);
INSERT INTO "new_schema"."ganst_curriculum" VALUES (10, '音乐鉴赏', '杨光美', '2', '1', '考试', 2, 1);
INSERT INTO "new_schema"."ganst_curriculum" VALUES (11, '体育1', '程潜', '1', '2', '考查', 2, 2);

-- ----------------------------
-- Table structure for ganst_prof
-- ----------------------------
DROP TABLE IF EXISTS "new_schema"."ganst_prof";
CREATE TABLE "new_schema"."ganst_prof" (
  "gst_profession" varchar COLLATE "pg_catalog"."default",
  "gst_classid" int4
)
WITH (orientation=ROW)
;

-- ----------------------------
-- Records of ganst_prof
-- ----------------------------

-- ----------------------------
-- Table structure for ganst_reports
-- ----------------------------
DROP TABLE IF EXISTS "new_schema"."ganst_reports";
CREATE TABLE "new_schema"."ganst_reports" (
  "gst_sno" varchar(6) COLLATE "pg_catalog"."default" NOT NULL,
  "gst_tno" varchar(6) COLLATE "pg_catalog"."default" NOT NULL,
  "gst_cno" varchar(6) COLLATE "pg_catalog"."default" NOT NULL,
  "gst_score" numeric(5,1)
)
WITH (orientation=ROW)
;

-- ----------------------------
-- Records of ganst_reports
-- ----------------------------
INSERT INTO "new_schema"."ganst_reports" VALUES ('S01', 'T01', 'C01', 83.0);
INSERT INTO "new_schema"."ganst_reports" VALUES ('S01', 'T03', 'C03', 85.0);
INSERT INTO "new_schema"."ganst_reports" VALUES ('S02', 'T01', 'C01', 75.0);
INSERT INTO "new_schema"."ganst_reports" VALUES ('S02', 'T02', 'C02', 45.0);
INSERT INTO "new_schema"."ganst_reports" VALUES ('S02', 'T03', 'C03', NULL);
INSERT INTO "new_schema"."ganst_reports" VALUES ('S02', 'T04', 'C04', NULL);
INSERT INTO "new_schema"."ganst_reports" VALUES ('S02', 'T05', 'C05', 70.0);
INSERT INTO "new_schema"."ganst_reports" VALUES ('S02', 'T04', 'C06', 83.0);
INSERT INTO "new_schema"."ganst_reports" VALUES ('S02', 'T05', 'C07', 90.0);
INSERT INTO "new_schema"."ganst_reports" VALUES ('S02', 'T01', 'C08', 83.0);
INSERT INTO "new_schema"."ganst_reports" VALUES ('S02', 'T02', 'C09', 77.0);
INSERT INTO "new_schema"."ganst_reports" VALUES ('S02', 'T07', 'C10', 83.0);
INSERT INTO "new_schema"."ganst_reports" VALUES ('S02', 'T06', 'C11', 88.0);
INSERT INTO "new_schema"."ganst_reports" VALUES ('S03', 'T01', 'C08', 63.0);
INSERT INTO "new_schema"."ganst_reports" VALUES ('S03', 'T02', 'C02', 93.0);
INSERT INTO "new_schema"."ganst_reports" VALUES ('S03', 'T01', 'C01', 78.0);
INSERT INTO "new_schema"."ganst_reports" VALUES ('S04', 'T06', 'C06', 89.0);
INSERT INTO "new_schema"."ganst_reports" VALUES ('S04', 'T05', 'C05', 93.0);
INSERT INTO "new_schema"."ganst_reports" VALUES ('S26', 'T07', 'C10', 45.0);
INSERT INTO "new_schema"."ganst_reports" VALUES ('S26', 'T04', 'C04', 86.0);
INSERT INTO "new_schema"."ganst_reports" VALUES ('S52', 'T07', 'C10', 91.0);
INSERT INTO "new_schema"."ganst_reports" VALUES ('S52', 'T06', 'C11', 90.0);
INSERT INTO "new_schema"."ganst_reports" VALUES ('S52', 'T05', 'C05', NULL);
INSERT INTO "new_schema"."ganst_reports" VALUES ('S52', 'T01', 'C08', 64.0);
INSERT INTO "new_schema"."ganst_reports" VALUES ('S52', 'T02', 'C09', 81.0);

-- ----------------------------
-- Table structure for ganst_reportsbk
-- ----------------------------
DROP TABLE IF EXISTS "new_schema"."ganst_reportsbk";
CREATE TABLE "new_schema"."ganst_reportsbk" (
  "gst_sno" varchar(6) COLLATE "pg_catalog"."default" NOT NULL,
  "gst_tno" varchar(6) COLLATE "pg_catalog"."default" NOT NULL,
  "gst_cno" varchar(6) COLLATE "pg_catalog"."default" NOT NULL,
  "gst_score" numeric(5,1)
)
WITH (orientation=ROW)
;

-- ----------------------------
-- Records of ganst_reportsbk
-- ----------------------------
INSERT INTO "new_schema"."ganst_reportsbk" VALUES ('S01', 'T03', 'C03', 85.0);
INSERT INTO "new_schema"."ganst_reportsbk" VALUES ('S02', 'T02', 'C02', 45.0);
INSERT INTO "new_schema"."ganst_reportsbk" VALUES ('S02', 'T03', 'C03', NULL);
INSERT INTO "new_schema"."ganst_reportsbk" VALUES ('S02', 'T04', 'C04', NULL);
INSERT INTO "new_schema"."ganst_reportsbk" VALUES ('S02', 'T05', 'C05', 70.0);
INSERT INTO "new_schema"."ganst_reportsbk" VALUES ('S02', 'T04', 'C06', 83.0);
INSERT INTO "new_schema"."ganst_reportsbk" VALUES ('S02', 'T05', 'C07', 90.0);
INSERT INTO "new_schema"."ganst_reportsbk" VALUES ('S02', 'T01', 'C08', 83.0);
INSERT INTO "new_schema"."ganst_reportsbk" VALUES ('S02', 'T02', 'C09', 77.0);
INSERT INTO "new_schema"."ganst_reportsbk" VALUES ('S02', 'T07', 'C10', 83.0);
INSERT INTO "new_schema"."ganst_reportsbk" VALUES ('S02', 'T06', 'C11', 88.0);
INSERT INTO "new_schema"."ganst_reportsbk" VALUES ('S04', 'T06', 'C06', 89.0);
INSERT INTO "new_schema"."ganst_reportsbk" VALUES ('S04', 'T05', 'C05', 93.0);
INSERT INTO "new_schema"."ganst_reportsbk" VALUES ('S26', 'T07', 'C10', 45.0);
INSERT INTO "new_schema"."ganst_reportsbk" VALUES ('S26', 'T04', 'C04', 86.0);
INSERT INTO "new_schema"."ganst_reportsbk" VALUES ('S52', 'T07', 'C10', 91.0);
INSERT INTO "new_schema"."ganst_reportsbk" VALUES ('S52', 'T06', 'C11', 90.0);
INSERT INTO "new_schema"."ganst_reportsbk" VALUES ('S52', 'T05', 'C05', NULL);
INSERT INTO "new_schema"."ganst_reportsbk" VALUES ('S52', 'T01', 'C08', 64.0);
INSERT INTO "new_schema"."ganst_reportsbk" VALUES ('S52', 'T02', 'C09', 81.0);
INSERT INTO "new_schema"."ganst_reportsbk" VALUES ('S01', 'T01', 'C01', 88.0);
INSERT INTO "new_schema"."ganst_reportsbk" VALUES ('S02', 'T01', 'C01', 80.0);

-- ----------------------------
-- Table structure for ganst_result
-- ----------------------------
DROP TABLE IF EXISTS "new_schema"."ganst_result";
CREATE TABLE "new_schema"."ganst_result" (
  "gst_stuid" int4,
  "gst_course" varchar(255) COLLATE "pg_catalog"."default",
  "gst_year" varchar(2) COLLATE "pg_catalog"."default",
  "gst_term" varchar(2) COLLATE "pg_catalog"."default",
  "gst_teaname" varchar(255) COLLATE "pg_catalog"."default",
  "gst_score" int4
)
WITH (orientation=ROW)
;

-- ----------------------------
-- Records of ganst_result
-- ----------------------------
INSERT INTO "new_schema"."ganst_result" VALUES (1, 'C++', '2', '1', '刘涛', 83);
INSERT INTO "new_schema"."ganst_result" VALUES (1, 'JAVA', '1', '2', '张莹', 85);
INSERT INTO "new_schema"."ganst_result" VALUES (2, 'C++', '1', '1', '刘涛', 75);
INSERT INTO "new_schema"."ganst_result" VALUES (2, 'UML', '2', '2', '吴碧艳', 45);
INSERT INTO "new_schema"."ganst_result" VALUES (2, 'JAVA', '1', '2', '张莹', 80);
INSERT INTO "new_schema"."ganst_result" VALUES (2, '算法分析与设计', '2', '1', '张宁雅', 70);
INSERT INTO "new_schema"."ganst_result" VALUES (2, '数据库原理及应用', '2', '2', '叶帅', 70);
INSERT INTO "new_schema"."ganst_result" VALUES (2, '计算机组成原理', '1', '1', '叶帅', 90);
INSERT INTO "new_schema"."ganst_result" VALUES (2, '数据结构与算法', '2', '1', '张宁雅', 83);
INSERT INTO "new_schema"."ganst_result" VALUES (2, '英语', '1', '2', '刘涛', 83);
INSERT INTO "new_schema"."ganst_result" VALUES (2, '数字生活', '1', '1', '吴碧艳', 77);
INSERT INTO "new_schema"."ganst_result" VALUES (2, '音乐鉴赏', '1', '2', '程潜', 83);
INSERT INTO "new_schema"."ganst_result" VALUES (2, '体育1', '2', '1', '杨光美', 88);
INSERT INTO "new_schema"."ganst_result" VALUES (3, '英语', '1', '1', '刘涛', 63);
INSERT INTO "new_schema"."ganst_result" VALUES (3, 'UML', '2', '2', '吴碧艳', 93);
INSERT INTO "new_schema"."ganst_result" VALUES (3, 'C++', '2', '2', '刘涛', 78);
INSERT INTO "new_schema"."ganst_result" VALUES (4, '数据结构与算法', '2', '2', '杨光美', 89);
INSERT INTO "new_schema"."ganst_result" VALUES (4, '数据库原理及应用', '1', '1', '叶帅', 93);
INSERT INTO "new_schema"."ganst_result" VALUES (6, '音乐鉴赏', '1', '1', '程潜', 45);
INSERT INTO "new_schema"."ganst_result" VALUES (6, '算法分析与设计', '2', '2', '张宁雅', 86);
INSERT INTO "new_schema"."ganst_result" VALUES (52, '音乐鉴赏', '2', '1', '程潜', 91);
INSERT INTO "new_schema"."ganst_result" VALUES (52, '体育1', '2', '2', '杨光美', 90);
INSERT INTO "new_schema"."ganst_result" VALUES (52, '数据库原理及应用', '1', '1', '叶帅', 76);
INSERT INTO "new_schema"."ganst_result" VALUES (52, '英语', '1', '1', '刘涛', 64);
INSERT INTO "new_schema"."ganst_result" VALUES (52, '数字生活', '2', '1', '吴碧艳', 81);

-- ----------------------------
-- Table structure for ganst_stu
-- ----------------------------
DROP TABLE IF EXISTS "new_schema"."ganst_stu";
CREATE TABLE "new_schema"."ganst_stu" (
  "gst_stuid" int4 NOT NULL,
  "gst_student" varchar(255) COLLATE "pg_catalog"."default",
  "gst_gender" varchar(3) COLLATE "pg_catalog"."default",
  "gst_age" int4,
  "gst_region" varchar(255) COLLATE "pg_catalog"."default"
)
WITH (orientation=ROW)
;

-- ----------------------------
-- Records of ganst_stu
-- ----------------------------
INSERT INTO "new_schema"."ganst_stu" VALUES (1, '王建平', '男', 23, '江苏');
INSERT INTO "new_schema"."ganst_stu" VALUES (2, '刘华', '女', 24, '浙江');
INSERT INTO "new_schema"."ganst_stu" VALUES (3, '范林军', '女', 16, '安徽');
INSERT INTO "new_schema"."ganst_stu" VALUES (4, '李伟', '男', 15, '新疆');
INSERT INTO "new_schema"."ganst_stu" VALUES (6, '黄河', '男', 13, '浙江');
INSERT INTO "new_schema"."ganst_stu" VALUES (52, '长江', '男', 12, '北京');

-- ----------------------------
-- Table structure for ganst_students
-- ----------------------------
DROP TABLE IF EXISTS "new_schema"."ganst_students";
CREATE TABLE "new_schema"."ganst_students" (
  "gst_sno" varchar(6) COLLATE "pg_catalog"."default" NOT NULL,
  "gst_sname" varchar(30) COLLATE "pg_catalog"."default" NOT NULL,
  "gst_semail" varchar(50) COLLATE "pg_catalog"."default",
  "gst_scredit" numeric(5,1),
  "ssex" varchar(3) COLLATE "pg_catalog"."default"
)
WITH (orientation=ROW)
;

-- ----------------------------
-- Records of ganst_students
-- ----------------------------
INSERT INTO "new_schema"."ganst_students" VALUES ('S01', '王建平', 'WJP@zjut.edu.cn', 23.1, '男');
INSERT INTO "new_schema"."ganst_students" VALUES ('S02', '刘华', 'LH@zjut.edu.cn', 24.6, '女');
INSERT INTO "new_schema"."ganst_students" VALUES ('S03', '范林军', 'FLJ@zjut.edu.cn', 16.6, '女');
INSERT INTO "new_schema"."ganst_students" VALUES ('S04', '李伟', 'LW@zjut.edu.cn', 15.8, '男');
INSERT INTO "new_schema"."ganst_students" VALUES ('S26', '黄河', 'HUanghe@zjut.edu.cn', 13.4, '男');
INSERT INTO "new_schema"."ganst_students" VALUES ('S52', '长江', 'Changjiang@zjut.edu.cn', 12.4, '男');

-- ----------------------------
-- Table structure for ganst_studentsbk
-- ----------------------------
DROP TABLE IF EXISTS "new_schema"."ganst_studentsbk";
CREATE TABLE "new_schema"."ganst_studentsbk" (
  "gst_sno" varchar(6) COLLATE "pg_catalog"."default" NOT NULL,
  "gst_sname" varchar(30) COLLATE "pg_catalog"."default" NOT NULL,
  "gst_semail" varchar(50) COLLATE "pg_catalog"."default",
  "gst_scredit" numeric(5,1),
  "ssex" varchar(3) COLLATE "pg_catalog"."default"
)
WITH (orientation=ROW)
;

-- ----------------------------
-- Records of ganst_studentsbk
-- ----------------------------
INSERT INTO "new_schema"."ganst_studentsbk" VALUES ('S01', '王建平', 'WJP@zjut.edu.cn', 23.1, '男');
INSERT INTO "new_schema"."ganst_studentsbk" VALUES ('S02', '刘华', 'LH@zjut.edu.cn', 24.6, '女');
INSERT INTO "new_schema"."ganst_studentsbk" VALUES ('S03', '范林军', 'FLJ@zjut.edu.cn', 16.6, '女');
INSERT INTO "new_schema"."ganst_studentsbk" VALUES ('S04', '李伟', 'LW@zjut.edu.cn', 15.8, '男');
INSERT INTO "new_schema"."ganst_studentsbk" VALUES ('S26', '黄河', 'HUanghe@zjut.edu.cn', 13.4, '男');
INSERT INTO "new_schema"."ganst_studentsbk" VALUES ('S52', '长江', 'Changjiang@zjut.edu.cn', 12.4, '男');

-- ----------------------------
-- Table structure for ganst_teacher
-- ----------------------------
DROP TABLE IF EXISTS "new_schema"."ganst_teacher";
CREATE TABLE "new_schema"."ganst_teacher" (
  "gst_teaid" int4,
  "gst_teaname" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "gst_gender" varchar(3) COLLATE "pg_catalog"."default",
  "gst_age" int4,
  "gst_title" varchar(255) COLLATE "pg_catalog"."default",
  "gst_phone" int4
)
WITH (orientation=ROW)
;

-- ----------------------------
-- Records of ganst_teacher
-- ----------------------------
INSERT INTO "new_schema"."ganst_teacher" VALUES (1, '刘涛', '女', NULL, NULL, NULL);
INSERT INTO "new_schema"."ganst_teacher" VALUES (2, '吴碧艳', '男', NULL, NULL, NULL);
INSERT INTO "new_schema"."ganst_teacher" VALUES (3, '张莹', '女', NULL, NULL, NULL);
INSERT INTO "new_schema"."ganst_teacher" VALUES (4, '张宁雅', '男', NULL, NULL, NULL);
INSERT INTO "new_schema"."ganst_teacher" VALUES (5, '叶帅', '男', NULL, NULL, NULL);
INSERT INTO "new_schema"."ganst_teacher" VALUES (6, '杨光美', '男', NULL, NULL, NULL);
INSERT INTO "new_schema"."ganst_teacher" VALUES (7, '程潜', '女', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for ganst_teachers
-- ----------------------------
DROP TABLE IF EXISTS "new_schema"."ganst_teachers";
CREATE TABLE "new_schema"."ganst_teachers" (
  "gst_tno" varchar(6) COLLATE "pg_catalog"."default" NOT NULL,
  "gst_tname" varchar(30) COLLATE "pg_catalog"."default" NOT NULL,
  "gst_temail" varchar(50) COLLATE "pg_catalog"."default",
  "gst_tsalary" numeric(5,1)
)
WITH (orientation=ROW)
;

-- ----------------------------
-- Records of ganst_teachers
-- ----------------------------
INSERT INTO "new_schema"."ganst_teachers" VALUES ('T01', '刘涛', 'LT@zjut.edu.cn', 4300.0);
INSERT INTO "new_schema"."ganst_teachers" VALUES ('T02', '吴碧艳', 'WBY@zjut.edu.cn', 2500.0);
INSERT INTO "new_schema"."ganst_teachers" VALUES ('T03', '张莹', 'ZY@zjut.edu.cn', 3000.0);
INSERT INTO "new_schema"."ganst_teachers" VALUES ('T04', '张宁雅', 'ZNY@zjut.edu.cn', 5500.0);
INSERT INTO "new_schema"."ganst_teachers" VALUES ('T05', '叶帅', 'YS@zjut.edu.cn', 3800.0);
INSERT INTO "new_schema"."ganst_teachers" VALUES ('T06', '杨光美', 'YGM@zjut.edu.cn', 3500.0);
INSERT INTO "new_schema"."ganst_teachers" VALUES ('T07', '程潜', 'CQ@zjut.edu.cn', 5000.0);

-- ----------------------------
-- Table structure for ganst_teachersbk
-- ----------------------------
DROP TABLE IF EXISTS "new_schema"."ganst_teachersbk";
CREATE TABLE "new_schema"."ganst_teachersbk" (
  "gst_tno" varchar(6) COLLATE "pg_catalog"."default" NOT NULL,
  "gst_tname" varchar(30) COLLATE "pg_catalog"."default" NOT NULL,
  "gst_temail" varchar(50) COLLATE "pg_catalog"."default",
  "gst_tsalary" numeric(5,1)
)
WITH (orientation=ROW)
;

-- ----------------------------
-- Records of ganst_teachersbk
-- ----------------------------
INSERT INTO "new_schema"."ganst_teachersbk" VALUES ('T01', '刘涛', 'LT@zjut.edu.cn', 4300.0);
INSERT INTO "new_schema"."ganst_teachersbk" VALUES ('T02', '吴碧艳', 'WBY@zjut.edu.cn', 2500.0);
INSERT INTO "new_schema"."ganst_teachersbk" VALUES ('T03', '张莹', 'ZY@zjut.edu.cn', 3000.0);
INSERT INTO "new_schema"."ganst_teachersbk" VALUES ('T04', '张宁雅', 'ZNY@zjut.edu.cn', 5500.0);
INSERT INTO "new_schema"."ganst_teachersbk" VALUES ('T05', '叶帅', 'YS@zjut.edu.cn', 3800.0);
INSERT INTO "new_schema"."ganst_teachersbk" VALUES ('T06', '杨光美', 'YGM@zjut.edu.cn', 3500.0);
INSERT INTO "new_schema"."ganst_teachersbk" VALUES ('T07', '程潜', 'CQ@zjut.edu.cn', 5000.0);

-- ----------------------------
-- Function structure for class_cascade
-- ----------------------------
DROP FUNCTION IF EXISTS "new_schema"."class_cascade"();
CREATE FUNCTION "new_schema"."class_cascade"()
  RETURNS "pg_catalog"."trigger"
  LANGUAGE plpgsql VOLATILE
  COST 100
AS $BODY$ BEGIN
	DELETE FROM ganst_class WHERE gst_stuid=OLD.gst_stuid;
	RETURN OLD;
END; $BODY$
;

-- ----------------------------
-- Function structure for course_cascade
-- ----------------------------
DROP FUNCTION IF EXISTS "new_schema"."course_cascade"();
CREATE FUNCTION "new_schema"."course_cascade"()
  RETURNS "pg_catalog"."trigger"
  LANGUAGE plpgsql VOLATILE
  COST 100
AS $BODY$ BEGIN
	DELETE FROM ganst_curriculum WHERE gst_teaname=OLD.gst_teaname;
	DELETE FROM ganst_curriculum WHERE gst_classid=OLD.gst_classid;
	RETURN OLD;
END; $BODY$
;

-- ----------------------------
-- Procedure structure for delete_credit
-- ----------------------------
DROP PROCEDURE IF EXISTS "new_schema"."delete_credit"("gst_stuid" int4);
CREATE PROCEDURE "new_schema"."delete_credit"("gst_stuid" int4)
AS DECLARE 
BEGIN
	DELETE FROM total_credit WHERE gst_stuid=delete_credit.gst_stuid;
	COMMIT;
END
;

-- ----------------------------
-- Procedure structure for proc_cou
-- ----------------------------
DROP PROCEDURE IF EXISTS "new_schema"."proc_cou"("cou_name" varchar, OUT "cou_no" varchar);
CREATE PROCEDURE "new_schema"."proc_cou"(IN "cou_name" varchar, OUT "cou_no" varchar)
AS DECLARE
BEGIN
    SELECT Cno INTO Cou_no FROM Courses WHERE Cname = Cou_name order by 1 limit 1;
END
;

-- ----------------------------
-- Procedure structure for proc_del_stu
-- ----------------------------
DROP PROCEDURE IF EXISTS "new_schema"."proc_del_stu"("min_credit" numeric);
CREATE PROCEDURE "new_schema"."proc_del_stu"("min_credit" numeric)
AS DECLARE
    stu_sno  VARCHAR(6) ;
CURSOR  C(cur_credit DECIMAL( 5,1 ))  IS SELECT  Sno  FROM Students WHERE Scredit>= cur_credit;   
BEGIN 
   OPEN C(min_credit); 
   LOOP 
      FETCH C INTO stu_sno; 
      EXIT WHEN C%NOTFOUND;  
       DELETE FROM Reports WHERE Sno=stu_sno;
       DELETE FROM  Students WHERE Sno = stu_sno;
   END LOOP; 
   CLOSE C; 
END
;

-- ----------------------------
-- Procedure structure for proc_re
-- ----------------------------
DROP PROCEDURE IF EXISTS "new_schema"."proc_re"("ingst_cno" varchar);
CREATE PROCEDURE "new_schema"."proc_re"("ingst_cno" varchar)
AS DECLARE
stu_gst_sno  VARCHAR(6) ;
stu_gst_sname  VARCHAR(20) ;
cou_name  VARCHAR(20) ;
cou_gst_score   DECIMAL( 5,1 );
CURSOR  C  IS  select ganst_students.gst_sno,ganst_students.gst_sname,ganst_courses.gst_cname,ganst_reports.gst_score  from  ganst_students,ganst_courses,ganst_reports
where ganst_students.gst_sno=ganst_reports.gst_sno and ganst_reports.gst_cno=ganst_courses.gst_cno and ganst_courses.gst_cno=ingst_cno;
BEGIN 
   OPEN C; 
   LOOP 
      FETCH C INTO stu_gst_sno, stu_gst_sname, cou_name,cou_gst_score; 
      EXIT WHEN C%NOTFOUND;  
      RAISE  info 'gst_sno: % , gst_sname: % , gst_cname: % , gst_score: %' , stu_gst_sno, stu_gst_sname, cou_name, cou_gst_score;
   END LOOP; 
   CLOSE C; 
END
;

-- ----------------------------
-- Procedure structure for proc_re_cur
-- ----------------------------
DROP PROCEDURE IF EXISTS "new_schema"."proc_re_cur"("incno" varchar);
CREATE PROCEDURE "new_schema"."proc_re_cur"("incno" varchar)
AS DECLARE
stu_Sno  VARCHAR(6) ;
stu_Sname  VARCHAR(20) ;
cou_name  VARCHAR(20) ;
cou_Score   DECIMAL( 5,1 );
CURSOR  C(Cur_Cno varchar(6))  IS  SELECT Students.Sno,Students.Sname,Courses.Cname,Reports.Score  FROM  Students,Courses,Reports
WHERE Students.Sno=Reports.Sno AND Reports.Cno=Courses.Cno AND Courses.Cno= Cur_Cno;
BEGIN 
   OPEN C(inCno); 
   LOOP 
      FETCH C INTO stu_Sno, stu_Sname, cou_name,cou_Score; 
      EXIT WHEN C%NOTFOUND;  
      RAISE  info 'Sno: % , Sname: % , Cname: % , Score: %' , stu_Sno, stu_Sname, cou_name, cou_Score;
   END LOOP; 
   CLOSE C; 
END
;

-- ----------------------------
-- Procedure structure for proc_tname
-- ----------------------------
DROP PROCEDURE IF EXISTS "new_schema"."proc_tname"("ttno" varchar, OUT "tea_name" varchar);
CREATE PROCEDURE "new_schema"."proc_tname"(IN "ttno" varchar, OUT "tea_name" varchar)
AS DECLARE
Stu_no VARCHAR(6);
Tea_no VARCHAR(6);
Cou_no VARCHAR(6);		
Cou_Score DECIMAL( 5,1 );
CURSOR C IS SELECT Sno,Tno,Cno,Score FROM Reports WHERE Reports.Tno=Ttno;
BEGIN
    SELECT Tname INTO Tea_name FROM Teachers WHERE Tno=Ttno;
    OPEN C; 
    LOOP 
      FETCH C INTO Stu_no, Tea_no, Cou_no, Cou_Score;
      EXIT WHEN C%NOTFOUND;  
      RAISE  info ' Sno: % , Tno: %, Cno: %, Score: % ' , Stu_no, Tea_no, Cou_no, Cou_Score;   
END LOOP; 
   CLOSE C;  
END
;

-- ----------------------------
-- Function structure for tri1_func
-- ----------------------------
DROP FUNCTION IF EXISTS "new_schema"."tri1_func"();
CREATE FUNCTION "new_schema"."tri1_func"()
  RETURNS "pg_catalog"."trigger"
  LANGUAGE plpgsql VOLATILE
  COST 100
AS $BODY$ DECLARE
           BEGIN
                   IF NEW.Tage >0 THEN
                    RAISE NOTICE '职工年龄大于0的整数! 操作成功！';
                    RETURN NEW;
                   ELSE
                     RAISE EXCEPTION '职工年龄必须是大于0的整数! 操作失败！';
                   END IF; 
           END $BODY$
;

-- ----------------------------
-- Function structure for tri2_func
-- ----------------------------
DROP FUNCTION IF EXISTS "new_schema"."tri2_func"();
CREATE FUNCTION "new_schema"."tri2_func"()
  RETURNS "pg_catalog"."trigger"
  LANGUAGE plpgsql VOLATILE
  COST 100
AS $BODY$ DECLARE
           BEGIN
                   IF OLD.Tno='T01' THEN
                     RAISE EXCEPTION '此人是班主任! 删除操作失败!';
                   ELSE
                     RETURN OLD; 
                   END IF; 
                     
           END $BODY$
;

-- ----------------------------
-- Function structure for tri3_func
-- ----------------------------
DROP FUNCTION IF EXISTS "new_schema"."tri3_func"();
CREATE FUNCTION "new_schema"."tri3_func"()
  RETURNS "pg_catalog"."trigger"
  LANGUAGE plpgsql VOLATILE
  COST 100
AS $BODY$ DECLARE
           BEGIN
                   RAISE EXCEPTION '职工编号不能修改！';
           END $BODY$
;

-- ----------------------------
-- Procedure structure for update_credit
-- ----------------------------
DROP PROCEDURE IF EXISTS "new_schema"."update_credit"("gst_stuid" int4);
CREATE PROCEDURE "new_schema"."update_credit"("gst_stuid" int4)
AS DECLARE 
BEGIN
	UPDATE total_credit
	SET total=(SELECT SUM(gst_credit) FROM ganst_result WHERE update_credit.gst_stuid=gst_stuid AND gst_score>=60);
	COMMIT;
END
;

-- ----------------------------
-- View structure for all_classes
-- ----------------------------
DROP VIEW IF EXISTS "new_schema"."all_classes";
CREATE VIEW "new_schema"."all_classes" AS  SELECT ganst_result.gst_stuid, 
    group_concat(ganst_curriculum.gst_course SEPARATOR ',') AS courses, 
    group_concat(ganst_curriculum.gst_credit SEPARATOR ',') AS credits
   FROM new_schema.ganst_result, new_schema.ganst_curriculum
  GROUP BY ganst_result.gst_stuid;

-- ----------------------------
-- View structure for cs_view_opt
-- ----------------------------
DROP VIEW IF EXISTS "new_schema"."cs_view_opt";
CREATE VIEW "new_schema"."cs_view_opt" AS  SELECT  *
   FROM new_schema.ganst_reportsbk
  WHERE ganst_reportsbk.gst_score >= 60::numeric;

-- ----------------------------
-- View structure for curriculum_average
-- ----------------------------
DROP VIEW IF EXISTS "new_schema"."curriculum_average";
CREATE VIEW "new_schema"."curriculum_average" AS  SELECT ganst_result.gst_course, 
    sum(ganst_result.gst_score) / count(ganst_result.gst_course) AS "column"
   FROM new_schema.ganst_result
  GROUP BY ganst_result.gst_course;

-- ----------------------------
-- View structure for regions
-- ----------------------------
DROP VIEW IF EXISTS "new_schema"."regions";
CREATE VIEW "new_schema"."regions" AS  SELECT ganst_stu.gst_region, count(ganst_stu.gst_stuid) AS count
   FROM new_schema.ganst_stu
  GROUP BY ganst_stu.gst_region;

-- ----------------------------
-- View structure for score_ranking
-- ----------------------------
DROP VIEW IF EXISTS "new_schema"."score_ranking";
CREATE VIEW "new_schema"."score_ranking" AS  SELECT ganst_result.gst_stuid, 
    sum(ganst_result.gst_score * ganst_curriculum.gst_credit) / sum(ganst_curriculum.gst_credit) AS "column", 
    row_number() OVER (ORDER BY sum(ganst_result.gst_score * ganst_curriculum.gst_credit) / sum(ganst_curriculum.gst_credit) DESC) AS "row"
   FROM new_schema.ganst_curriculum, new_schema.ganst_result
  WHERE ganst_curriculum.gst_course::text = ganst_result.gst_course::text
  GROUP BY ganst_result.gst_stuid
  ORDER BY sum(ganst_result.gst_score * ganst_curriculum.gst_credit) / sum(ganst_curriculum.gst_credit) DESC;

-- ----------------------------
-- View structure for stu_average1
-- ----------------------------
DROP VIEW IF EXISTS "new_schema"."stu_average1";
CREATE VIEW "new_schema"."stu_average1" AS  SELECT ganst_result.gst_stuid, 
    sum(ganst_result.gst_score * ganst_curriculum.gst_credit) / sum(ganst_curriculum.gst_credit) AS "column"
   FROM new_schema.ganst_curriculum, new_schema.ganst_result
  WHERE ganst_curriculum.gst_course::text = ganst_result.gst_course::text AND ganst_result.gst_year::bigint = 1
  GROUP BY ganst_result.gst_stuid;

-- ----------------------------
-- View structure for stu_average2
-- ----------------------------
DROP VIEW IF EXISTS "new_schema"."stu_average2";
CREATE VIEW "new_schema"."stu_average2" AS  SELECT ganst_result.gst_stuid, 
    sum(ganst_result.gst_score * ganst_curriculum.gst_credit) / sum(ganst_curriculum.gst_credit) AS "column"
   FROM new_schema.ganst_curriculum, new_schema.ganst_result
  WHERE ganst_curriculum.gst_course::text = ganst_result.gst_course::text AND ganst_result.gst_year::bigint = 2
  GROUP BY ganst_result.gst_stuid;

-- ----------------------------
-- View structure for total_credit
-- ----------------------------
DROP VIEW IF EXISTS "new_schema"."total_credit";
CREATE VIEW "new_schema"."total_credit" AS  SELECT ganst_result.gst_stuid, sum(ganst_curriculum.gst_credit) AS total
   FROM new_schema.ganst_result, new_schema.ganst_curriculum
  WHERE ganst_result.gst_score >= 60
  GROUP BY ganst_result.gst_stuid;

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"new_schema"."customer_seq"', 4, true);

-- ----------------------------
-- Triggers structure for table ganst_class
-- ----------------------------
CREATE TRIGGER "class_delstu" BEFORE DELETE ON "new_schema"."ganst_class"
FOR EACH ROW
EXECUTE PROCEDURE "new_schema"."class_cascade"();

-- ----------------------------
-- Primary Key structure for table ganst_class
-- ----------------------------
ALTER TABLE "new_schema"."ganst_class" ADD CONSTRAINT "ganst_class_pkey" PRIMARY KEY ("gst_stuid");

-- ----------------------------
-- Primary Key structure for table ganst_courses
-- ----------------------------
ALTER TABLE "new_schema"."ganst_courses" ADD CONSTRAINT "pk_cou" PRIMARY KEY ("gst_cno");

-- ----------------------------
-- Primary Key structure for table ganst_coursesbk
-- ----------------------------
ALTER TABLE "new_schema"."ganst_coursesbk" ADD CONSTRAINT "ganst_courses_copy1_pkey" PRIMARY KEY ("gst_cno");

-- ----------------------------
-- Triggers structure for table ganst_curriculum
-- ----------------------------
CREATE TRIGGER "course_del" BEFORE DELETE ON "new_schema"."ganst_curriculum"
FOR EACH ROW
EXECUTE PROCEDURE "new_schema"."course_cascade"();

-- ----------------------------
-- Checks structure for table ganst_curriculum
-- ----------------------------
ALTER TABLE "new_schema"."ganst_curriculum" ADD CONSTRAINT "ganst_curriculum_gst_term_check" CHECK (((gst_term)::bigint <= 2));
ALTER TABLE "new_schema"."ganst_curriculum" ADD CONSTRAINT "ganst_curriculum_gst_test_check" CHECK ((((gst_test)::text = '考查'::text) OR ((gst_test)::text = '考试'::text)));

-- ----------------------------
-- Primary Key structure for table ganst_curriculum
-- ----------------------------
ALTER TABLE "new_schema"."ganst_curriculum" ADD CONSTRAINT "ganst_curriculum_pkey" PRIMARY KEY ("gst_course");

-- ----------------------------
-- Primary Key structure for table ganst_reports
-- ----------------------------
ALTER TABLE "new_schema"."ganst_reports" ADD CONSTRAINT "pk_rep" PRIMARY KEY ("gst_sno", "gst_tno", "gst_cno");

-- ----------------------------
-- Primary Key structure for table ganst_reportsbk
-- ----------------------------
ALTER TABLE "new_schema"."ganst_reportsbk" ADD CONSTRAINT "ganst_reports_copy1_pkey" PRIMARY KEY ("gst_sno", "gst_tno", "gst_cno");

-- ----------------------------
-- Indexes structure for table ganst_result
-- ----------------------------
CREATE UNIQUE INDEX "ganst_result_gst_stuid_gst_course_gst_teaname_idx" ON "new_schema"."ganst_result" USING btree (
  "gst_stuid" "pg_catalog"."int4_ops" ASC NULLS LAST,
  "gst_course" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "gst_teaname" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Checks structure for table ganst_result
-- ----------------------------
ALTER TABLE "new_schema"."ganst_result" ADD CONSTRAINT "ganst_result_gst_score_check" CHECK (((gst_score >= 0) AND (gst_score <= 100)));

-- ----------------------------
-- Primary Key structure for table ganst_stu
-- ----------------------------
ALTER TABLE "new_schema"."ganst_stu" ADD CONSTRAINT "ganst_stu_pkey" PRIMARY KEY ("gst_stuid");

-- ----------------------------
-- Indexes structure for table ganst_students
-- ----------------------------
CREATE UNIQUE INDEX "gst_sname" ON "new_schema"."ganst_students" USING btree (
  "gst_sname" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table ganst_students
-- ----------------------------
ALTER TABLE "new_schema"."ganst_students" ADD CONSTRAINT "pk_stu" PRIMARY KEY ("gst_sno");

-- ----------------------------
-- Indexes structure for table ganst_studentsbk
-- ----------------------------
CREATE UNIQUE INDEX "gst_sname_copy1" ON "new_schema"."ganst_studentsbk" USING btree (
  "gst_sname" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table ganst_studentsbk
-- ----------------------------
ALTER TABLE "new_schema"."ganst_studentsbk" ADD CONSTRAINT "ganst_students_copy1_pkey" PRIMARY KEY ("gst_sno");

-- ----------------------------
-- Checks structure for table ganst_teacher
-- ----------------------------
ALTER TABLE "new_schema"."ganst_teacher" ADD CONSTRAINT "ganst_teacher_gst_gender_check" CHECK ((((gst_gender)::text = '男'::text) OR ((gst_gender)::text = '女'::text)));

-- ----------------------------
-- Primary Key structure for table ganst_teacher
-- ----------------------------
ALTER TABLE "new_schema"."ganst_teacher" ADD CONSTRAINT "ganst_teacher_pkey" PRIMARY KEY ("gst_teaname");

-- ----------------------------
-- Primary Key structure for table ganst_teachers
-- ----------------------------
ALTER TABLE "new_schema"."ganst_teachers" ADD CONSTRAINT "pk_tea" PRIMARY KEY ("gst_tno");

-- ----------------------------
-- Primary Key structure for table ganst_teachersbk
-- ----------------------------
ALTER TABLE "new_schema"."ganst_teachersbk" ADD CONSTRAINT "ganst_teachers_copy1_pkey" PRIMARY KEY ("gst_tno");

-- ----------------------------
-- Foreign Keys structure for table ganst_class
-- ----------------------------
ALTER TABLE "new_schema"."ganst_class" ADD CONSTRAINT "ganst_class_gst_stuid_fkey" FOREIGN KEY ("gst_stuid") REFERENCES "new_schema"."ganst_stu" ("gst_stuid") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table ganst_curriculum
-- ----------------------------
ALTER TABLE "new_schema"."ganst_curriculum" ADD CONSTRAINT "ganst_curriculum_gst_teaname_fkey" FOREIGN KEY ("gst_teaname") REFERENCES "new_schema"."ganst_teacher" ("gst_teaname") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table ganst_reports
-- ----------------------------
ALTER TABLE "new_schema"."ganst_reports" ADD CONSTRAINT "fk_cou_rep" FOREIGN KEY ("gst_cno") REFERENCES "new_schema"."ganst_courses" ("gst_cno") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "new_schema"."ganst_reports" ADD CONSTRAINT "fk_stu_rep" FOREIGN KEY ("gst_sno") REFERENCES "new_schema"."ganst_students" ("gst_sno") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "new_schema"."ganst_reports" ADD CONSTRAINT "fk_tea_rep" FOREIGN KEY ("gst_tno") REFERENCES "new_schema"."ganst_teachers" ("gst_tno") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table ganst_reportsbk
-- ----------------------------
ALTER TABLE "new_schema"."ganst_reportsbk" ADD CONSTRAINT "ganst_reports_copy1_gst_cno_fkey" FOREIGN KEY ("gst_cno") REFERENCES "new_schema"."ganst_courses" ("gst_cno") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "new_schema"."ganst_reportsbk" ADD CONSTRAINT "ganst_reports_copy1_gst_sno_fkey" FOREIGN KEY ("gst_sno") REFERENCES "new_schema"."ganst_students" ("gst_sno") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "new_schema"."ganst_reportsbk" ADD CONSTRAINT "ganst_reports_copy1_gst_tno_fkey" FOREIGN KEY ("gst_tno") REFERENCES "new_schema"."ganst_teachers" ("gst_tno") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table ganst_result
-- ----------------------------
ALTER TABLE "new_schema"."ganst_result" ADD CONSTRAINT "ganst_result_gst_course_fkey" FOREIGN KEY ("gst_course") REFERENCES "new_schema"."ganst_curriculum" ("gst_course") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "new_schema"."ganst_result" ADD CONSTRAINT "ganst_result_gst_stuid_fkey" FOREIGN KEY ("gst_stuid") REFERENCES "new_schema"."ganst_stu" ("gst_stuid") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "new_schema"."ganst_result" ADD CONSTRAINT "ganst_result_gst_teaname_fkey" FOREIGN KEY ("gst_teaname") REFERENCES "new_schema"."ganst_teacher" ("gst_teaname") ON DELETE NO ACTION ON UPDATE NO ACTION;
